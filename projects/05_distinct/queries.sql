-- =====================================================
-- Lesson 05 - DISTINCT
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- Query 01
-- Business Question:
-- HR wants to know what departments exist
-- in the company.
-- =====================================================

SELECT DISTINCT
    department
FROM employees;



-- =====================================================
-- Query 02
-- Business Question:
-- Management wants to know the cities
-- where employees are located.
-- =====================================================

SELECT DISTINCT
    city
FROM employees;



-- =====================================================
-- Query 03
-- Business Question:
-- HR wants to see all job positions
-- available in the company.
-- =====================================================

SELECT DISTINCT
    job_title
FROM employees;



-- =====================================================
-- Query 04
-- Business Question:
-- Management wants to know the unique
-- combinations of department and city.
-- =====================================================

SELECT DISTINCT
    department,
    city
FROM employees;



-- =====================================================
-- Query 05
-- Additional Analysis:
-- How many unique departments exist
-- in the company?
-- =====================================================

SELECT COUNT(DISTINCT department) AS total_department
FROM employees;



-- =====================================================
-- Query 06
-- Additional Analysis:
-- How many unique cities exist
-- in the company?
-- =====================================================

SELECT COUNT(DISTINCT city) AS total_city
FROM employees;