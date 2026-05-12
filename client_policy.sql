SQL> create table client(cno int primary key,
  2  cname char(30),
  3  address varchar(30),
  4  DOB date);

Table created.

SQL> create table policy(pno int primary key,
  2  descr varchar(30),
  3  mamt int check(mamt>0),
  4  pamt int check(pamt>0),
  5  pdate date);

Table created.

SQL> create table cp(cno int references client(cno),
  2  pno int references policy(pno));

Table created.

SQL> insert into client values(101,'Gauri','Kolhapur','03-Jan-2007');

1 row created.

SQL> insert into client values(102,'Sakshi','Shrirampur','02-Jan-2006');

1 row created.

SQL> insert into client values(103,'Tanuja','Pune','06-Feb-2004');

1 row created.

SQL> insert into policy values(1,'Health Insurance',60000,3000,'29-Mar-2000');

1 row created.

SQL> insert into policy values(2,'Business Insurance',70000,7000,'03-Sep-2002');

1 row created.

SQL> insert into policy values(3,'Education Insurance',90000,9000,'13-Oct-2008');

1 row created.

SQL> insert into cp values(101,3);

1 row created.

SQL> insert into cp values(103,1);

1 row created.

SQL> insert into cp values(102,2);

1 row created.

SQL> create OR Replace Function Calc(pamt int,mamt int)return int
  2  as
  3  ans int;
  4  BEGIN
  5  ans:=mamt-pamt;
  6  return ans;
  7  END;
  8  /

Function created.

SQL> DECLARE
  2  amt1 policy.pamt%type;
  3  amt2 policy.mamt%type;
  4  ans int;
  5  ucno client.cno%type;
  6  BEGIN
  7  ucno:=&ucno;
  8  select pamt,mamt into amt1,amt2 FROM client,policy,cp Where client.cno=cp.cno and policy.pno=cp.pno and client.cno=ucno;
  9  ans:=calc(amt1,amt2);
 10  DBMS_OUTPUT.PUT_LINE('Total Maturityamt='||ans);
 11  END;
 12  /
Enter value for ucno: 101
old   7: ucno:=&ucno;
new   7: ucno:=101;
Total Maturityamt=81000

PL/SQL procedure successfully completed.

SQL> select * from client;

       CNO CNAME                          ADDRESS
---------- ------------------------------ ------------------------------
DOB
---------
       101 Gauri                          Kolhapur
03-JAN-07

       102 Sakshi                         Shrirampur
02-JAN-06

       103 Tanuja                         Pune
06-FEB-04


SQL> select * from policy;

       PNO DESCR                                MAMT       PAMT PDATE
---------- ------------------------------ ---------- ---------- ---------
         1 Health Insurance                    60000       3000 29-MAR-00
         2 Business Insurance                  70000       7000 03-SEP-02
         3 Education Insurance                 90000       9000 13-OCT-08

SQL> select * from cp;

       CNO        PNO
---------- ----------
       101          3
       103          1
       102          2

SQL>