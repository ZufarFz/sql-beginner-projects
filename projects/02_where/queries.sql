-- =====================================================
-- Lesson 02 - WHERE
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- Query 01
-- Business Question:
-- HR wants to see all Finance employees.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    department
FROM employees
WHERE department = 'Finance';



-- =====================================================
-- Query 02
-- Business Question:
-- The manager wants to see employees over the age of 30.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    age
FROM employees
WHERE age > 30;



-- =====================================================
-- Query 03
-- Business Question:
-- HR wants to find employees who work in the IT 
-- department and earn a salary of more than 10 million.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    salary
FROM employees
WHERE department = 'IT'
and salary > 10000000;



-- =====================================================
-- Query 04
-- Business Question:
-- The CEO wants to identify highly experienced 
-- employees. Please display the employees who have 
-- been working since before 2020.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM employees
WHERE hire_date < '2020-01-01';