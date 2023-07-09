      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:09/07/2023
      * Purpose: MATRIZ ARRAY INDICE TABELA
      * Tectonics: cobc
      ******************************************************************
         IDENTIFICATION DIVISION.
       PROGRAM-ID. FORMAT-DATA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MESES.
             03 MES PIC X(10) OCCURS 12 TIMES.

       01 DATA_SYS.
          02 ANO_SYS PIC 9(04) VALUE ZEROS.
          02 MES_SYS PIC 9(02) VALUE ZEROS.
          02 DIA_SYS PIC 9(02) VALUE ZEROS.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

             PERFORM 0400-MONTARMES.

            ACCEPT DATA_SYS FROM DATE YYYYMMDD.

         DISPLAY 'DATA : ' DATA_SYS.
         DISPLAY 'DIA : ' DIA_SYS ' MES: ' MES(MES_SYS) ' ANO: ' ANO_SYS.
         DISPLAY 'DATA : ' DIA_SYS '/' MES(MES_SYS) '/' ANO_SYS.


            STOP RUN.


         0400-MONTARMES.
               MOVE 'JANEIRO   ' TO MES(01).
               MOVE 'FEVEREIRO ' TO MES(02).
               MOVE 'MARCO     ' TO MES(03).
               MOVE 'ABRIL     ' TO MES(04).
               MOVE 'ABRIL     ' TO MES(05).
               MOVE 'JUNHO     ' TO MES(06).
               MOVE 'JULHO     ' TO MES(07).
               MOVE 'AGOSTO    ' TO MES(08).
               MOVE 'SETENBRO  ' TO MES(09).
               MOVE 'OUTUBRO   ' TO MES(10).
               MOVE 'NOVENBRO  ' TO MES(11).
               MOVE 'DEZEMBRO  ' TO MES(12).






       END PROGRAM FORMAT-DATA.
