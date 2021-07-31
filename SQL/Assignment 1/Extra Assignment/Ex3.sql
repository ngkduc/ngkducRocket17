-- Tạo database 
DROP DATABASE IF EXISTS Customer;
CREATE DATABASE Customer;
USE Customer;

-- Tạo bảng
CREATE TABLE Customer(
    ID					MEDIUMINT	UNSIGNED	AUTO_INCREMENT	PRIMARY KEY 	,
    `Name`				VARCHAR(50)	NOT NULL						,
    Birth_Date			DATE									,
    Gender				BIT									,
    IsDelete_Flag			BIT											
    );
