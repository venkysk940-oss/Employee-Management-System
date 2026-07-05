CREATE DATABASE IF NOT EXISTS employeemanagement;
USE employeemanagement;

CREATE TABLE IF NOT EXISTS login (
    username VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS employee (
    name VARCHAR(255),
    fname VARCHAR(255),
    dob VARCHAR(255),
    salary VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    education VARCHAR(255),
    designation VARCHAR(255),
    addhar VARCHAR(255),
    empId VARCHAR(255)
);

-- Check if default user exists, if not, insert
INSERT INTO login (username, password)
SELECT 'admin', 'admin'
FROM DUAL
WHERE NOT EXISTS (SELECT * FROM login WHERE username='admin');
