-- ===========================================
-- SQL GROUP BY & HAVING Practice
-- ===========================================

-- ===========================================
-- 1. Create Database
-- ===========================================

CREATE DATABASE student_db;
USE student_db;

-- ===========================================
-- 2. Student Table
-- ===========================================

CREATE TABLE Student (
    student_id INT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    course VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Student VALUES
(101, 'Ravi', 20, 'Male', 'Python', 'Chennai'),
(102, 'Anu', 21, 'Female', 'Java', 'Hyderabad'),
(103, 'Kiran', 22, 'Male', 'SQL', 'Bangalore'),
(104, 'Divya', 20, 'Female', 'Testing', 'Pune'),
(105, 'Arun', 23, 'Male', 'Django', 'Mumbai'),
(106, 'Sneha', 21, 'Female', 'Python', 'Delhi'),
(107, 'Vijay', 24, 'Male', 'Java', 'Chennai'),
(108, 'Keerthi', 22, 'Female', 'SQL', 'Kolkata'),
(109, 'Manoj', 20, 'Male', 'Testing', 'Hyderabad'),
(110, 'Priya', 23, 'Female', 'Django', 'Bangalore');

SELECT * FROM Student;

-- ===========================================
-- Student Queries
-- ===========================================

-- 1. Display the total number of students in each course.

SELECT course,
       COUNT(*) AS total_students
FROM Student
GROUP BY course;

-- 2. Display the total number of students in each city.

SELECT city,
       COUNT(*) AS total_students
FROM Student
GROUP BY city;

-- 3. Display the average age of students in each course.

SELECT course,
       AVG(age) AS average_age
FROM Student
GROUP BY course;

-- 4. Display the number of students in each course.
-- Show only courses having more than 1 student.

SELECT course,
       COUNT(*) AS total_students
FROM Student
GROUP BY course
HAVING COUNT(*) > 1;

-- 5. Display the number of students in each city.
-- Show only cities having more than 1 student.

SELECT city,
       COUNT(*) AS total_students
FROM Student
GROUP BY city
HAVING COUNT(*) > 1;

-- 6. Display the average age of students in each course.
-- Show only courses with average age greater than 21.

SELECT course,
       AVG(age) AS average_age
FROM Student
GROUP BY course
HAVING AVG(age) > 21;

-- 7. Display the number of male and female students.

SELECT gender,
       COUNT(*) AS total_students
FROM Student
GROUP BY gender;

-- ===========================================
-- 3. Employee Table
-- ===========================================

CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    experience INT
);

INSERT INTO Employee VALUES
(1, 'Raj', 'HR', 30000, 'Chennai', 2),
(2, 'Meena', 'IT', 45000, 'Hyderabad', 4),
(3, 'Karthik', 'Finance', 50000, 'Pune', 5),
(4, 'Suresh', 'IT', 40000, 'Delhi', 3),
(5, 'Latha', 'HR', 35000, 'Mumbai', 2),
(6, 'John', 'Testing', 38000, 'Bangalore', 3),
(7, 'Deepa', 'Finance', 52000, 'Chennai', 6),
(8, 'Hari', 'IT', 47000, 'Hyderabad', 4),
(9, 'Rani', 'Testing', 39000, 'Delhi', 2),
(10, 'Ajay', 'HR', 32000, 'Pune', 1);

SELECT * FROM Employee;

-- ===========================================
-- Employee Queries
-- ===========================================

-- 1. Display the number of employees in each department.

SELECT department,
       COUNT(*) AS total_employees
FROM Employee
GROUP BY department;

-- 2. Display the average salary of employees in each department.

SELECT department,
       AVG(salary) AS average_salary
FROM Employee
GROUP BY department;

-- 3. Display the highest salary in each department.

SELECT department,
       MAX(salary) AS highest_salary
FROM Employee
GROUP BY department;

-- 4. Display the lowest salary in each department.

SELECT department,
       MIN(salary) AS lowest_salary
FROM Employee
GROUP BY department;

-- 5. Display the total salary paid to employees in each department.

SELECT department,
       SUM(salary) AS total_salary
FROM Employee
GROUP BY department;

-- 6. Display the number of employees in each city.

SELECT city,
       COUNT(*) AS total_employees
FROM Employee
GROUP BY city;

-- 7. Display the average experience of employees in each department.

SELECT department,
       AVG(experience) AS average_experience
FROM Employee
GROUP BY department;

-- ===========================================
-- 4. Product Table
-- ===========================================

CREATE TABLE Product (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    quantity INT,
    company VARCHAR(50)
);

INSERT INTO Product VALUES
(201, 'Laptop', 'Electronics', 55000, 10, 'Dell'),
(202, 'Mobile', 'Electronics', 25000, 20, 'Samsung'),
(203, 'Shoes', 'Fashion', 3000, 15, 'Nike'),
(204, 'Watch', 'Accessories', 5000, 12, 'Titan'),
(205, 'Bag', 'Fashion', 2000, 18, 'Skybags'),
(206, 'Tablet', 'Electronics', 35000, 8, 'Lenovo'),
(207, 'T-Shirt', 'Clothing', 1200, 25, 'Puma'),
(208, 'Headphones', 'Electronics', 4000, 14, 'Boat'),
(209, 'Bottle', 'Home', 500, 30, 'Milton'),
(210, 'Keyboard', 'Electronics', 1500, 16, 'HP');

SELECT * FROM Product;

-- ===========================================
-- Product Queries
-- ===========================================

-- 1. Display the total quantity available for each product category.

SELECT category,
       SUM(quantity) AS total_quantity
FROM Product
GROUP BY category;

-- 2. Display the average price of products in each category.

SELECT category,
       AVG(price) AS average_price
FROM Product
GROUP BY category;

-- 3. Display the highest price in each category.

SELECT category,
       MAX(price) AS highest_price
FROM Product
GROUP BY category;

-- 4. Display the lowest price in each category.

SELECT category,
       MIN(price) AS lowest_price
FROM Product
GROUP BY category;

-- 5. Display the number of products supplied by each company.

SELECT company,
       COUNT(*) AS total_products
FROM Product
GROUP BY company;
