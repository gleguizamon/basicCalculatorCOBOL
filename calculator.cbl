IDENTIFICATION DIVISION.
PROGRAM-ID.  2-Digit-Calculator.
AUTHOR.  gleguizamon.

DATA DIVISION.
WORKING-STORAGE SECTION.
01  Num1           PIC 9  VALUE ZEROS.
01  Num2           PIC 9  VALUE ZEROS.
01  Result         PIC 99 VALUE ZEROS.
01  Repeat         PIC 9  VALUE ZEROS.
01  Operator       PIC X  VALUE SPACE.

PROCEDURE DIVISION.
DISPLAY '¡Hello World!'.
DISPLAY 'Welcome to COBOL calculator'.
DISPLAY 'Please, enter the number of times you wish to repeat the sequence: ' WITH NO ADVANCING
ACCEPT Repeat.
      PERFORM Repeat TIMES
       DISPLAY 'Enter First Number: ' WITH NO ADVANCING
       ACCEPT Num1
       
       DISPLAY 'Enter operator ( + | - | * | / ): ' WITH NO ADVANCING
       ACCEPT Operator
       
       DISPLAY 'Enter Second Number: ' WITH NO ADVANCING
       ACCEPT Num2
       
       *> Suma
       IF Operator = '+' THEN
           ADD Num1, Num2 GIVING Result
       END-IF
       
       *> Resta
       IF Operator = '-' THEN
           SUBTRACT Num1 FROM Num2 GIVING Result
       END-IF
       
       *> Multiplicación
       IF Operator = '*' THEN
           MULTIPLY Num1 BY Num2 GIVING Result
       END-IF
       
       *> División
       IF Operator = '/' THEN
           DIVIDE Num1 BY Num2 GIVING Result
       END-IF
       
       DISPLAY 'Result is = ', Result
      
      END-PERFORM.
      STOP RUN.
