DROP DATABASE IF EXISTS QL_THUC_TAP;
CREATE DATABASE QL_THUC_TAP;
USE QL_THUC_TAP;

DROP TABLE IF EXISTS Giangvien;
CREATE TABLE Giangvien( 
			magv		SMALLINT UNSIGNED	AUTO_INCREMENT 	PRIMARY KEY	,
            hoten		NVARCHAR(50)	NOT NULL						,
            luong		SMALLINT UNSIGNED								);
            
DROP TABLE IF EXISTS Sinhvien;
CREATE TABLE Sinhvien(
			masv		SMALLINT UNSIGNED  	AUTO_INCREMENT	PRIMARY KEY	,
            hoten		NVARCHAR(50)	NOT NULL						,
			namsinh		SMALLINT										,
			quequan		NVARCHAR(50)									);
            
DROP TABLE IF EXISTS Detai;
CREATE TABLE Detai(
			madt		SMALLINT UNSIGNED	AUTO_INCREMENT	PRIMARY KEY	,
            tendt		VARCHAR(500)				                	,
            kinhphi		INT 	UNSIGNED								,
            Noithuctap	NVARCHAR(50)									);
            

DROP TABLE IF EXISTS Huongdan;
CREATE TABLE Huongdan(
			id			SMALLINT UNSIGNED	AUTO_INCREMENT	PRIMARY KEY	,
            masv		SMALLINT UNSIGNED	REFERENCES	Sinhvien(masv)	,
            madt		SMALLINT UNSIGNED	REFERENCES	Detai(madt)		,
            magv		SMALLINT UNSIGNED	REFERENCES	Giangvien(magv)	,
            ketqua		NVARCHAR(50)	DEFAULT 'chưa hoàn thành'		);

INSERT INTO Giangvien	(			hoten				,luong			)
VALUES					('	Nguyễn Thành Trung'			,5000			),
						('	Phạm Văn Minh'				,3000			),
                        ('Lê Minh Ngọc	'				,4000			);
                        
INSERT INTO Sinhvien	(			hoten				,namsinh	,quequan		)
VALUES					('Nguyễn Khương Đức'			,2001		,'HÀ NỘI'		),
						('Bùi Thế Anh'					,2001		,'Hải Phòng'	),
                        ('Nguyễn Văn Vinh'				,1999		,'Hà Nam'		),
                        ('Đinh Tuấn Hoàng'				,2002		,'HÀ NỘI'		);
                        
INSERT INTO Detai		(		tendt					,kinhphi	,Noithuctap		)
VALUES					('Cong Nghe Sinh Hoc'			,2000		,'HÀ NỘI'		),
						('Ky Nang Sinh Ton'				,3000		,'Hà Giang'		),
                        ('Ky Nang Hoc CNTT'				,2500		,'HÀ NỘI'		);
                        
INSERT INTO Huongdan	(	masv	,madt	,magv	)
VALUES					(	1		,1		,1		),
						(	2		,2		,2		),
                        (	3		,3		,3		),
                        (	1		,2		,2		),
                        (	1		,3		,3		),
                        (	2		,1		,1		);
                        
                        
-- Question 2 a
SELECT * FROM	Sinhvien s
LEFT Join Huongdan hd	ON s.masv = hd.masv
WHERE	hd.masv is NULL;

-- Question 2b
SELECT count(1) AS soluongsv
FROM	huongdan
WHERE	madt = 1;

-- Question 3 
DROP VIEW IF EXISTS SinhvienInfo;
CREATE VIEW SinhvienInfo AS
SELECT	s.masv,s.hoten,ifnull(d.tendt,'chua co') FROM Sinhvien s
LEFT JOIN    Huongdan hd ON s.masv = hd.masv
LEFT JOIN    Detai d ON hd.madt = d.madt;




-- Question 4
DROP TRIGGER IF EXISTS insert_sv;
DELIMITER $$
CREATE TRIGGER insert_sv
BEFORE INSERT ON Sinhvien
FOR EACH ROW 
BEGIN
	IF NEW.namsinh <= 1900 THEN
		SIGNAL SQLSTATE '12345'
		SET MESSAGE_TEXT = 'namsinh phai lon hon 1900';
	END IF;
END $$
DELIMITER ;

-- Question 5
DROP TRIGGER IF EXISTS delete_sv;
DELIMITER $$
CREATE TRIGGER delete_sv
AFTER DELETE ON Sinhvien
FOR EACH ROW 
BEGIN
	DELETE FROM Huongdan
    WHERE masv = OLD.masv;
END $$
DELIMITER ;

DELETE FROM Sinhvien
WHERE	masv = 3;













            