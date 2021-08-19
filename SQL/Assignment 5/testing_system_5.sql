USE Testing_System_Assignment_2;

-- Question 1: Tạo view có chứa danh sách nhân viên thuộc phòng ban sale
SELECT 	* 
FROM	`account`
WHERE	department_id = (	SELECT	department_id
							FROM	department
                            WHERE	department_name = 'Sales');
                            

-- Question 2: Tạo view có chứa thông tin các account tham gia vào nhiều group nhất
SELECT	*
FROM	`account` ;



-- Question 4: Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất
WITH 
soluongnv AS (
				SELECT 		department_id ,count(Department_ID) as sonhanvien
                FROM		`account`
                GROUP BY	department_id			
                ),
max_nv as (
						SELECT 	department_id,MAX(sonhanvien) as max_count
                        FROM 	soluongnv		
                        )
SELECT 		*,count(department_id)
FROM		`account`
GROUP BY 	department_id 
HAVING 		count(department_id)	=	(	SELECT 	max_count
											FROM	max_nv);
                        