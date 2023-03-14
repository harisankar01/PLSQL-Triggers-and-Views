### To find the name of sailors who have reserved boat of particular two colors. If no sailor is found, then a error message must be give and if sailors are found, the total bid value of such sailors has to be found.

INPUT -> Colors

OUTPUT -> Bid values if Sailors are found or error.

## OUTPUT

```sql

SQL> select * from boats;

       BID BNAME                COLOR
---------- -------------------- --------------------
         1 pearl                black
         2 titanic              white

SQL> insert into reserves values(1,1,sysdate);


SQL> begin
  2  boating('black','white');
  3  end;
  4  /
total bid value: 8

PL/SQL procedure successfully completed.

SQL> call boating('c','r');
No employee match for the given ID

Call completed.

```
