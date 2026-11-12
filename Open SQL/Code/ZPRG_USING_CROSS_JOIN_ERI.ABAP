*&---------------------------------------------------------------------*
*& Report zprg_using_cross_join_eri
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_USING_CROSS_JOIN_ERI.

TYPES:   BEGIN OF HELPER_TYPE.
TYPES    CLNT TYPE T000-MANDT.
TYPES    DESC TYPE T000-MTEXT.
INCLUDE       TYPE T100.
TYPES    END OF HELPER_TYPE.

DATA: IT_RESULT TYPE STANDARD TABLE OF HELPER_TYPE.

CLASS DEMO DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS MAIN.

  PRIVATE SECTION.
ENDCLASS.

CLASS DEMO IMPLEMENTATION.

  METHOD MAIN.

    SELECT
      FROM T000       AS CLNT
     CROSS JOIN T100  AS MSG
    FIELDS CLNT~MANDT AS cLNT,
           CLNT~MTEXT AS DESC,
           MSG~*
     WHERE MSG~ARBGB = 'HRSFEC_LOCATION_REPL'
      INTO TABLE @IT_RESULT.
    IF SY-SUBRC IS INITIAL.
      DATA(LV_COUNT) = LINES( IT_RESULT ).
      CL_DEMO_OUTPUT=>WRITE( LV_COUNT ).
      CL_DEMO_OUTPUT=>DISPLAY( IT_RESULT ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
  DEMO=>MAIN( ).
