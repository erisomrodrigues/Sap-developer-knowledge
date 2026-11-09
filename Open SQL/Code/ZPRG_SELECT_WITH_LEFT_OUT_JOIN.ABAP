*&---------------------------------------------------------------------*
*& Report zprg_select_with_left_out_join
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_SELECT_WITH_LEFT_OUT_JOIN.


SELECT
  FROM VBAK AS SO
  LEFT OUTER JOIN VBFA AS FLOW
    ON FLOW~VBELN   = SO~VBELN
   AND FLOW~VBTYP_V = 'C'
   AND FLOW~VBTYP_N = 'M'
  LEFT OUTER JOIN VBRK AS INV
    ON INV~VBELN = FLOW~VBELN
FIELDS SO~VBELN  AS Sales_Order,
       SO~NETWR  AS SO_AMOUNT,
       INV~NETWR AS IN_AMOUNT,
  CASE WHEN INV~NETWR IS NOT NULL THEN INV~NETWR
       ELSE SO~NETWR
   END AS Amount_net
  INTO TABLE @DATA(IT_RESULT)
    UP TO 1000 ROWS.

IF SY-SUBRC IS INITIAL.
  CL_DEMO_OUTPUT=>DISPLAY( IT_RESULT ).
ENDIF.
