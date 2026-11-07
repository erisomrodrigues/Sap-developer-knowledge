*&---------------------------------------------------------------------*
*& Report ZLOOP_BACKWARD_DIRECTION_ERI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZLOOP_BACKWARD_DIRECTION_ERI.

SELECT * FROM SCARR
         INTO TABLE @DATA(LT_SCARR) UP TO 5 ROWS.

IF LT_SCARR IS NOT INITIAL.
  WRITE:/ 'FORWARD LOOPING'.
    LOOP AT LT_SCARR ASSIGNING FIELD-SYMBOL(<FS_SCARR>).
      WRITE:/ <FS_SCARR>-CARRID, <fs_scarr>-carrname.
    ENDLOOP.
    ULINE.

    WRITE:/ 'BACKWARD/REVERSE LOOPING '.
    LOOP AT LT_SCARR ASSIGNING FIELD-SYMBOL(<FS_BACKWARD>) STEP -1.
      WRITE:/ <FS_BACKWARD>-CARRID, <FS_BACKWARD>-CARRNAME.
    ENDLOOP.
ENDIF.
