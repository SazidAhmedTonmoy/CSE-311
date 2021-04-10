Activity 01:
SELECT Last_Name, Hire_Date FROM emps
WHERE Hire_Date >= '1994-01-01' and Hire_Date < '1995-01-01';

Activity 02:
select Last_Name, Salary, Commission_pct from emps
where Commission_pct is not null order by Salary, Commission_pct;

Activity 03:
SELECT Employee_Id, Last_Name
FROM emps
WHERE Last_Name LIKE 'a%' or Last_Name LIKE 'e%';

Activity 04:
SELECT e.Last_Name, e.Department_Id, d.Department_Name
FROM emps e, depts d WHERE e.Department_Id = d.Department_id;

Activity 05:
SELECT e.Last_Name, d.Department_Name, d.Location_id, l.City
FROM emps e, depts d, locs l
WHERE e.Department_Id = d.Department_id
AND d.Location_id = l.Location_id
AND e.Commission_pct IS NOT NULL;

Activity 06:
SELECT e.Last_Name, e.Job_Id, e.Department_Id,
d.Department_Name
FROM emps e JOIN depts d
ON (e.department_id = d.department_id)
JOIN locs l
ON (d.Location_id = l.Location_id)
WHERE LOWER(l.City) = 'toronto';

Activity 07:
select Last_Name, Salary, Commission_pct from emps
where Commission_pct is not null order by Salary, Commission_pct;

Activity 08:
SELECT w.Last_Name "Employee", w.Employee_Id "EMP#",
m.Last_Name "Manager", m.Employee_Id "Mgr#"
FROM emps w join emps m
ON (w.Manager_id = m.Employee_Id);

Activity 09:
SELECT ROUND(MAX(Salary),0) "Maximum",
ROUND(MIN(Salary),0) "Minimum",
ROUND(SUM(Salary),0) "Sum",
ROUND(AVG(Salary),0) "Average"
FROM emps;

Activity 10:
SELECT Job_Id, ROUND(MAX(Salary),0) "Maximum",
ROUND(MIN(Salary),0) "Minimum",
ROUND(SUM(Salary),0) "Sum",
ROUND(AVG(Salary),0) "Average"
FROM emps GROUP BY Job_Id;

Activity 11:
SELECT Job_Id, COUNT(*)
FROM emps
GROUP BY Job_Id;

Activity 12:
SELECT Manager_Id, MIN(Salary)
FROM emps
WHERE Manager_Id IS NOT NULL
GROUP BY Manager_Id
HAVING MIN(Salary) > 6000
ORDER BY MIN(Salary) DESC;

Homework:
SELECT d.Department_Name AS 'department name',
d.Location_id AS 'department location',
COUNT(*) AS 'Number of People',
ROUND(AVG(Salary),2) AS 'Salary'
FROM depts d INNER JOIN emps e ON d.Department_id = e.Department_Id
GROUP BY d.Department_Name, d.Location_id;