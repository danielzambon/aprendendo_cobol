      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:27/06/2023
      * Purpose: PERFORM VARYNG
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WRK-NUM1     PIC 9(02)    VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02)    VALUE 1.
       77 WRK-RESULT   PIC 9(04)    VALUE ZEROS.

       PROCEDURE DIVISION.

       0001-PRINCIPAL.
             PERFORM 0100-INICIALIZADA.

             IF WRK-NUM1 > 0 AND WRK-NUM1 > 0
                   PERFORM 0200-PROCESSAR
             END-IF.

             PERFORM 0300-FINAL.

             STOP RUN.

       0100-INICIALIZADA.

             ACCEPT WRK-NUM1.

       0200-PROCESSAR.
             PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
             UNTIL WRK-CONTADOR > 20
             COMPUTE WRK-RESULT = WRK-NUM1 * WRK-CONTADOR
                   DISPLAY WRK-NUM1 ' X ' WRK-CONTADOR ' = ' WRK-RESULT
             END-PERFORM.

       0210-PROCESSAR-FIM.

       0300-FINAL.
             DISPLAY 'FINALIZADO'.
