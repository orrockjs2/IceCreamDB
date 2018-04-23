DROP DATABASE Gelati;

CREATE DATABASE Gelati;

USE Gelati;

CREATE TABLE Employees(
	eid INT (9) NOT NULL primary key AUTO_INCREMENT,
	employeeName varchar(30),
	employeeAddr varchar(50),
	employeePhone varchar(20)
	);

CREATE TABLE GeneralManagers(
	eid INT (9)NOT NULL primary key AUTO_INCREMENT,
	storeNum INT(4)NOT NULL,
	salary DECIMAL(8,2),
	vacationDays DECIMAL (2,0)
	);

CREATE TABLE Hourly(
	eid INT (9)NOT NULL primary key AUTO_INCREMENT,
	storeNum INT(4)NOT NULL,
	wage DECIMAL(4,2),
	hoursWorked DECIMAL(5,2)
	);

CREATE TABLE Clerical(
	eid INT (9)NOT NULL primary key AUTO_INCREMENT ,
	facilityNum INT(4)NOT NULL,
	jobTitle varchar(30),
	salary DECIMAL(8,2),
	NDAStatus ENUM('yes', 'no'),
	vacationDays DECIMAL(2,0)
	);


ALTER TABLE GeneralManagers
	add constraint
	foreign key(eid) references Employees(eid)
    ON DELETE CASCADE;

ALTER TABLE Hourly
	add constraint 
	foreign key(eid) references Employees(eid)
    ON DELETE CASCADE;

ALTER TABLE Clerical
	add constraint
	foreign key(eid) references Employees(eid)
    ON DELETE CASCADE;
    
CREATE TABLE FlavorOrder(
	orderNum INT(12) primary key NOT NULL AUTO_INCREMENT,
	storeNum INT(4),
	facilityNum INT (4),
	dateOrdered DATE,
	dateDue DATE,
	flavorList ENUM('Chocolate', 'Vanilla','Strawberry','Coffee','Cookie Dough','Oreo','Banana', 'Coconut','Butter Pecan', 'Peanut Butter')
	);
    
    CREATE TABLE MaterialOrder(
	orderNum INT(12) primary key NOT NULL AUTO_INCREMENT,
	storeNum INT(4),
	facilityNum INT(4),
	dateOrdered DATE,
	dateDue DATE,
	materialList ENUM('Metal Spoon', 'Plastic Spoon','Small Cup','Regular Cup','Large Cup','Small Cone','Regular Cone','Large Cone','Small Lid','Regular Lid','Large Lid')
	);

CREATE TABLE Production(
	facilityNum INT (4) primary key NOT NULL AUTO_INCREMENT
	);

CREATE TABLE Stock(
	stockID DECIMAL(9,0) primary key,
	stockName varchar(30),
	stockType ENUM('material', 'flavor'),
	quantity DECIMAL(9,0),
	expirationDate DATE
	);

CREATE TABLE Customer(
	loyaltyID INT(9) primary key NOT NULL AUTO_INCREMENT,
    storeNum INT(4),
	favoriteFlavor varchar(30),
	custName varchar(30),
	visitCount DECIMAL(4,0)
	);

CREATE TABLE Stores(
	storeNum INT(4) primary key NOT NULL AUTO_INCREMENT,
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
