*&---------------------------------------------------------------------*
*& Report zprg_sample_04_eri
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zprg_sample_04_eri.

*Não ocorre junção
SELECT
  FROM zddls_sample_04_eri
FIELDS SUM( netwr )
  INTO TABLE @DATA(Lt_result).
IF sy-subrc IS INITIAL.
  cl_demo_output=>write( Lt_result ).
ENDIF.

*Ocorre junção
SELECT
  FROM zddls_sample_04_eri
FIELDS so,kunnr,netwr,posnr
  INTO TABLE @DATA(Lt_result1).
IF sy-subrc IS INITIAL.

  DATA(lv_result) = REDUCE netwr( INIT lv_sum TYPE netwr
                                  FOR ls_result IN lt_result1
                                  NEXT lv_sum = lv_sum + ls_result-netwr ).

  cl_demo_output=>display( LV_result ).
ENDIF.
