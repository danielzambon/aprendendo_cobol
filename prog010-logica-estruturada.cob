      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:25/06/2023
      * Purpose: PARAGRAFOS E LOGICA ESTRUTURADA
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

       77 WRK-NUM1 PIC 9(02)    VALUE ZEROS.
       77 WRK-NUM2 PIC 9(02)    VALUE ZEROS.
       77 MEDIA    PIC 9(02)V99 VALUE ZEROS.

       PROCEDURE DIVISION.

       0001-PRINCIPAL.
             PERFORM 0100-INICIALIZADA.

             IF WRK-NUM1 > 0 AND WRK-NUM2 > 0
                   PERFORM 0200-PROCESSAR
             END-IF.

             PERFORM 0300-FINAL.

             STOP RUN.

       0100-INICIALIZADA.
             DISPLAY 'NOTA 1: '
             ACCEPT WRK-NUM1.

                   DISPLAY 'NOTA 2: '
             ACCEPT WRK-NUM2.

       0200-PROCESSAR.
             COMPUTE MEDIA = (WRK-NUM1 + WRK-NUM2) / 2.
             DISPLAY 'RESULTADO MEDIA: ' MEDIA.

             EVALUATE MEDIA
                   WHEN 10
                         DISPLAY '__--APROVADO BONUS--__'
                   WHEN 6 THRU 9,9
                         DISPLAY 'APROVADO'
                   WHEN 2 THRU 5,5
                         DISPLAY 'RECUPERACAO'
                   WHEN OTHER
                         DISPLAY 'REPROVADO'.

       0210-PROCESSAR-FIM.

       0300-FINAL.
             DISPLAY 'FINALIZADO'.
