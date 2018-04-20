-- Insert Store Data
INSERT INTO Stores VALUES (1, 11200.20, 'Richmond');
INSERT INTO Stores VALUES (2, 10900.70, 'Midlothian');
INSERT INTO Stores VALUES (3, 9080.45, 'Miami');
INSERT INTO Stores VALUES (4, 15000.67, 'Leesburg');
INSERT INTO Stores VALUES (5, 13930.36, 'Charlottesville');
INSERT INTO Stores VALUES (6, 5460.23, 'Boston');
INSERT INTO Stores VALUES (7, 8023.10, 'Las Vegas');
INSERT INTO Stores VALUES (8, 14083.27, 'San Fransisco');
INSERT INTO Stores VALUES (9, 20489.38, 'Dallas');
INSERT INTO Stores VALUES (10, 7203.59, 'New York City');

-- Insert Customer Data
INSERT INTO Customer VALUES (1, 'Chocolate', 'Jim Halpert', 10);
INSERT INTO Customer VALUES (2, 'Vanilla', 'Pam Beesly', 15);
INSERT INTO Customer VALUES (3, 'Strawberry', 'Dwight Schrute', 20);
INSERT INTO Customer VALUES (4, 'Coffee', 'Michael Scott',18);
INSERT INTO Customer VALUES (5, 'Cookie Dough', 'Andy Bernard', 9);
INSERT INTO Customer VALUES (6, 'Oreo', 'Kevin Malone', 4);
INSERT INTO Customer VALUES (7, 'Banana', 'Erin Hannon', 8);
INSERT INTO Customer VALUES (8, 'Coconut', 'Toby Flenderson', 1);
INSERT INTO Customer VALUES (9, 'Butter Pecan', 'Angela Martain', 12);
INSERT INTO Customer VALUES (10, 'Peanut Butter', 'Ryan Howard', 25);
INSERT INTO Customer VALUES (11, 'Chocolate', 'Stanley Hudson', 2);
INSERT INTO Customer VALUES (12, 'Vanilla', 'Kelly Kapoor', 25);
INSERT INTO Customer VALUES (13, 'Strawberry', 'Holly Flax', 17);
INSERT INTO Customer VALUES (14, 'Coffee', 'Gabe Lewis',4);
INSERT INTO Customer VALUES (15, 'Cookie Dough', 'Robert California', 8);
INSERT INTO Customer VALUES (16, 'Oreo', 'Roy Anderson', 16);
INSERT INTO Customer VALUES (17, 'Banana', 'Jan Levinson', 20);
INSERT INTO Customer VALUES (18, 'Coconut', 'Creed Bratton', 12);
INSERT INTO Customer VALUES (19, 'Butter Pecan', 'Charles Miner', 12);
INSERT INTO Customer VALUES (20, 'Peanut Butter', 'Darryl Philbin', 30);
INSERT INTO Customer VALUES (21, 'Chocolate', 'Nellie Bertram', 26);
INSERT INTO Customer VALUES (22, 'Vanilla', 'Phyllis Vance', 27);
INSERT INTO Customer VALUES (23, 'Strawberry', 'Oscar Martinez', 21);
INSERT INTO Customer VALUES (24, 'Coffee', 'Barney Stinson',30);
INSERT INTO Customer VALUES (25, 'Cookie Dough', 'Ted Mosby', 34);
INSERT INTO Customer VALUES (26, 'Oreo', 'Robin Scherbatsky', 32);
INSERT INTO Customer VALUES (27, 'Banana', 'Lily Aldrin', 28);
INSERT INTO Customer VALUES (28, 'Coconut', 'Marshall Erikson', 37);
INSERT INTO Customer VALUES (29, 'Butter Pecan', 'Jon Dorian', 45);
INSERT INTO Customer VALUES (30, 'Peanut Butter', 'Christopher Turk', 25);
INSERT INTO Customer VALUES (31, 'Chocolate', 'Elliot Reed', 31);
INSERT INTO Customer VALUES (32, 'Vanilla', 'Bob Kelso', 50);
INSERT INTO Customer VALUES (33, 'Strawberry', 'Carla Espinosa', 27);
INSERT INTO Customer VALUES (34, 'Coffee', 'Fez Johnson',112);
INSERT INTO Customer VALUES (35, 'Cookie Dough', 'Donna Pinciotti', 63);
INSERT INTO Customer VALUES (36, 'Oreo', 'Steven Hyde', 44);
INSERT INTO Customer VALUES (37, 'Banana', 'Eric Forman', 58);
INSERT INTO Customer VALUES (38, 'Coconut', 'Jackie Burkhart', 17);
INSERT INTO Customer VALUES (39, 'Butter Pecan', 'Michael Kelso', 38);
INSERT INTO Customer VALUES (40, 'Peanut Butter', 'Red Forman', 47);
INSERT INTO Customer VALUES (41, 'Chocolate', 'Rachel Green', 28);
INSERT INTO Customer VALUES (42, 'Vanilla', 'Phoebe Buffay', 83);
INSERT INTO Customer VALUES (43, 'Strawberry', 'Chandler Bing', 37);
INSERT INTO Customer VALUES (44, 'Coffee', 'Joey Tribbiani',82);
INSERT INTO Customer VALUES (45, 'Cookie Dough', 'Monica Geller', 73);
INSERT INTO Customer VALUES (46, 'Oreo', 'Ross Geller', 93);
INSERT INTO Customer VALUES (47, 'Banana', 'Emily Waltham', 48);
INSERT INTO Customer VALUES (48, 'Coconut', 'Pablo Escobar', 63);
INSERT INTO Customer VALUES (49, 'Butter Pecan', 'Sam Malone', 36);
INSERT INTO Customer VALUES (50, 'Peanut Butter', 'Michael Jordan', 72);

-- Insert Stock Data
INSERT INTO Stock VALUES (1, 'Metal Spoon', 'material', 10, NULL);
INSERT INTO Stock VALUES (2, 'Plastic Spoon', 'material', 10, NULL);
INSERT INTO Stock VALUES (3, 'Small Cup', 'material', 10, NULL);
INSERT INTO Stock VALUES (4, 'Regular Cup', 'material', 10, NULL);
INSERT INTO Stock VALUES (5, 'Large Cup', 'material', 10, NULL);
INSERT INTO Stock VALUES (6, 'Small Cone', 'material', 10, NULL);
INSERT INTO Stock VALUES (7, 'Regular Cone', 'material', 10, NULL);
INSERT INTO Stock VALUES (8, 'Large Cone', 'material', 10, NULL);
INSERT INTO Stock VALUES (9, 'Small Lid', 'material', 10, NULL);
INSERT INTO Stock VALUES (10, 'Regular Lid', 'material', 10, NULL);
INSERT INTO Stock VALUES (11, 'Large Lid', 'material', 10, NULL);
INSERT INTO Stock VALUES (12, 'Chocolate', 'flavor', 10, "2018-07-03");
INSERT INTO Stock VALUES (13, 'Vanilla', 'flavor', 10,  "2018-08-12");
INSERT INTO Stock VALUES (14, 'Strawberry', 'flavor', 10,  "2018-05-15");
INSERT INTO Stock VALUES (15, 'Coffee', 'flavor', 10,  "2018-06-19");
INSERT INTO Stock VALUES (16, 'Cookie Dough', 'flavor', 10,  "2018-09-23");
INSERT INTO Stock VALUES (17, 'Oreo', 'flavor', 10,  "2018-04-21");
INSERT INTO Stock VALUES (18, 'Banana', 'flavor', 10,  "2018-08-30");
INSERT INTO Stock VALUES (19, 'Coconut', 'flavor', 10,  "2018-11-24");
INSERT INTO Stock VALUES (20, 'Butter Pecan', 'flavor', 10,  "2018-12-16");
INSERT INTO Stock VALUES (21, 'Peanut Butter', 'flavor', 10,  "2018-10-26");

DROP TABLE FlavorOrder;
CREATE TABLE FlavorOrder(
	orderNum DECIMAL(12,0) primary key,
	storeNum DECIMAL(4,0),
	dateOrdered DATE,
	dateDue DATE,
	flavorList ENUM('Chocolate', 'Vanilla','Strawberry','Coffee','Cookie Dough','Oreo','Banana', 'Coconut','Butter Pecan', 'Peanut Butter')
	);
-- Insert FlavorOrder Data
INSERT INTO FlavorOrder VALUES (1, 1, "2018-04-15", "2018-04-29",'Chocolate');
INSERT INTO FlavorOrder VALUES (2, 1, "2018-04-01", "2018-04-15",'Vanilla');
INSERT INTO FlavorOrder VALUES (3, 1, "2018-04-12", "2018-04-26",'Strawberry');
INSERT INTO FlavorOrder VALUES (4, 1, "2018-04-13", "2018-04-27",'Coffee');
INSERT INTO FlavorOrder VALUES (5, 1, "2018-04-23", "2018-05-27",'Cookie Dough');

INSERT INTO FlavorOrder VALUES (6, 2, "2018-04-01", "2018-04-15",'Oreo');
INSERT INTO FlavorOrder VALUES (7, 2, "2018-04-03", "2018-04-17",'Banana');
INSERT INTO FlavorOrder VALUES (8, 2, "2018-04-06", "2018-04-20",'Coconut');
INSERT INTO FlavorOrder VALUES (9, 2, "2018-04-24", "2018-05-08",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (10, 2, "2018-04-15", "2018-04-29",'Peanut Butter');

INSERT INTO FlavorOrder VALUES (11, 3, "2018-04-16", "2018-04-30",'Chocolate');
INSERT INTO FlavorOrder VALUES (12, 3, "2018-04-05", "2018-04-20",'Vanilla');
INSERT INTO FlavorOrder VALUES (13, 3, "2018-04-22", "2018-05-06",'Strawberry');
INSERT INTO FlavorOrder VALUES (14, 3, "2018-04-30", "2018-05-14",'Coffee');
INSERT INTO FlavorOrder VALUES (15, 3, "2018-04-25", "2018-05-09",'Cookie Dough');

INSERT INTO FlavorOrder VALUES (16, 4, "2018-04-26", "2018-05-10",'Oreo');
INSERT INTO FlavorOrder VALUES (17, 4, "2018-04-27", "2018-05-11",'Banana');
INSERT INTO FlavorOrder VALUES (18, 4, "2018-04-28", "2018-05-12",'Coconut');
INSERT INTO FlavorOrder VALUES (19, 4, "2018-04-29", "2018-05-13",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (20, 4, "2018-04-04", "2018-04-18",'Peanut Butter');

INSERT INTO FlavorOrder VALUES (21, 5, "2018-04-27", "2018-05-11",'Chocolate');
INSERT INTO FlavorOrder VALUES (22, 5, "2018-04-07", "2018-04-21",'Vanilla');
INSERT INTO FlavorOrder VALUES (23, 5, "2018-04-14", "2018-04-28",'Strawberry');
INSERT INTO FlavorOrder VALUES (24, 5, "2018-04-08", "2018-04-22",'Coffee');
INSERT INTO FlavorOrder VALUES (25, 5, "2018-04-03", "2018-04-17",'Cookie Dough');

INSERT INTO FlavorOrder VALUES (26, 6, "2018-04-01", "2018-04-15",'Oreo');
INSERT INTO FlavorOrder VALUES (27, 6, "2018-04-13", "2018-04-27",'Banana');
INSERT INTO FlavorOrder VALUES (28, 6, "2018-04-15", "2018-04-29",'Coconut');
INSERT INTO FlavorOrder VALUES (29, 6, "2018-04-03", "2018-04-17",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (30, 6, "2018-04-06", "2018-04-20",'Peanut Butter');

INSERT INTO FlavorOrder VALUES (31, 7, "2018-04-02", "2018-04-16",'Chocolate');
INSERT INTO FlavorOrder VALUES (32, 7, "2018-04-07", "2018-04-21",'Vanilla');
INSERT INTO FlavorOrder VALUES (33, 7, "2018-04-13", "2018-04-27",'Strawberry');
INSERT INTO FlavorOrder VALUES (34, 7, "2018-04-19", "2018-05-03",'Coffee');
INSERT INTO FlavorOrder VALUES (35, 7,  "2018-04-30", "2018-05-14",'Cookie Dough');

INSERT INTO FlavorOrder VALUES (36, 8, "2018-04-17", "2018-05-01",'Oreo');
INSERT INTO FlavorOrder VALUES (37, 8, "2018-04-18", "2018-05-02",'Vanilla');
INSERT INTO FlavorOrder VALUES (38, 8, "2018-04-15", "2018-04-29",'Coconut');
INSERT INTO FlavorOrder VALUES (39, 8, "2018-04-16", "2018-04-30",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (40, 8, "2018-04-03", "2018-04-17",'Peanut Butter');

INSERT INTO FlavorOrder VALUES (41, 9, "2018-04-06", "2018-04-20",'Chocolate');
INSERT INTO FlavorOrder VALUES (42, 9, "2018-04-26", "2018-05-10",'Vanilla');
INSERT INTO FlavorOrder VALUES (43, 9, "2018-04-01", "2018-04-15",'Strawberry');
INSERT INTO FlavorOrder VALUES (44, 9, "2018-04-16", "2018-04-30",'Coffee');
INSERT INTO FlavorOrder VALUES (45, 9, "2018-04-12", "2018-04-26",'Cookie Dough');

INSERT INTO FlavorOrder VALUES (46, 10, "2018-04-10", "2018-04-24",'Oreo');
INSERT INTO FlavorOrder VALUES (47, 10, "2018-04-23", "2018-04-07",'Vanilla');
INSERT INTO FlavorOrder VALUES (48, 10, "2018-04-04", "2018-04-18",'Coconut');
INSERT INTO FlavorOrder VALUES (49, 10, "2018-04-05", "2018-04-19",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (50, 10, "2018-04-16", "2018-04-30",'Peanut Butter');


