CREATE or REPLACE VIEW delta AS
SELECT c.ssn, c.num, c.seconds
FROM call c;

View created.

CREATE OR REPLACE TRIGGER insert
FOR INSERT ON customer
compound trigger
var call%ROWTYPE;
before statement is
begin
select v.* into var from call v
where rowid =(select max(rowid) from customer);
end before statement;
after statement is
begin
insert into delta values(var.ssn,var.name,var.plan);
end after statement;
end insertion;
/