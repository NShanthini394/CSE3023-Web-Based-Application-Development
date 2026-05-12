-- 1. Create the database schema
CREATE DATABASE webappdevlab5;

-- 2. Select the database
USE webappdevlab5;

-- 3. Create the users table
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50) NOT NULL,
roles VARCHAR(50) NOT NULL

);-- 4. Insert sample data into the table
INSERT INTO users (username, roles) VALUES ('admin', 'Administrator');
INSERT INTO users (username, roles) VALUES ('johndoe', 'Staff');
INSERT INTO users (username, roles) VALUES ('janedoe', 'Manager');