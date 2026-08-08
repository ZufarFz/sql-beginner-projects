-- =====================================================
-- Lesson 09 - GROUP BY
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- 1. Count Employee Based on Job Title

-- Business Question:
-- HR wants to know how many employees exist for each job title.
-- =====================================================

SELECT
    job_title,
    COUNT(employee_id) AS total_employee
FROM employees
GROUP BY job_title;


-- =====================================================
-- 2. Find Average Salary Based on City

-- Business Question:
-- Finance wants to analyze the average salary for each city.
-- =====================================================

SELECT
    city,
    AVG(salary) AS average_salary
FROM employees
GROUP BY city;


-- =====================================================
-- 3. Find Highest Salary in Each Department

-- Business Question:
-- Management wants to know the highest salary available 
-- in each department.
-- =====================================================

SELECT
    department,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department;


-- =====================================================
-- 4. Find Department With The Most Employees

-- Business Question:
-- HR wants to know which department has the highest 
-- number of employees.
-- =====================================================

SELECT
    department,
    COUNT(employee_id) AS total_employee
FROM employees
GROUP BY department
ORDER BY total_employee DESC
LIMIT 1;


-- =====================================================
-- 5. Find Department With Highest Average Salary

-- Business Question:
-- CEO wants to know which department has the highest 
-- average salary.
-- =====================================================

SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;