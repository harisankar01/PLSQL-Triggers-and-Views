CREATE OR REPLACE PROCEDURE boating(
       col IN varchar,colt in varchar )
is
type name_of_com is varray (10) of sailors.sname%type; 
      name name_of_com;
     ids number:=0;
	final number:=0;
ex_invalid_id  EXCEPTION; 
begin
select s.sname bulk collect into name from sailors s,boats b,reserves r 
where s.sid in (select r.sid from reserves where r.bid in (select b.bid from boats b
where b.color=col or b.color=colt)); 
if name IS NULL then
raise ex_invalid_id;
end  if;
for i in name.first..name.last
loop
select s.sid into ids from sailors s where s.sname=name(i);
final:=final+ids; 
end loop;
dbms_output.put_line('total bid value: '||final);
EXCEPTION
WHEN NO_DATA_FOUND THEN
dbms_output.put_line('No employee match for the given ID');
WHEN ex_invalid_id THEN 
      dbms_output.put_line('No employee match for the given ID');
when value_error then
dbms_output.put_line('No employee match for the given ID');
end;
/