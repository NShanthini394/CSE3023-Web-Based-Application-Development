/* Ensure you are using the correct database */
USE cse3023;

/* Create the users table with four columns */
CREATE TABLE users ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    username VARCHAR(100),
    password VARCHAR(100),
    roles VARCHAR(50)
);

INSERT INTO users (username, password, roles) VALUES ('Ahmad', '4567', 'Admin');
INSERT INTO users (username, password, roles) VALUES ('Siti', '1234', 'Student');

SELECT * FROM users;