
SQL> create table emp(eno int primary key,
  2  ename char(20),
  3  sal float);

Table created.

SQL> insert into emp values(101,'Pallavi',45600);

1 row created.

SQL> insert into emp values(102,'Ishwari',42500);

1 row created.

SQL> insert into emp values(103,'Kaveri',40000);

1 row created.

SQL> insert into emp values(104,'Tejal',50000);

1 row created.

SQL> select * from emp;

       ENO ENAME                       SAL
---------- -------------------- ----------
       101 Pallavi                   45600
       102 Ishwari                   42500
       103 Kaveri                    40000
       104 Tejal                     50000

SQL> DECLARE
  2     CURSOR C1 IS select * from EMP;
  3     R1 EMP%ROWTYPE;
  4  BEGIN
  5     FOR R1 IN C1
  6     LOOP
  7       DBMS_OUTPUT.PUT_LINE('EMP no='|| R1.Eno);
  8       DBMS_OUTPUT.PUT_LINE('EMP name='|| R1.Ename);
  9       DBMS_OUTPUT.PUT_LINE('EMP salary='|| R1.sal);
 10     END LOOP;
 11  END;
 12  /
EMP no=101
EMP name=Pallavi
EMP salary=45600
EMP no=102
EMP name=Ishwari
EMP salary=42500
EMP no=103
EMP name=Kaveri
EMP salary=40000
EMP no=104
EMP name=Tejal
EMP salary=50000

PL/SQL procedure successfully completed.

SQL> create OR replace TRIGGER T1 AFTER INSERT
  2  ON EMP
  3  BEGIN
  4    DBMS_OUTPUT.PUT_LINE('Record inserted');
  5  END;
  6  /

Trigger created.

SQL> insert into emp values(105,'Gayatri',56000);
Record inserted

1 row created.

SQL> create OR replace TRIGGER T1 AFTER UPDATE
  2  ON EMP FOR EACH ROW
  3  BEGIN
  4    DBMS_OUTPUT.PUT_LINE('Record Updated');
  5  END;
  6  /

Trigger created.

SQL> update emp set sal=1300;
Record Updated
Record Updated
Record Updated
Record Updated
Record Updated

5 rows updated.

SQL> select * from emp;

       ENO ENAME                       SAL
---------- -------------------- ----------
       101 Pallavi                    1300
       102 Ishwari                    1300
       103 Kaveri                     1300
       104 Tejal                      1300
       105 Gayatri                    1300
