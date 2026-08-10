-- =====================================================
-- Lesson 11: Basic Functions
-- Dataset: TechNova Solutions Employees
-- Table: employees
-- Database: PostgreSQL
-- =====================================================


-- =====================================================
-- 1. HR wants employee full name list
-- Business Need:
-- HR wants to see employee names in one column
-- instead of separated first_name and last_name.
-- =====================================================

SELECT
	employee_id,
	CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;



-- =====================================================
-- 2. HR wants standardized employee names
-- Business Need:
-- HR wants employee names displayed in proper case
-- for official reports.
-- =====================================================

SELECT
	employee_id,
	INITCAP(CONCAT(first_name, ' ', last_name)) AS full_name
FROM employees;



-- =====================================================
-- 3. HR wants uppercase employee names
-- Business Need:
-- HR needs employee names in uppercase format
-- for official documentation.
-- =====================================================

SELECT
	employee_id,
	UPPER(CONCAT(first_name, ' ', last_name)) AS employee_name_upper
FROM employees;



-- =====================================================
-- 4. HR wants to analyze employee name length
-- Business Need:
-- HR wants to know the number of characters
-- in each employee full name.
-- =====================================================

SELECT
	employee_id,
	CONCAT(first_name, ' ', last_name) AS full_name,
	LENGTH(CONCAT(first_name, ' ', last_name)) AS full_name_length
FROM employees;



-- =====================================================
-- 5. Finance wants salary displayed in million rupiah
-- Business Need:
-- Finance wants a more readable salary format
-- for reporting purposes.
-- =====================================================

SELECT
	employee_id,
	CONCAT(first_name, ' ', last_name) AS full_name,
	ROUND(salary / 1000000, 2) AS salary_million
FROM employees;



-- =====================================================
-- 6. Finance wants rounded salary values
-- Business Need:
-- Finance wants salary values without decimal numbers
-- for summary reports.
-- =====================================================

SELECT
	employee_id,
	CONCAT(first_name, ' ', last_name) AS full_name,
	ROUND(salary) AS rounded_salary
FROM employees;



-- =====================================================
-- 7. HR wants employee working duration
-- Business Need:
-- HR wants to know how many years each employee
-- has worked at TechNova.
-- =====================================================

SELECT
	employee_id,
	CONCAT(first_name, ' ', last_name) AS full_name,
	EXTRACT(
		YEAR FROM AGE(CURRENT_DATE, hire_date)
	) AS years_worked
FROM employees;



-- =====================================================
-- 8. HR wants senior employee list
-- Business Need:
-- HR wants employees who have worked
-- for more than 5 years.
-- =====================================================

SELECT
	employee_id,
	CONCAT(first_name, ' ', last_name) AS full_name,
	EXTRACT(
		YEAR FROM AGE(CURRENT_DATE, hire_date)
	) AS years_worked
FROM employees
WHERE
	EXTRACT(
		YEAR FROM AGE(CURRENT_DATE, hire_date)
	) > 5;



-- =====================================================
-- 9. HR wants complete employee profile summary
-- Business Need:
-- HR wants a summary report containing:
-- - Employee name
-- - Salary in million rupiah
-- - Name length
-- - Working duration
-- =====================================================

SELECT
	employee_id,
	INITCAP(CONCAT(first_name, ' ', last_name)) AS full_name,
	ROUND(salary / 1000000, 2) AS salary_million,
	LENGTH(CONCAT(first_name, ' ', last_name)) AS full_name_length,
	EXTRACT(
		YEAR FROM AGE(CURRENT_DATE, hire_date)
	) AS years_worked
FROM employees;