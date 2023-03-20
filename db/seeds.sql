-- Insert values into Departments table
INSERT INTO department (name) 
VALUES 
('IT Support'),
('Finance'),
('Programming'),
('Design');

-- Insert values into Roles table
INSERT INTO role (title, salary, department_id)
VALUES
('Senior Full Stack Developer', 200000, 3),
('Help desk Technician', 50000, 1),
('Accountant', 60000, 2), 
('Junior Web Developer', 80000, 3),
('UI/UX Designer', 150000, 4), 
('Full Stack Intern', 30000, 3),
('Graphic Designer', 60000, 4),
('Budget Analyst', 90000, 2),
('Finance Manager', 250000, 2),
('Project Manager', 350000, 3),
('Lead Technician', 90000, 1),
('Product Design Manager', 115000, 4);

-- Insert Values into Employees Table
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
('Cesar','Grimaldo', 1, null),
('Mara','Gonzalez', 2, null),
('Nason','Ramos', 3, null),
('Rodrigo',"Torres", 4, null),
('Ashley','Rose', 5, null),
('Maia','Ferrer', 6, null),
('Iris','Diaz', 7, null),
('Emely','Vasquex', 8, null),
('Sharon','West', 9, 2),
('Luke', 'Edison', 10, 3),
('Dino','Brown', 11, 4),
('Hailey',"Anderson", 12, 6);