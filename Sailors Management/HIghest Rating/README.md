### A procedure to find the sailor with highes rating amoung the sailors who have reserved a particluar boat with the boat number as input and for the highest sailor, write the average age.

Input -> **Boat number**

Output -> **Avearge Age of the sailors with highest rating who have reserved the boat**

## OUTPUT

```sql
SQL> insert into sailors values(1,'madhan',4,23);

1 row created.

SQL> insert into sailors values(2,'ashis',5,26);

1 row created.

SQL> insert into reserves values(1,1,sysdate);

1 row created.

SQL> insert into reserves values(2,1,sysdate);

1 row created.

SQL> insert into boats values(1,'pearl','black');

1 row created.

SQL> insert into boats values(2,'titanic','white');

1 row created.


SQL> set serveroutput on;
SQL> begin
  2  sailor(1);
  3  end;
  4  /
name of sailor ashis
his rating 5
avg age is 26

PL/SQL procedure successfully completed.

```
