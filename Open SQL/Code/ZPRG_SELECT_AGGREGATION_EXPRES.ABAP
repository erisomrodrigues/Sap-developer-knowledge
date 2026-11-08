*&---------------------------------------------------------------------*
*& Report zprg_select_aggregation_expres
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_SELECT_AGGREGATION_EXPRES.


SELECT
  FROM VBAK AS SO
 INNER JOIN VBAP AS ITEM
    ON SO~VBELN = ITEM~VBELN
 INNER JOIN KNA1 AS CUST
    ON SO~KUNNR = CUST~KUNNR
FIELDS SO~KUNNR AS CUST_ID,
       CUST~NAME1 AS CUSTOMER,
       ITEM~WAERK AS CURRE,
       SUM( ITEM~NETPR ) AS TOTAL_NETPRICE,
       AVG( ITEM~NETPR ) AS NET,
       MAX( ITEM~NETPR ) AS MAX,
       MIN( ITEM~NETPR ) AS MIN,
       COUNT( ITEM~NETPR ) AS COUNT
 GROUP BY SO~KUNNR, CUST~NAME1, ITEM~WAERK
  INTO TABLE @DATA(IT_RESULT).

IF SY-SUBRC IS INITIAL.
  CL_DEMO_OUTPUT=>DISPLAY( IT_RESULT ).
ENDIF.
