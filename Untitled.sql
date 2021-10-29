DROP DATABASE IF EXISTS Sale_Management;
CREATE DATABASE Sale_Management;
USE Sale_Management;
CREATE TABLE Customers (
customer_id			INT,
firt_name			VARCHAR(50),
last_name			VARCHAR(50),
email_address		VARCHAR(50),
num_of_com			INT


);
CREATE TABLE SALES(
pur_num				INT,
date_of_pur			DATE,
customer_id			INT,
item_code			VARCHAR(20)
);
CREATE TABLE Items(
item_code			VARCHAR(20),
item				CHAR(50),
unit_price_usd		INT,
company				CHAR(50),
hea_pho_num			VARCHAR(50)

);


DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;
CREATE TABLE Department(
DepartmentID		VARCHAR(50),
DepartmentName		VARCHAR(50)
);

CREATE TABLE position (
positionID 		  INT NOT NULL AUTO_INCREMENT,		
positionName			VARCHAR(50),
primary key(positionID)

);
CREATE TABLE Account(    
Email			VARCHAR(50),
Username		VARCHAR(50),
DepartmentID			VARCHAR(50),
positionID		VARCHAR(50),
CreateDate		DATE

);


CREATE TABLE `Group`  (   
 GroupID		 	 INT NOT NULL AUTO_INCREMENT,		

primary key(GroupID ),	
GroupName			VARCHAR(50),
CreatorID			VARCHAR(50),
CreateDate			DATE

);
CREATE TABLE  GroupAccount(    
GroupID				VARCHAR(50),
AccountID			VARCHAR(50),
JoinDate			DATE

);
CREATE TABLE TypeQuestion(
TypeID 		  INT NOT NULL AUTO_INCREMENT,		

primary key(TypeID)

);
CREATE TABLE CategoryQuestion(
CategoryID 		  INT NOT NULL AUTO_INCREMENT,		

primary key(CategoryID ),
CategoryName		VARCHAR(50)

);
CREATE TABLE Question(
QuestionID 		  INT NOT NULL AUTO_INCREMENT,		

primary key(QuestionID ),
Content				VARCHAR(100),
CategoryID			VARCHAR(100),
TypeID				VARCHAR(100),
CreatorID			VARCHAR(100),
CreateDate			DATE

);
CREATE TABLE Answer(
AnswerID 		  INT NOT NULL AUTO_INCREMENT,		

primary key(AnswerID ),
Content				VARCHAR(100),
QuestionID			VARCHAR(100),
isCorrect			ENUM('dung','sai')

);
CREATE TABLE Exam(
ExamID 		  	INT NOT NULL AUTO_INCREMENT,
primary key( ExamID ),
CODE			INT,
Tile			VARCHAR(50),
CategoryID		VARCHAR(50),
Duration		TIMESTAMP,
CreatorID		VARCHAR(20),
CreateDate		DATE

);
CREATE TABLE ExamQuestion(
ExamID 		  	INT NOT NULL AUTO_INCREMENT primary key(ExamID),
QuestionID 		  	INT NOT NULL AUTO_INCREMENT primary key(QuestionID )

);
		








