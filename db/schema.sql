-- Drop Tables Employee, Roles, Department
DROP TABLE IF EXISTS deparment_db;
DROP TABLE IF EXISTS role_db;
DROP TABLE IF EXISTS employee_db;

-- Create Department Table
CREATE TABLE department_db (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);
-- Create Roles Table
CREATE TABLE role_db (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER,
);
-- Create Employees Table
CREATE TABLE employee_db (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    manager_id INTEGER REFERENCES employee_db,
);