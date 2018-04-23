-- Scotty Orrock
-- GelatiUpdate.sql populates tables created from GelatiInit.sql
-- Merge of GelatiUpdate1.sql From Viyat with Scotty GelatiUpdate.sql

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



-- Insert employee data
INSERT INTO Employees
VALUES(1, 'Scotty Orrock', '321 W Franklin Street, Richmond VA, 23220', '804-335-8110'), (2, 'Viyat Patel', '500 W Cary Street Richmond VA, 23220', '571-246-3616'), (3, 'Randy Koontz', '4694  Melody Lane, Richmond VA, 23222', '804-364-4208'),
(4, 'Steve Rosser', '4959 Eden Drive, Richmond VA, 23219', '804-858-4296'), (5, 'Kim Rosser', '4959 Eden Drive, Richmond VA, 23219', '804-858-4297'), (6, 'Keith Austin', '4371 Biddie Lane, Richmond VA, 23222', '804-971-3256'),
(7, 'Erlich Bachman', '4089 Hickory Ridge Drive, Las Vegas NV, 89109', '702-698-8814'), (8, 'Richard Hendriks', '1341 Mesa Drive, Las Vegas NV, 89119', '702-361-0013'), (9, 'Ron Swanson','2910 Abia Martin Drive, New York NY, 10011', '646-727-3227'),
(10, 'Leslie Knope', '3304 Redbund Drive, New York NY, 10013', '347-689-8441'), (11, 'Andy Dwyer', '4477 Bicetown Road, New York NY, 10007', '917-476-5197'),
(12, 'April Ludgate', '3247 Gnatty Creek Road, New York NY, 10014', '516-303-5204'), (13, 'Ben Wyatt','4125 Duncan Avenue, New York NY, 10016', '917-594-7929'),
(14, 'Ann Perkins', '387 Elm Drive, New York NY, 10004', '646-502-8307'), (15, 'Tom Haverford', '3030 Pallet Street, New York NY, 10001', '914-368-2716'), (16, 'Jerry Gergich', '3570 Oakwood Avenue, New York NY, 10021', '212-650-4851'),
(17, 'Rick Grimes', '1876 North Street, Charlottesville VA, 22903', '434-963-4767'), (18, 'Carl Grimes', '1876 North Street, Charlottesville VA, 22903', '434-956-7955'), (19, 'Glen Rhee', '1350 Worley Avenue, Charlottesville VA, 22903', '434-293-1567'),
(20, 'Maggie Green', '1361 South Street, Charlottesville VA, 22903', '434-245-0310'), (21, 'Daryl Dixon', '2344 North Street, Charlottesville VA, 22903', '434-970-7758'), (22, 'Morgan Jones', '1306 North Street, Charlottesville VA, 22903', '434-760-6898'),
(23, 'Jesus Monroe', '2346 North Street, Charlottesville VA, 22903', '434-850-8823'), (24, 'Eugene Porter', '312 University Road, Charlottesville VA, 22903', '434-723-7713'), (25, 'Carol Peletier', '402 Allen Drive, Charlottesville VA, 22903', '434-231-8274'), 
(26, 'Negan', '2327 Crestmont Avenue, Charlottesville VA, 22903', '434-997-5478'), (27, 'McLovin', '84 Philli Lane, Miami FL, 74354', '918-544-8319'),(28, 'Fogell', '2702 Sycamore Fork Road, Miami FL, 33179', '786-378-7384'), (29, 'Evan','3070 Steve Hunt Road, Miami FL, 33128','786-759-7359'),
(30, 'Seth', '1171 Warner Street, Miami FL, 33128', '305-939-7615'), (31, 'Tony Stark','1000 Agriculture Lane, Miami FL, 33012','305-200-1257'), (32, 'Hulk', '4357 Oliverio Drive, Leesburg VA, 20175', '703-727-0251'),
(33, 'Captain America', '1934 Nelm Street, Leesburg VA, 20176', '703-431-7750'), (34, 'Black Widow', '1471 Meadowview Drive, Leesburg VA, 20175', '540-728-8474'), (35, 'Spider Man', '2880 Nelm Street, Leesburg VA, 22075', '571-246-7634'),
(36, 'Black Panther', '2894 Lynn Street, Boston MA, 02114', '857-300-9226'), (37, 'Doctor Strange', '764 Gerald L. Bates Drive, Boston MA, 02210', '857-350-2403'), (38, 'Thor', '2286 Valley View Drive, Boston MA, 02110', '857-488-6795'),
(39, 'Vision', '945 Hinkle Lake Road, Boston MA, 02115', '857-303-9281'), (40, 'Sam Wilson', '26 Hillside Drive, Boston MA, 02108', '337-893-2779'), (41, 'Ant Man', '2216 Canis Heights Drive, Dallas TX, 75201', '213-703-6723'),
(42, 'Star Lord', '164 Charla Lane, Dallas TX, 75202', '214-927-2788'), (43, 'Drak the Destroyer', '421 Liberty Street, Dallas TX, 75247', '214-879-6792'), (44, 'Groot', '3212 Ash Street, Dallas TX, 75204', '972-865-9872'),
(45, 'Gamora', '2277 Giraffe Hill Drive, Dallas TX, 75247', '214-437-3091'), (46, 'Rocket Raccoon', '2499 Romines Mill Road, Dallas TX, 75247', '214-640-0917'), (47, 'Luke Skywalker', '1770 Duck Creek Road, San Francisco CA, 94107', '415-706-8310'),
(48, 'Darth Vader', '2196 Rodney Street, San Francisco CA, 94102', '415-244-7520'), (49, 'Kylo Ren', '2940 Hide A Way Road, San Francisco CA, 94107', '408-213-1432'), (50, 'Rey', '1802 Denver Avenue, San Francisco CA, 94102', '415-314-6001');

-- Insert General Manager Data
INSERT INTO GeneralManagers
VALUES(3, 1, 60000.00, 7), (4, 2, 80000.00, 2), (27, 3, 55324.00, 0), (33, 4, 58325.00, 3), (17, 5, 49230.00, 7), (36, 6, 64320.00, 4), (7, 7, 58000, 0),
(47, 8, 50260.00, 3), (42, 9, 82350.00, 10), (10, 10, 72300.00, 14); 

-- Insert Hourly data
INSERT INTO Hourly
VALUES(1, 1, 12.00, 35), (2, 1, 12.00, 32), (6, 1, 8.00, 50), (8, 7, 8.25, 75), (9, 10, 8.50, 80), (11, 10, 10.25, 53), (14, 10, 10.00, 62), (15, 10, 13.00, 70),
(16, 10, 12.50, 37), (18, 5, 8.00, 40), (21, 5, 9.00, 55), (22, 5, 10.25, 50), (23, 5, 7.75, 20), (24, 5, 11.00, 81), (25, 5, 9.75, 72), (28, 3, 10.00, 72),
(29, 3, 9.00, 60), (30, 3, 7.25, 67), (31, 3, 13.00, 80), (32, 4, 7.25, 72), (34, 4, 9.25, 45), (35, 4, 12.00, 76), (37, 6, 7.50, 55), (38, 6, 10.00, 80),
(41, 9, 8.00, 70), (43, 9, 9.00, 32), (44, 9, 9.75, 75), (45, 9, 10.00, 80), (46, 9, 13.00, 72), (48, 8, 8.75, 80), (49, 8, 7.75, 70), (50, 8, 9.25, 23);

-- Insert Clerical Data
INSERT INTO Clerical
VALUES(5, 1, 'Accountant', 70000.00, 'No', 7), (12, 2, 'Ice Cream Maker', 55000.00, 'Yes', 3), (13, 2, 'Ice Cream Maker', 60000.00, 'Yes', 5),
(19, 3, 'Delivery Driver', 72000.00, 'No', 10), (20, 3, 'Operations Manager', 60000.00, 'Yes', 11), (26, 4, 'Ice Cream Maker', 57000.00, 'Yes', 3),
(39, 5, 'Ice Cream Maker', 59000.00, 'Yes', 3), (40, 5, 'Delivery Driver', 70000.00, 'No', 3);

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

-- Insert Production Data
INSERT INTO Production VALUES(1), (2), (3), (4), (5);

-- Insert FlavorOrder Data
INSERT INTO FlavorOrder VALUES (1, 1, 1, "2018-04-15", "2018-04-29",'Chocolate');
INSERT INTO FlavorOrder VALUES (2, 1, 1, "2018-04-01", "2018-04-15",'Vanilla');
INSERT INTO FlavorOrder VALUES (3, 1, 1, "2018-04-12", "2018-04-26",'Strawberry');
INSERT INTO FlavorOrder VALUES (4, 1, 1, "2018-04-13", "2018-04-27",'Coffee');
INSERT INTO FlavorOrder VALUES (5, 1, 1, "2018-04-23", "2018-05-27",'Cookie Dough');
INSERT INTO FlavorOrder VALUES (6, 2, 1, "2018-04-01", "2018-04-15",'Oreo');
INSERT INTO FlavorOrder VALUES (7, 2, 1, "2018-04-03", "2018-04-17",'Banana');
INSERT INTO FlavorOrder VALUES (8, 2, 1, "2018-04-06", "2018-04-20",'Coconut');
INSERT INTO FlavorOrder VALUES (9, 2, 1, "2018-04-24", "2018-05-08",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (10, 2, 1, "2018-04-15", "2018-04-29",'Peanut Butter');
INSERT INTO FlavorOrder VALUES (11, 3, 2, "2018-04-16", "2018-04-30",'Chocolate');
INSERT INTO FlavorOrder VALUES (12, 3, 2, "2018-04-05", "2018-04-20",'Vanilla');
INSERT INTO FlavorOrder VALUES (13, 3, 2, "2018-04-22", "2018-05-06",'Strawberry');
INSERT INTO FlavorOrder VALUES (14, 3, 2, "2018-04-30", "2018-05-14",'Coffee');
INSERT INTO FlavorOrder VALUES (15, 3, 2, "2018-04-25", "2018-05-09",'Cookie Dough');
INSERT INTO FlavorOrder VALUES (16, 4, 2, "2018-04-26", "2018-05-10",'Oreo');
INSERT INTO FlavorOrder VALUES (17, 4, 2, "2018-04-27", "2018-05-11",'Banana');
INSERT INTO FlavorOrder VALUES (18, 4, 2, "2018-04-28", "2018-05-12",'Coconut');
INSERT INTO FlavorOrder VALUES (19, 4, 2, "2018-04-29", "2018-05-13",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (20, 4, 2, "2018-04-04", "2018-04-18",'Peanut Butter');
INSERT INTO FlavorOrder VALUES (21, 5, 3, "2018-04-27", "2018-05-11",'Chocolate');
INSERT INTO FlavorOrder VALUES (22, 5, 3, "2018-04-07", "2018-04-21",'Vanilla');
INSERT INTO FlavorOrder VALUES (23, 5, 3, "2018-04-14", "2018-04-28",'Strawberry');
INSERT INTO FlavorOrder VALUES (24, 5, 3, "2018-04-08", "2018-04-22",'Coffee');
INSERT INTO FlavorOrder VALUES (25, 5, 3, "2018-04-03", "2018-04-17",'Cookie Dough');
INSERT INTO FlavorOrder VALUES (26, 6, 3, "2018-04-01", "2018-04-15",'Oreo');
INSERT INTO FlavorOrder VALUES (27, 6, 3, "2018-04-13", "2018-04-27",'Banana');
INSERT INTO FlavorOrder VALUES (28, 6, 3, "2018-04-15", "2018-04-29",'Coconut');
INSERT INTO FlavorOrder VALUES (29, 6, 3, "2018-04-03", "2018-04-17",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (30, 6, 3, "2018-04-06", "2018-04-20",'Peanut Butter');
INSERT INTO FlavorOrder VALUES (31, 7, 4, "2018-04-02", "2018-04-16",'Chocolate');
INSERT INTO FlavorOrder VALUES (32, 7, 4, "2018-04-07", "2018-04-21",'Vanilla');
INSERT INTO FlavorOrder VALUES (33, 7, 4, "2018-04-13", "2018-04-27",'Strawberry');
INSERT INTO FlavorOrder VALUES (34, 7, 4, "2018-04-19", "2018-05-03",'Coffee');
INSERT INTO FlavorOrder VALUES (35, 7, 4, "2018-04-30", "2018-05-14",'Cookie Dough');
INSERT INTO FlavorOrder VALUES (36, 8, 4, "2018-04-17", "2018-05-01",'Oreo');
INSERT INTO FlavorOrder VALUES (37, 8, 4, "2018-04-18", "2018-05-02",'Vanilla');
INSERT INTO FlavorOrder VALUES (38, 8, 4, "2018-04-15", "2018-04-29",'Coconut');
INSERT INTO FlavorOrder VALUES (39, 8, 4, "2018-04-16", "2018-04-30",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (40, 8, 4, "2018-04-03", "2018-04-17",'Peanut Butter');
INSERT INTO FlavorOrder VALUES (41, 9, 5, "2018-04-06", "2018-04-20",'Chocolate');
INSERT INTO FlavorOrder VALUES (42, 9, 5, "2018-04-26", "2018-05-10",'Vanilla');
INSERT INTO FlavorOrder VALUES (43, 9, 5, "2018-04-01", "2018-04-15",'Strawberry');
INSERT INTO FlavorOrder VALUES (44, 9, 5, "2018-04-16", "2018-04-30",'Coffee');
INSERT INTO FlavorOrder VALUES (45, 9, 5, "2018-04-12", "2018-04-26",'Cookie Dough');
INSERT INTO FlavorOrder VALUES (46, 10, 5, "2018-04-10", "2018-04-24",'Oreo');
INSERT INTO FlavorOrder VALUES (47, 10, 5, "2018-04-23", "2018-04-07",'Vanilla');
INSERT INTO FlavorOrder VALUES (48, 10, 5, "2018-04-04", "2018-04-18",'Coconut');
INSERT INTO FlavorOrder VALUES (49, 10, 5, "2018-04-05", "2018-04-19",'Butter Pecan');
INSERT INTO FlavorOrder VALUES (50, 10, 5, "2018-04-16", "2018-04-30",'Peanut Butter');

-- Insert MaterialOrder Data
INSERT INTO MaterialOrder VALUES (1, 1, 1, "2018-04-02", "2018-04-16",'Metal Spoon');
INSERT INTO MaterialOrder VALUES (2, 1, 1, "2018-04-15", "2018-04-29",'Plastic Spoon');
INSERT INTO MaterialOrder VALUES (3, 1, 1, "2018-04-20", "2018-05-04",'Small Cup');
INSERT INTO MaterialOrder VALUES (4, 1, 1, "2018-04-12", "2018-04-26",'Regular Cup');
INSERT INTO MaterialOrder VALUES (5, 1, 1, "2018-04-10", "2018-04-24",'Large Cup');
INSERT INTO MaterialOrder VALUES (6, 2, 1, "2018-04-06", "2018-04-20",'Plastic Spoon');
INSERT INTO MaterialOrder VALUES (7, 2, 1, "2018-04-06", "2018-04-20",'Plastic Spoon');
INSERT INTO MaterialOrder VALUES (8, 2, 1, "2018-04-21", "2018-05-05",'Large Cone');
INSERT INTO MaterialOrder VALUES (9, 2, 1, "2018-04-09", "2018-04-23",'Small Lid');
INSERT INTO MaterialOrder VALUES (10, 2, 1, "2018-04-20", "2018-05-04",'Regular Lid');
INSERT INTO MaterialOrder VALUES (11, 3, 2, "2018-04-14", "2018-04-28",'Metal Spoon');
INSERT INTO MaterialOrder VALUES (12, 3, 2, "2018-04-08", "2018-04-22",'Large Lid');
INSERT INTO MaterialOrder VALUES (13, 3, 2, "2018-04-17", "2018-05-01",'Small Cup');
INSERT INTO MaterialOrder VALUES (14, 3, 2, "2018-04-30", "2018-05-14",'Regular Cup');
INSERT INTO MaterialOrder VALUES (15, 3, 2, "2018-04-03", "2018-04-17",'Large Cup');
INSERT INTO MaterialOrder VALUES (16, 4, 2, "2018-04-11", "2018-04-25",'Small Cone');
INSERT INTO MaterialOrder VALUES (17, 4, 2, "2018-04-20", "2018-05-04",'Regular Cone');
INSERT INTO MaterialOrder VALUES (18, 4, 2, "2018-04-08", "2018-04-22",'Large Cone');
INSERT INTO MaterialOrder VALUES (19, 4, 2, "2018-04-13", "2018-04-27",'Small Lid');
INSERT INTO MaterialOrder VALUES (20, 4, 2, "2018-04-23", "2018-05-07",'Regular Lid');
INSERT INTO MaterialOrder VALUES (21, 5, 3, "2018-04-12", "2018-04-26",'Metal Spoon');
INSERT INTO MaterialOrder VALUES (22, 5, 3, "2018-04-09", "2018-04-23",'Plastic Spoon');
INSERT INTO MaterialOrder VALUES (23, 5, 3, "2018-04-11", "2018-04-25",'Large Lid');
INSERT INTO MaterialOrder VALUES (24, 5, 3, "2018-04-23", "2018-05-07",'Regular Cup');
INSERT INTO MaterialOrder VALUES (25, 5, 3, "2018-04-30", "2018-05-13",'Large Cup');
INSERT INTO MaterialOrder VALUES (26, 6, 3, "2018-04-12", "2018-04-26",'Small Cone');
INSERT INTO MaterialOrder VALUES (27, 6, 3, "2018-04-08", "2018-04-22",'Regular Cone');
INSERT INTO MaterialOrder VALUES (28, 6, 3, "2018-04-28", "2018-05-12",'Large Cone');
INSERT INTO MaterialOrder VALUES (29, 6, 3, "2018-04-17", "2018-05-01",'Small Lid');
INSERT INTO MaterialOrder VALUES (30, 6, 3, "2018-04-16", "2018-04-30",'Regular Lid');
INSERT INTO MaterialOrder VALUES (31, 7, 4, "2018-04-06", "2018-04-20",'Large Lid');
INSERT INTO MaterialOrder VALUES (32, 7, 4, "2018-04-15", "2018-04-29",'Plastic Spoon');
INSERT INTO MaterialOrder VALUES (33, 7, 4, "2018-04-24", "2018-05-08",'Small Cup');
INSERT INTO MaterialOrder VALUES (34, 7, 4, "2018-04-12", "2018-04-26",'Regular Cup');
INSERT INTO MaterialOrder VALUES (35, 7, 4, "2018-04-10", "2018-04-24",'Large Lid');
INSERT INTO MaterialOrder VALUES (36, 8, 4, "2018-04-06", "2018-04-20",'Small Cone');
INSERT INTO MaterialOrder VALUES (37, 8, 4, "2018-04-16", "2018-04-30",'Large Lid');
INSERT INTO MaterialOrder VALUES (38, 8, 4, "2018-04-11", "2018-04-25",'Large Cone');
INSERT INTO MaterialOrder VALUES (39, 8, 4, "2018-04-07", "2018-05-21",'Small Lid');
INSERT INTO MaterialOrder VALUES (40, 8, 4, "2018-04-05", "2018-04-19",'Regular Lid');
INSERT INTO MaterialOrder VALUES (41, 9, 5, "2018-04-01", "2018-04-15",'Metal Spoon');
INSERT INTO MaterialOrder VALUES (42, 9, 5, "2018-04-18", "2018-05-02",'Large Lid');
INSERT INTO MaterialOrder VALUES (43, 9, 5, "2018-04-13", "2018-04-27",'Small Cup');
INSERT INTO MaterialOrder VALUES (44, 9, 5, "2018-04-15", "2018-04-29",'Regular Cup');
INSERT INTO MaterialOrder VALUES (45, 9, 5, "2018-04-10", "2018-04-24",'Large Cup');
INSERT INTO MaterialOrder VALUES (46, 10, 5, "2018-04-09", "2018-04-23",'Small Cone');
INSERT INTO MaterialOrder VALUES (47, 10, 5, "2018-04-20", "2018-05-04",'Regular Cone');
INSERT INTO MaterialOrder VALUES (48, 10, 5, "2018-04-12", "2018-04-26",'Large Cone');
INSERT INTO MaterialOrder VALUES (49, 10, 5, "2018-04-04", "2018-05-18",'Small Lid');
INSERT INTO MaterialOrder VALUES (50, 10, 5, "2018-04-06", "2018-04-20",'Regular Lid');

-- Insert Customer Data
INSERT INTO Customer VALUES (1, 1, 'Chocolate', 'Jim Halpert', 10);
INSERT INTO Customer VALUES (2, 4, 'Vanilla', 'Pam Beesly', 15);
INSERT INTO Customer VALUES (3, 7, 'Strawberry', 'Dwight Schrute', 20);
INSERT INTO Customer VALUES (4, 8, 'Coffee', 'Michael Scott',18);
INSERT INTO Customer VALUES (5, 6, 'Cookie Dough', 'Andy Bernard', 9);
INSERT INTO Customer VALUES (6, 5, 'Oreo', 'Kevin Malone', 4);
INSERT INTO Customer VALUES (7, 1, 'Banana', 'Erin Hannon', 8);
INSERT INTO Customer VALUES (8, 9, 'Coconut', 'Toby Flenderson', 1);
INSERT INTO Customer VALUES (9, 3, 'Butter Pecan', 'Angela Martain', 12);
INSERT INTO Customer VALUES (10, 10, 'Peanut Butter', 'Ryan Howard', 25);
INSERT INTO Customer VALUES (11, 7, 'Chocolate', 'Stanley Hudson', 2);
INSERT INTO Customer VALUES (12, 1, 'Vanilla', 'Kelly Kapoor', 25);
INSERT INTO Customer VALUES (13, 8, 'Strawberry', 'Holly Flax', 17);
INSERT INTO Customer VALUES (14, 4, 'Coffee', 'Gabe Lewis',4);
INSERT INTO Customer VALUES (15, 3, 'Cookie Dough', 'Robert California', 8);
INSERT INTO Customer VALUES (16, 5, 'Oreo', 'Roy Anderson', 16);
INSERT INTO Customer VALUES (17, 1, 'Banana', 'Jan Levinson', 20);
INSERT INTO Customer VALUES (18, 9, 'Coconut', 'Creed Bratton', 12);
INSERT INTO Customer VALUES (19, 6, 'Butter Pecan', 'Charles Miner', 12);
INSERT INTO Customer VALUES (20, 9, 'Peanut Butter', 'Darryl Philbin', 30);
INSERT INTO Customer VALUES (21, 1, 'Chocolate', 'Nellie Bertram', 26);
INSERT INTO Customer VALUES (22, 10, 'Vanilla', 'Phyllis Vance', 27);
INSERT INTO Customer VALUES (23, 2, 'Strawberry', 'Oscar Martinez', 21);
INSERT INTO Customer VALUES (24, 3, 'Coffee', 'Barney Stinson',30);
INSERT INTO Customer VALUES (25, 4, 'Cookie Dough', 'Ted Mosby', 34);
INSERT INTO Customer VALUES (26, 2, 'Oreo', 'Robin Scherbatsky', 32);
INSERT INTO Customer VALUES (27, 8, 'Banana', 'Lily Aldrin', 28);
INSERT INTO Customer VALUES (28, 7, 'Coconut', 'Marshall Erikson', 37);
INSERT INTO Customer VALUES (29, 8, 'Butter Pecan', 'Jon Dorian', 45);
INSERT INTO Customer VALUES (30, 5, 'Peanut Butter', 'Christopher Turk', 25);
INSERT INTO Customer VALUES (31, 10, 'Chocolate', 'Elliot Reed', 31);
INSERT INTO Customer VALUES (32, 6, 'Vanilla', 'Bob Kelso', 50);
INSERT INTO Customer VALUES (33, 10, 'Strawberry', 'Carla Espinosa', 27);
INSERT INTO Customer VALUES (34, 2, 'Coffee', 'Fez Johnson',112);
INSERT INTO Customer VALUES (35, 7, 'Cookie Dough', 'Donna Pinciotti', 63);
INSERT INTO Customer VALUES (36, 3, 'Oreo', 'Steven Hyde', 44);
INSERT INTO Customer VALUES (37, 6, 'Banana', 'Eric Forman', 58);
INSERT INTO Customer VALUES (38, 10, 'Coconut', 'Jackie Burkhart', 17);
INSERT INTO Customer VALUES (39, 5, 'Butter Pecan', 'Michael Kelso', 38);
INSERT INTO Customer VALUES (40, 9, 'Peanut Butter', 'Red Forman', 47);
INSERT INTO Customer VALUES (41, 2, 'Chocolate', 'Rachel Green', 28);
INSERT INTO Customer VALUES (42, 4, 'Vanilla', 'Phoebe Buffay', 83);
INSERT INTO Customer VALUES (43, 6, 'Strawberry', 'Chandler Bing', 37);
INSERT INTO Customer VALUES (44, 5, 'Coffee', 'Joey Tribbiani',82);
INSERT INTO Customer VALUES (45, 7, 'Cookie Dough', 'Monica Geller', 73);
INSERT INTO Customer VALUES (46, 3, 'Oreo', 'Ross Geller', 93);
INSERT INTO Customer VALUES (47, 8, 'Banana', 'Emily Waltham', 48);
INSERT INTO Customer VALUES (48, 4, 'Coconut', 'Pablo Escobar', 63);
INSERT INTO Customer VALUES (49, 6, 'Butter Pecan', 'Sam Malone', 36);
INSERT INTO Customer VALUES (50, 2, 'Peanut Butter', 'Michael Jordan', 72);