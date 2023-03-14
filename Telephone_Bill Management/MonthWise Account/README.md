## A trigger that will generate bill with an amount of $0 for each registered customer at the beginning of each month.

## OUTPUT

```
SQL> select * from bill;

       SSN      MONTH       YEAR     AMOUNT
---------- ---------- ---------- ----------
         1          2       2020          22
         2          2       2020          21



SQL> update bill set month=2;
bill of the month
customer name: hari
amount: 22
bill of the month
customer name: ram
amount: 21

2 row updated.

SQL> select * from bill;

       SSN      MONTH       YEAR     AMOUNT
---------- ---------- ---------- ----------
         1          2       2020          0
         2          2       2020          0
```
