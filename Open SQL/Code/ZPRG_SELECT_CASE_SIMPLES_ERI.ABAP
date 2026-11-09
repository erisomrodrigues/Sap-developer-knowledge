*&---------------------------------------------------------------------*
*& Report zprg_select_case_simples_eri
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_SELECT_CASE_SIMPLES_ERI.


SELECT
  FROM VBAK
FIELDS VBELN AS SALES_ORDDER,
       NETWR AS NET_AMOUNT,
  CASE VBTYP                " Case Simples
       WHEN 'C' THEN 'Order'
       WHEN 'B' THEN 'Quotatation'
       WHEN 'H' THEN 'Return'
       ELSE 'Orther Docs'
   END AS Document_Category,
  CASE                      " Case de Pesquisa
       WHEN NETWR > 1000 THEN 'Higher Amount Document'
       WHEN ( NETWR > 500 AND NETWR < 1000 ) THEN 'Medium Amount'
       ELSE 'Lower Amout'
   END AS Amount_Category
  INTO TABLE @DATA(IT_RESULT)
    UP TO 100 ROWS.

IF SY-SUBRC IS INITIAL.
  CL_DEMO_OUTPUT=>DISPLAY(  IT_RESULT ).
ENDIF.
