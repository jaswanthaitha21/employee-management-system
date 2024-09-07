-- Create the database
CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;

-- Create Departments Table
CREATE TABLE Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    hire_date DATE,
    department_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Create Performance Reviews Table
CREATE TABLE PerformanceReviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    review_date DATE,
    performance_rating INT,
    review_notes TEXT,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Create Salaries Table
CREATE TABLE Salaries (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    salary DECIMAL(10, 2),
    salary_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
