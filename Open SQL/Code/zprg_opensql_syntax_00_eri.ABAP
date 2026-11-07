*&---------------------------------------------------------------------*
*& Report zprg_opensql_syntax_00_eri
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_OPENSQL_SYNTAX_00_ERI.

" SELECT COM SINTAXE SQL ANTIGA
*TYPES: BEGIN OF TY_ON_AMOUNT_T,
*         SO_ID           TYPE SNWD_SO-SO_ID,
*         CURRENCY_CODE   TYPE SNWD_SO-CURRENCY_CODE,
*         GROSS_AMOUNT    TYPE SNWD_SO-GROSS_AMOUNT,
*         DELIVERY_STATUS TYPE SNWD_SO-DELIVERY_STATUS,
*       END OF TY_ON_AMOUNT_T.
*
*DATA: LT_SO_AMOUNT TYPE STANDARD TABLE OF TY_ON_AMOUNT_T.
*
*SELECT SO_ID
*       CURRENCY_CODE
*       GROSS_AMOUNT
*       DELIVERY_STATUS
* FROM SNWD_SO
* INTO TABLE LT_SO_AMOUNT
*UP TO 10 ROWS
*WHERE CURRENCY_CODE = 'EUR'.

SELECT
  FROM SNWD_SO
FIELDS SO_ID,
       CURRENCY_CODE,
       GROSS_AMOUNT,
       DELIVERY_STATUS
WHERE CURRENCY_CODE = 'USD'
 INTO TABLE @DATA(LT_TAB)
UP TO 10 ROWS.

CL_DEMO_OUTPUT=>DISPLAY( LT_TAB ).
