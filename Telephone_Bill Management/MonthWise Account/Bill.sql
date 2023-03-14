CREATE OR REPLACE TRIGGER billing
FOR UPDATE OF month ON bill
compound trigger
cursor c is
   select b.*,c.name from bill b,customer c where b.ssn=c.ssn;
before statement is
begin
for cur in c
loop
dbms_output.put_line('bill of the month');
dbms_output.put_line('customer name: '|| cur.name);
dbms_output.put_line('amount: '|| cur.amount);
end loop;
end before statement;
AFTER STATEMENT is
begin
   update bill set amount=0;
end after statement;
END billing;
/