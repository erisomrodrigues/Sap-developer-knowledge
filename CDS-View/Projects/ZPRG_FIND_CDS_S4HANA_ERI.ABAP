*&---------------------------------------------------------------------*
*& Report zprg_find_cds_s4hana_eri
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zprg_find_cds_s4hana_eri.

TABLES: ddldependency, dd03l.

TYPES: BEGIN OF ty_output,
         ddlname    TYPE ddldependency-ddlname,
         objectname TYPE ddldependency-objectname,
         objecttype TYPE ddldependency-objecttype,
         tabname    TYPE dd03l-tabname,
         fieldname  TYPE dd03l-fieldname,
         keyflag    TYPE dd03l-keyflag,
         notnull    TYPE dd03l-notnull,
         rollname   TYPE dd03l-rollname,
       END OF ty_output.

DATA lo_alv TYPE REF TO cl_salv_table.

SELECT-OPTIONS: s_ddl   FOR  ddldependency-ddlname,
                s_tab   FOR dd03l-tabname,
                s_field FOR dd03l-fieldname,
                s_obj   FOR ddldependency-objectname.

SELECT ddl~ddlname,
       ddl~objectname,
       ddl~objecttype,
       dd0~tabname,
       dd0~fieldname,
       dd0~keyflag,
       dd0~notnull,
       dd0~rollname
  FROM ddldependency AS ddl
 INNER JOIN dd03l    AS dd0
    ON ddl~objectname = dd0~tabname
   AND ddl~state      = dd0~as4local
  INTO TABLE @DATA(lt_output)
 WHERE ddl~ddlname    IN @s_ddl
   AND ddl~objectname IN @s_obj
   AND dd0~tabname    IN @s_tab
   AND dd0~fieldname  IN @s_field.

IF   lt_output IS NOT INITIAL.

  TRY.
      cl_salv_table=>factory(
        IMPORTING
          r_salv_table   = lo_alv
        CHANGING
          t_table        = lt_output ).

      lo_alv->display( ).

    CATCH cx_salv_msg INTO DATA(lx_msg).
      MESSAGE lx_msg TYPE 'E'.
  ENDTRY.

ENDIF.
