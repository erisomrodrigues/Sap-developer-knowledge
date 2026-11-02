*&---------------------------------------------------------------------*
*& Report zprg_sample_02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zprg_sample_02.

SELECT
  FROM zddls_sample_02( p_vbeln = '0010000002', p_date = '19910202' )
*FIELDS so, sales_org, vkgrp
FIELDS *
  INTO TABLE @DATA(it_tab).
IF sy-subrc IS INITIAL.
  cl_demo_output=>display( it_tab ).
ENDIF.
