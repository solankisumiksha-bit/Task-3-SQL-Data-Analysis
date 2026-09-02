# Task 3 – SQL for Data Analysis

## 📌 Project Overview

This project demonstrates SQL-based data analysis using a simulated E-Commerce database. The objective is to extract, manipulate, analyze, and optimize structured data using MySQL.

## 🎯 Objective

The main objective of this project is to learn and demonstrate: 

* Data retrieval using SELECT
* Filtering using WHERE
* Sorting using ORDER BY
* Grouping using GROUP BY
* Aggregate functions such as SUM, AVG, COUNT, MIN and MAX
* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* Subqueries
* HAVING clause
* SQL Views
* Indexes
* Query optimization using EXPLAIN

## 🛠️ Tools Used

* MySQL
* MySQL Workbench
* VS Code
* GitHub

## 🗄️ Database

Database name:

`ecommerce_db`

## 📊 Tables

### 1. Customers

Stores customer information such as:

* Customer ID
* Customer Name
* Email
* City
* Country
* Signup Date

### 2. Products

Stores product information:

* Product ID
* Product Name
* Category
* Price
* Stock Quantity

### 3. Orders

Stores order information:

* Order ID
* Customer ID
* Order Date
* Total Amount
* Order Status

### 4. Order Items

Stores individual products included in each order:

* Order Item ID
* Order ID
* Product ID
* Quantity
* Unit Price

## 🔍 SQL Concepts Implemented

### SELECT

Used to retrieve records from database tables.

### WHERE

Used to filter records based on conditions.

### ORDER BY

Used to sort results in ascending or descending order.

### GROUP BY

Used to group records and perform aggregate analysis.

### JOINS

INNER JOIN, LEFT JOIN and RIGHT JOIN were used to combine related data from multiple tables.

### Aggregate Functions

The project uses:

* SUM()
* AVG()
* COUNT()
* MAX()
* MIN()

### Subqueries

Subqueries were used to identify orders above the average order value and products above the average product price.

### Views

Two analytical views were created:

* customer_sales
* product_sales

### Indexes

Indexes were created on frequently queried columns to improve query performance.

## 📈 Business Analysis

The SQL queries provide insights into:

* Total sales
* Average order value
* Top customers
* Top-selling products
* Product revenue
* Category-wise revenue
* Number of orders by status
* Customer distribution by city

## 📁 Project Structure

```text
Task-3-SQL-Data-Analysis/
│
├── ecommerce_analysis.sql
├── README.md
│
└── screenshots/
    ├── 01_database.png
    ├── 02_select_where.png
    ├── 03_group_by.png
    ├── 04_inner_join.png
    ├── 05_left_join.png
    ├── 06_right_join.png
    ├── 07_subquery.png
    ├── 08_aggregate.png
    ├── 09_view.png
    └── 10_index.png
```

## ✅ Outcome

This project helped demonstrate practical SQL skills including data extraction, filtering, aggregation, table relationships, analytical views, and basic query optimization.

## 👩‍💻 Author

Sumiksha Solanki

BCA – YCMOU

Skills: SQL | Python | Excel | Power BI | PHP

