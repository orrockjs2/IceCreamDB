-- Designed for first time database initialization of the Gelati database on a local machine.
-- ONLY USE FOR FIRST TIME SETUP
-- Does not populate tables, only creates them
-- Be sure to use DROP DATABASE Gelati; if you want to reset all data
-- Scotty Orrock

CREATE DATABASE Gelati;

USE Gelati;

CREATE TABLE Employees(
	eid INT (9) primary key,
	employeeName varchar(30),
	employeeAddr varchar(50),
	employeePhone varchar(20)
	);

CREATE TABLE GeneralManagers(
	eid INT (9),
	storeNum INT(4),
	salary DECIMAL(8,2),
	vacationDays DECIMAL (2,0)
	);

CREATE TABLE Hourly(
	eid INT (9),
	storeNum INT(4),
	wage DECIMAL(4,2),
	hoursWorked DECIMAL(5,2)
	);

CREATE TABLE Clerical(
	eid INT (9),
	facilityNum DECIMAL(4,0),
	jobTitle varchar(30),
	salary DECIMAL(8,2),
	NDAStatus ENUM('yes', 'no'),
	vacationDays DECIMAL(2,0)
	);


ALTER TABLE GeneralManagers
	add constraint
	foreign key(eid) references Employees(eid);

ALTER TABLE Hourly
	add constraint 
	foreign key(eid) references Employees(eid);

ALTER TABLE Clerical
	add constraint
	foreign key(eid) references Employees(eid);

CREATE TABLE FlavorOrder(
	orderNum DECIMAL(12,0) primary key,
	storeNum INT(4),
	facilityNum INT (4),
	dateOrdered DATE,
	dateDue DATE,
	flavorList ENUM('Chocolate', 'Vanilla','Strawberry','Coffee','Cookie Dough','Oreo','Banana', 'Coconut','Butter Pecan', 'Peanut Butter')
	);
    
    CREATE TABLE MaterialOrder(
	orderNum DECIMAL(12,0) primary key,
	storeNum INT(4),
	facilityNum INT(4),
	dateOrdered DATE,
	dateDue DATE,
	materialList ENUM('Metal Spoon', 'Plastic Spoon','Small Cup','Regular Cup','Large Cup','Small Cone','Regular Cone','Large Cone','Small Lid','Regular Lid','Large Lid')
	);

CREATE TABLE Production(
	facilityNum INT (4) primary key
	);

CREATE TABLE Stock(
	stockID DECIMAL(9,0) primary key,
	stockName varchar(30),
	stockType ENUM('material', 'flavor'),
	quantity DECIMAL(9,0),
	expirationDate DATE
	);

CREATE TABLE Customer(
	loyaltyID DECIMAL(9,0) primary key,
	favoriteFlavor varchar(30),
	custName varchar(30),
	visitCount DECIMAL(4,0)
	);

CREATE TABLE Stores(
	storeNum INT(4) primary key,
	sales DECIMAL(12,2),
	city varchar(40)
	);

ALTER TABLE FlavorOrder
	add constraint
	foreign key(storeNum) references Stores(storeNum);
    
ALTER TABLE FlavorOrder
	add constraint
    foreign key(facilityNum) references Production(facilityNum);
    
ALTER TABLE MaterialOrder
	add constraint
	foreign key(storeNum) references Stores(storeNum);
    
ALTER TABLE MaterialOrder
	add constraint
	foreign key(facilityNum) references Production(facilityNum);

ALTER TABLE GeneralManagers
	add constraint
	foreign key(storeNum) references Stores(storeNum);

ALTER TABLE Hourly
	add constraint
	foreign key(storeNum) references Stores(storeNum);
