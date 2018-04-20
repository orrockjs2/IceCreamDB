-- Designed for first time database initialization of the Gelati database on a local machine.
-- ONLY USE FOR FIRST TIME SETUP
-- Does not populate tables, only creates them
-- Be sure to use DROP DATABASE Gelati; if you want to reset all data
-- Scotty Orrock


CREATE DATABASE Gelati;

USE Gelati;

CREATE TABLE Employees(
	eid DECIMAL (9,0) primary key,
	employeeName varchar(30),
	employeeAddr varchar(50),
	employeePhone varchar(20)
	);

CREATE TABLE GeneralManagers(
	eid DECIMAL(9,0),
	storeNum DECIMAL(4,0),
	salary DECIMAL(8,2),
	vacationDays DECIMAL (2,0)
	);

CREATE TABLE Hourly(
	eid DECIMAL(9,0),
	storeNum DECIMAL(4,0),
	wage DECIMAL(4,2),
	hoursWorked DECIMAL(3,2)
	);

CREATE TABLE Clerical(
	eid DECIMAL(9,0),
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

CREATE TABLE GelatiOrder(
	orderNum DECIMAL(12,0) primary key,
	storeNum DECIMAL(4,0),
	dateOrdered DATE,
	dateDue DATE,
	flavorList BLOB,
	materialList BLOB
	);

CREATE TABLE Production(
	facilityNum DECIMAL (4,0) primary key
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
	storeNum DECIMAL(4,0) primary key,
	sales DECIMAL(12,2),
	city varchar(40)
	);

ALTER TABLE GelatiOrder
	add constraint
	foreign key(storeNum) references Stores(storeNum);

ALTER TABLE GeneralManagers
	add constraint
	foreign key(storeNum) references Stores(storeNum);

ALTER TABLE Hourly
	add constraint
	foreign key(storeNum) references Stores(storeNum);


