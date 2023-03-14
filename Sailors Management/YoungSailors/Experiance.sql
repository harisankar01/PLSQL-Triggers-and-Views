CREATE OR REPLACE FUNCTION young
   RETURN number IS 
coun number:=0;
cursor c is 
select  s.sname,s.age from sailors s,reserves r where
s.sid in (select ra.sid from reserves ra where ra.bid IS NULL); 
begin
for cur in c
loop
coun:=coun+1;
if cur.age<25 then
dbms_output.put_line('Young sailors');
else
dbms_output.put_line('Experianced sailors');
end if;
end loop;
return(coun);
EXCEPTION
when no_data_found then
dbms_output.put_line('no such sailors');
end;
/
