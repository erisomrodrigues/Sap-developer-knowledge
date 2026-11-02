FUNCTION ZFM_BGTASK_ERI.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IV_RECORD) TYPE  CHAR255
*"----------------------------------------------------------------------
  DATA: LV_LOG_HFR    TYPE BAL_S_LOG,
        LV_MESSSAGE   TYPE BAL_S_MSG,
        LV_HANDLE     TYPE BALLOGHNDL,
        Lt_LOG_HANDLE TYPE BAL_T_LOGH.

  LV_LOG_HFR-OBJECT = 'ZFM_BGTASK'.
  LV_LOG_HFR-SUBOBJECT = 'SUB_ZFM_BGTASK'.
  LV_LOG_HFR-ALUSER = SY-UNAME.
  LV_LOG_HFR-ALDATE = SY-DATUM.
  LV_LOG_HFR-ALTIME = SY-UZEIT.
  LV_MESSSAGE-MSGTY = 'S'.
  LV_MESSSAGE-MSGID = 'CNVLTRL_BASE_MSG'.
  LV_MESSSAGE-MSGNO = '000'.
  LV_MESSSAGE-MSGV1 = 'Processing Record: ' && IV_RECORD.

  CALL FUNCTION 'BAL_LOG_CREATE'
    EXPORTING
     I_S_LOG      = LV_LOG_HFR
*      S_LOG      = LV_LOG_HFR "Simular o erro na SBGRFCMON
    IMPORTING
      E_LOG_HANDLE = LV_HANDLE.

  IF SY-SUBRC <> 0.

  ENDIF.

  CALL FUNCTION 'BAL_LOG_MSG_ADD'
    EXPORTING
      I_LOG_HANDLE     = LV_HANDLE
      I_S_MSG          = LV_MESSSAGE
    EXCEPTIONS
      LOG_NOT_FOUND    = 1
      MSG_INCONSISTENT = 2
      LOG_IS_FULL      = 3
      OTHERS           = 4.
  IF SY-SUBRC <> 0.

  ENDIF.

  APPEND LV_HANDLE TO LT_LOG_HANDLE.

  CALL FUNCTION 'BAL_DB_SAVE'
    EXPORTING
      I_T_LOG_HANDLE   = LT_LOG_HANDLE
    EXCEPTIONS
      LOG_NOT_FOUND    = 1
      SAVE_NOT_ALLOWED = 2
      NUMBERING_ERROR  = 3
      OTHERS           = 4.
  IF SY-SUBRC <> 0.

  ENDIF.

ENDFUNCTION.