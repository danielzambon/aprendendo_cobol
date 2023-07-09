      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:09/07/2023
      * Purpose: REDEFINES
      * Tectonics: cobc
      ******************************************************************
         IDENTIFICATION DIVISION.
       PROGRAM-ID. FORMAT-DATA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MESES_EXTENSO.

             02 FILLER PIC X(03) VALUE 'JAN'.
             02 FILLER PIC X(03) VALUE 'FEV'.
             02 FILLER PIC X(03) VALUE 'MAR'.
             02 FILLER PIC X(03) VALUE 'ABR'.
             02 FILLER PIC X(03) VALUE 'MAI'.
             02 FILLER PIC X(03) VALUE 'JUN'.
             02 FILLER PIC X(03) VALUE 'JUL'.
             02 FILLER PIC X(03) VALUE 'AGO'.
             02 FILLER PIC X(03) VALUE 'SET'.
             02 FILLER PIC X(03) VALUE 'OUT'.
             02 FILLER PIC X(03) VALUE 'NOV'.
             02 FILLER PIC X(03) VALUE 'DEZ'.

       01 MESES REDEFINES MESES_EXTENSO.
             02 MES PIC X(03) OCCURS 12 TIMES.



       01 DATA_SYS.
          02 ANO_SYS PIC 9(04) VALUE ZEROS.
          02 MES_SYS PIC 9(02) VALUE ZEROS.
          02 DIA_SYS PIC 9(02) VALUE ZEROS.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.



            ACCEPT DATA_SYS FROM DATE YYYYMMDD.

         DISPLAY 'DATA : ' DATA_SYS.
         DISPLAY 'DIA : ' DIA_SYS ' MES: ' MES(MES_SYS) ' ANO: ' ANO_SYS.
         DISPLAY 'DATA : ' DIA_SYS '/' MES(MES_SYS) '/' ANO_SYS.


            STOP RUN.







       END PROGRAM FORMAT-DATA.
