      ******************************************************************
      * Author: DANIEL ZAMBON
      * Date:25/06/2023
      * Purpose: RECEBER USUARIO / NIVEL
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

       77 USUARIO PIC X(30) VALUE SPACES.
       77 NIVEL   PIC X(02) VALUE SPACES.
         88 ADM  VALUE 01.
         88 USER VALUE 02.
      * 88 SÃO VARIAVEIS FILHOS DO NIVEL
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       DISPLAY 'USUARIO: '
       ACCEPT USUARIO.

       DISPLAY 'NIVEL: '
       ACCEPT NIVEL.

       IF ADM
             DISPLAY 'NIVEL ADMINISTRADOR'
             ELSE
       IF USER
             DISPLAY 'NIVEL USUARIO'
             ELSE
                   DISPLAY 'USUARIO NAO AUTORIZADO'
             END-IF
       END-IF.



            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
