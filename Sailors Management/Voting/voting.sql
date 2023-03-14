CREATE OR REPLACE FUNCTION voting(mi IN number) 
   RETURN number IS 
mage number;
out number;
type com is varray (10) of sailors.rating%type; 
var com;
type  con is varray (10) of sailors.sname%type;
na con;
type  cal is varray (10) of boats.bname%type;
ca cal;
begin
select s.age into out from sailors s 
where s.age in (select min(s.age) from sailors s);
select rating bulk collect into var from sailors;
for i in var.FIRST..var.LAST
LOOP
select count(sname) into mage from sailors where rating=var(i);
if mage>2 then
select s.sid bulk collect into na from sailors s where s.rating=var(i) and 
s.age>mi;
end if;
end loop;
for j in na.FIRST..na.LAST
LOOP
select r.bname bulk collect into ca from boats r, reserves b where b.sid=na(j) and 
b.bid=r.bid;
end loop;
for k in ca.first..ca.last
loop
dbms_output.put_line('boot name is: '||ca(k));
end loop;
return(out);
EXCEPTION
when value_error then
dbms_output.put_line('no sailors match the requirements');
return(out);
end;
/