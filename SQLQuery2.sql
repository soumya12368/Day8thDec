-- Drop the tables if they exist
DROP TABLE IF EXISTS CompanyInfo;
DROP TABLE IF EXISTS ProductInfo;

create database ExerciseDb
-- Create CompanyInfo Table
CREATE TABLE CompanyInfo (
    CId INT PRIMARY KEY,
    CName VARCHAR(255) NOT NULL
);

-- Create ProductInfo Table
CREATE TABLE ProductInfo (
    PId INT PRIMARY KEY,
    PName VARCHAR(255) NOT NULL,
    PPrice DECIMAL(10, 2) NOT NULL,
    PMDate DATE NOT NULL,
    CId INT,
    FOREIGN KEY (CId) REFERENCES CompanyInfo(CId)
);

-- Insert data into CompanyInfo Table
INSERT INTO CompanyInfo (CId, CName) VALUES
(1, 'Samsung'),
(2, 'HP'),
(3, 'Apple'),
(4, 'Dell'),
(5, 'Toshiba'),
(6, 'Redmi');

-- Insert data into ProductInfo Table
INSERT INTO ProductInfo (PId, PName, PPrice, PMDate, CId) VALUES
(101, 'Laptop', 55000.90, '2023-12-12', 1),
(102, 'Laptop', 35000.90, '2012-12-12', 2),
(103, 'Mobile', 15000.90, '2012-03-12', 2),
(104, 'Laptop', 135000.90, '2012-12-12', 3),
(105, 'Mobile', 65000.90, '2012-12-12', 3),
(106, 'Laptop', 35000.90, '2012-12-12', 5),
(107, 'Mobile', 35000.90, '2012-01-12', 5),
(108, 'Earpod', 1000.90, '2022-01-12', 3),
(109, 'Laptop', 85000.90, '2021-12-12', 6),
(110, 'Mobile', 55000.70, '2020-12-12', 1);


SELECT C.CName AS CompanyName, P.*
FROM CompanyInfo C
JOIN ProductInfo P ON C.CId = P.CId;

SELECT P.PName AS ProductName, P.*, C.CName AS CompanyName
FROM ProductInfo P
JOIN CompanyInfo C ON P.CId = C.CId;

SELECT C.CName AS CompanyName, P.*
FROM CompanyInfo C
CROSS JOIN ProductInfo P;


