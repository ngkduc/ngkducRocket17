USE Testing_System_Assignment_2;

-- Question 1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
SELECT 	a.Fullname,d.department_Name 
FROM 	`Account` a
JOIN 	department d ON a.department_ID = d.department_ID;

-- Question 2: Viết lệnh để lấy ra thông tin các account được tạo sau ngày 20/12/2010
SELECT 	*
FROM 	`account` a
WHERE 	Create_Date > 20/12/2010;

-- Question 3: Viết lệnh để lấy ra tất cả các developer
SELECT a.fullname,d.department_name
FROM 	`account` a
JOIN 	department d ON a.department_ID = d.department_ID
WHERE 	d.department_ID = 4;

-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
SELECT 	d.department_name
FROM 	department d 
JOIN 	`account` a ON d.department_id = a.department_id
GROUP BY	d.department_id
HAVING count(d.department_id) >= 3 ; 


-- Question 5: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều  nhất
SELECT 		q.question_id,q.content
FROM		question q 
JOIN		Exam_question eq On q.question_id = eq.question_id
GROUP BY	eq.question_id
ORDER BY	count(eq.question_id)	DESC
LIMIT 		1;

-- Question 6: Thông kê mỗi category Question được sử dụng trong bao nhiêu Question
SELECT		q.Category_ID,count(1)	
FROM		question q 
GROUP BY	q.Category_ID;	

-- Question 7: Thông kê mỗi Question được sử dụng trong bao nhiêu Exam
SELECT 		q.question_id,q.content,count(1)
FROM		question q 
JOIN		Exam_question eq On q.question_id = eq.question_id
GROUP BY	eq.question_id;


-- Question 8: Lấy ra Question có nhiều câu trả lời nhất
SELECT 		a.question_id,q.content
FROM 		question q 
JOIN		Answer	a 
GROUP BY	a.question_id 
ORDER BY	count(a.question_id) DESC
LIMIT 1;

-- Question 9: Thống kê số lượng account trong mỗi group 
SELECT 		group_id,count(1)
FROM		group_account
GROUP BY	Group_ID;


-- Question 10: Tìm chức vụ có ít người nhất
SELECT 		p.*
FROM		`position` p 
JOIN		`account` a ON p.position_id = a.position_id
GROUP BY	a.position_id
ORDER BY	count(a.position_id)
LIMIT 1;


-- Question 11: Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM
SELECT 		d.department_name,count(1)
FROM		department d 
JOIN		`account` a ON d.department_id = a.department_id
GROUP BY	a.department_id;


-- Question 12: Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, …
 SELECT			q.*,tq.type_name,cq.Category_name,GROUP_CONCAT(a.content)
 FROM			question q 
 JOIN			Type_question tq ON q.type_id = tq.type_id
 JOIN			Category_Question cq ON q.Category_ID	= cq.Category_ID
 JOIN			Answer a ON q.question_id = a.question_id
 GROUP BY		q.question_id;
 
 
 -- Question 13: Lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm
SELECT		tq.type_name,count(1)
FROM		type_question tq
JOIN		Question q ON tq.type_id = q.type_id 
GROUP BY 	q.type_id
; 


-- Question 14:Lấy ra group không có account nào
SELECT 		g.group_name
FROM 		`Group` g 
LEFT JOIN 	group_account ga ON g.group_ID = ga.group_ID
WHERE 		ga.account_id is null; 

-- Question 15:Lấy ra account không group nào 
SELECT 	ga.group_id,a.fullname
FROM 	Group_Account ga 
RIGHT JOIN 	`account` a ON ga.account_ID = a.account_ID
WHERE ga.account_id is null; 

-- Question 16: Lấy ra question không có answer nào
SELECT q.question_id,q.content
FROM question q 
LEFT JOIN answer a ON q.question_id = a.question_id
WHERE a.question_id is null ;

-- Question 17: 
-- ) Lấy các account thuộc nhóm thứ 1
-- b) Lấy các account thuộc nhóm thứ 2
-- c) Ghép 2 kết quả từ câu a) và câu b) sao cho không có record nào trùng nhau

SELECT 	username
FROM 	`account`
WHERE 	department_id = 1

UNION

SELECT 	username
FROM 	`account`
WHERE 	department_id = 2;

-- Question 18: 
-- a) Lấy các group có lớn hơn 5 thành viên
-- b) Lấy các group có nhỏ hơn 7 thành viên
-- c) Ghép 2 kết quả từ câu a) và câu b)

SELECT	g.group_name
FROM	`Group` g
JOIN	`group_account` ga	ON g.group_id = ga.group_id
GROUP BY ga.group_id
HAVING 	count(ga.group_id) > 5

UNION ALL 

SELECT	g.group_name
FROM	`Group` g
JOIN	`group_account` ga	ON g.group_id = ga.group_id
GROUP BY ga.group_id
HAVING 	count(ga.group_id) < 7;
