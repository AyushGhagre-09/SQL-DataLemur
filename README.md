# 🐪 DataLemur — SQL Interview Solutions

A structured collection of SQL solutions from DataLemur, organized by difficulty.  
Designed for SQL interview preparation, data analyst roles, and mastering real-world SQL problem-solving.

---

## 📁 Repository Structure

```text
DataLemur-SQL/
│
├── Easy/         → Basic Queries, Filtering, Aggregations
├── Medium/      → Joins, CTEs, Subqueries, Window Functions
└── Hard/        → Advanced Analytics, Complex Queries, Ranking
```

---

## 🧠 Concepts Covered

| Topic | Examples |
|---|---|
| Filtering & Selection | SELECT, WHERE, DISTINCT, CASE |
| Aggregations | COUNT, SUM, AVG, MIN, MAX |
| Grouping | GROUP BY, HAVING |
| Joins | INNER JOIN, LEFT JOIN, Self Join |
| Subqueries | Nested, Correlated Subqueries |
| CTEs | WITH clause, Multiple CTEs |
| Window Functions | ROW_NUMBER, RANK, DENSE_RANK |
| Analytical Functions | LAG, LEAD, FIRST_VALUE, LAST_VALUE |
| Date & Time | DATE_FORMAT, DATEDIFF, TIMESTAMPDIFF |
| Conditional Logic | CASE WHEN, IF, COALESCE |
| String Functions | CONCAT, SUBSTRING, LENGTH |
| Business Analytics | User Activity, Revenue, Retention, Growth |
| Interview Patterns | Top-N, Consecutive Records, Running Totals |

---

## 📂 File Format

Every `.sql` file follows this structure for easy revision and interview preparation.

```sql
-- Problem  : Problem Name Here
-- Difficulty: Easy / Medium / Hard
-- Platform : DataLemur
-- Link     : https://datalemur.com/questions/...

-- Approach:
-- Brief explanation of the query logic

-- Solution:
SELECT column1
FROM table_name
WHERE condition;
```

---

## 📊 Progress Tracker

| Difficulty | Solved |
|---|---:|
| 🟢 Easy | 0 |
| 🟡 Medium | 0 |
| 🔴 Hard | 0 |
| **Total** | **0** |

> Update this table as you solve more problems.

---

## 🚀 Quick Revision Guide

### Most Used SQL Patterns

```sql
-- 1. Aggregation
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- 2. Filtering Aggregated Results
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- 3. Ranking Within Groups
SELECT
    employee_name,
    department,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

-- 4. Finding the Latest Record
WITH ranked_records AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY user_id
               ORDER BY created_at DESC
           ) AS rn
    FROM user_activity
)
SELECT *
FROM ranked_records
WHERE rn = 1;

-- 5. Comparing Consecutive Records
SELECT
    user_id,
    activity_date,
    LAG(activity_date) OVER (
        PARTITION BY user_id
        ORDER BY activity_date
    ) AS previous_activity_date
FROM user_activity;
```

---

## 🎯 Why DataLemur?

- Practice SQL questions based on real technical interviews.
- Strengthen problem-solving skills for Data Analyst and Data Science roles.
- Learn to solve business-oriented SQL problems.
- Prepare for interviews at product-based companies.
- Improve proficiency in joins, aggregations, CTEs, and window functions.

---

## 🔗 Useful Resources

- [DataLemur — SQL Interview Questions](https://datalemur.com/questions)
- [DataLemur — SQL Tutorial](https://datalemur.com/sql-tutorial)
- [LeetCode — Database Problems](https://leetcode.com/problemset/database/)
- [W3Schools — SQL Reference](https://www.w3schools.com/sql/)
- [SQLZoo — SQL Practice](https://sqlzoo.net/)

---

## 👤 About

### **Ayush Ghagre**

**Data Analyst | SQL • Python • Power BI • Excel**

**LinkedIn:** [linkedin.com/in/ayush-ghagre](https://www.linkedin.com/in/ayush-ghagre/)

**GitHub:** [github.com/AyushGhagre-09](https://github.com/AyushGhagre-09)

> "The best way to master SQL is to solve real-world problems."

---

⭐ If this repository helps you, consider giving it a star!