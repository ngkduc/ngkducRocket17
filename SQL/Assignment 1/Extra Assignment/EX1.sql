-- Tạo database
DROP DATABASE IF EXISTS Fresher;
CREATE DATABASE Fresher;
USE Fresher;

-- Tạo bảng Trainee
CREATE TABLE Trainee(
	Trainee_ID			SMALLINT 	UNSIGNED	PRIMARY KEY		AUTO_INCREMENT			,
    Full_Name			VARCHAR(50)	NOT NULL											,
    Birth_Date			DATE		NOT NULL											,
    Gender				ENUM('Male','Female','Unknown')	DEFAULT 'Unknown'				,
    ET_IQ				FLOAT		UNSIGNED	NOT NULL		CHECK(ET_IQ<=20)		,
    ET_Gmath			FLOAT		UNSIGNED	NOT NULL		CHECK(ET_Gmath<=20)		,
    ET_English			FLOAT		UNSIGNED	NOT NULL		CHECK(ET_English<=20)	,
    Training_Class		CHAR(4)		NOT NULL											,
    Evaluation_Notes	NVARCHAR(200)														
    );
    
-- question 2 : thêm trường VTI_Account với điều kiện not null & unique
ALTER TABLE Trainee ADD COLUMN VTI_Account VARCHAR(30) NOT NULL UNIQUE KEY;