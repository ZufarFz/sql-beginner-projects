-- =====================================================
-- Lesson 03 - ORDER BY
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- Query 01
-- Business Question:
-- HR wants to see employees with the highest salary.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employees
ORDER BY salary DESC;



-- =====================================================
-- Query 02
-- Business Question:
-- HR wants to see employees from the longest-serving
-- employees to the newest employees.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM employees
ORDER BY hire_date ASC;



-- =====================================================
-- Query 03
-- Business Question:
-- The manager wants to view IT employees sorted
-- by salary from highest to lowest.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;



-- =====================================================
-- Query 04
-- Business Question:
-- Finance wants to organize employees by department
-- and compare salaries within each department.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    salary
FROM employees
ORDER BY
    department ASC,
    salary DESC;