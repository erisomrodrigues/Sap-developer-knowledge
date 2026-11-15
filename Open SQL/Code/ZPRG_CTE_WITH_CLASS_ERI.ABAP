*&---------------------------------------------------------------------*
*& Report zprg_cte_with_class_eri
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_CTE_WITH_CLASS_ERI.

CLASS DEMO DEFINITION.
  PUBLIC SECTION.
    TYPES: BEGIN OF LS_RESULT,
             CARRNAME TYPE SCARR-CARRNAME,
             CONNID   TYPE SPFLI-CONNID,
             CITYFROM TYPE SPFLI-CITYFROM,
             CITYTO   TYPE SPFLI-CITYTO,
             CNT      TYPE INT8,
           END OF LS_RESULT.

    CLASS-DATA IT_RESULT TYPE TABLE OF LS_RESULT WITH EMPTY KEY.

    CLASS-METHODS MAIN.

  PRIVATE SECTION.
ENDCLASS.

CLASS DEMO IMPLEMENTATION.

  METHOD MAIN.

    WITH
      +CONNS AS (
                 SELECT CARRNAME, CONNID, CITYFROM, CITYTO
                   FROM SPFLI
                   JOIN SCARR ON SPFLI~CARRID = SCARR~CARRID
                  WHERE SPFLI~CARRID = 'LH'
                 ),
      +CNTS AS (
                 SELECT COUNT(*) AS CNT
                   FROM +CONNS  )

                 SELECT *
                   FROM +CNTS
                  CROSS JOIN +CONNS
                  ORDER BY CARRNAME, +CONNS~CONNID
                   INTO CORRESPONDING FIELDS OF TABLE @IT_RESULT .

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DEMO=>MAIN( ).
