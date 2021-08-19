USE testing_system_assignment_2;

-- Question 1 Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các account thuộc phòng ban đó
 
DROP PROCEDURE IF EXISTS getAccount;
DELIMITER $$ 
CREATE	PROCEDURE getAccount(IN dpname VARCHAR(50))
	BEGIN
		SELECT		a.Account_ID,a.Username
        FROM		`account` a
		JOIN		department d ON a.Department_ID = d.Department_ID
        WHERE		d.Department_name = dpname;
	END$$
DELIMITER ;
    call testing_system_assignment_2.getAccount('sales');
	
-- Question 2: Tạo store để in ra số lượng account trong mỗi group
DROP PROCEDURE IF EXISTS sl_account;
DELIMITER $$
CREATE PROCEDURE sl_account()
	BEGIN
		SELECT 	ga.Group_id,g.Group_name,count(1) as so_luong_nv
        FROM 	group_account ga
        JOIN 	`group` g ON ga.Group_id = g.Group_id
        GROUP BY(ga.Group_id);
	END$$
DELIMITER ;
	call testing_system_assignment_2.sl_account();
        
    
-- Question 3: Tạo store để thống kê mỗi type question có bao nhiêu question được tạo  trong tháng hiện tại

show variables;