-- =====================================================
-- Lesson 07 - LIKE
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================



-- =====================================================
-- 1. Find Employees With Engineer in Job Title
--
-- Business Question:
-- HR wants to find employees whose job title
-- contains the word "Engineer".
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    job_title
FROM employees
WHERE job_title LIKE '%Engineer%';



-- =====================================================
-- 2. Find Employees Using TechNova Email Domain
--
-- Business Question:
-- HR wants to find employees whose email
-- uses the technova.com domain.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    email
FROM employees
WHERE email LIKE '%technova.com';



-- =====================================================
-- 3. Find Employees With Last Name Starting With S
--
-- Business Question:
-- HR wants to find employees whose last name
-- starts with the letter "S".
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name
FROM employees
WHERE last_name LIKE 'S%';



-- =====================================================
-- 4. Find Employees With Specialist in Job Title
--
-- Business Question:
-- HR wants to find employees whose job title
-- contains the word "Specialist".
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name,
    job_title
FROM employees
WHERE job_title LIKE '%Specialist%';



-- =====================================================
-- 5. Find Employees Whose First Name Contains A
--
-- Business Question:
-- HR wants to find employees whose first name
-- contains the letter "A" regardless of capitalization.
-- =====================================================

SELECT
    employee_id,
    first_name,
    last_name
FROM employees
WHERE first_name ILIKE '%a%';



-- =====================================================
-- 6. Find Employees Whose City Contains A
--
-- Business Question:
-- Management wants to find employees whose city
-- contains the letter "A" regardless of capitalization.
-- =====================================================

SELECT
    employee_id,
    first_name,
    city
FROM employees
WHERE city ILIKE '%a%';