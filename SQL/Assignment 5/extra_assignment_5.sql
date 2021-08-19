USE `adventureworks` ;

-- Viết 1 query lấy thông tin "Name" từ bảng Production.Product có name của ProductSubcategory là 'Saddles'.
SELECT 		p.`Name`
FROM		product	p 
JOIN		ProductSubcategory	ps ON 	p.ProductSubcategoryID = ps.ProductSubcategoryID
WHERE		ps.`Name` = 'Saddles';


-- Question 2 --------------
SELECT 		p.`Name`
FROM		product	p 
JOIN		ProductSubcategory	ps ON 	p.ProductSubcategoryID = ps.ProductSubcategoryID
WHERE		ps.`Name` IN ('Bottles and Cages','Bottom Brackets');

-- Question 3:Viết câu query trả về tất cả các sản phẩm có giá rẻ nhất (lowest ListPrice) và Touring Bike (nghĩa là ProductSubcategoryID = 3)


