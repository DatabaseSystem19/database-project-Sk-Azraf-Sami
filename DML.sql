----------**************** Insert Data  *****************------------------------
--------- insert data into basicInfo Table 
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Soummo',1907105,'soummo@gmail.com',2046,'B+','CSE','Mymensingh','112');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Adnan',1907106,'adnan@gmail.com',2047,'A-','ESE','Dhaka','117');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Atik',1907107,'atik@gmail.com',2048,'O+','ECE','Gaibandha','111');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Labib',1907108,'labib@gmail.com',2049,'A+','CSE','Khulna','112');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Sumon',1907109,'sumon@gmail.com',2050,'AB+','CSE','Jessore','113');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Robayed',1907110,'robayed@gmail.com',2051,'A+','EEE','Faridpur','110');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Wasif',1907112,'wasif@gmail.com',2053,'O+','ME','Dhaka','117');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Rabbi',1907113,'rabbi@gmail.com',2054,'AB+','CE','Narayanganj','000');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('George',1907114,'george@gmail.com',2055,'AB+','CSE','Dhaka','110');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Sami',1907115,'sami@gmail.com',2056,'A+','CSE','Dhaka','117');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Arghya',1907116,'arghya@gmail.com',2057,'B+','CSE','Dhaka','118');
insert into basicInfo(studentName,roll,email,boarder,blood_grp,dept,address,room_no) 
values('Rian',1907117,'rian@gmail.com',2058,'O+','MSE','Gazipur','118');

---------- insert data into monthlyPayment Table
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907106,110,8,2050,TO_DATE('2023-06-07', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907105,50,2,2050,TO_DATE('2023-06-07', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907110,70,2,2050,TO_DATE('2023-06-10', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907112,90,3,2050,TO_DATE('2023-06-11', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907115,100,5,2050,TO_DATE('2023-06-09', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907116,80,4,2050,TO_DATE('2023-06-05', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907108,40,2,2050,TO_DATE('2023-06-08', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907109,75,3,2050,TO_DATE('2023-06-08', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907107,150,10,2050,TO_DATE('2023-06-12', 'YYYY-MM-DD'));
insert into monthlyPayment(roll,refund,meal_off,current_monthly_payment,payment_date) 
values(1907114,125,9,2050,TO_DATE('2023-06-15', 'YYYY-MM-DD'));

----------- insert data into managerInfo
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(02,1907115,TO_DATE('2023-01-01', 'YYYY-MM-DD'),TO_DATE('2023-01-31', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(05,1907112,TO_DATE('2023-02-01', 'YYYY-MM-DD'),TO_DATE('2023-02-28', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(06,1907114,TO_DATE('2023-03-01', 'YYYY-MM-DD'),TO_DATE('2023-03-31', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(07,1907116,TO_DATE('2023-04-01', 'YYYY-MM-DD'),TO_DATE('2023-04-30', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(08,1907113,TO_DATE('2023-05-01', 'YYYY-MM-DD'),TO_DATE('2023-05-31', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(09,1907110,TO_DATE('2023-06-01', 'YYYY-MM-DD'),TO_DATE('2023-06-30', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(10,1907108,TO_DATE('2022-07-01', 'YYYY-MM-DD'),TO_DATE('2022-07-31', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(03,1907109,TO_DATE('2022-08-01', 'YYYY-MM-DD'),TO_DATE('2022-08-31', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(04,1907105,TO_DATE('2022-09-01', 'YYYY-MM-DD'),TO_DATE('2022-09-30', 'YYYY-MM-DD'));
insert into managerInfo(manager_id,manager_roll,dateFrom,dateTo) 
values(01,1907106,TO_DATE('2022-10-01', 'YYYY-MM-DD'),TO_DATE('2022-10-31', 'YYYY-MM-DD'));


---------- insert data into perDayBudget 
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-01', 'YYYY-MM-DD'),02,35000,15000,10000,5000,4000);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-02', 'YYYY-MM-DD'),02,30000,15000,10000,5000,000);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-03', 'YYYY-MM-DD'),02,40000,20000,18000,1500,300);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-04', 'YYYY-MM-DD'),02,35000,14000,9000,6000,400);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-05', 'YYYY-MM-DD'),02,32000,15000,10000,5800,100);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-06', 'YYYY-MM-DD'),02,60000,40000,10000,8000,2000);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-07', 'YYYY-MM-DD'),02,35000,15000,10000,5000,4500);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-08', 'YYYY-MM-DD'),02,35000,15000,10000,5000,4800);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-09', 'YYYY-MM-DD'),02,30000,12000,14000,3000,500);
insert into perDayBudget(today,manager_id,total_budget,meat_cost,fish_cost,vegetable_cost,other_cost) 
values(TO_DATE('2023-05-10', 'YYYY-MM-DD'),02,30000,11000,150000,3000,300);

------------ insert data into studentFeedback
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907116,TO_DATE('2023-05-1', 'YYYY-MM-DD'),'18:02',02,7,'Good');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907114,TO_DATE('2023-05-01', 'YYYY-MM-DD'),'19:05',02,8,'Good');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907113,TO_DATE('2023-05-01', 'YYYY-MM-DD'),'15:06',02,5,'Medium');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907112,TO_DATE('2023-05-01', 'YYYY-MM-DD'),'22:29',02,2,'Bad');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907116,TO_DATE('2023-05-02', 'YYYY-MM-DD'),'14:35',02,10,'Good');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907108,TO_DATE('2023-05-02', 'YYYY-MM-DD'),'14:02',02,9,'Good');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907110,TO_DATE('2023-05-03', 'YYYY-MM-DD'),'17:11',02,8,'Good');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907113,TO_DATE('2023-05-03', 'YYYY-MM-DD'),'20:13',02,01,'Very Bad');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907105,TO_DATE('2023-05-03', 'YYYY-MM-DD'),'21:19',02,10,'Good');
insert into studentFeedback(roll,feedbackDate,feedbackTime,manager_id,rating,feedbackComment) 
values(1907105,TO_DATE('2023-05-04', 'YYYY-MM-DD'),'18:14',02,06,'Not so much good!');

----------- insert data into guestMeal
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907116,TO_DATE('2023-05-01', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907106,TO_DATE('2023-05-02', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907108,TO_DATE('2023-05-02', 'YYYY-MM-DD'),'NO',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907114,TO_DATE('2023-05-03', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907116,TO_DATE('2023-05-03', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907113,TO_DATE('2023-05-03', 'YYYY-MM-DD'),'NO',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907112,TO_DATE('2023-05-04', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907110,TO_DATE('2023-05-05', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907109,TO_DATE('2023-05-06', 'YYYY-MM-DD'),'YES',50);
insert into guestMeal(roll,dinningDate,approve,paymentAmount) 
values(1907107,TO_DATE('2023-05-07', 'YYYY-MM-DD'),'YES',50);

------------************** ********************-------------------
------ delete row from table 
delete from basicInfo where roll=1907117;

------ Updating the data in a table
update basicInfo set studentName='Azraf' where roll=1907115;

------ Displaying table data using SELECT command
select * from studentFeedback where 
roll=(select roll from basicInfo where studentName='Rabbi');

------ Aggregate function
------ count number of boarders 
select count(boarder) as number_of_boarders from basicInfo;

----- Group by and Having
----- Displaying average dinning rating of per-day 
select feedbackDate,avg(rating) from studentFeedback group by feedbackDate;
select feedbackDate,avg(rating) from studentFeedback group by feedbackDate having avg(rating)>6;

------ Nested subquery
------- Get The Name of Manager who get 'Very Bad' feedback 
    select studentName from basicInfo where
    roll=(select manager_roll from managerInfo where 
    manager_id=(select manager_id from studentFeedback where 
    feedbackComment='Very Bad'));

------- Set Membership(AND)
------- Displaying data of students from Dhaka who rated the food above five
select * from basicInfo where address='Dhaka' and 
roll in (select roll from studentFeedback where rating > 5);

---- Exists 
select * from basicInfo where address='Dhaka' and 
EXISTS (select * from studentFeedback where rating>5);

------ String operations
select * from basicInfo where dept like 'E%E';
----- Displaying name of departments which have two letters   
select * from basicInfo where dept like '__'; 

------- Join operations
select * from managerInfo natural join basicInfo where dept='CSE';

------- Views
drop view other_cost_every_day; 
create view other_cost_every_day as select today,total_budget,other_cost from perDayBudget;
SELECT today,other_cost
FROM other_cost_every_day
WHERE other_cost <= 1000;

------- Cascading Actions in Referential Integrity
------- There is no ON UPDATE CASCADE
------- Source: https://stackoverflow.com/questions/22881022/sql-on-delete-cascade-and-on-update-cascade
------- So, update basicInfo set roll = 1907118 where roll=1907115; -> is not working 
DELETE from basicInfo where roll = 1907114; 



