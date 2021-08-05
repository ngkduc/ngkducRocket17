-- Tạo database
DROP DATABASE IF EXISTS Extra_4;
CREATE DATABASE Extra_4;
USE Extra_4;


-- Tạo bảng----------
DROP TABLE IF EXISTS Department;
CREATE TABLE Department( 
		Department_Number	SMALLINT 	UNSIGNED	AUTO_INCREMENT		PRIMARY KEY			,
        Department_Name		VARCHAR(50)	NOT NULL											);


-- Tạo bảng----------        
DROP TABLE IF EXISTS Employee_Table;
CREATE TABLE Employee_Table(
		Employee_Number		SMALLINT	UNSIGNED	AUTO_INCREMENT		PRIMARY KEY			,
		Employee_Name		VARCHAR(50)	NOT NULL											,
        Department_Number	SMALLINT	UNSIGNED	REFERENCES	Department(Department_Number));
        
        
-- Tạo bảng----------        
DROP TABLE IF EXISTS Employee_Skill_Table;
CREATE TABLE Employee_Skill_Table (
		Employee_Number		SMALLINT	UNSIGNED											,
        Skill_Code			VARCHAR(50)	NOT NULL											,
        Date_Registered		DATE 		NOT NULL											,
        FOREIGN KEY		Employee_Skill_Table(Employee_Number) REFERENCES	Employee_Table(Employee_Number));
        
        
-- Nhập dữ liệu 
INSERT INTO Department	(department_name)
VALUES 				  	('Frontend')	,
						('Backend')		,
                        ('kiểm thử')	,
                        ('PM')			
                        ;
                        
INSERT INTO Employee_Table	(Employee_Name			,Department_Number	)
VALUES						('Nguyễn Khương Đức'	,		1			),
			                (  'Bùi Thế Anh'		,		1			),
                            (  'Đinh Tuấn Hoàng'	,		1			),
							( 'Nguyễn Vân Anh'		,		3			),
							( 'Kiều Việt Long'		,		2			),
							( 'Nguyễn Thái Sơn'		,		2			),
							( 'Chu Nguyên Vũ'		,		4			),
							( 'Nguyễn Diễm Quỳnh'	,		2			),
							( 'Nguyễn Đức Duy'		,		3			),
							('Nguyễn Tuấn Dương'	,		1 			);
                            
                            
INSERT INTO Employee_Skill_Table	(Employee_Number,Skill_code		,	Date_Registered		)
VALUES								(		1		,	'Java'		,		'2021/07/31'	),
									(		2		,	'C'			,		'2020/02/03'	),
                                    (		3		,	'Python'	,		'2020/08/16'	),
                                    (		1		,	'Python'	,		'2020/07/31'	),
                                    (		3		,	'C'			,		'2020/08/16'	),
                                    (		4		,	'C'			,		'2020/02/23'	),
                                    (		5		,	'Ruby'		,		'2020/02/13'	),
									(		5		,	'Ruby'		,		'2020/02/13'	),
									(		4		,	'Ruby'		,		'2020/04/23'	),
                                    (		6		,	'Java'		,		'2020/01/03'	),
                                    (		6		,	'C'			,		'2020/01/03'	),
                                    (		6		,	'Python'	,		'2020/01/03'	),
                                    (		7		,	'Java'		,		'2020/07/03'	),
                                    (		8		,	'C++'		,		'2020/12/26'	),
                                    (		8		,	'Java'		,		'2020/12/26'	),
                                    (		9		,	'Java'		,		'2020/02/21'	),
                                    (		10		,	'Java'		,		'2020/04/12'	);
                                    
                                    
-- Question 3: Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java
SELECT 		et.*
FROM  		Employee_Table	et
JOIN		Employee_Skill_Table est	ON	et.Employee_Number = est.Employee_Number
WHERE		est.Skill_code = 'Java';


-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
SELECT 		d.*
FROM		department d
JOIN		Employee_Table et ON d.Department_Number = et.Department_Number
GROUP BY	et.Department_Number
HAVING		count(et.Department_Number) > 3 ;


-- Question 5: Viết lệnh để lấy ra danh sách nhân viên của mỗi văn phòng ban
SELECT 		d.*,GROUP_CONCAT(et.Employee_Name)
FROM		department d
JOIN		Employee_Table et ON d.Department_Number = et.Department_Number
GROUP BY	et.Department_Number;


-- Question 6: Viết lệnh để lấy ra danh sách nhân viên có > 1 skills.
SELECT 		et.Employee_Name,count(1) AS so_luong_skills
FROM		Employee_Table et
JOIN		Employee_Skill_Table est ON et.Employee_Number = est.Employee_Number
GROUP BY	est.Employee_Number
HAVING		count(1)>1;
