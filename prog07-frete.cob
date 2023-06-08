      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:06/06/2023
      *> * Purpose: CALCULO FRENTE PRODUTO / VALOR
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

       77 PRODUTO PIC X(30) VALUE SPACES.
       77 UF      PIC X(02) VALUE SPACES.
       77 VALOR   PIC 9(06)V99 VALUE ZEROS.
       77 TOTAL   PIC 9(06)V99 VALUE ZEROS.
       77 FRETE   PIC 9(04)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       DISPLAY 'PRODUTO: '
       ACCEPT PRODUTO.

       DISPLAY 'VALOR: '
       ACCEPT VALOR.

       DISPLAY 'UF: '
       ACCEPT UF.

       EVALUATE UF
             WHEN 'SP'
                   COMPUTE FRETE = VALOR - (VALOR * 01,05)
                   COMPUTE TOTAL = VALOR + FRETE
             WHEN 'RJ'
                   COMPUTE FRETE = VALOR - (VALOR * 01,10)
                   COMPUTE TOTAL = VALOR + FRETE
             WHEN 'MG'
                   COMPUTE FRETE = VALOR - (VALOR * 01,15)
                   COMPUTE TOTAL = VALOR + FRETE
             WHEN OTHER
                   DISPLAY 'LAMENTO MAS NAO HA FRENTE PARA ' UF
             END-EVALUATE.
                   IF FRETE NOT EQUAL 0

             DISPLAY 'PRODUTO: ' PRODUTO
             DISPLAY 'VALOR: ' VALOR
             DISPLAY 'FRETE: ' FRETE
             DISPLAY 'TOTAL: ' TOTAL
                   END-IF.


            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
