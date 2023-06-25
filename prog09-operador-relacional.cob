      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:25/06/2023
      * Purpose: OPERADORES RELACIONAIS
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

       77 LARGURA       PIC 9(03)V99 VALUE ZEROS.
       77 COMPRIMENTO   PIC 9(03)V99 VALUE ZEROS.
       77 VAR-AREA          PIC 9(03)V99 VALUE ZEROS.



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       DISPLAY 'LARGURA: '
       ACCEPT LARGURA.

       DISPLAY 'COMPRIMENTO: '
       ACCEPT COMPRIMENTO.


       IF COMPRIMENTO > 0 AND LARGURA > 0
             COMPUTE VAR-AREA = ( COMPRIMENTO * LARGURA )


             DISPLAY 'AREA: ' VAR-AREA
       ELSE
             DISPLAY 'INFORMAR MEDIDAS ACIMA DE ZERO'

       END-IF.







            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
