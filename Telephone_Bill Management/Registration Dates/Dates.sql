CREATE OR REPLACE TRIGGER dates
AFTER  INSERT ON customer
FOR EACH ROW
BEGIN
    insert into cust_dates values(:NEW.ssn,sysdate);
END;
/