      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:05/06/2023
      * Purpose: DATAS DO SISTEMA & VARIAVEIS ESTRUTURADAS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FORMAT-DATA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
          02 WRK-ANO PIC 9(04) VALUE ZEROS.
          02 WRK-MES PIC 9(02) VALUE ZEROS.
          02 WRK-DIA PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WRK-DATA FROM DATE YYYYMMDD.
            DISPLAY 'DATA : ' WRK-DATA.
            DISPLAY 'DIA : ' WRK-DIA ' MES: ' WRK-MES ' ANO: ' WRK-ANO.
            DISPLAY 'DATA : ' WRK-DIA '/' WRK-MES '/' WRK-ANO.

            STOP RUN.
       END PROGRAM FORMAT-DATA.
