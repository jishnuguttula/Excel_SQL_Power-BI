
CREATE TABLE employees (
  EmpID INT,
  Name VARCHAR(50),
  Department VARCHAR(20),
  Age INT,
  Gender VARCHAR(10),
  Salary INT,
  Experience INT,
  Rating INT,
  Location VARCHAR(50),
  Salary_Category VARCHAR(20),
  Experience_Level VARCHAR(20)
  );
  

-- COMPANY SIZE
select count(*) as Total_employees from employees;

-- SALARY OVERVIEW
select 
    min(Salary) as Min_Salary,
    max(Salary) as Max_Salary,
    avg(Salary) as Avg_Salary
From employees;

-- WHICH DEPARTMENT PAYS MOST?
select Department, Avg(Salary) as avg_salary
From employees
group by Department
order by avg_salary desc;

-- TOP PERFORMERS
select Name, Department, Rating, Salary
from employees
where Rating = 5
order by Salary desc;


-- GENDER DISTRIBUTION
select Gender, count(*) as Total
from employees
group by Gender;

-- LOCATION ANALYSIS
select Location, count(*) as Cities
from employees
group by Location
order by Cities desc;

-- EXPERIENCE IMPACT
select Experience_Level , avg(Salary) as avg_salary
from employees
Group by Experience_Level;

-- LOW PERFORMERS
Select Name , Department, Rating
From employees
where Rating < 2;

-- HIGH SALARY BUT LOW PERFORMANCE
Select Name, Rating, Salary_Category
from employees
where Salary_Category = "High" and Rating <= 3;

-- BEST DEPARTMENT
select Department, avg(Rating) as avg_rating
From employees
group by Department
order by avg_rating desc;
