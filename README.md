# CAPSTONE PROJECT
# Online Food Delivery Business Analytics System
 Inspired by real platforms like (Swiggy,Zomato, Uber Eats)

 # Introduction
 
The Online Food Delivery Business Intelligence & Performance Analysis Using SQL project focuses on analyzing structured transactional data from an online food delivery platform. The dataset consists of five interconnected tables — customers, restaurants, orders, order items, and delivery agents — designed to simulate a real-world marketplace environment. This project aims to transform raw operational data into meaningful insights by examining customer behavior, restaurant performance, sales trends, and delivery efficiency within a relational database system.

In a competitive digital marketplace, data plays a critical role in improving profitability, service quality, and strategic decision-making. By analysing order patterns, discount usage, payment methods, customer demographics, restaurant ratings, and delivery times, businesses can identify performance gaps and growth opportunities. Understanding these metrics allows organizations to optimize pricing strategies, enhance customer retention, improve delivery operations, and strengthen partnerships with high-performing restaurants.

SQL was used as the primary analytical tool to extract, join, and aggregate data across multiple tables. Through structured queries involving joins, grouping, filtering, subqueries, and calculated metrics, key performance indicators such as total revenue, average order value, customer growth trends, and operational efficiency were derived. This project reflects real-world business intelligence practices used in food delivery and e-commerce platforms, demonstrating practical SQL expertise and the ability to apply data analytics techniques to solve business problems effectively.

## Background

This project was developed as an individual SQL assignment for the Datapencil organization.

Project Name : Online Food Delivery Analysis

### DESCRIPTION
The Online Food Delivery Business Analytics System is a data-driven project designed to analyze and generate insights from an online food delivery platform, inspired by real-world applications like Swiggy, Zomato, and Uber Eats.This project uses structured SQL queries to analyze transactional data including customers, restaurants, orders, payments, and deliveries. It focuses on key business metrics such as total revenue, average order value, customer behavior, restaurant performance, discount impact, and delivery efficiency.
The objective is to transform raw operational data into meaningful business insights that support strategic decision-making, performance optimization, and revenue growth in a competitive digital marketplace.

### Project Objective:
In this project, you will act as a Data Analyst for an Online Food Delivery company.

Your responsibility is to analyze the company’s database using SQL and generate meaningful business insights that can help improve:

 1. Revenue performance
 2. Customer retention
 3. Restaurant growth
 4. Product performance
 5. Operational efficiency

Note: The dataset and project instructions are provided in the SQL_Project_file.

### Report Creation:
   INDEX FOR PROJECT REPORT

   1. INTRODUCTION
   2. PROBLEM STATEMENT
   3. BUSINESS OBJECTIVES
   4. DATASET OVERVIEW
   5. ER DIAGRAM
   6. EXPLORATORY DATA ANALYSIS (EDA)
   7. CUSTOMER SEGMENTATION
   8. RESTAURANT PERFORMANCE ANALYSIS
   9. DELIVERY PERFORMANCE ANALYSIS
   10. VIEWS
   11. STORED PROCEDURES
   12. INDEXING STRATEGY
   13. TRIGGERS IMPLEMENTATION
   14. DASHBOARD & VISUALIZATION
   15. BUSINESS INSIGHTS & RECOMMENDATIONS
   16. CONCLUSION
   17. FUTURE ENHANCEMENTS

### Database

 DATABASE STRUCTURE

  1. customers
  2. restaurant
  3. delivery_agents
  4. order
  5. order_items

 DASHBOARD REQUIREMENTS (CAN SKIP)

 Build in Power BI / Tableau:

 1. KPI Cards → Total Revenue, Total Orders
 2. Revenue by City (Bar Chart)
 3. Monthly Revenue Trend (Line Chart)
 4. Top Customers (Bar Chart)
 5. Payment Method Pie Chart
 6. Delivery Time Distribution

 DESIGN DATABASE SCHEMA

 Observations:

 Let's assign the Primary Keys (PK) & Foregin Keys(FK) as mentioned below.

      CREATE DATABASE IF NOT EXISTS food_app_project;

       USE food_app_project;

       -- Customers table
       CREATE TABLE customers (
          customer_id INT PRIMARY KEY ,
          name VARCHAR(255),
          city VARCHAR(255),
          signup_date DATE NOT NULL,
          gender VARCHAR(10)
    );

     -- Restaurants table
      CREATE TABLE restaurants (
         restaurant_id INT PRIMARY KEY,
         restaurant_name VARCHAR(255) NOT NULL,
         city VARCHAR(255),
         cuisine VARCHAR(100),
         rating DECIMAL(2,1)
     );

    -- Delivery agents table
       CREATE TABLE delivery_agents (
         agent_id INT PRIMARY KEY ,
         agent_name VARCHAR(255) NOT NULL,
         city VARCHAR(255),
         joining_date DATE,
         rating DECIMAL(2,1)
    );

        -- Orders table (depends on customers, restaurants, delivery_agents)
        CREATE TABLE orders (
           order_id INT PRIMARY KEY ,
           customer_id INT NOT NULL,
           restaurant_id INT NOT NULL,
           order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
           order_amount DECIMAL(10,2) NOT NULL,
           discount DECIMAL(10,2) DEFAULT 0,
           payment_method VARCHAR(50),
           delivery_time INT,
           FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
           FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
       );

        -- Order items table (depends on orders)
          CREATE TABLE order_item (
              order_item_id INT PRIMARY KEY ,
              order_id INT NOT NULL,
              item_name VARCHAR(255) NOT NULL,
              quantity INT NOT NULL DEFAULT 1,
              price DECIMAL(10,2) NOT NULL,
              FOREIGN KEY (order_id) REFERENCES orders(order_id)
         );

   The  foreign keys and primary keys are required to  established for showing relationships between the table and ER models for our work, It is good to have those     for learning.
### Installation

   Tools Used:

   1. MySQL – Database management system
   2. VS Code – Query development environment
   3. SQLTools Extension (VS Code) – Connected and executed MySQL queries
   4. VSCode-DBML Extension – Designed and visualized the ER diagram

  Process Followed:

  1. Created the database and tables in MySQL using SQL scripts written in VS Code.
  2. Connected MySQL to VS Code using the SQLTools extension to run and test queries.
  3. Designed the ER model using DBML in VS Code to define relationships between tables.
  4. Implemented primary and foreign keys to maintain relational integrity.
  5. Executed analytical SQL queries to generate business insights (revenue, orders, performance metrics).

 📌 One-Line Summary

Developed and executed a relational food delivery database in MySQL using VS Code (SQLTools) and designed the ER model using VSCode-DBML.

### Tasks To Do

 PHASE 1 —EXPLORATORY ANALYSIS
The company wants to know:
1.Total Revenue
2. Total Orders Per City
3. Top 10 Customers by Spending

 PHASE 2 — CUSTOMER SEGMENTATION
1. Customer Category (Gold/Silver/Bronze)

 PHASE 3 — RESTAURANT PERFORMANCE
 1. Top 10 Restaurants by Revenue
 2. Average Rating vs Revenue
  
 PHASE 4 — DELIVERY ANALYSIS
 1. Average Delivery Time Per City
 2. Late Deliveries (Above 45 Minutes)

 PHASE 5 — PAYMENT & DISCOUNT ANALYSIS
 1. Payment Method Distribution
 2. Discount Impact on Revenue

 PHASE 6 — ADVANCED SQL
 1. Monthly Revenue Using CTE
 2. Rank Restaurants by Revenue (Window Function)
 3. Above Average Revenue Restaurants (Subquery)

 PHASE 7 — DATABASE OBJECTS
  1. Create Revenue View
  2. Stored Procedure: Get Top N Restaurant

PHASE 8-- Performance Optimization
1. Index on order_date (for monthly reports)
2. Index on customer_name (for joins)
3. Index on restaurant_name
 
PHASE 9 —Automation Logic
1. TRIGGER 1 — Prevent Negative Discount
2. TRIGGER 2 — Delivery Delay Warning

Note: All task-related SQL queries are included in the exported files.
