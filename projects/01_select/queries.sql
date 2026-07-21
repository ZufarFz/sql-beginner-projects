-- =====================================================
-- Lesson 01 - SELECT
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- Query 01
-- Business Question:
-- HR wants to view all available employee information
-- from the database.
-- =====================================================

SELECT *
FROM employees;



-- =====================================================
-- Query 02
-- Business Question:
-- HR wants to see a list of employee names.
-- =====================================================

SELECT
    first_name,
    last_name
FROM employees;



-- =====================================================
-- Query 03
-- Business Question:
-- The HR manager wants to understand which department
-- each employee belongs to.
-- =====================================================

SELECT
    first_name,
    last_name,
    department
FROM employees;



-- =====================================================
-- Query 04
-- Business Question:
-- HR wants to create an internal employee directory
-- containing employee names, email addresses,
-- and phone numbers.
-- =====================================================

SELECT
    first_name || ' ' || last_name AS full_name,
    email,
    phone_number
FROM employees;