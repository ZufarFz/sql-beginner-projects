# Employee Dataset

## Overview

This repository uses a custom employee dataset created specifically for learning SQL fundamentals.

The dataset contains **100 fictional employee records** from a fictional company called **TechNova Solutions**.

Instead of using a public dataset, I created this one so the data structure stays simple and easy to understand while practicing SQL.

### Dataset Summary

| Item | Value |
|------|------:|
| Records | 100 |
| Departments | 6 |
| Cities | 6 |
| Hire Period | 2018–2025 |
| Salary Range | Rp4,500,000 – Rp13,000,000 |

---

## Data Dictionary

| Column | Type | Description | Example |
|---------|------|-------------|---------|
| employee_id | INT | Unique employee identifier | 1 |
| first_name | VARCHAR(50) | Employee first name | Andi |
| last_name | VARCHAR(50) | Employee last name | Pratama |
| email | VARCHAR(100) | Company email | andi.pratama@technova.com |
| phone_number | VARCHAR(20) | Employee phone number | 081234567890 |
| gender | VARCHAR(10) | Employee gender | Male |
| department | VARCHAR(50) | Employee department | IT |
| job_title | VARCHAR(50) | Employee position | Software Engineer |
| salary | INT | Monthly salary (IDR) | 8500000 |
| hire_date | DATE | Employee hire date | 2022-05-16 |
| city | VARCHAR(50) | Employee city | Jakarta |
| age | INT | Employee age | 28 |

---

## Notes

- All records are fictional.
- Salaries are based on job titles and approximate years of service.
- The dataset is designed for learning SQL, not to represent a real company.