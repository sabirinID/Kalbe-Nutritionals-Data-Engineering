-- Task 6
-- Create a simple star schema for 'KALBE' database

-- Create a database 'KALBE'
-- Membuat database 'KALBE'
CREATE DATABASE KALBE;

-- Menggunakan database 'KALBE'
USE KALBE;

-- Membuat tabel 'Sales' sebagai tabel fakta
CREATE TABLE Sales (
    Sale_id INT PRIMARY KEY,
    Item_code INT,
    Customer_id INT,
    Employee_id INT,
    Date_id INT,
    Quantity INT,
    Total_price INT
);

-- Membuat tabel 'Items' sebagai tabel dimensi
CREATE TABLE Items (
    Item_code INT PRIMARY KEY,
    Item_name VARCHAR(255) NOT NULL,
    Item_price INT NOT NULL
);

-- Membuat tabel 'Customers' sebagai tabel dimensi
CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Customer_name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Zip VARCHAR(10) NOT NULL
);

-- Membuat tabel 'Employees' sebagai tabel dimensi
CREATE TABLE Employees (
    Employee_id INT PRIMARY KEY,
    Employee_name VARCHAR(255) NOT NULL,
    Title VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Region VARCHAR(50) NOT NULL
);

-- Membuat tabel 'Dates' sebagai tabel dimensi
CREATE TABLE Dates (
    Date_id INT PRIMARY KEY,
    Order_date DATE NOT NULL,
    Year INT NOT NULL,
    Quarter INT NOT NULL,
    Month INT NOT NULL
);