USE MetroAlt;
--1.List the years in which employees were hired, 
--sort by year and then last name.

SELECT EmployeeHireDate, EmployeeLastName FROM Employee
ORDER BY EmployeeHireDate;

--2. What is the difference in Months
-- between the first employee hired and the last one.

SELECT DATEDIFF(month, '1995-01-06', '2014-12-16') AS DATEDIFF;

--3. Output the employee phone number so it looks like (206)555-1234.

SELECT FORMAT (CAST(Employeephone  as BIGINT), 
'(000)-000-0000'),employeePhone  from Employee;

--4.Output the employee hourly wage so 
--it looks like $45.00 (EmployeePosition).

SELECT FORMAT (EmployeeHourlyPayRate, '$#.00') FROM EmployeePosition

--5.List only the employees who were hired between 2013 and 2015.

SELECT * FROM Employee WHERE YEAR(EmployeeHireDate) BETWEEN 
2013 AND 2016;

--6.Output the position, the hourly wage and the hourly 
--wage multiplied by 40 to see what a weekly wage might 
--look like.  

use MetroAlt
SELECT PositionName AS Position, EmployeeHourlyPayRate as [Hourly wage], EmployeeHourlyPayRate * 40 as [Rate * 4]
from EmployeePosition


--7.What is the highest hourly pay rate (EmployeePosition)?

SELECT MAX(EmployeeHourlyPayRate) FROM EmployeePosition;

--8.What is the lowest hourly pay rate? 

SELECT MIN(EmployeeHourlyPayRate) FROM EmployeePosition;

--9. What is the average hourly pay rate?
SELECT AVG (EmployeeHourlyPayRate) FROM EmployeePosition;

--10. What is the average pay rate by position?

SELECT AVG (EmployeeHourlyPayRate) AS PositionKey from EmployeePosition;??

--11. Provide a count of how many employees 
--were hired each year and each month of the year.

--select distinct month(Employeehiredate), count(distinct month(Employeehiredate))
--from Employee
--Group by month(Employeehiredate)

--where DATEDIFF ??

--12. Do the query 11 again but with 
--a case structure to output the months as words.

Select EmployeeHireDate as Month,
Case Month(employeeHireDate)
When 1 then 'January'
when 2 then 'February'
when 3 then 'March'
when 4 then 'April'
when 5 then 'May'
when 6 then 'June'
when 7 then 'July'
when 8 then 'August'
when 9 then 'September'
when 10 then 'October'
when 11 then 'November'
when 12 then 'December'
end as [Month]
from employee

--13. Return which positions average more than $50 an hour.

SELECT AVG (EMPLOYEEHOURLYPAYRATE) FROM EmployeePosition WHERE EmployeeHourlyPayRate >=50 


--14. List the total number of riders on Metroalt busses (RiderShip).

SELECT SUM(RIDERS) FROM Ridership;

--15. List all the tables in the metroAlt databases (system views).

SELECT * FROM SYS.TABLES;

--16. List all the databases on server.

SELECT * FROM SYS.DATABASES




