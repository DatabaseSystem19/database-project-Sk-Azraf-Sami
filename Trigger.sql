-- Trigger to automatically insert the current date in the perDayBudget table when a new row is inserted
CREATE OR REPLACE TRIGGER insert_current_date_trigger
BEFORE INSERT ON perDayBudget
FOR EACH ROW
BEGIN
  :NEW.today := TRUNC(SYSDATE);
END;
/
-----TRUNC take only date, time propotion will be removed from SYSDATE 
DELETE FROM perDayBudget WHERE today = TRUNC(SYSDATE); 

insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-09-10', 'YYYY-MM-DD'),02,30000,11000,150000,3000,300);

SELECT * FROM perDayBudget; 


--------To update the roll column in other tables when it is updated in the basicInfo table, 
CREATE OR REPLACE TRIGGER update_roll_trigger
BEFORE UPDATE OF roll ON basicInfo
FOR EACH ROW
BEGIN
  IF UPDATING THEN
    IF :OLD.roll <> :NEW.roll THEN
      -- Update monthlyPayment table
      UPDATE monthlyPayment
      SET roll = :NEW.roll
      WHERE roll = :OLD.roll;
      
      -- Update managerInfo table
      UPDATE managerInfo
      SET manager_roll = :NEW.roll
      WHERE manager_roll = :OLD.roll;
      
      -- Update studentFeedback table
      UPDATE studentFeedback
      SET roll = :NEW.roll
      WHERE roll = :OLD.roll;
      
      -- Update guestMeal table
      UPDATE guestMeal
      SET roll = :NEW.roll
      WHERE roll = :OLD.roll;
    END IF;
  END IF;
END;
/

update basicInfo set roll=1907122 where roll=1907110;
SELECT * FROM monthlyPayment; 

