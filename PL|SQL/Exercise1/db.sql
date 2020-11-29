-- YOU MUST RUN THEM BLOCK BY BLOCK


SET SERVEROUTPUT ON SIZE 1000000;
SET VERIFY OFF;

-- An anonymous PL/SQL block that will display ‘INFO 2103 Database Programming’.

BEGIN
    DBMS_OUTPUT.PUT_LINE('INFO 2103 Database Programming');
END;


-- An anonymous PL/SQL block with 3 variables and different data types.

DECLARE 
    n NUMBER;
    v_text VARCHAR2(30);
    dt DATE;
    
BEGIN
    n := 4000;
    v_text := 'Who dis?';
    dt := SYSDATE;
    
    DBMS_OUTPUT.PUT_LINE(n||' '||v_text||' '||dt);
END;


-- An anonymous PL/SQL block that will accept two numbers by using substitution parameter.

accept num1 prompt 'Please enter first number: ';
accept num2 prompt 'Please enter second number: ';

DECLARE
   n1 NUMBER;
   n2 NUMBER;
   n3 NUMBER;
BEGIN
   n1 := '&num1';
   n2 := '&num2';
   
   -- Performing a simple calculation by adding the two numbers and divide by 10.
   n3 := (n1+n2)/10;
   dbms_output.put_line(n3);
END;
