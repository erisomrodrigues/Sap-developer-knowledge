*&---------------------------------------------------------------------*
*& Report zprg_select_arithmetic_express
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_SELECT_ARITHMETIC_EXPRESS.

DATA LV_DISCOUNT TYPE P DECIMALS 1 VALUE '0.8'.

SELECT
  FROM VBAK       AS SO
 INNER JOIN VBAP  AS ITEM
    ON SO~VBELN = ITEM~VBELN
 INNER JOIN KNA1  AS CUST
    ON SO~KUNNR = CUST~KUNNR
FIELDS SO~VBELN   AS Sales_Order,
       SO~KUNNR   AS Cust_ID,
       CUST~NAME1 AS Customer,
       ITEM~POSNR AS Sales_Item,
       ITEM~NETPR AS Net_Price,
       ITEM~NETPR * @LV_DISCOUNT AS Net_Discounted,
       CEIL( ITEM~NETPR )     AS Ceil ,
       Floor( ITEM~NETPR )    AS Floor,
       Abs( ITEM~NETPR )      AS Abs,
       ROUND( ITEM~NETPR, 1 ) AS Round,
       DIV( CAST( ITEM~NETPR  AS INT8 ), 10 ) AS Div,
       Mod( CAST( ITEM~NETPR  AS INT8 ), 10 ) AS Mod
  INTO TABLE @DATA(LT_RESULT)
  UP TO 100 ROWS.

IF SY-SUBRC IS INITIAL.
  CL_DEMO_OUTPUT=>DISPLAY( LT_RESULT ).
ENDIF.
