#1
SELECT Departments.DEPARTMENT_NAME, COUNT(*) 
FROM Employees 
INNER JOIN Departments ON Employees.DEPARTMENT_ID = Departments.DEPARTMENT_ID 
GROUP BY DEPARTMENT_NAME;

#2
SELECT Employees.EMPLOYEE_ID, Jobs.JOB_TITLE, (JobHistory.END_DATE - JobHistory.START_DATE)
FROM JobHistory
INNER JOIN Employees ON JobHistory.EMPLOYEE_ID = Employees.EMPLOYEE_ID
INNER JOIN Departments ON JobHistory.DEPARTMENT_ID = Departments.DEPARTMENT_ID
INNER JOIN Jobs ON JobHistory.JOB_ID = Jobs.JOB_ID
WHERE (Employees.DEPARTMENT_ID = 90);

#3
SELECT Departments.DEPARTMENT_NAME, Employees.FIRST_NAME, Locations.CITY
FROM Employees
INNER JOIN Departments ON Employees.MANAGER_ID = Departments.MANAGER_ID
INNER JOIN Locations ON Departments.LOCATION_ID = Locations.LOCATION_ID;

#4
SELECT Jobs.JOB_TITLE, Employees.SALARY
FROM Employees
INNER JOIN Jobs ON Employees.JOB_ID = Jobs.JOB_ID;
