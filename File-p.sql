-- Create the sample database
CREATE DATABASE SampleDB1

-- Use the sample database
USE SampleDB1


-- Create the Customers table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(100));


	-- Create the Orders table
CREATE TABLE Orderss (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
)


-- Create the Products table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
)

-- Create the OrderItems table
CREATE TABLE OrderItem (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orderss(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Insert sample data into the Customers table
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Address)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '123 Main St'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Elm St'),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '789 Oak St'),
    (4, 'Emily', 'Williams', 'emily.williams@example.com', '234 Maple Ave'),
    (5, 'William', 'Brown', 'william.brown@example.com', '567 Pine St'),
    (6, 'Olivia', 'Jones', 'olivia.jones@example.com', '890 Cedar Rd'),
    (7, 'James', 'Taylor', 'james.taylor@example.com', '123 Elm St'),
    (8, 'Emma', 'Davis', 'emma.davis@example.com', '456 Oak St'),
    (9, 'Daniel', 'Miller', 'daniel.miller@example.com', '789 Maple Ave'),
    (10, 'Sophia', 'Wilson', 'sophia.wilson@example.com', '234 Pine St'),
    (11, 'Alexander', 'Anderson', 'alexander.anderson@example.com', '567 Cedar Rd'),
    (12, 'Mia', 'Thomas', 'mia.thomas@example.com', '890 Elm St'),
    (13, 'Ethan', 'Martinez', 'ethan.martinez@example.com', '123 Oak St'),
    (14, 'Isabella', 'Clark', 'isabella.clark@example.com', '456 Maple Ave'),
    (15, 'Aiden', 'Rodriguez', 'aiden.rodriguez@example.com', '789 Pine St'),
    (16, 'Abigail', 'Lee', 'abigail.lee@example.com', '234 Cedar Rd'),
    (17, 'Benjamin', 'Walker', 'benjamin.walker@example.com', '567 Elm St'),
    (18, 'Grace', 'Hall', 'grace.hall@example.com', '890 Oak St'),
    (19, 'Sebastian', 'Allen', 'sebastian.allen@example.com', '123 Maple Ave'),
    (20, 'Ava', 'Young', 'ava.young@example.com', '456 Pine St');


-- Insert sample data into the Orders table
INSERT INTO Orderss (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 1, '2023-05-01', 100.00),
    (2, 1, '2023-05-05', 50.00),
    (3, 2, '2023-05-02', 75.00),
    (4, 3, '2023-05-10', 200.00),
    (5, 4, '2023-05-12', 150.00),
    (6, 5, '2023-05-03', 80.00),
    (7, 6, '2023-05-06', 120.00),
    (8, 7, '2023-05-18', 90.00),
    (9, 8, '2023-05-15', 70.00),
    (10, 9, '2023-05-08', 180.00),
    (11, 10, '2023-05-09', 110.00),
    (12, 11, '2023-05-11', 130.00),
    (13, 12, '2023-05-13', 95.00),
    (14, 13, '2023-05-14', 65.00),
    (15, 14, '2023-05-17', 85.00),
    (16, 15, '2023-05-19', 55.00),
    (17, 16, '2023-05-04', 105.00),
    (18, 17, '2023-05-07', 140.00),
    (19, 18, '2023-05-16', 160.00),
    (20, 19, '2023-05-20', 75.00);


-- Insert sample data into the Products table
INSERT INTO Product (ProductID, ProductName, Price)
VALUES
    (1, 'Widget', 10.00),
    (2, 'Gadget', 20.00),
    (3, 'Thingamajig', 15.00),
    (4, 'Doohickey', 12.00),
    (5, 'Widget', 10.00),
    (6, 'Gizmo', 18.00),
    (7, 'Thingamabob', 14.00),
    (8, 'Doodad', 9.00),
    (9, 'Widget', 10.00),
    (10, 'Whatchamacallit', 22.00),
    (11, 'Gadget', 20.00),
    (12, 'Thingamajig', 15.00),
    (13, 'Doohickey', 12.00),
    (14, 'Widget', 10.00),
    (15, 'Gizmo', 18.00),
    (16, 'Thingamabob', 14.00),
    (17, 'Doodad', 9.00),
    (18, 'Widget', 10.00),
    (19, 'Whatchamacallit', 22.00),
    (20, 'Gadget', 20.00);


-- Insert sample data into the OrderItems table
INSERT INTO OrderItem (OrderItemID, OrderID, ProductID, Quantity)
VALUES
    (1, 1, 1, 2),
    (2, 1, 2, 1),
    (3, 2, 3, 3),
    (4, 2, 1, 1),
    (5, 3, 4, 2),
    (6, 3, 2, 2),
    (7, 4, 5, 1),
    (8, 4, 3, 4),
    (9, 5, 6, 2),
    (10, 5, 7, 3),
    (11, 6, 8, 2),
    (12, 6, 5, 1),
    (13, 7, 9, 4),
    (14, 7, 6, 1),
    (15, 8, 7, 2),
    (16, 8, 10, 1),
    (17, 9, 11, 3),
    (18, 9, 9, 2),
    (19, 10, 12, 1),
    (20, 10, 10, 2);



--ASSIGNMENT 01

--1. Write an SQL query to retrieve all records from the Customers table.

	select * from Customer

--2. Write an SQL query to retrieve the first name and last name of customers from the Customers table.

 select FirstName, LastName from Customer

--3. Write an SQL query to update the email address of a specific customer in the Customers table.

Update Customer
Set Email = 'john.doe@gmail.com'
Where CustomerID = 1

select * from Customer

--4. Write an SQL query to delete a specific customer from the Customers table.

select * from Orderss WHERE CustomerID = 1

select * from  OrderItem where OrderID in (1,2)

Delete from OrderItem WHERE OrderID in (1,2)
Delete from Orderss WHERE CustomerID = 1
Delete from Customer WHERE CustomerID = 1

--5. Write an SQL query to calculate the total number of customers in the Customers table.

select count(*) from Customer

--6. Write an SQL query to calculate the average total amount of orders in the Orders table.

select * from Orderss

select avg(TotalAmount) from Orderss

select C.FirstName, C.LastName, avg(O.TotalAmount) from Orderss as O 
inner join Customer as C on C.CustomerID=O.CustomerID
group by C.FirstName, C.LastName


--7. Write an SQL query to retrieve the distinct email addresses from the Customers table.

select distinct(Email) from Customer

--8. Write an SQL query to retrieve the customer's first name, order date, and total amount from the Customers 
--and Orders tables.

select FirstName, LastName, OrderDate, TotalAmount from Customer
inner join Orderss on Customer.CustomerID=Orderss.CustomerID


--9. Write an SQL query to retrieve the customer's first name, order date, total amount, 
--and product name from the Customers, Orders, and Products tables.

select C.FirstName, O.OrderDate, O.TotalAmount, P.ProductName from Customer as C
inner join Orderss as O on C.CustomerID=O.CustomerID
inner join OrderItem as OI on OI.OrderID=O.OrderID
inner join Product as P on P.ProductID=OI.ProductID


--10. Write an SQL query to retrieve the customer's first name, order date, total amount, product name, 
--and quantity from the Customers, Orders, OrderItems, and Products tables.

select C.FirstName, O.OrderDate, O.TotalAmount, P.ProductName, OI.Quantity from Customer as C
inner join Orderss as O on C.CustomerID=O.CustomerID
inner join OrderItem as OI on OI.OrderID=O.OrderID
inner join Product as P on P.ProductID=OI.ProductID

--11. Write an SQL query to retrieve the customer's first name, order date, total amount, product name, 
--and quantity for orders with a total amount greater than 100.

select C.FirstName, O.OrderDate, O.TotalAmount, P.ProductName, OI.Quantity from Customer as C
inner join Orderss as O on C.CustomerID=O.CustomerID
inner join OrderItem as OI on OI.OrderID=O.OrderID
inner join Product as P on P.ProductID=OI.ProductID
where  O.TotalAmount > 100

--12. Write an SQL query to retrieve the customer's first name, order date, total amount, product name, 
--and quantity for orders placed on a specific date.

select distinct O.OrderDate as specific_date , C.FirstName, O.OrderDate, O.TotalAmount, P.ProductName, OI.Quantity
from Customer as C
inner join Orderss as O on C.CustomerID=O.CustomerID
inner join OrderItem as OI on OI.OrderID=O.OrderID
inner join Product as P on P.ProductID=OI.ProductID


select distinct O.OrderDate as specific_date , C.FirstName, O.OrderDate,P.ProductName, 
sum(O.TotalAmount) as TOTAL_AMT,  sum(OI.Quantity) as TOTAL_QTY
from Customer as C
inner join Orderss as O on C.CustomerID=O.CustomerID
inner join OrderItem as OI on OI.OrderID=O.OrderID
inner join Product as P on P.ProductID=OI.ProductID
where OrderDate between '2023-05-01' and '2023-05-15'
group by C.FirstName, O.OrderDate,P.ProductName
having sum(O.TotalAmount) > 150 and sum(OI.Quantity) > 1
order by O.OrderDate 



--13. Write an SQL query to retrieve the customer's first name, order date, total amount, product name, 
--and quantity for orders placed by a specific customer.

select distinct C.FirstName as specific_Customer, O.OrderDate, O.TotalAmount, P.ProductName, OI.Quantity
from Customer as C
inner join Orderss as O on C.CustomerID=O.CustomerID
inner join OrderItem as OI on OI.OrderID=O.OrderID
inner join Product as P on P.ProductID=OI.ProductID
where C.FirstName = 'Emily'

--14. Write an SQL query to retrieve the customer's first name, order date, total amount, product name, 
--and quantity for orders placed by customers whose last name starts with "S".

select C.FirstName, C.LastName, O.OrderDate, O.TotalAmount, P.ProductName, OI.Quantity from Customer as C
inner join Orderss as O on C.CustomerID=O.CustomerID
inner join OrderItem as OI on OI.OrderID=O.OrderID
inner join Product as P on P.ProductID=OI.ProductID
where  C.LastName like 'S%'


--15. Write an SQL query to retrieve the customer's first name, order date, total amount, product name, 
--and quantity for orders placed by customers residing at a specific address.

select C.Address, C.FirstName, O.OrderDate, O.TotalAmount, P.ProductName, OI.Quantity from Customer as C
inner join Orderss as O on C.CustomerID=O.CustomerID
inner join OrderItem as OI on OI.OrderID=O.OrderID
inner join Product as P on P.ProductID=OI.ProductID
where Address = '234 Maple Ave'


--Assignment 02 


-- Employees table
CREATE TABLE Employees (
 ID INT,
 Name VARCHAR(50),
 Salary DECIMAL(10,2),
 Department VARCHAR(50),
 ManagerID INT,
 PRIMARY KEY (ID)
);


-- Departments table
CREATE TABLE Departments (
 DepartmentID INT,
 DepartmentName VARCHAR(50),
 PRIMARY KEY (DepartmentID)
);

-- Employees table
INSERT INTO Employees (ID, Name, Salary, Department, ManagerID) VALUES
(1, 'John', 50000, 'Sales', 3),
(2, 'Sarah', 60000, 'Marketing', 1),
(3, 'Michael', 70000, 'Sales', 1),
(4, 'Emily', 55000, 'Sales', 3),
(5, 'David', 65000, 'Marketing', 2),
(6, 'Jessica', 60000, 'Sales', 1);
-- Departments table

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Sales'),
(2, 'Marketing');

--Write a SQL query to retrieve the top 5 highest-paid employees along with their names and
--salaries, ordered by salary in descending order

SELECT Name, Salary FROM Employees
ORDER BY Salary DESC 

--Write a SQL query to calculate the average salary for employees in each department, and display
--the department name along with the average salary, but only for departments where the average
--salary is above 50000.

select Department, avg(salary) as AVG_Salary from Employees
group by  Department 
having avg(salary) > 50000


--Write a SQL query to retrieve the employee names and their corresponding department names,
--but only for employees who belong to departments with at least 3 employees.

SELECT E.Name as EmployeeName, D.DepartmentName
FROM Employees as E
JOIN Departments as D ON E.Department = D.DepartmentName
WHERE D.DepartmentID IN (SELECT E.Department FROM Employees GROUP BY D.DepartmentID HAVING COUNT(*) >= 3)

--Write a SQL query to calculate the average salary for employees in each department, and display
--the department name along with the average salary, ordered by the average salary in descending order.

SELECT D.DepartmentName, AVG(E.Salary) AS AverageSalary
FROM Departments as D
JOIN Employees as E ON D.DepartmentName = E.Department
GROUP BY D.DepartmentName
order by AVG(E.Salary) desc



--Write a SQL query to calculate the average salary for employees in each department, and display
--the department name along with the average salary, but only for departments where the average
--salary is higher than the average salary across all departments.


SELECT D.DepartmentName, AVG(E.Salary) AS AverageSalary
FROM Departments as D
JOIN Employees as E ON D.DepartmentName = E.Department
GROUP BY D.DepartmentName
HAVING AVG(E.Salary) > (SELECT AVG(Salary) FROM Employees); 
-- (depertment wise avg salary) > (overall employees table avg salary)



-- Customers table
CREATE TABLE Customers (
 CustomerID INT,Name VARCHAR(50),
 Country VARCHAR(50),
 PRIMARY KEY (CustomerID)
);

--Order table
CREATE TABLE Orders (
 OrderID INT,
 OrderDate DATE,
 CustomerID INT,
 SalesAmount DECIMAL(10,2),
 PRIMARY KEY (OrderID)
);

-- Customers table
INSERT INTO Customers (CustomerID, Name, Country) VALUES
(1, 'ABC Company', 'USA'),
(2, 'XYZ Corporation', 'Canada'),
(3, 'PQR Enterprises', 'USA'),
(4, 'LMN Corp', 'Canada');

-- Order table
INSERT INTO Orders (OrderID, OrderDate, CustomerID, SalesAmount) VALUES
(1, '2022-01-10', 1, 500),
(2, '2022-02-15', 2, 1000),
(3, '2022-02-20', 3, 750),
(4, '2022-03-05', 1, 800),
(5, '2022-03-10', 4, 600),
(6, '2022-04-15', 2, 1200),
(7, '2022-04-20', 3, 900),
(8, '2022-05-05', 4, 700);
 

--Write a SQL query to calculate the total sales amount for each month of the year, and display it
--along with the month name, sorted by month in ascending order

select datepart(month, OrderDate) as month, sum(SalesAmount) as Total_Sale  from Orders
group by datepart(month, OrderDate)
order by datepart(month, OrderDate) asc --- my query


SELECT MONTH(OrderDate) AS Month, SUM(SalesAmount) AS TotalSalesAmount
FROM Orders
GROUP BY MONTH(OrderDate)
ORDER BY MONTH(OrderDate) ASC; --- solution query


--Write a SQL query to retrieve the customer name, their latest order date, and the total amount
--spent on orders for customers who have placed more than 3 orders.

select Name, MAX(OrderDate) AS LatestOrderDate, sum(SalesAmount) as Total_sales  
from Customers as C 
inner join Orders as O on C.CustomerID = O.CustomerID
group by Name, OrderDate


--Write a SQL query to retrieve the top 10 customers with the highest total order amounts, along
--with their names and total order amounts, ordered by total order amount in descending order.

select Name, sum(SalesAmount) as Total_sales  
from Customers as C 
inner join Orders as O on C.CustomerID = O.CustomerID
group by Name
order by sum(SalesAmount) desc

--Write a SQL query to calculate the number of days between the first and last order date for each
--customer, and display it along with the customer name, sorted by the number of days in descending order.

select Name, DATEDIFF(day, (SELECT MIN(OrderDate) FROM Orders),  
(SELECT MAX(OrderDate) FROM Orders))
from Customers as C 
inner join Orders as O on C.CustomerID = O.CustomerID 
group by Name


--Write a SQL query to calculate the running total of sales amounts for each month, and display it
--along with the month and the running total, sorted by month in ascending order.

SELECT MONTH(OrderDate) AS Month, OrderDate, SUM(SalesAmount) OVER (ORDER BY OrderDate)
AS RunningTotal
FROM Orders
ORDER BY MONTH(OrderDate) ASC;



--Write a SQL query to retrieve the customer names who have made at least one order in the past 6
--months, along with the number of orders they have placed.

SELECT C.Name AS CustomerName, COUNT(*) AS NumOrders
FROM Customers C
JOIN Orders as O ON C.CustomerID = O.CustomerID
--WHERE O.OrderDate >= (CURRENT_TIMESTAMP, INTERVAL 6 MONTH)
GROUP BY C.CustomerID;



--Write a SQL query to retrieve the customer name and the total number of orders they have
--placed, but only for customers who have placed more than 10 orders.

SELECT Name AS CustomerName, COUNT(*) AS NumOrders
FROM Customers as C
JOIN Orders as o ON C.CustomerID = O.CustomerID
GROUP BY Name
HAVING COUNT(*) > 1;

