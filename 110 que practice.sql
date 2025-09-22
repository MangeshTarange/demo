--Employees table
CREATE TABLE Employees1 (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE);

INSERT INTO Employees1 (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
    (1, 'John', 'Doe', 'HR', 50000.00, '2020-01-15'),
    (2, 'Jane', 'Smith', 'Marketing', 55000.00, '2019-05-20'),
    (3, 'Mike', 'Johnson', 'IT', 60000.00, '2018-09-10'),
    (4, 'Emily', 'Williams', 'Finance', 58000.00, '2021-03-12'),
    (5, 'David', 'Lee', 'Operations', 52000.00, '2017-11-25');

	--Customers table
CREATE TABLE Customers1 (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(50),
    Country VARCHAR(50));

INSERT INTO Customers1 (CustomerID, FirstName, LastName, Email, Address, City, Country)
VALUES
    (1, 'Michael', 'Brown', 'michael@example.com', '123 Main St', 'New York', 'USA'),
    (2, 'Emma', 'Johnson', 'emma@example.com', '456 Elm St', 'Los Angeles', 'USA'),
    (3, 'Oliver', 'Smith', 'oliver@example.com', '789 Oak St', 'Chicago', 'USA'),
    (4, 'Sophia', 'Williams', 'sophia@example.com', '101 Maple Ave', 'Houston', 'USA'),
    (5, 'James', 'Lee', 'james@example.com', '222 Pine St', 'San Francisco', 'USA');

	--Orders table
CREATE TABLE Orders1 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    IsShipped BIT);

INSERT INTO Orders1 (OrderID, CustomerID, OrderDate, TotalAmount, IsShipped)
VALUES
    (1, 3, '2023-07-01', 100.00, 1),
    (2, 1, '2023-07-05', 250.00, 1),
    (3, 4, '2023-07-10', 180.00, 0),
    (4, 2, '2023-07-15', 300.00, 1),
    (5, 5, '2023-07-20', 120.00, 1);

	select * from Employees1
	select * from Customers1
	select * from Orders1
--1. Retrieve the top 3 highest-paid employees.
select top 3* from Employees1 order by Salary desc
--2. Find the customers who have placed orders.
select o.CustomerID,c.FirstName,o.OrderDate	from Customers1 c left join Orders1 o on  c.CustomerID=o.CustomerID
--3. Show employees and their department names in alphabetical order.
select * from Employees1 order by Department 
--	4. Find the customers who have placed orders for more than once.
select customerid,count(*) from Orders1 group by CustomerID having count(*)>1
--	5. Display orders with the customer's first name and last name.
select O.*, c.FirstName,c.lastname from Customers1 c join Orders1 o on c.CustomerID=o.CustomerID
--	6. Retrieve employees hired in the year 2022.
select * from  Employees1 where YEAR(HireDate)=2022
--	7. Show customers who have placed orders on different dates.
select 
--8. Retrieve the employees with the second and third highest salaries.
with cte as
(select *, DENSE_RANk() over (order by salary desc) as R from Employees1)
select * from cte where R in(2,3)
--	9. Find the total number of orders placed by each customer.
select c.CustomerID,count(o.CustomerID) as no_of_orders from Customers1 c  left join Orders1 o on c.CustomerID=o.CustomerID group by c.CustomerID
--	10. Retrieve employees who work in the IT department.
select * from Employees1 where Department = 'it'
--11. Find customers who have not placed any orders.
select c.CustomerID,c.FirstName,o.CustomerID from Customers1 c  left join Orders1 o on c.CustomerID=o.CustomerID where o.CustomerID is null
--12. Show the average salary of employees in each department.
select avg(salary) , Department from Employees1 group by Department
--13. Retrieve the employees with salaries above the average salary in their respective department.
with cte as
(select *, avg(salary) over(partition by department) as avg_salary from Employees1)
select * from cte where salary > avg_salary
--14. Display the names of employees who were hired on the same day as 'John Smith'.
select 
--15. Find customers who have placed orders for consecutive days.

--16. Find the nth highest salary from the Employees table.

--17. Show customers who have placed orders every day for the past week.

--18. Retrieve orders that were shipped after their expected shipment date.

--19. Display the employees with their age (in years) calculated from the HireDate.

--20. Find the customers who have not placed any orders in the last 3 months.

--21. Retrieve the list of employees and their managers.

--22. Show the customers who have the same first name or last name as employees.

--23. Find the orders placed by the customers from the same city as 'John Smith'.

--24. Retrieve customers who have placed orders for more than the average order amount.
     
--25. Show the departments along with the number of employees in each department.

--26. Retrieve the latest order for each customer.
    
--27. Find the customers who have placed at least one order in each city.

--28. Show the employees who have the same hire date as their manager.

--29. Retrieve the customers who have placed orders on all weekdays (Monday to Friday).

--30. Find the total sales amount for each year.

--31. Find the employees whose first name starts with 'J' and last name starts with 'S'.

	select * from Employees1
	select * from Customers1
	select * from Orders1