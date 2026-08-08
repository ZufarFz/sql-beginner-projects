-- =====================================================
-- Lesson 08: IN & BETWEEN
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- 1. Find Employees From Specific Departments

-- Business Question:
-- HR wants to see employees who work in IT, Finance, and Marketing.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    department
FROM employees
WHERE department IN ('IT','Finance','Marketing');



-- =====================================================
-- 2. Find Employees Based on Age Range

-- Business Question:
-- HR wants to find employees between 25 and 35 years old.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    age
FROM employees
WHERE age BETWEEN 25 AND 35;



-- =====================================================
-- 3. Find Employees With Salary Range

-- Business Question:
-- Management wants to see employees with salary
-- between 10 million and 15 million
-- from IT and Finance departments.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    department
FROM employees
WHERE
    salary BETWEEN 10000000 AND 15000000
AND
    department IN ('IT','Finance');



-- =====================================================
-- 4. Find Senior Employees Based on Business Rules

-- Business Question:
-- HR wants to find senior employees based on:
-- 1. Senior job title
-- OR
-- 2. Salary above 10 million and minimum 5 years experience.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    job_title,
    salary,
    hire_date
FROM employees
WHERE
    job_title IN 
    (
        'Finance Supervisor',
        'HR Supervisor',
        'Senior Software Engineer'
    )
OR
    (
        salary > 10000000
        AND
        hire_date <= NOW() - INTERVAL '5 years'
    );
