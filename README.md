# Employee Management System

## Project Overview
This project is a SQL-based Employee Management System. It helps manage employee details, salaries, departments, and performance reviews. It showcases core SQL skills, including CRUD operations, joins, stored procedures, and data aggregation.

## Features
- Manage employees, departments, and salaries.
- Track employee performance with review ratings.
- Automate salary increases using stored procedures.
- Query employee salary history and performance details.

## Database Schema
- **Departments**: Contains department information.
- **Employees**: Stores employee details like names, DOB, and salary.
- **PerformanceReviews**: Stores performance ratings and review notes.
- **Salaries**: Tracks salary history and updates.

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/jaswanthaitha21/employee-management-system.git
   cd employee-management-system

2. Import the database schema:
   ```sql
   source schema.sql;
   
3. Insert sample data:
   ```sql
   source data.sql;
   
4. Run queries from `queries.sql` to test the project.
