## A trigger that will update the customer bill after each phone call is made.

# OUTPUT

```sql
SQL> select * from bill;

       SSN       YEAR     AMOUNT
---------- ---------- ----------
         1       2020         24


SQL> select * from customer;

       SSN NAME                 SURNAME                               NUM
---------- -------------------- ------------------------------ ----------
PLAN
--------------------
         1 hari                 sankar                                213
aaa

SQL> select * from plan;

CODE                       CONN        PPS
-------------------- ---------- ----------
aaa                          11          1

SQL> insert into call values(1,null,21,53342,12);
Updating Bill

1 row created.

SQL> select * from bill;

       SSN       YEAR     AMOUNT
---------- ---------- ----------
         1       2020         36
```
