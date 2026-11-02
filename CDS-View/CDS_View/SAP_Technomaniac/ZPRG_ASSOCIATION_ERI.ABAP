*&---------------------------------------------------------------------*
*& REPORT ZPRG_ASSOCIATION_ERI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zprg_association_eri.


SELECT FROM zddls_association_eri
     FIELDS so,
            kunnr,
            \_item-posnr
     INTO TABLE @DATA(lt_result).
IF sy-subrc IS INITIAL.
  cl_demo_output=>display( lt_result ).
ENDIF.
