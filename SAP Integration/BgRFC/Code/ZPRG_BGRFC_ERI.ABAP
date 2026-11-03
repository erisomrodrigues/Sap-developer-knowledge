*&---------------------------------------------------------------------*
*& Report zprg_bgrfc_eri
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPRG_BGRFC_ERI.

DATA: LT_RECORDS       TYPE TABLE OF CHAR255,
      LV_RECORD        TYPE CHAR255,
      LR_BFRFC_INBOUND TYPE REF TO IF_BGRFC_DESTINATION_INBOUND,
      LR_BGRCC_UNIT    TYPE REF TO IF_TRFC_UNIT_INBOUND,
      LT_MESSAGE       TYPE TABLE OF STRING,
      LV_MESSAGE       TYPE STRING,
      LV_INB_DEST      TYPE BGRFC_DEST_NAME_INBOUND.

" Simulate a large dataser
LT_RECORDS = VALUE #( ( 'Record 1' ) ( 'Record 2' ) ).

START-OF-SELECTION.

  TRY.
      LV_INB_DEST = 'TM_BGRFC_INBOUND'.

      " Get the bgRFC manager instance
      LR_BFRFC_INBOUND = CL_BGRFC_DESTINATION_INBOUND=>CREATE( DEST_NAME = LV_INB_DEST ).
    CATCH CX_BGRFC_INVALID_DESTINATION.


  ENDTRY.

  LOOP AT LT_RECORDS INTO LV_RECORD.
    " create a bgRFC unit

    IF LR_BFRFC_INBOUND IS BOUND.
      LR_BGRCC_UNIT = LR_BFRFC_INBOUND->CREATE_TRFC_UNIT( ). "Create_QRFC_UNIT.
    ENDIF.

    CALL FUNCTION 'ZFM_BGTASK_ERI' IN BACKGROUND UNIT LR_BGRCC_UNIT
      EXPORTING
       IV_RECORD = LV_RECORD.

    APPEND 'bgRFC unit submitted successfully for record: ' && LV_RECORD TO LT_MESSAGE.
  ENDLOOP.
  COMMIT WORK.

  LOOP AT LT_MESSAGE INTO LV_MESSAGE.
    WRITE: / LV_MESSAGE.
  ENDLOOP.
