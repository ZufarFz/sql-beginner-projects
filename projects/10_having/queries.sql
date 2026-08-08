-- =====================================================
-- Lesson 10 - HAVING
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- 1. Find Job Title With More Than 5 Employees

-- Business Question:
-- HR wants to know which job titles have more than 5 employees.
-- =====================================================

SELECT
    job_title,
    COUNT(employee_id) AS total_employee
FROM employees
GROUP BY job_title
HAVING COUNT(employee_id) > 5;


-- =====================================================
-- 2. Find Cities With Average Salary Below 8 Million

-- Business Question:
-- Finance wants to analyze which cities have an average 
-- salary below 8 million.
-- =====================================================

SELECT
    city,
    AVG(salary) AS average_salary
FROM employees
GROUP BY city
HAVING AVG(salary) < 8000000;


-- =====================================================
-- 3. Find Departments With Minimum 10 Employees
--    And Average Salary Above 8 Million

-- Business Question:
-- CEO wants to know which departments have:
-- 1. At least 10 employees
-- 2. Average salary above 8 million
-- =====================================================

SELECT
    department,
    COUNT(employee_id) AS total_employee,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING 
    COUNT(employee_id) >= 10
    AND AVG(salary) > 8000000;