FUNCTION ZFSZK_SH_ERI.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  TABLES
*"      SHLP_TAB TYPE  SHLP_DESCT
*"      RECORD_TAB STRUCTURE  SEAHLPRES
*"  CHANGING
*"     VALUE(SHLP) TYPE  SHLP_DESCR
*"     VALUE(CALLCONTROL) LIKE  DDSHF4CTRL STRUCTURE  DDSHF4CTRL
*"----------------------------------------------------------------------
DATA: ls_fielddescr TYPE dfies, "loc str for shlp-fielddescr
        ls_selopt TYPE ddshselopt.  "loc str for shlp-selopt
*Local structure for itab record_tab
  DATA: BEGIN OF ls_record.
          INCLUDE STRUCTURE seahlpres.
  DATA: END OF ls_record.

  DATA: ls_start TYPE string,
        ls_end TYPE string.

  DATA: l_ddtext TYPE dd07v-ddtext,
        l_domvalue TYPE dd07v-domvalue_l,
        l_offset TYPE i,
        l_offset_aux TYPE i.

*    IF CALLCONTROL-STEP = 'PRESEL'.
*
*    DATA: ls_shlp_selopt  LIKE LINE OF SHLP-selopt.
*
*    FREE ls_shlp_selopt.
*
*    ls_shlp_selopt-shlpname = 'ZSZK_SH_ERI'.
*    ls_shlp_selopt-shlpfield = 'ZSZK_F1'.
*    ls_shlp_selopt-sign = 'I'.
*    ls_shlp_selopt-option = 'EQ'.
*    ls_shlp_selopt-low = 'A'.
*    APPEND ls_shlp_selopt TO SHLP-selopt.
*
*    EXIT.
*  ENDIF.






  CHECK callcontrol-step = 'DISP'.

  CLEAR l_offset.

  LOOP AT shlp-fielddescr INTO ls_fielddescr.

    CASE ls_fielddescr-fieldname.
      WHEN 'ZSZK_F1'.
        ls_fielddescr-intlen = ls_fielddescr-outputlen = 40.
        MODIFY shlp-fielddescr FROM ls_fielddescr INDEX sy-tabix.
      WHEN 'ERDAT'.
        IF ls_fielddescr-offset < 15.
                        l_offset_aux = 6.
          ls_fielddescr-offset = 56.
        ELSE.
          l_offset_aux = 3.
          ls_fielddescr-offset = 88.
        ENDIF.

        MODIFY shlp-fielddescr FROM ls_fielddescr INDEX sy-tabix.
    ENDCASE.

  ENDLOOP.



  LOOP AT record_tab INTO ls_record.
    l_offset = l_offset_aux.

    l_domvalue = ls_record-string+l_offset(1).

    CALL FUNCTION 'DOMAIN_VALUE_GET'
      EXPORTING
        i_domname  = 'ZSZK_F1_ERI'
        i_domvalue = l_domvalue
      IMPORTING
        e_ddtext   = l_ddtext
      EXCEPTIONS
        not_exist  = 1
        OTHERS     = 2.

    IF sy-subrc <> 0.
      CLEAR l_ddtext.
    ENDIF.

    ADD 1 TO l_offset.
    ls_start = ls_record-string+0(l_offset).
    ls_end = ls_record-string+l_offset(*).
    CLEAR: ls_record-string.
    ls_record-string+0(l_offset) = ls_start.
    IF l_ddtext IS NOT INITIAL.
      ls_record-string+l_offset(1) = '-'.
    ENDIF.
    ADD 1 TO l_offset.
    ls_record-string+l_offset(20) = l_ddtext(20).
    ADD 20 TO l_offset.
    ls_record-string+l_offset(*) = ls_end.
    MODIFY record_tab FROM ls_record.
    CLEAR: ls_record,ls_start,ls_end.

  ENDLOOP.

ENDFUNCTION.
