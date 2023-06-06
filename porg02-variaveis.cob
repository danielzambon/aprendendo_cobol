      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:05/06/2023
      * Purpose: VARIAVEIS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG02VARIAVEIS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      * VARIAVEIS "A" ALFABETICO
      * VARIAVEIS "X" ALFANUMERIOCO

       77 WRK-NOME PIC X(20) VALUES SPACES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
             ACCEPT WRK-NOME FROM CONSOLE.

            DISPLAY WRK-NOME.
            STOP RUN.
