USE fresher;

-- Question 1: Thêm ít nhất 10 bản ghi vào table
INSERT INTO trainee	(Full_name				,Birth_Date		,Gender		,ET_IQ	,ET_Gmath	,ET_English	,Training_Class	,Evaluation_Notes					,VTI_Account	)
VALUES				('Nguyễn Khương Đức'	,'2001/09/10'	,'Male'		,20		,20			,20			,'CLA1'			,'Chăm chỉ học tập'					,'ngkduc'		),
					('Bùi Thế Anh'			,'2001/08/13'	,'Male'		,15		,15			,15			,'CLA2'			,'Chăm chỉ học tập,ngoan ngoãn'		,'btanh'		),
                    ('Đinh Tuấn Hoàng'		,'2001/12/26'	,'Male'		,10		,13			,6			,'CLA3'			,'Chưa chú ý học'					,'dthoang'		),
                    ('Lê Vy'				,'2001/02/03'	,'Female'	,18		,16			,14			,'CLA1'			,'Chăm chỉ học tập,ngoan ngoãn'		,'levy'			),
                    ('Nguyễn Ngọc Hà'		,'2001/08/16'	,'Female'	,16		,16			,16			,'CLA2'			,'Chăm chỉ học tập,ngoan ngoãn'		,'ngngha'		),
                    ('Lê Quân'				,'2001/08/07'	,'Male'		,12		,12			,12			,'CLA3'			,'Chưa chú ý học,hơi nghịch'		,'lequan'		),
                    ('Nguyễn Huy'			,'2001/09/23'	,'Male'		,10		,6			,8			,'CLA3'			,'Chưa chú ý học,hơi nghịch'		,'nghuy'		),
                    ('Phan Kiều Trinh'		,'2001/07/02'	,'Female'	,19		,19			,19			,'CLA1'			,'Chăm chỉ học tập,ngoan ngoãn'		,'pktrinh'		),
                    ('Đỗ Duy Kiên'			,'2001/12/21'	,'Male'		,14		,15			,14			,'CLA2'			,'Chăm chỉ học tập,ngoan ngoãn'		,'ddkien'		),
					('Kiều Văn Thái'		,'2001/12/08'	,'Male'		,16		,11			,10			,'CLA3'			,'Có tố chất nhưng chưa chăm học'	,'kvthai'		);
                    
-- Question 2: Viết lệnh để lấy ra tất cả các thực tập sinh đã vượt qua bài test đầu vào, nhóm chúng thành các tháng sinh khác nhau
SELECT MONTHNAME(Birth_Date),count(1)
FROM trainee
GROUP BY  month(Birth_date) ;

-- Question 3: Viết lệnh để lấy ra thực tập sinh có tên dài nhất, lấy ra các thông tin sau: tên, tuổi, các thông tin cơ bản (như đã được định nghĩa trong table)
SELECT *
FROM trainee
WHERE length(full_name) = (SELECT MAX(length(full_name)) FROM	trainee);

-- Question 4: Viết lệnh để lấy ra tất cả các thực tập sinh là ET, 1 ET thực tập sinh là những người đã vượt qua bài test đầu vào và thỏa mãn số điểm như sau:
SELECT Full_Name
FROM trainee
WHERE ET_IQ + ET_Gmath>=20 AND ET_IQ>=8 AND ET_Gmath>=8 AND ET_English>=18;

-- Question 5: xóa thực tập sinh có TraineeID = 3
DELETE
FROM trainee
WHERE Trainee_ID = 3;


-- Question 6: Thực tập sinh có TraineeID = 5 được chuyển sang lớp "2". Hãy cập nhật thông tin vào database
UPDATE trainee
SET training_class = 'CLA2'
WHERE trainee_id = 5;

