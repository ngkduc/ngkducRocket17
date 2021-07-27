CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department(
	Department_ID 			INT,
    Department_Name 		VARCHAR(30)
    );

CREATE TABLE `Position`(
	Position_ID 			INT,
    Position_Name 			VARCHAR(30)
    );

CREATE TABLE `Account`(
	Account_ID 				INT,
    Email 					VARCHAR(30),
    Username				VARCHAR(30),
    Fullname				VARCHAR(30),
    Department_ID 			INT,
    Position_ID 			INT,
    Create_Date				DATE
    );
    
CREATE TABLE `Group`(
	Group_ID 				INT,
	Group_name				VARCHAR(30),
    Creator_ID 				INT,
    Create_Date				DATE
    );

CREATE TABLE Group_Account(
	Group_ID 				INT,
	Account_ID 				INT,
    Join_Date				DATE
    );

CREATE TABLE Type_Question(
	Type_ID 				INT,
	Type_Name				VARCHAR(30)
    );
    
CREATE TABLE Category_Question(
	Category_ID 				INT,
	Category_Name				VARCHAR(30)
    );
    
CREATE TABLE Question(
	Question_ID 				INT,
    Content						VARCHAR(30),
	Category_ID					VARCHAR(30),
    Type_ID 					INT,
    Creator_ID 					INT,
    Create_Date					DATE
    );

CREATE TABLE Answer(
	Answer_ID 					INT,
    Content						VARCHAR(30),
    Question_ID 				INT,
    isCorrect					BIT
    );
    
CREATE TABLE Exam(
	Exam_ID 					INT,
    `Code`						VARCHAR(30),
	Title						VARCHAR(30),
    Category_ID					INT,
    Duration					INT,
    Creator_ID 					INT,
    Create_Date					DATE
    );
    
CREATE TABLE Exam_Question(
	Exam_ID 				INT,
	Question_ID				VARCHAR(30)
    );
