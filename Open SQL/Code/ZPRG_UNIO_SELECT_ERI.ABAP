*&---------------------------------------------------------------------*
*& Report zprg_having_union_select_eri
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_HAVING_UNION_SELECT_ERI.


SELECT
  FROM VBAK AS SO
 INNER JOIN KNA1 AS CUST
    ON SO~KUNNR = CUST~KUNNR
FIELDS SO~KUNNR   AS CUST_ID,
       CUST~NAME1 AS CUSTOMER,
       SO~WAERK   AS CURRE,
       SUM( SO~NETWR ) AS TOT_NETPRICE,
       AVG( SO~NETWR ) AS NET,
       MAX( SO~NETWR ) AS MAX,
       MIN( SO~NETWR ) AS MIN,
       COUNT( SO~NETWR ) AS COUNT,
       'Importet Cusstomer' AS CAT_CUST
 GROUP BY SO~KUNNR, SO~WAERK, CUST~NAME1 " Visualizar registro superiores
HAVING SUM( SO~NETWR ) > 10000
UNION
SELECT
  FROM VBAK AS SO
 INNER JOIN KNA1 AS CUST
    ON SO~KUNNR = CUST~KUNNR
FIELDS SO~KUNNR   AS CUST_ID,
       CUST~NAME1 AS CUSTOMER,
       SO~WAERK   AS CURRE,
       SUM( SO~NETWR ) AS TOT_NETPRICE,
       AVG( SO~NETWR ) AS NET,
       MAX( SO~NETWR ) AS MAX,
       MIN( SO~NETWR ) AS MIN,
       COUNT( SO~NETWR ) AS COUNT,
       'Other Cusstomer' AS CAT_CUST
 GROUP BY SO~KUNNR, SO~WAERK, CUST~NAME1 " Visualizar registro superiores
HAVING SUM( SO~NETWR ) < 1000000                            " a 10000
  INTO TABLE @DATA(IT_RESULTADO).


IF SY-SUBRC IS INITIAL.
  CL_DEMO_OUTPUT=>DISPLAY( IT_RESULTADO ).
ENDIF.
