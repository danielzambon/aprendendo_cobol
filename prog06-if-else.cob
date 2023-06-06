      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:06/06/2023
      * Purpose: OPERADORES ARITIMETICOS
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
       77 WRK-RESULT PIC 9(04) VALUE ZEROS.
       77 RESTO PIC 9(04) VALUE ZEROS.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       DISPLAY 'NUMERO 1: '
       ACCEPT WRK-NUM1 FROM CONSOLE.

       DISPLAY 'NUMERO 2: '
       ACCEPT WRK-NUM2 FROM CONSOLE.

       DISPLAY '*******************************************'
       DISPLAY 'NUMERO 1 : ' WRK-NUM1
       DISPLAY 'NUMERO 2 : ' WRK-NUM2

       DISPLAY '***********************SOMA********************'
       ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULT
       DISPLAY 'RESULTADO SOMA: ' WRK-RESULT

       DISPLAY '**********************SUBTRACAO****************'
       SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESULT.
       DISPLAY 'RESULTADO SUBTRACAO: ' WRK-RESULT

       DISPLAY '**************************DIVISAO**************'
       DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT
       REMAINDER RESTO.

       DISPLAY 'RESULTADO DIVISAO: ' WRK-RESULT
       DISPLAY 'RESULTADO RESTO: ' RESTO

       DISPLAY '**************************MULTIPLICACAO********'
       MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT.
       DISPLAY 'RESULTADO MULTIPLICACAO: ' WRK-RESULT.

       DISPLAY '**************************COMPUTE**************'
       COMPUTE WRK-RESULT = (WRK-NUM1 + WRK-NUM2) / 2.
       DISPLAY 'RESULTADO MEDIA: ' WRK-RESULT.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
