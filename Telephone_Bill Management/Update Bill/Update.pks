CREATE OR REPLACE TRIGGER name
    FOR INSERT ON call
    compound trigger
        price  plan.pps%type;
        amo number;
    before statement is
    begin
        dbms_output.put_line('Updating Bill');
    end before statement;
    AFTER EACH ROW is
    begin
        select p.pps into price from plan p,customer c where c.ssn=:NEW.ssn and c.plan=p.code;
        update bill set bill.amount=mul(price,:new.second) where bill.ssn=:new.ssn;
    end after each row;
    END name;
    /