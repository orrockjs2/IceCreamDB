-- Query 1
SELECT COUNT(*)
FROM MaterialOrder
WHERE storeNum = 2 and dateOrdered =  "2018-04-06" and materialList = "Plastic Spoon";

-- Query 2
SELECT DISTINCT facilityNum
FROM MaterialOrder
WHERE storeNum = 3;

-- Query 3
SELECT sales
FROM Stores
NATURAL JOIN Hourly
WHERE eid = 14;

-- Query 4
SELECT employeeName
FROM Employees
JOIN Hourly ON Employees.eid = Hourly.eid
JOIN Customer ON Hourly.storeNum = Customer.storeNum
WHERE loyaltyID = 24;

-- Query 5
SELECT custName
FROM Customer
ORDER BY visitCount
DESC LIMIT 1;

-- Query 6
SELECT employeeName
FROM Employees
NATURAL JOIN GeneralManagers
JOIN Hourly ON GeneralManagers.storeNum = Hourly.storeNum
WHERE Hourly.eid = 25;

-- Query 7
SELECT favoriteFlavor
FROM Customer
WHERE loyaltyID = 36;

-- Query 8
SELECT custName
FROM Customer
WHERE visitCount > 50;

-- Query 9
SELECT employeeName, Employees.employeePhone
FROM Employees
NATURAL JOIN Clerical
NATURAL JOIN FlavorOrder
WHERE orderNum = 12;

-- Query 10
-- Not Possible

-- Query 11
SELECT COUNT(*)
FROM FlavorOrder
WHERE flavorList = "Chocolate" and facilityNum = 1
GROUP BY flavorList;

-- Query 12
-- Not Possible

-- Query 13
SELECT DISTINCT flavorList, quantity
FROM Stock
JOIN FlavorOrder ON Stock.stockName = FlavorOrder.flavorList
WHERE dateOrdered = "2018-04-15";

-- Query 14
SELECT dateOrdered
FROM GeneralManagers
NATURAL JOIN MaterialOrder
WHERE eid = 33;

-- Query 15
SELECT employeeName
FROM Employees 
NATURAL JOIN Clerical
WHERE facilityNUM = 3 and NDAStatus = "yes";

-- Query 16
SELECT orderNum 
FROM MaterialOrder
WHERE dateDue = "2018-04-30";

-- Query 17
SELECT COUNT(*)
FROM Customer
JOIN FlavorOrder ON Customer.favoriteFlavor = FlavorOrder.flavorList
WHERE loyaltyID = 28;

-- Query 18
SELECT wage
FROM Hourly
WHERE storeNum = 4;

-- Query 19
SELECT storeNum
FROM Hourly
GROUP BY storeNum
ORDER BY SUM(hoursWorked)
DESC LIMIT 1;

-- Query 20
SELECT stockName
FROM Stock
WHERE expirationDate = "2018-04-21";

-- Query 21
SELECT expirationDate
FROM FlavorOrder
JOIN Stock ON FlavorOrder.flavorList = Stock.stockName
WHERE storeNum = 3;

-- Query 22
SELECT salary
FROM Clerical
WHERE facilityNum = 2
ORDER BY salary
DESC LIMIT 1;

-- Query 23
SELECT custName
FROM Customer 
WHERE favoriteFlavor = "Vanilla";