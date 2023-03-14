### Find the sailors that are eligible to vote provided the minimum age as input and for such sailors find the boats reseved by them. Return the yongest age of the sailors.

Input -> Minimum Age

Output -> Age of youngest sailor

```sql
SQL> begin
  2  dbms_output.put_line(voting(18));
  3  end;
  4  /
no sailors match the requirements
19

PL/SQL procedure successfully completed.


```
