*&---------------------------------------------------------------------*
*& Report zprg_select_string_operation
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_SELECT_STRING_OPERATION.


CLASS DEMO DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS MAIN.

ENDCLASS.

CLASS DEMO IMPLEMENTATION.

  METHOD MAIN.
    DELETE FROM DEMO_EXPRESSIONS.
    INSERT DEMO_EXPRESSIONS FROM TABLE @( VALUE #(  ( ID    = 1
                                                      CHAR1 = ' 00123'
                                                      CHAR2 = 'aAaA' ) ) ).

    SELECT
     FROM DEMO_EXPRESSIONS
   FIELDS CHAR1                                AS TEXT1,
          CHAR2                                AS TEXT2,
          CONCAT( CHAR1, CHAR2 )               AS CONCAT,
          CONCAT_WITH_SPACE( CHAR1, CHAR2, 1 ) AS CONCAT_WITH_SPACE,
          LENGTH( CHAR1 )                      AS LENGTH,
          INSTR( CHAR1, '12' )                 AS INSTR,
          LEFT( CHAR1, 3 )                     AS LEFT,
          RIGHT( CHAR1, 3 )                    AS RIGHT,
          LPAD( CHAR1, 10, 'X' )               AS LPAD,
          RPAD( CHAR1, 10, 'X' )               AS RPAD,
          LTRIM( CHAR1, ' ' )                  AS LTRIM,
          RTRIM( CHAR1, '3' )                  AS RTRIM,
          REPLACE( CHAR2, 'Aa', '--' )         AS REPLACE,
          LOWER( CHAR2 )                       AS LOWER,
          UPPER( CHAR2 )                       AS UPPER,
          SUBSTRING( CHAR2, 2,2 )              AS SUBST
     INTO TABLE @DATA(IT_RESUL).
    IF SY-SUBRC IS INITIAL.
      CL_DEMO_OUTPUT=>DISPLAY( IT_RESUL ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.


START-OF-SELECTION.
  DEMO=>MAIN( ).
