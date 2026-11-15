*&---------------------------------------------------------------------*
*& Report zprg_cte_with_eri
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_CTE_WITH_ERI.

" Passar esses parâmetros entre as ( ... ) não é obrigatório, mas evita usar AS no SELECT
WITH +AGGR( MARK, SO, CUST_ID, CURRE, NET_AMOUNT, SO_COUNT ) AS ( " Consulta principal
                SELECT
                  FROM VBAK
                FIELDS 'Total' AS MARK,
                       ' '     AS SO,
                       KUNNR,
                       WAERK,
*                       KUNNR   AS CUST_ID,
*                       WAERK   AS CURRE,
                       SUM( NETWR )   AS NET_AMOUNT,
                       COUNT( NETWR ) AS SO_COUNT
                 GROUP BY KUNNR, WAERK
               )

               SELECT
                 FROM VBAK
               FIELDS ' '   AS MARK,
                      VBELN AS SO,
                      KUNNR AS CUST_ID,
                      WAERK AS CURRE,
                      NETWR AS NET_AMOUNT,
                      1     AS SO_COUNT " 1 Para conseguir somar o número de linhas
        UNION
               SELECT MARK,
                      SO,
                      CUST_ID,
                      CURRE,
                      NET_AMOUNT,
                      SO_COUNT
                 FROM +AGGR
                ORDER BY CUST_ID, MARK
                 INTO TABLE @DATA(IT_RESULT).

IF SY-SUBRC IS INITIAL.
  CL_DEMO_OUTPUT=>DISPLAY( IT_RESULT ).
ENDIF.
