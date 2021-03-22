Activity 1:
SELECT last_name, (salary/30)*7 "Weekly Salary" from emps;

Activity 2.a:
SELECT fname, lname FROM employee where superssn= 333445555;

Activity 2.b:
SELECT lname, fname from employee, dependent where employee.ssn= dependent.essn AND employee.fname= dependent.dependent_name;

Activity 2.c:
SELECT lname, mgrstartdate, dname FROM department, employee where department.mgrssn= employee.ssn;

Activity 2.d:
SELECT e.lname, e.fname, d.dname, p.pname, w.hours FROM department d, employee e, works_on w, project p WHERE d.dnumber=e.dno AND e.ssn=w.essn AND w.pno=p.pnumber;

Activity 3:
SELECT Last_Name, Job_Id, Hire_Date FROM emps WHERE Hire_Date BETWEEN 1998-02-20 AND 1998-05-01 ORDER BY hire_date ASC;

Activity 4:
SELECT Last_Name, Department_Id FROM emps WHERE Department_Id in (20,50) order by Last_Name ASC;