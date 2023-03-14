## A trigger that maintains the dates on which a customer is inserted in Customer table by storing the date of registration of employee and Customer SSN id in the 'Customer-Dates' table.

## OUTPUT

```sql
SQL> select * from cust_dates;

       SSN DA
---------- ---------
         1 26-DEC-21

SQL> insert into customer values(5,'abi','nam',653546,'ccc');

1 row created.
SQL> select * from cust_dates;

       SSN DA
---------- ---------
         1 26-DEC-21
         5 26-DEC-21

```
