# Lesson 00 - Database Design

## Overview

Before writing SQL queries, we need a database to work with.

In this lesson, I designed a simple employee database that will be used throughout this SQL Beginner repository. The goal is to understand the data structure first before learning SQL queries.

---

## Business Scenario

Imagine you're a Junior Data Analyst at **TechNova Solutions**.

The HR team wants to organize employee data so it can be searched, managed, and analyzed more easily. Your task is to design a simple database that will support future analysis.

---

## Database Schema

**Table:** `employees`

| Column | Data Type | Description |
|---------|-----------|-------------|
| employee_id | INT | Primary Key |
| first_name | VARCHAR(50) | First name |
| last_name | VARCHAR(50) | Last name |
| email | VARCHAR(100) | Email address |
| phone_number | VARCHAR(20) | Phone number |
| gender | VARCHAR(10) | Gender |
| department | VARCHAR(50) | Department |
| job_title | VARCHAR(50) | Job title |
| salary | INT | Monthly salary |
| hire_date | DATE | Hire date |
| city | VARCHAR(50) | City |
| age | INT | Age |

---

## Database Diagram

```text
employees
-------------------------
employee_id (PK)
first_name
last_name
email
phone_number
gender
department
job_title
salary
hire_date
city
age
```

---

## Why Only One Table?

In a real project, employee data would usually be split into multiple tables.

For this beginner repository, I use a single table to keep the focus on learning SQL fundamentals. More advanced database design will be covered in future repositories.

---

## Files

```
00_database_design/
│
├── README.md
├── 01_create_table.sql
├── technova_employees.csv
└── dataset.md
```

---

## Next Step

The next lesson will focus on retrieving data from the `employees` table using the `SELECT` statement.