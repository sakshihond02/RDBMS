SQL> create table student(sno int primary key,
  2  sname varchar(20),
  3  per float);

Table created.

SQL> insert into student values(101,'Gauri',87.00);

1 row created.

SQL> insert into student values(102,'Sakshi',82.20);

1 row created.

SQL> insert into student values(103,'Tanuja',77.12);

1 row created.

SQL> insert into student values(104,'Sejal',88.20);

1 row created.

SQL> insert into student values(105,'Mayuri',79.30);

1 row created.

SQL> select * from student;

       SNO SNAME                       PER
---------- -------------------- ----------
       101 Gauri                        87
       102 Sakshi                     82.2
       103 Tanuja                    77.12
       104 Sejal                      88.2
       105 Mayuri                     79.3

SQL> DECLARE
  2  U_per float;
  3  cursor c1(U_per float)IS select * from student where per<U_per;
  4  R1 student % ROWTYPE;
  5  BEGIN
  6  U_per:=&U_per;
  7  OPEN c1(U_per);
  8  LOOP
  9  FETCH c1 into R1;
 10  EXIT when c1 %NOTFOUND;
 11  DBMS_OUTPUT.PUT_LINE('STUDENT NO='|| R1.sno);
 12  DBMS_OUTPUT.PUT_LINE('STUDENT NAME='|| R1.sname);
 13  DBMS_OUTPUT.PUT_LINE('STUDENT Percentage='|| R1.per);
 14  END LOOP;
 15  CLOSE c1;
 16  END;
 17  /
Enter value for u_per: 101
old   6: U_per:=&U_per;
new   6: U_per:=101;
STUDENT NO=101
STUDENT NAME=Gauri
STUDENT Percentage=87
STUDENT NO=102
STUDENT NAME=Sakshi
STUDENT Percentage=82.2
STUDENT NO=103
STUDENT NAME=Tanuja
STUDENT Percentage=77.12
STUDENT NO=104
STUDENT NAME=Sejal
STUDENT Percentage=88.2
STUDENT NO=105
STUDENT NAME=Mayuri
STUDENT Percentage=79.3

PL/SQL procedure successfully completed.