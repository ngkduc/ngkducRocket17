USE testing_system_assignment_2;

-- Question 2:lấy ra tất cả các phòng ban
SELECT * 
FROM department;

-- Question 3: lấy ra id của phòng ban "Sale 
SELECT 	department_id 
FROM 	department
WHERE	department_name = 'Sales';


-- Question 4: lấy ra thông tin account có full name dài nhất
SELECT *
FROM `account`
WHERE length(fullname) = (SELECT MAX(length(fullname)) FROM	`account`);


-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id = 3
SELECT *,MAX(length(fullname))
FROM `account`
WHERE department_id = 3;
 
 -- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019
 SELECT Group_Name 
 FROM `Group`
 WHERE Create_Date < 20/12/2019;
 
 -- Question 7: Lấy ra ID của question có >= 4 câu trả lời
 SELECT	Question_ID,count(1) 
 FROM answer  
 GROUP BY Question_ID
 HAVING count(1)<=4;
 
 
 -- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày  20/12/2019
SELECT `Code`
FROM 	Exam
WHERE 	Duration >= 60 AND Create_Date < 20/12/2019;

--  question 9: Lấy ra 5 group được tạo gần đây nhất
SELECT *
FROM `Group`
ORDER BY Create_Date DESC
LIMIT 5;


-- Question 10: Đếm số nhân viên thuộc department có id = 2
SELECT 	COUNT(1) as so_nhan_vien
FROM 	`account`
WHERE 	department_id = 2;


-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
SELECT Fullname
FROM `account`
WHERE Fullname LIKE 'D%%o';


-- Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019
DELETE	
FROM	exam
WHERE Create_Date < 20/12/2019;

-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
DELETE 
FROM	question
WHERE	Content = 'Câu hỏi%';

-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và  email thành loc.nguyenba@vti.com.vn
UPDATE `account`
SET		fullname 	= 'Nguyễn Bá Lộc',
        email 		= 'loc.nguyenba@vti.com.vn'
Where account_id 	= 5;
select * from account;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE 	Group_Account
SET		group_id = 4
Where 	account_id 	= 5;