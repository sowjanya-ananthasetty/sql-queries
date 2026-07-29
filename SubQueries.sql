-- SQL Subquery Practice Questions
-- Student Table

USE student_db;

-- 1. Display the details of students whose age is greater than the average age of all students.

SELECT * FROM student WHERE age > (SELECT AVG(age) FROM student) ORDER BY age DESC;

-- 2. Display the names of students who belong to the same city as Ravi.

SELECT name, city FROM student WHERE city = (SELECT city FROM student WHERE name = 'Ravi');

-- 3. Display the students whose course is the same as Priya's course.

SELECT * FROM student WHERE course = (SELECT course FROM student WHERE name = 'Priya');

-- 4. Display the students whose age is equal to the maximum age in the Student table.

SELECT * FROM student WHERE age = (SELECT MAX(age) FROM student);

-- 5. Display the students whose age is less than the average age of students enrolled in Python.

SELECT * FROM student WHERE age < (SELECT AVG(age) FROM student WHERE course = 'Python');

-- 6. Display the details of students who are not from the city where Ravi lives.

SELECT * FROM student WHERE city NOT IN (SELECT city FROM student WHERE name = 'Ravi');

-- 7. Display students whose course is among the courses taken by female students.

SELECT * FROM student WHERE course IN (SELECT course FROM student WHERE gender = 'Female');

-- 8. Display students whose age is greater than the minimum age of students in the Django course.

SELECT * FROM student WHERE age > (SELECT MIN(age) FROM student WHERE course = 'Django');


-- Employee Table

-- 9. Display employees whose salary is greater than the average salary of all employees.

SELECT * FROM employee WHERE salary > (SELECT AVG(salary) FROM employee);

-- 10. Display employees working in the same department as Meena.

SELECT * FROM employee WHERE department = (SELECT department FROM employee WHERE emp_name = 'Meena');

-- 11. Display employees whose salary is equal to the highest salary in the Employee table.

SELECT * FROM employee WHERE salary = (SELECT MAX(salary) FROM employee);

-- 12. Display employees whose experience is greater than the average experience of employees in the IT department.

SELECT * FROM employee WHERE experience > (SELECT AVG(experience) FROM employee WHERE department = 'IT');

-- 13. Display employees who are not in the department where Raj works.

SELECT * FROM employee WHERE department NOT IN (SELECT department FROM employee WHERE emp_name = 'Raj');

-- 14. Display employees whose city is the same as Hari's city.

SELECT * FROM employee WHERE city = (SELECT city FROM employee WHERE emp_name = 'Hari');

-- 15. Display employees whose salary is greater than the salary of Suresh.

SELECT * FROM employee WHERE salary > (SELECT salary FROM employee WHERE emp_name = 'Suresh');

-- 16. Display employees whose department is among the departments having employees with more than 4 years of experience.

SELECT * FROM employee WHERE department IN (SELECT department FROM employee WHERE experience > 4);


-- Product Table

-- 17. Display products whose price is greater than the average price of all products.

SELECT * FROM product WHERE price > (SELECT AVG(price) FROM product);

-- 18. Display products belonging to the same category as Laptop.

SELECT * FROM product WHERE category IN (SELECT category FROM product WHERE product_name = 'Laptop');

-- 19. Display products whose price is equal to the maximum price in the Product table.

SELECT * FROM product WHERE price = (SELECT MAX(price) FROM product);

-- 20. Display products supplied by the same company as Mobile.

SELECT * FROM product WHERE company = (SELECT company FROM product WHERE product_name = 'Mobile');

-- 21. Display products whose quantity is less than the average quantity of all products.

SELECT * FROM product WHERE quantity < (SELECT AVG(quantity) FROM product);

-- 22. Display products whose category is among the categories having products priced above 10,000.

SELECT * FROM product WHERE category IN (SELECT category FROM product WHERE price > 10000);

-- 23. Display products whose company is different from the company supplying Laptop.

SELECT * FROM product WHERE company NOT IN (SELECT company FROM product WHERE product_name = 'Laptop');


-- Customer Table

-- 24. Display customers whose purchase amount is greater than the average purchase amount of all customers.

SELECT * FROM customer WHERE purchase_amount > (SELECT AVG(purchase_amount) FROM customer);

-- 25. Display customers living in the same city as Asha.

SELECT * FROM customer WHERE city = (SELECT city FROM customer WHERE customer_name = 'Asha');

-- 26. Display customers whose purchase amount is equal to the highest purchase amount in the Customer table.

SELECT * FROM customer WHERE purchase_amount = (SELECT MAX(purchase_amount) FROM customer);

-- 27. Display customers whose age is greater than the average age of all customers.

SELECT * FROM customer WHERE age > (SELECT AVG(age) FROM customer);

-- 28. Display customers who are not from the city where Rahul lives.

SELECT * FROM customer WHERE city NOT IN (SELECT city FROM customer WHERE customer_name = 'Rahul');

-- 29. Display customers whose purchase amount is greater than the purchase amount of Neha.

SELECT * FROM customer WHERE purchase_amount > (SELECT purchase_amount FROM customer WHERE customer_name = 'Neha');

-- 30. Display customers whose city is among the cities having customers with purchase amounts greater than 8,000.

SELECT * FROM customer WHERE city IN (SELECT city FROM customer WHERE purchase_amount > 8000);
