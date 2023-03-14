CREATE OR REPLACE FUNCTION mangement
      RETURN BOOLEAN IS
oldest varchar(20);
booked number;
out boolean;
begin
select s.sname into oldest from sailors s 
where s.age in (select max(s.age) from sailors s);
select count(r.sid) into booked from reserves r where r.sid in (select s.sid 
from sailors s where s.sname=oldest);
if booked>50 then 
out:=true;
else 
out:=false;
end if;
if out=true then
update sailors set rating=rating+10 where sname=oldest;
else
update sailors set rating=rating-15 where sname=oldest;
end if;
return(out);
end;
