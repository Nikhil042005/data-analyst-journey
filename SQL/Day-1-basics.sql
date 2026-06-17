-- Creating a Database
CREATE DATABASE IF NOT EXISTS company;

-- To set the 'company' database as default database 
USE company;

-- Creating a Table to store the employee details
CREATE TABLE employee (
	emp_id INT AUTO_INCREMENT PRIMARY KEY,           -- This would be the column which will uniquely identify each row
	name VARCHAR(50) NOT NULL,                       -- this will store the name of each employee
    email VARCHAR(50) NOT NULL UNIQUE,               -- This will save the email id of the employee which must not be null and each mail id should be unique
    contact_no VARCHAR(50) UNIQUE,                   -- This will store the contact of emloyee and no contact should be same
    gender ENUM ('Male', 'Female', 'Other'),         -- The gender contains only male, female and other no other content can be add in this section
    date_of_birth DATE,                              -- This will store the date of birth of employee
    department VARCHAR(20),                          -- This will show that the exact department of the employee
    job_title VARCHAR(20),                           -- This will show the employee is appointed for which job role
    salary DECIMAL(10, 2),                           -- This will be the salary of each employee
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP   -- This will store when the data is created
);

-- Reviewing the columns of our table
SELECT * FROM employee; 
-- Everything is okay

-- Now if we forgot to add the 'adress' column in the table and we have to add this column after the 'contact_no' column : 
ALTER TABLE employee ADD COLUMN address VARCHAR(50) AFTER contact_no;

-- If we don't want 'date_of_birth' column in our table :
ALTER TABLE employee DROP COLUMN date_of_birth;

-- If we want to change the data type of the 'gender' column;
ALTER TABLE employee MODIFY COLUMN gender VARCHAR(10) NOT NULL;

-- Again we want the data type of 'gender' back :
ALTER TABLE employee MODIFY COLUMN gender ENUM('Male', 'Female', 'Other');

-- If we want 'name' column at the start :
ALTER TABLE employee MODIFY COLUMN name VARCHAR(50) FIRST;
