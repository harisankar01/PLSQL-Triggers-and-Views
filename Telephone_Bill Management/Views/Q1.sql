SQL> CREATE or REPLACE VIEW details AS
  SELECT c.ssn, c.name, c.plan
  FROM customer c;

View created.


CREATE OR REPLACE TRIGGER insertion
FOR INSERT ON customer
compound trigger
var customer%ROWTYPE;
before statement is
begin
select v.* into var from customer v
where rowid =(select max(rowid) from customer);
end before statement;
after statement is
begin
insert into details values(var.ssn,var.name,var.plan);
end after statement;
end insertion;
/