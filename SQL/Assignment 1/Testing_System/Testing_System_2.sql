DROP DATABASE IF EXISTS Testing_System_Assignment_2;
CREATE DATABASE Testing_System_Assignment_2;
USE Testing_System_Assignment_2;
DROP TABLE IF EXISTS Department;
CREATE TABLE Department(
	Department_ID 				TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Department_Name 			NVARCHAR(50) UNIQUE KEY NOT NULL
    );
DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position`(
	Position_ID 				TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Position_Name 				NVARCHAR(30) NOT NULL
    );
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account`(
	Account_ID 					INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Email 						NVARCHAR(30) UNIQUE KEY NOT NULL,
    Username					NVARCHAR(30) UNIQUE KEY NOT NULL,
    Fullname					NVARCHAR(30) NOT NULL,
    Department_ID 				TINYINT UNSIGNED NOT NULL REFERENCES Department(Department_ID) ,
    Position_ID 				TINYINT UNSIGNED NOT NULL REFERENCES `Position`(Position_ID),
    Create_Date					DATETIME DEFAULT NOW()
    );
DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group`(
	Group_ID 					TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
	Group_name					VARCHAR(30) NOT NULL ,
    Creator_ID					INT UNSIGNED REFERENCES `Account`(Account_ID),
    Create_Date					DATETIME DEFAULT NOW()
    );
DROP TABLE IF EXISTS Group_Account;
CREATE TABLE Group_Account(
	Group_ID 					TINYINT UNSIGNED NOT NULL REFERENCES `Group`(Group_ID),
	Account_ID 					INT UNSIGNED NOT NULL REFERENCES `Account`(Account_ID) ,
    Join_Date					DATETIME DEFAULT NOW(),
    PRIMARY KEY(Group_ID, Account_ID)
    );
DROP TABLE IF EXISTS Type_Question;
CREATE TABLE Type_Question(
	Type_ID 					SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	Type_Name					ENUM('Essay','Multiple-Choice') NOT NULL
    );
DROP TABLE IF EXISTS Category_Question;    
CREATE TABLE Category_Question(
	Category_ID 				TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	Category_Name				NVARCHAR(30) UNIQUE KEY NOT NULL
    );
 DROP TABLE IF EXISTS Question;   
CREATE TABLE Question(
	Question_ID 				SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
    Content						NVARCHAR(30)  NOT NULL,
	Category_ID					NVARCHAR(30) NOT NULL REFERENCES Category_Question(Category_ID),
    Type_ID 					SMALLINT UNSIGNED NOT NULL REFERENCES Type_Question(Type_ID),
    Creator_ID 					INT UNSIGNED NOT NULL REFERENCES `Account`(Account_ID) ,
    Create_Date					DATETIME DEFAULT NOW()
    );
DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer(
	Answer_ID 					SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Content						NVARCHAR(200) NOT NULL ,
    Question_ID 				SMALLINT UNSIGNED NOT NULL REFERENCES Question(Question_ID),
    isCorrect					BIT DEFAULT(0)
    );
DROP TABLE IF EXISTS Exam;   
CREATE TABLE Exam(
	Exam_ID 					TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `Code`						NVARCHAR(30) UNIQUE KEY NOT NULL,
	Title						NVARCHAR(200) NOT NULL,
    Category_ID					INT UNSIGNED  NOT NULL REFERENCES Category_Question(Category_ID),
    Duration					TINYINT NOT NULL,
    Creator_ID 					INT UNSIGNED NOT NULL REFERENCES `Account`(Account_ID),
    Create_Date					DATETIME DEFAULT NOW()
    );
DROP TABLE IF EXISTS Exam_Question;
CREATE TABLE Exam_Question(
	Exam_ID 					TINYINT UNSIGNED NOT NULL REFERENCES Exam(Exam_ID), 
	Question_ID					SMALLINT UNSIGNED NOT NULL REFERENCES Question(Question_ID), 
    PRIMARY KEY(Exam_ID,Question_ID)
    );


INSERT INTO Department	(department_name)
VALUES 				  	('sales'),
						('marketing'),
                        ('quản lý'),
                        ('lập trình'),
                        ('kiểm thử')
                        ;


INSERT INTO `position`  (Position_Name)
VALUES 					('Dev'),
						('Test'),
						(' Scrum Master'),
						('PM'),
                        ('telesales'),
                        ('brand manager');
                        
                        
INSERT INTO `Account`	(	email           ,	username		,fullname				,department_id  ,		position_id	)
VALUES					('ngkduc@gmail.com'	,	'ngkduc'		,'Nguyễn Khương Đức'	,4				,		1			),
						('btanh@gmail.com'	,	'btanh'			,'Bùi Thế Anh'			,5				,		2			),
                        ('dthoang@gmail.com',	'dthoang'		,'Đinh Tuấn Hoàng'		,1				,		5			),
                        ('nvanh@gmail.com'	,	'nvanh'			,'Nguyễn Vân Anh'		,3				,		4			),
                        ('kvlong@gmail.com'	,	'kvlong'		,'Kiều Việt Long'		,2				,		6			),
                        ('ntson@gmail.com'	,	'ntson'			,'Nguyễn Thái Sơn'		,2				,		6			),
                        ('chngvu@gmail.com'	,	'chngvu'		,'Chu Nguyên Vũ'		,4				,		1			),
                        ('ndquynh@gmail.com',	'ndquynh'		,'Nguyễn Diễm Quỳnh'	,2				,		6			),
                        ('ngdduy@gmail.com'	,	'ngdduy'		,'Nguyễn Đức Duy'		,5				,		2			),
                        ('ntduong@gmail.com',	'ntduong'		,'Nguyễn Tuấn Dương'	,1 				,		5			);


INSERT INTO `Group` 	(Group_Name		,Creator_ID	)
VALUES					('404 not found',1 			),
						('Math Error'	,2			),
                        ('Market'		,4			),
                        ('Seller'		,4			);
					
INSERT INTO Group_Account(Group_ID		,Account_ID )
VALUES					 (1				,1			),
						 (1				,7			),
						 (2				,2			),
                         (2				,9			),
                         (3				,5			),
                         (3				,6			),
                         (3				,8			),
                         (4				,3			),
                         (4				,10			);
                         
INSERT INTO Type_Question(Type_Name)
VALUES					 ('Essay'),
						 ('Multiple-Choice');
                         
                         
INSERT INTO Category_Question(Category_Name)
VALUES						 ('JAVA')	,
							 ('.NET')	,
                             ('SQL') 	,
                             ('RUBY') 	,
                             ('POSTMAN'),
							 ('C')		;
                             
                             
INSERT INTO Question		 (   Content			,   Category_ID	,  TYPE_ID	,    Creator_ID		)
VALUES						 ('Câu hỏi về Java'		,	1			,	1		,		4			),
							 ('Câu hỏi về .Net'		,	2			,	2		,		4			),
                             ('Câu hỏi về SQL'		,	3			,	1		,		4			),
                             ('Câu hỏi về Ruby'		,	4			,	2		,		1			),
                             ('Câu hỏi về Postman'	,	5			,	1		, 		1			),
                             ('Câu hỏi về C'		,	6			,	2		,		1			);
                        
                        
INSERT INTO Answer	(  Content		, Question_ID	, isCorrect	)
VALUES 				('Trả lời 01'	,   1			,	0		),
					('Trả lời 02'	,   5			,	1		),
                    ('Trả lời 03'	,   5			,	0		),
                    ('Trả lời 04'	,   6			,	1		),
                    ('Trả lời 05'	,   2			,	1		),
                    ('Trả lời 06'	,   3			,	1		),
                    ('Trả lời 07'	,   4			,	0		),
                    ('Trả lời 08'	,   3			,	0		),
                    ('Trả lời 09'	,   2			,	1		),
                    ('Trả lời 10'	,   1			,	1		);
                    
INSERT INTO Exam	(`Code`		,Title				, Category_ID 	, Duration	,Creator_ID )
VALUES				('COD1'		,'Đề thi Java'		, 		1		,	60		,	4		),
					('COD2'		,'Đề thi .NET'		,		2		,	60		,	1		),
                    ('COD3'		,'Đề thi SQL'		,		3		,	60		,	4		),
                    ('COD4'		,'Đề thi Ruby'		,		4		,	120		,	1		),
                    ('COD5'		,'Đề thi Postman'	,		5		,	60		,	1		),
                    ('COD6'		,'Đề thi C'			,		6		,	120		,	4		);