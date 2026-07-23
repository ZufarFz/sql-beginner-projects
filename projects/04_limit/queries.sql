-- =====================================================
-- Lesson 04 - LIMIT
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- Query 01
-- Business Question:
-- HR wants to see the 5 employees with the highest salary.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 5;



-- =====================================================
-- Query 02
-- Business Question:
-- The manager wants to see the 3 newest employees
-- who joined the company.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM employees
ORDER BY hire_date DESC
LIMIT 3;



-- =====================================================
-- Query 03
-- Business Question:
-- Finance wants to see the 5 highest-paid employees
-- from the Finance department.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    salary
FROM employees
WHERE department = 'Finance'
ORDER BY salary DESC
LIMIT 5;



-- =====================================================
-- Query 04
-- Business Question:
-- HR wants to identify the 5 employees who have
-- worked at the company the longest.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM employees
ORDER BY hire_date ASC
LIMIT 5;