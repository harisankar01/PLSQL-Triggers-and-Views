CREATE OR REPLACE PROCEDURE sailor(
       num IN number )
    IS
     type name_of_com is varray (10) of sailors.sname%type; 
      name name_of_com;
      coun NUMBER;
     final number:=0;
f_name varchar(20);
ag number;
BEGIN
      SELECT s.sname bulk collect into name 
       from sailors s,boats b, reserves r where s.sid in (select r.sid from reserves r 
	where r.bid=num);
for i in name.first..name.last
loop
select s.rating into coun from sailors s  where s.sname=name(i);
if coun>final then
final:=coun;
f_name:=name(i);
end if;
end loop;
dbms_output.put_line('name of sailor '|| f_name);
dbms_output.put_line('his rating '|| final);
select avg(age) into ag from sailors where sname=f_name;
dbms_output.put_line('avg age is '|| ag);
end;
/