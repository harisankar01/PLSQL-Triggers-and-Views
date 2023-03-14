## A trigger which will perfrom a discount operation of 5% per call for registerd customers if the total monthly bill exceeds ₹5000

## OUTPUT

```
SQL> update bill set month=3;
bill of the month
customer name: hari
original amount: 0
no dicount for you
bill of the month
customer name: ram
original amount: 0
no dicount for you
bill of the month
customer name: ram
original amount: 6000
after discount: 300


3 rows updated.
SQL> select * from bill;

       SSN      MONTH       YEAR     AMOUNT
---------- ---------- ---------- ----------
         1          3       2020          0
         2          3       2020          0
         2          3       2020          0

```
