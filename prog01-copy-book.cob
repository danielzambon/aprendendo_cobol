      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:27/06/2023
      * Purpose: PERFORM UNTIL
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

       77 VENDAS PIC 9(08)V99    VALUE ZEROS.
       77 QT     PIC 9(04)       VALUE ZEROS.
       77 ACUM   PIC 9(12)V99    VALUE ZEROS.

       PROCEDURE DIVISION.

       0001-PRINCIPAL.

             PERFORM 0100-INICIALIZADA.
             IF VENDAS > 0
                   PERFORM 0200-PROCESSAR UNTIL VENDAS = 0
             END-IF.
                   PERFORM 0300-FINAL.
             STOP RUN.

       0100-INICIALIZADA.

             DISPLAY 'DIGITE VENDAS: '
             ACCEPT VENDAS.

       0200-PROCESSAR.

             ADD 1 TO QT.
             ADD VENDAS TO ACUM
             PERFORM 0100-INICIALIZADA.

       0210-PROCESSAR-FIM.

       0300-FINAL.

             DISPLAY ''.
             DISPLAY '********************'.
             DISPLAY ''.
             DISPLAY ' FINALIZADO '.
             DISPLAY ' QUANTIDADE DE ITENS ' QT.
             DISPLAY ' TOTAL************** ' ACUM.
