CREATE OR REPLACE TRIGGER discount
FOR UPDATE OF month ON bill
compound trigger
    cursor c is
        select b.*,c.name from bill b,customer c where b.ssn=c.ssn;
before statement is
begin
for cur in c
loop
if cur.amount>5000 then
dbms_output.put_line('bill of the month');
dbms_output.put_line('customer name: '|| cur.name);
dbms_output.put_line('original amount: '|| cur.amount);
dbms_output.put_line('after discount: '|| cur.amount*0.05);
else
dbms_output.put_line('bill of the month');
dbms_output.put_line('customer name: '|| cur.name);
dbms_output.put_line('original amount: '|| cur.amount);
dbms_output.put_line('no dicount for you');
end if;
end loop;
end before statement;
AFTER STATEMENT is
begin
    update bill set amount=0;
end after statement;
END discount;
/