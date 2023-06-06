      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:06/06/2023
      * Purpose: COMANDOS IF/ELSE/ENDIF
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

       77 WRK-NUM1 PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2 PIC 9(02) VALUE ZEROS.
       77 MEDIA PIC 9(04) VALUE ZEROS.



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       DISPLAY 'NOTA 1: '
       ACCEPT WRK-NUM1.

       DISPLAY 'NOTA 2: '
       ACCEPT WRK-NUM2.

       DISPLAY ''
       DISPLAY 'NOTA 1 : ' WRK-NUM1
       DISPLAY 'NOTA 2 : ' WRK-NUM2
       COMPUTE MEDIA = (WRK-NUM1 + WRK-NUM2) / 2.
       DISPLAY 'RESULTADO MEDIA: ' MEDIA.

       IF MEDIA >= 6
             DISPLAY 'APROVADO'
       ELSE
             IF MEDIA <= 2
                   DISPLAY 'REPROVADO'
                   ELSE
                   DISPLAY 'RECUPERACAO'
             END-IF
       END-IF.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
