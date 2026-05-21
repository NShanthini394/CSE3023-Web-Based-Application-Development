/*Task 1*/
CREATE DATABASE lab7_db;
USE lab7_db;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    matric_no VARCHAR(20) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    profile_image MEDIUMBLOB
);

SELECT * FROM students;

/*Exercise*/
USE lab7_db;

CREATE TABLE registered_subjects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    matric_no VARCHAR(20) NOT NULL,
    subject_code VARCHAR(20) NOT NULL,
    subject_name VARCHAR(100) NOT NULL
);