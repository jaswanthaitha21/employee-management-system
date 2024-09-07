-- Insert Departments Data
INSERT INTO Departments (department_name)
VALUES
('HR'),
('IT'),
('Finance'),
('Sales');

-- Insert Employees Data
INSERT INTO Employees (first_name, last_name, date_of_birth, hire_date, department_id, salary)
VALUES
('Jaswanth', 'Aitha', '1990-05-12', '2015-06-01', 2, 60000),
('Virat', 'Kohli', '1985-09-17', '2013-07-15', 1, 55000),
('Abhay', 'Aitha', '1992-11-30', '2016-03-22', 3, 70000),
('Prabhas', 'Uppalapati', '1988-01-15', '2014-09-09', 4, 52000);

-- Insert Performance Reviews Data
INSERT INTO PerformanceReviews (employee_id, review_date, performance_rating, review_notes)
VALUES
(1, '2023-05-01', 4, 'Excellent work on the IT project'),
(2, '2023-05-01', 5, 'Outstanding team leadership'),
(3, '2023-05-01', 3, 'Great results in sales'),
(4, '2023-05-01', 4, 'Good work, but room for improvement');

-- Insert Salaries Data
INSERT INTO Salaries (employee_id, salary, salary_date)
VALUES
(1, 60000, '2023-01-01'),
(2, 55000, '2023-01-01'),
(3, 70000, '2023-01-01'),
(4, 52000, '2023-01-01');
