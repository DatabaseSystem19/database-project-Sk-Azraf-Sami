--------- PL/SQL variable declaration and print value
SET SERVEROUTPUT ON 
DECLARE 
    v_name  basicInfo.studentName%TYPE;
    v_email basicInfo.email%TYPE;
    BEGIN
    SELECT studentName, email 
    INTO v_name, v_email 
    FROM basicInfo
    WHERE roll = 1907115; 
    DBMS_OUTPUT.PUT_LINE('Student Name: '|| v_name || ' and Email: ' || v_email);
END;
/

--------- Insert and set default value
----- this portion will be run only once 
SET SERVEROUTPUT ON 
DECLARE 
    v_name  basicInfo.studentName%TYPE := 'Biduyt';
    v_roll basicInfo.roll%TYPE := 1907118;
    v_email basicInfo.email%TYPE := 'biduyt@gmail.com';
    v_boarder basicInfO.boarder%TYPE := 2059;
    v_blood_grp basicInfo.blood_grp%TYPE := 'O+'; 
    v_dept basicInfo.dept%Type := 'CSE';
    v_address basicInfo.address%TYPE := 'Sylhet';
    v_room_no basicInfo.room_no%TYPE := 112; 

    BEGIN
    INSERT INTO basicInfo VALUES(v_name,v_roll,v_email,v_boarder,v_blood_grp,v_dept,v_address,v_room_no);
END;
/
SELECT * FROM basicInfo;

---------Row type
SET SERVEROUTPUT ON 
DECLARE
    v_roll NUMBER := 1907112;
    v_row   basicInfo%ROWTYPE; 
    BEGIN 
    SELECT studentName, boarder
    INTO v_row.studentName, v_row.boarder
    FROM basicInfo
    WHERE roll = v_roll; 
    DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_row.studentName || ' and boarder: ' || v_row.boarder);
END;
/

----------- Cursor and row count
SET SERVEROUTPUT ON 
DECLARE 
    CURSOR meal_cursor IS
    SELECT * FROM guestMeal;
    meal_row    guestMeal%ROWTYPE;
    BEGIN
    OPEN meal_cursor;
    FETCH meal_cursor 
    INTO meal_row.roll,meal_row.dinningDate, meal_row.approve, meal_row.paymentAmount;
    WHILE meal_cursor%FOUND LOOP
    DBMS_OUTPUT.PUT_LINE('Roll: '|| meal_row.roll || ' Dinning Date: ' || meal_row.dinningDate || ' Approve: ' || meal_row.approve || ' Payment: ' || meal_row.paymentAmount);
    DBMS_OUTPUT.PUT_LINE('ROW COUNT: ' || meal_cursor%ROWCOUNT);
    FETCH meal_cursor 
    INTO meal_row.roll,meal_row.dinningDate, meal_row.approve, meal_row.paymentAmount;
    END LOOP;
    CLOSE meal_cursor; 
END;
/
--------- FUNCTION
SET SERVEROUTPUT ON 
CREATE OR REPLACE FUNCTION fun(stuRoll NUMBER)
RETURN VARCHAR AS 
value basicInfo.blood_grp%TYPE;  ---- value === > in hand cash 
BEGIN 
    SELECT blood_grp INTO value FROM basicInfo WHERE roll = stuRoll;
    return value;
END;
/

SET SERVEROUTPUT ON 
DECLARE 
    value basicInfo.blood_grp%TYPE;
    BEGIN
    value:=fun(1907115);
    DBMS_OUTPUT.PUT_LINE(value);
END;
/
drop function fun;

--------- Procedure 
--------- Find Manager Name form ID 
CREATE OR REPLACE PROCEDURE proc(
  var1 IN NUMBER,
  var2 OUT VARCHAR2,
  
  var3 IN OUT NUMBER,
  var4 IN OUT VARCHAR2
) AS
show_message CHAR(30);
BEGIN
    show_message := 'From Procedure';
    SELECT studentName INTO var2 FROM basicInfo where
    roll = (SELECT manager_roll FROM managerInfo WHERE manager_id = var1);
    SELECT studentName INTO var4 FROM basicInfo where
    roll = (SELECT manager_roll FROM managerInfo WHERE manager_id = var3); 
    
    DBMS_OUTPUT.PUT_LINE(show_message || ' Manager ID: ' || var1 || ' and Name: ' || var2);
    DBMS_OUTPUT.PUT_LINE(show_message || ' Manager ID: ' || var3 || ' and Name: ' || var4);
END;
/

set serveroutput on
declare 
    var1 NUMBER := 2;
    var2 VARCHAR(20);
    var3 NUMBER := 5;
    var4 VARCHAR(20); 
    begin
    proc(var1,var2,var3,var4);
end;
/
drop procedure proc;

---------Store Rolls of students in array whose deparment is 'CSE'
SET SERVEROUTPUT ON 
DECLARE 
    TYPE RollArray IS TABLE OF basicInfo.roll%TYPE INDEX BY PLS_INTEGER;
    vRoll RollArray;
BEGIN 
    vRoll := RollArray();
  -- Retrieve and store 'CSE' department names in the array
  FOR i IN (SELECT roll FROM basicInfo WHERE dept = 'CSE') LOOP
    vRoll(vRoll.COUNT + 1) := i.roll;
  END LOOP;

  -- Print all department names
  FOR i IN 1..vRoll.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE(vRoll(i));
  END LOOP;
END;
/
--------------------------Get the value of total amount of cash in hand of manager per day-----
SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION fun(calDate DATE)
  RETURN NUMBER AS 
  v_in_hand_cash NUMBER; 
BEGIN
  DECLARE
    v_total_budget NUMBER(10);
    v_meat_cost NUMBER(10);
    v_fish_cost NUMBER(10);
    v_vegetable_cost NUMBER(10);
    v_other_cost NUMBER(10);
    v_total_cost NUMBER(10); 
  BEGIN
    SELECT total_budget, meat_cost, fish_cost, vegetable_cost, other_cost
    INTO v_total_budget, v_meat_cost, v_fish_cost, v_vegetable_cost, v_other_cost
    FROM perDayBudget
    WHERE today = calDate;

    v_total_cost := v_meat_cost + v_fish_cost + v_vegetable_cost + v_other_cost;
    v_in_hand_cash := v_total_budget - v_total_cost;
    RETURN v_in_hand_cash;
  END;
END;
/

SET SERVEROUTPUT ON

DECLARE 
  value NUMBER(10);
BEGIN
  value := fun(TO_DATE('2023-05-01', 'YYYY-MM-DD'));
  DBMS_OUTPUT.PUT_LINE(value);
END;
/


