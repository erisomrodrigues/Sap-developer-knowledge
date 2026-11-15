*&---------------------------------------------------------------------*
*& Report zprg_window_expression_over
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_WINDOW_EXPRESSION_OVER.



*SELECT
*  FROM VBAK
*FIELDS KUNNR AS CUST_ID,
*       WAERK AS CURRE,
*       SUM( NETWR ) AS Tot_netwr,
*       COUNT( NETWR ) AS COUNT
* WHERE KUNNR IN ( '0000001096','0000000112 ','0000000471','0000001771' )
* GROUP BY KUNNR, WAERK
*  INTO TABLE @DATA(IT_RESULT).

SELECT
  FROM VBAK
FIELDS KUNNR AS CUST_ID,
       WAERK AS CURRE,
       NETWR AS NET_AMT,
       SUM( NETWR ) OVER(
                          PARTITION BY KUNNR
                          ORDER BY NETWR
*       ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
*       ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
       ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
                         ) AS NET_AMOUNT_PER_CUST,
       COUNT( NETWR ) OVER(
                            PARTITION BY KUNNR
                            ORDER BY NETWR
*       ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
*       ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
       ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
                           ) AS SO_COUNT_PER_CUDT
  WHERE KUNNR IN ( '0000001096','0000000112 ','0000000471','0000001771' )
  INTO TABLE @DATA(IT_RESULT).

IF SY-SUBRC IS INITIAL.

  DATA(LV_COUNT) = LINES( IT_RESULT ).

  CL_DEMO_OUTPUT=>WRITE( LV_COUNT ).
  CL_DEMO_OUTPUT=>DISPLAY(  IT_RESULT ).

ENDIF.
