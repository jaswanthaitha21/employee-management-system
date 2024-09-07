-- Get all employees with their departments
SELECT e.employee_id, e.first_name, e.last_name, d.department_name, e.salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Get employee performance reviews
SELECT e.first_name, e.last_name, p.review_date, p.performance_rating, p.review_notes
FROM PerformanceReviews p
JOIN Employees e ON p.employee_id = e.employee_id;

-- Find employees by department (IT department in this case)
SELECT e.first_name, e.last_name, d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

-- Get employee salary history
SELECT e.first_name, e.last_name, s.salary, s.salary_date
FROM Salaries s
JOIN Employees e ON s.employee_id = e.employee_id
WHERE e.employee_id = 1;

-- Increase salary of all employees in a department (Sales department)
UPDATE Employees
SET salary = salary * 1.10
WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = 'Sales');

-- Create a view for employee details
CREATE VIEW EmployeeDetails AS
SELECT e.employee_id, e.first_name, e.last_name, d.department_name, e.salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Create a view for employee performance
CREATE VIEW EmployeePerformance AS
SELECT e.first_name, e.last_name, p.review_date, p.performance_rating, p.review_notes
FROM PerformanceReviews p
JOIN Employees e ON p.employee_id = e.employee_id;

-- Create a stored procedure to increase salary
DELIMITER //

CREATE PROCEDURE IncreaseSalary(IN emp_id INT, IN percent_increase DECIMAL(5, 2))
BEGIN
    UPDATE Employees
    SET salary = salary + (salary * percent_increase / 100)
    WHERE employee_id = emp_id;
END //

DELIMITER ;

-- Call the stored procedure to increase the salary of an employee (Employee ID 1)
CALL IncreaseSalary(1, 10);
