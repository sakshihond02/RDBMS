
SQL> DECLARE
  2    s_rno int;
  3    r1 student%ROWTYPE;
  4  BEGIN
  5    s_rno:=&s_rno;
  6    SELECT * INTO r1 FROM STUDENT where rno=s_rno;
  7
  8    DBMS_OUTPUT.PUT_LINE('student name='||r1.sname);
  9    DBMS_OUTPUT.PUT_LINE('student percentage='||r1.per);
 10    DBMS_OUTPUT.PUT_LINE('student class='||r1.class);
 11  END;
 12  /
Enter value for s_rno: 2
old   5:   s_rno:=&s_rno;
new   5:   s_rno:=2;
student name=Gayatri
student percentage=85.74
student class=A

PL/SQL procedure successfully completed.