
drop table monthlyPayment;
drop table perDayBudget;
drop table guestMeal;
drop table studentFeedback;
drop table managerInfo;
drop table basicInfo;

CREATE table basicInfo(
studentName varchar(30),
roll number(20),
email varchar(30),
boarder number(10),
blood_grp varchar(5),
dept varchar(10), 
address varchar(100),
room_no varchar(10),
primary key(roll)
);

CREATE table monthlyPayment(
roll number(20),
refund number(10),
meal_off number(10),
current_monthly_payment number(10),
payment_date Date,
foreign key(roll) references basicInfo(roll) ON DELETE CASCADE,
primary key(roll)
);

CREATE table managerInfo(
manager_id number(20),
manager_roll number(20),
dateFrom Date,
dateTo Date,
foreign key(manager_roll) references basicInfo(roll) ON DELETE CASCADE,
primary key(manager_id)
);

CREATE table perDayBudget(
today Date,
manager_id number(20),
total_budget number(10),
meat_cost number(10),
fish_cost number(10),
vegetable_cost number(10),
other_cost number(10),
foreign key(manager_id) references managerInfo(manager_id) ON DELETE CASCADE, 
primary key(today)
);

--no primary key 
CREATE table studentFeedback(
roll number(20),
feedbackDate Date,
feedbackTime varchar(10),
manager_id number(20),
rating number(3),
feedbackComment varchar(100),
foreign key(roll) references basicInfo(roll) ON DELETE CASCADE,
foreign key(manager_id) references managerInfo(manager_id) ON DELETE CASCADE
);

CREATE table guestMeal(
roll number(10),
dinningDate Date,
approve varchar(5),
paymentAmount number(5),
foreign key(roll) REFERENCES basicInfo(roll) ON DELETE CASCADE
);
