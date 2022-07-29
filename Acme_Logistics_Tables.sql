CREATE DATABASE AcmeLogistics;

USE AcmeLogistics;

CREATE TABLE tbl_Details( driverID INT PRIMARY KEY, First_Name VARCHAR(50), Last_Name VARCHAR(50), License_Number INT, L_Expiry DATE);
CREATE TABLE tbl_TruckDetails(truckrn VARCHAR(50) PRIMARY KEY, fitness_Expiry DATE, truck_Model VARCHAR(50), haul_Capacity INT);
CREATE TABLE tbl_Data( temperature INT, d_Date DATE, latitude DECIMAL(10,5), longitude DECIMAL(10,6), driverID INT  FOREIGN KEY REFERENCES tbl_Details(driverID), truckrn VARCHAR(50) FOREIGN KEY REFERENCES tbl_TruckDetails(truckrn));

INSERT INTO tbl_Details(driverID,First_Name,Last_Name,License_Number,L_Expiry) VALUES(1,'surya','sai',1001,'2024-05-20');
INSERT INTO tbl_Details(driverID,First_Name,Last_Name,License_Number,L_Expiry) VALUES(2,'sai','srinivas',1002,'2025-06-24');
INSERT INTO tbl_Details(driverID,First_Name,Last_Name,License_Number,L_Expiry) VALUES(3,'srinivas','naidu',1003,'2025-07-21');
INSERT INTO tbl_Details(driverID,First_Name,Last_Name,License_Number,L_Expiry) VALUES(4,'gunna','sai',1004,'2024-08-22');

SELECT * FROM tbl_Details;

INSERT INTO tbl_TruckDetails VALUES('KA0912S1254','2025-09-12','AS01',100);
INSERT INTO tbl_TruckDetails VALUES('KA0912S1255','2025-09-13','AS02',200);
INSERT INTO tbl_TruckDetails VALUES('KA0912S1256','2025-09-14','AS03',300);
INSERT INTO tbl_TruckDetails VALUES('KA0912S1257','2025-09-15','AS04',400);

SELECT * FROM tbl_TruckDetails;

INSERT INTO tbl_Data VALUES(9,'2021-02-17',2.256101,128.25610,1,'KA0912S1254');
INSERT INTO tbl_Data VALUES(10,'2021-02-17',2.256201,128.25710,2,'KA0912S1255');
INSERT INTO tbl_Data VALUES(11,'2021-02-17',2.256301,128.25810,3,'KA0912S1256');
INSERT INTO tbl_Data VALUES(12,'2021-02-17',2.256401,128.25910,4,'KA0912S1257');

SELECT * FROM tbl_Data;