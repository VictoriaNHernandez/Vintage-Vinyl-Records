# Vintage-Vinyl-Records
# 🎵 Vintage Records SQL Database

## Overview

This project presents a comprehensive SQL-based data solution for **Vintage Records**, a fictional, family-owned vinyl store based in Towson, Maryland. It aims to modernize the store's operations by replacing their outdated Excel-based inventory system with a structured relational database that supports sales, inventory, payments, and employee management both in-store and online.

## 📌 Project Objective

To design and implement a fully functional relational database for **Vintage Records** that:

- Digitally manages vinyl inventory.
- Enables customer order processing (online & in-store).
- Tracks shipping, payments, and employee interactions.
- Provides business insights through queries and views.

## 🧱 Database Structure

### Tables

- **Customer**: Stores customer details.
- **Employee**: Stores employee information and roles.
- **Vinyl_Record**: Holds inventory data of vinyl records.
- **Orders**: Tracks customer orders and their fulfillment.
- **Payment**: Stores payment transaction details.
- **Shipping**: Manages shipping details for orders.
- **Manages**: A many-to-many relationship between employees and the vinyl records they manage.

### Example Functional Dependencies

- `Customer_ID → Name, Email, Phone, Address`
- `Record_ID → Title, Artist, Genre, Year, Condition, Price, Stock`
- `Order_ID → Customer_ID, Record_ID, Employee_ID, OrderDate, Status, TotalAmount, SaleType`

## 🔍 SQL Features

- **Data Definition Language (DDL)**: SQL `CREATE TABLE` scripts define the schema with constraints.
- **Data Manipulation Language (DML)**: Includes `INSERT` statements with realistic sample data.
- **Queries**: Analytical queries to gather business insights (e.g., top-selling records, customer spending).
- **Views**: Predefined views for recurring analysis like average price per genre and total employee sales.

## 📈 Sample Queries

- Customers with multiple orders.
- Employees ranked by total sales.
- Most ordered vinyl record.
- Average price per genre.
- Customer with highest spending.
