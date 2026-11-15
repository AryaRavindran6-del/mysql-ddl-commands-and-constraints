# MySQL Assignment 1 – DDL Commands & Constraints
Implementation of MySQL DDL commands and database constraints using an Employee Database schema. Covers database creation, table modifications, table renaming, truncation, deletion, and integrity constraints.

##  Overview

This project demonstrates the implementation of **Data Definition Language (DDL) commands and database constraints** in MySQL using an Employee Database schema.

The objective is to understand how to create and modify database structures, manage tables, and enforce data integrity using appropriate SQL constraints.

The database consists of three interconnected tables: `Departments`, `Location`, and `Employees`.


##  Objectives

- Create a database and relational tables using SQL.
- Understand and implement essential DDL commands.
- Modify table structures using ALTER statements.
- Rename, truncate, and drop database objects.
- Implement primary keys, foreign keys, and other integrity constraints.
- Establish relationships between multiple tables.


##  Database Structure

**Database Name:** `employee`

The database contains the following tables:

| Table | Description |
|---|---|
| Departments | Stores department IDs and department names. |
| Location | Stores location IDs and location names. |
| Employees | Stores employee details, including name, gender, age, joining date, designation, department, location, and salary. |

**Relationships:**
- `Employees.department_id` references `Departments.department_id`.
- `Employees.location_id` references `Location.location_id`.

These relationships establish one-to-many connections between the parent tables and the Employees table.


##  SQL Commands Implemented

### 1. Database and Table Creation
- `CREATE DATABASE` – Creates the employee database.
- `USE` – Selects the database.
- `CREATE TABLE` – Creates the Departments, Location, and Employees tables.

### 2. Table Modification – ALTER
- `ADD COLUMN` – Adds an email column to the Employees table.
- `MODIFY COLUMN` – Changes the designation column's data type length.
- `DROP COLUMN` – Removes the age column.
- `RENAME COLUMN` – Renames hire_date to date_of_joining.

### 3. Table Renaming
- `RENAME TABLE` – Renames Departments to Departments_Info and Location to Locations.

### 4. Table Truncation
- `TRUNCATE TABLE` – Removes all records from the Employees table while retaining its structure.

### 5. Database and Table Deletion
- `DROP TABLE` – Removes the Employees table.
- `DROP DATABASE` – Deletes the employee database.


## Constraints Implemented

The database was recreated with the following constraints to maintain data integrity:

| Constraint | Implementation |
|---|---|
| PRIMARY KEY | Ensures unique identification of records. |
| NOT NULL | Prevents mandatory fields from containing NULL values. |
| UNIQUE | Prevents duplicate department and location names. |
| AUTO_INCREMENT | Automatically generates sequential location IDs. |
| ENUM | Restricts gender values to 'M' or 'F'. |
| CHECK | Ensures employee age is 18 or above. |
| DEFAULT | Automatically assigns the current date to hire_date when not specified. |
| FOREIGN KEY | Establishes relationships between Employees and the parent tables. |


##  Implementation Approach

The assignment was completed in two stages:

**Part A – DDL Operations**

1. Created the employee database and its three tables.
2. Modified the Employees table by adding, modifying, dropping, and renaming columns.
3. Renamed the Departments and Location tables.
4. Truncated the Employees table.
5. Dropped the Employees table and the employee database.

**Part B – Database Recreation and Constraints**

1. Dropped the database if it already existed and recreated it.
2. Created the Departments table with PRIMARY KEY, NOT NULL, and UNIQUE constraints.
3. Created the Location table with PRIMARY KEY, AUTO_INCREMENT, NOT NULL, and UNIQUE constraints.
4. Created the Employees table with PRIMARY KEY, NOT NULL, ENUM, CHECK, DEFAULT, and FOREIGN KEY constraints.
5. Verified the database and table structures using DESCRIBE and SHOW CREATE TABLE statements.


## Tools & Technologies

- **Database:** MySQL
- **SQL Editor:** MySQL Workbench
- **Language:** SQL


##  Repository Structure

```text
mysql-ddl-commands-and-constraints/
│
├── README.md
│
└── SQL_Assignment_DDL_Commands_&_Constraints.sql
```


##  Key Learnings

- Understanding the fundamentals of DDL commands.
- Creating and modifying relational database structures.
- Implementing database constraints to maintain data accuracy and consistency.
- Establishing relationships using primary and foreign keys.
- Understanding the importance of data integrity in relational databases.


##  Conclusion

This assignment provided practical experience in database creation, structural modification, and constraint implementation using MySQL. It strengthened the understanding of relational database design and the role of SQL constraints in maintaining data integrity.
