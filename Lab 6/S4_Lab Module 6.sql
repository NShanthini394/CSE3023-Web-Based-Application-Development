CREATE DATABASE CSA3203;
USE CSA3203;

/*Task 1*/
CREATE TABLE FirstTable (
    message VARCHAR(45)
);

/*Task 2*/
CREATE TABLE author (
    authno CHAR(15) PRIMARY KEY,
    name CHAR(40),
    address CHAR(40),
    city CHAR(40),
    state CHAR(40),
    zip CHAR(40)
);

/*Task 3*/
CREATE TABLE student (
    stuno VARCHAR(15) PRIMARY KEY,
    name VARCHAR(50),
    program VARCHAR(50)
);

/*Task 5*/
CREATE TABLE marathon (
    icNo VARCHAR(15) PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(20)
);

/*Exercise*/
CREATE TABLE userprofile (
    username VARCHAR(15) PRIMARY KEY,
    password VARCHAR(10),
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);

Select * from userprofile;