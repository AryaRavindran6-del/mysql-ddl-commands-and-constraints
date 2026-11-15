CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location VARCHAR(30)
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
ALTER TABLE Employees
ADD COLUMN email VARCHAR(255);
ALTER TABLE Employees
MODIFY COLUMN designation VARCHAR(255);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;
DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100) NOT NULL,

    PRIMARY KEY (department_id),

    UNIQUE (department_name)
);
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL,

    PRIMARY KEY (location_id),

    UNIQUE (location)
);
CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT NOT NULL,
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    PRIMARY KEY (employee_id),

    CHECK (age >= 18),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);