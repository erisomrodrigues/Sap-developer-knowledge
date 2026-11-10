*&---------------------------------------------------------------------*
*& Report zprg_using_client_specified
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_USING_CLIENT_SPECIFIED.


CLASS DEMO DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS MAIN.

  PRIVATE SECTION.

ENDCLASS.

CLASS DEMO IMPLEMENTATION.

  METHOD MAIN.

    " Forma antiga de alterar o mandt na consulta
    SELECT
      FROM VBAK      AS SO
     INNER JOIN VBAP AS ITEM
        ON SO~MANDT = ITEM~MANDT
       AND SO~VBELN = ITEM~VBELN
    CLIENT SPECIFIED
    FIELDS SO~VBELN,
           SO~VKORG,
           SO~VKGRP,
           ITEM~POSNR,
           ITEM~MANDT
     WHERE SO~MANDT = '200'
      INTO TABLE @DATA(IT_RESULT)
        UP TO 1000 ROWS.

    IF SY-SUBRC IS INITIAL.
*      CL_DEMO_OUTPUT=>DISPLAY(  IT_RESULT ).
      CL_DEMO_OUTPUT=>WRITE(  IT_RESULT ).
    ENDIF.

    " Forma atual de alterar o mandt na consulta
    SELECT
      FROM VBAK      AS SO
     INNER JOIN VBAP AS ITEM
        ON SO~VBELN = ITEM~VBELN
     USING CLIENT '210'
    FIELDS SO~VBELN,
           SO~VKORG,
           SO~VKGRP,
           ITEM~POSNR,
           ITEM~MANDT
      INTO TABLE @DATA(IT_RESULT1)
        UP TO 1000 ROWS.

    IF SY-SUBRC IS INITIAL.
      CL_DEMO_OUTPUT=>DISPLAY(  IT_RESULT1 ).
*      CL_DEMO_OUTPUT=>WRITE(  IT_RESULT ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DEMO=>MAIN( ).
