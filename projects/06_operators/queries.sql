-- =====================================================
-- Lesson 06 - OPERATORS
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- 1. Find Employees With Minimum Salary
--
-- Business Question:
-- HR wants to see employees who have a minimum salary
-- of Rp5,500,000.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employees
WHERE salary >= 5500000;



-- =====================================================
-- 2. Find IT Employees With High Salary
--
-- Business Question:
-- Manager wants to see IT employees with salary
-- above Rp9,000,000.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    salary
FROM employees
WHERE department = 'IT'
AND salary > 9000000;



-- =====================================================
-- 3. Find Employees Outside Finance Department
--
-- Business Question:
-- HR wants to see all employees except those
-- who work in Finance department.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    department
FROM employees
WHERE department != 'Finance';



-- =====================================================
-- 4. Find Employees Based on Age and Location
--
-- Business Question:
-- Management wants to find employees older than
-- 25 years old who work in Jakarta.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    age,
    city
FROM employees
WHERE age > 25
AND city = 'Jakarta';



-- =====================================================
-- 5. Find Employees From IT or Finance With High Salary
--
-- Business Question:
-- HR wants to find employees who work in IT or Finance,
-- but their salary must be above Rp8,000,000.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    department,
    salary
FROM employees
WHERE
    (
        department = 'IT'
        OR department = 'Finance'
    )
    AND salary > 8000000;