USE testing_system_assignment_2;
-- Question 1: Tạo trigger không cho phép người dùng nhập vào Group có ngày tạo trước 1 năm trước
 
DROP TRIGGER IF EXISTS CHECK_CREATEDATE_GROUP;
DELIMITER $$
CREATE TRIGGER CHECK_CREATEDATE_GROUP
BEFORE INSERT ON `Group`
FOR EACH ROW
BEGIN 
   IF NEW.`create_date` <  now() - interval 1 year THEN
		SIGNAL SQLSTATE '12345'
		SET MESSAGE_TEXT = 'Cant create this group';
	END IF;
END $$
DELIMITER ;

insert into `group` values(5,'abc',3,'2018-05-01 19:45:00');

/*Question 2: Tạo trigger Không cho phép người dùng thêm bất kỳ user nào vào 
 department "Sale" nữa, khi thêm thì hiện ra thông báo "Department
 "Sale" cannot add more user"*/
 
 /*DROP TRIGGER IF EXISTS add_user;
DELIMITER $$
CREATE TRIGGER add_user
BEFORE INSERT ON */
 
 
 -- example 3
 DROP TRIGGER IF EXISTS delete_question;
DELIMITER $$
CREATE TRIGGER delete_question
AFTER DELETE ON question
FOR EACH ROW
BEGIN 
	DELETE FROM answer 
    WHERE  question_id = OLD.Question_ID;
END $$
DELIMITER ;

DELETE FROM question
WHERE question_id = 1;
 
 
 /*Question 12: Lấy ra thông tin exam trong đó:
Duration <= 30 thì sẽ đổi thành giá trị "Short time"
30 < Duration <= 60 thì sẽ đổi thành giá trị "Medium time"
Duration > 60 thì sẽ đổi thành giá trị "Long time"*/
SELECT * FROM exam;
SELECT e.Exam_ID, e.Code, e.Title , CASE 
WHEN Duration <= 30 THEN 'Short time'
 WHEN Duration <= 60 THEN 'Medium time'
ELSE 'Longtime'
END AS Duration, e.Create_Date, e.Duration
FROM exam e;
















 
 /* Question 13: Thống kê số account trong mỗi group và in ra thêm 1 column nữa có tên 
 là the_number_user_amount và mang giá trị được quy định như sau:
2
Nếu số lượng user trong group =< 5 thì sẽ có giá trị là few
Nếu số lượng user trong group <= 20 và > 5 thì sẽ có giá trị là normal
Nếu số lượng user trong group > 20 thì sẽ có giá trị là higher*/


 
 
 
 
 
 
 
