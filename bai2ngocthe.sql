DROP DATABASE Testing_System_Assignment_thee;
CREATE DATABASE Testing_System_Assignment_thee;
USE Testing_System_Assignment_thee;
CREATE TABLE Department(
DepartmentID		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
DepartmentName		VARCHAR(50)

);
CREATE TABLE `Position`(
 PositionID			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 PositionName		VARCHAR(50)

);
CREATE TABLE `Account`(
AccountID			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Email				VARCHAR(50) NOT NULL,
Username			VARCHAR(50) NOT NULL,
FullName			VARCHAR(50) NOT NULL,
DepartmentID		INT UNSIGNED,
PositionID			INT UNSIGNED,
CreateDate			DATE,
CONSTRAINT lk1 FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
CONSTRAINT lk2 FOREIGN KEY (PositionID) REFERENCES `Position`(PositionID)
);

CREATE TABLE `Group`(
GroupID			  		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
GroupName				VARCHAR(50) NOT NULL,
CreatorID				INT UNSIGNED,
CreateDate				DATE,
CONSTRAINT lk3 FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID)

);
CREATE TABLE GroupAccount(
GroupID			  		INT UNSIGNED,
AccountID				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
JoinDate				DATE,
CONSTRAINT lk4 FOREIGN KEY (AccountID) REFERENCES `Account`(AccountID),
CONSTRAINT lk5 FOREIGN KEY (GroupID	) REFERENCES `Group`(GroupID)

);
CREATE TABLE TypeQuestion(
TypeID			  		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
TypeName				VARCHAR(50) NOT NULL

);
CREATE TABLE  CategoryQuestion(
CategoryID		  		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
CategoryName				VARCHAR(50) NOT NULL

);
CREATE TABLE Question(
QuestionID				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Content					VARCHAR(100),
CategoryID				INT UNSIGNED,
TypeID					INT UNSIGNED,
CreatorID				INT UNSIGNED,
CreateDate				DATE,
CONSTRAINT lk6 FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
CONSTRAINT lk7 FOREIGN KEY (TypeID) REFERENCES TypeQuestion(TypeID),
CONSTRAINT lk8 FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID)

);
CREATE TABLE Answer(
AnswerID				INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Content					VARCHAR(100),
QuestionID				INT UNSIGNED,
isCorrect				ENUM('dung','sai'),
CONSTRAINT lk9 FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);
CREATE TABLE Exam(
ExamID					INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Codevti					VARCHAR(100),
Title					VARCHAR(100),
CategoryID				INT UNSIGNED,
Duration				DATE,
CreatorID				INT UNSIGNED,	
CreateDate				DATE,
CONSTRAINT lk10 FOREIGN KEY ( CategoryID) REFERENCES CategoryQuestion(CategoryID),
CONSTRAINT lk11 FOREIGN KEY ( CreatorID) REFERENCES `Account`(AccountID)

);
CREATE TABLE ExamQuestion(
ExamID					INT UNSIGNED,
QuestionID				INT UNSIGNED,
CONSTRAINT lk12 FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID),
CONSTRAINT lk13 FOREIGN KEY (ExamID) REFERENCES Exam(ExamID)
);
######### them du lieu
INSERT INTO Department(DepartmentID,DepartmentName) VALUES ('1','sale');
INSERT INTO Department(DepartmentID,DepartmentName) VALUES ('2','maketting');
INSERT INTO Department(DepartmentID,DepartmentName) VALUES ('3','kế hoạch');
INSERT INTO Department(DepartmentID,DepartmentName) VALUES ('4','nhân sự');
INSERT INTO Department(DepartmentID,DepartmentName) VALUES ('5','kế toán');
INSERT INTO Department(DepartmentID,DepartmentName) VALUES ('6','kỹ thuật');
############
INSERT INTO `Position`(PositionID,PositionName)  VALUES('1','trưởng phòng');   
 INSERT INTO `Position`(PositionID,PositionName)  VALUES('2','phó phòng');  
 INSERT INTO `Position`(PositionID,PositionName)  VALUES('3','nhân viên'); 
 INSERT INTO `Position`(PositionID,PositionName)  VALUES('4','tổ trưởng');  
 INSERT INTO `Position`(PositionID,PositionName)  VALUES('5','giám đốc'); 
 INSERT INTO `Position`(PositionID,PositionName)  VALUES('6','bảo vệ');   
 #############
INSERT INTO `Account`(AccountID,Email,UserName,FullName, DepartmentID,PositionID,CreateDate)
VALUES ('1','ngocthe@gmail.com','the','daongoc','1','1','2021-1-1');
INSERT INTO `Account`(AccountID,Email,UserName,FullName, DepartmentID,PositionID,CreateDate)
VALUES ('2','ngocty@gmail.com','ngoc','nguyenthi','2','2','2021-1-1');
INSERT INTO `Account`(AccountID,Email,UserName,FullName, DepartmentID,PositionID,CreateDate)
VALUES ('3','ngocthe@gmail.com','son','daongoc','3','3','2021-1-1');
INSERT INTO `Account`(AccountID,Email,UserName,FullName, DepartmentID,PositionID,CreateDate)
VALUES ('4','xuanthanh@gmail.com','thanh','nguyenvan','4','4','2021-1-1');
INSERT INTO `Account`(AccountID,Email,UserName,FullName, DepartmentID,PositionID,CreateDate)
VALUES ('5','mai@gmail.com','the','nguyenngoc','5','5','2021-1-1');
INSERT INTO `Account`(AccountID,Email,UserName,FullName, DepartmentID,PositionID,CreateDate)
VALUES ('6','dat@gmail.com','dat','nguyenvan','6','6','2021-1-1');
#############
INSERT INTO `Group`(GroupID,GroupName,CreatorID,CreateDate) VALUES 
('1','Sáng Tạo','1','2021-2-2');
INSERT INTO `Group`(GroupID,GroupName,CreatorID,CreateDate) VALUES 
('2','Năng động','2','2021-2-2');
INSERT INTO `Group`(GroupID,GroupName,CreatorID,CreateDate) VALUES 
('3','Xitin','3','2021-2-2');
INSERT INTO `Group`(GroupID,GroupName,CreatorID,CreateDate) VALUES 
('4','Đam mê','4','2021-2-2');
INSERT INTO `Group`(GroupID,GroupName,CreatorID,CreateDate) VALUES 
('5','Nỗ lực','1','2021-2-2');
INSERT INTO `Group`(GroupID,GroupName,CreatorID,CreateDate) VALUES 
('6','Khởi động','1','2021-2-2');
###########
INSERT INTO GroupAccount(GroupID,AccountID,JoinDate) VALUES
('1','1','2021-2-2');
INSERT INTO GroupAccount(GroupID,AccountID,JoinDate) VALUES
('2','2','2021-2-2');
INSERT INTO GroupAccount(GroupID,AccountID,JoinDate) VALUES
('3','3','2021-2-2');
INSERT INTO GroupAccount(GroupID,AccountID,JoinDate) VALUES
('4','4','2021-2-2');
INSERT INTO GroupAccount(GroupID,AccountID,JoinDate) VALUES
('5','5','2021-2-2');
INSERT INTO GroupAccount(GroupID,AccountID,JoinDate) VALUES
('6','6','2021-2-2');
##########
INSERT INTO TypeQuestion(TypeID,TypeName) VALUES('1','Quê quán');
INSERT INTO TypeQuestion(TypeID,TypeName) VALUES('2','số diện thoai');
INSERT INTO TypeQuestion(TypeID,TypeName) VALUES('3','tình trạng hôn nhân');
INSERT INTO TypeQuestion(TypeID,TypeName) VALUES('4','Giới tính');
INSERT INTO TypeQuestion(TypeID,TypeName) VALUES('5','Quê quán');
INSERT INTO TypeQuestion(TypeID,TypeName) VALUES('6',' Tuổi');
#########
INSERT INTO CategoryQuestion(CategoryID,CategoryName) VALUES('1','Java');
INSERT INTO CategoryQuestion(CategoryID,CategoryName) VALUES('2','.Net');
INSERT INTO CategoryQuestion(CategoryID,CategoryName) VALUES('3','SQL');
INSERT INTO CategoryQuestion(CategoryID,CategoryName) VALUES('4','Postman');
INSERT INTO CategoryQuestion(CategoryID,CategoryName) VALUES('5','Ruby');
INSERT INTO CategoryQuestion(CategoryID,CategoryName) VALUES('6','Androi');
###########
INSERT INTO Question(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate) 
VALUES('1','java la gi','1','1','1','2021-2-2');
INSERT INTO Question(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate) 
VALUES('2','.Net','2','2','2','2021-2-2');
INSERT INTO Question(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate) 
VALUES('3','SQL là gì','3','3','3','2021-2-2');
INSERT INTO Question(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate) 
VALUES('4','postman là gì','4','4','4','2021-2-2');
INSERT INTO Question(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate) 
VALUES('5','ruby là gì','4','4','4','2021-2-2');
INSERT INTO Question(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate) 
VALUES('6','Androi là gì','6','6','6','2021-2-2');
########
INSERT INTO Answer(AnswerID,Content,QuestionID,isCorrect) 
VALUES('1','Ngôn ngữ lập trình','1','dung');
INSERT INTO Answer(AnswerID,Content,QuestionID,isCorrect) 
VALUES('2','Ngôn ngữ lập trình','2','dung');
INSERT INTO Answer(AnswerID,Content,QuestionID,isCorrect) 
VALUES('3','Ngôn ngữ lập trình','3','dung');
INSERT INTO Answer(AnswerID,Content,QuestionID,isCorrect) 
VALUES('4','Ngôn ngữ lập trình','4','sai');
INSERT INTO Answer(AnswerID,Content,QuestionID,isCorrect) 
VALUES('5','Ngôn ngữ lập trình','5','sai');
INSERT INTO Answer(AnswerID,Content,QuestionID,isCorrect) 
VALUES('6','Ngôn ngữ lập trình','6','sai');
##########
INSERT INTO Exam(Codevti,Title,Duration,CreateDate) 
VALUES('100','Kiểm tra đầu vào','2021-5-5','2021-3-1');
INSERT INTO Exam(Codevti,Title,Duration,CreateDate) 
VALUES('101','Kiểm tra đầu vào','2021-5-5','2021-3-1');
INSERT INTO Exam(Codevti,Title,Duration,CreateDate) 
VALUES('100','Kiểm tra đầu vào','2021-5-5','2021-3-1');
INSERT INTO Exam(Codevti,Title,Duration,CreateDate) 
VALUES('101','Kiểm tra đầu vào','2021-5-5','2021-3-1');
INSERT INTO Exam(Codevti,Title,Duration,CreateDate) 
VALUES('100','Kiểm tra đầu vào','2021-5-5','2021-3-1');
INSERT INTO Exam(Codevti,Title,Duration,CreateDate) 
VALUES('101','Kiểm tra đầu vào','2021-5-5','2021-3-1');
######################## Bài 3##################
SELECT* FRom Position;
INSERT INTO Department(DepartmentName) VALUES
('Đào tạo'),
('Số hoá'),
('Bảo vệ'),
('Giải trí'),
('Y tế');
INSERT INTO `Position`(PositionName) VALUES 
('nhan vien'),
('phó giám đốc'),
('nhân viên'),
('nhân viên'),
('Tổ trưởng');
SELECT* FROM `Account`;
INSERT INTO `Account`(Email,UserName,FullName,CreateDate) VALUES 
('congson@gmail.com','Sơn','Đặng Văn Sơn','2021-2-2'),
('phuonganh@gmail.com','Anh','Đặng Phương Anh','2021-2-2'),
('huuphuoc@gmail.com','Phước','Nguyễn Hữu Phước','2021-2-2'),
('hoangdung@gmail.com','Dung','Phạm Thị Dung','2021-2-2'),
('nguyenhue@gmail.com','Huế','Nguyễn Huế','2021-2-2');
SELECT* FROM `Account`;
SELECT* FROM `Group`;

INSERT INTO  `Group`(GroupName,CreateDate) VALUES
('Công nghệ','2021-5-1'),
('Điện ảnh','2021-5-1'),
('Bóng đá','2021-5-1'),
('game','2021-5-1'),
('Thời trang','2021-5-1');
SELECT* FROM `Group`;
INSERT INTO GroupAccount(JoinDate) VALUES 
('2021-3-3'),
('2021-4-3'),
('2021-4-3'),
('2021-3-6'),
('2021-3-7');
select*from TypeQuestion;
INSERT INTO TypeQuestion(TypeID,TypeName) VALUES 
('7','Hãng điện thoại'),
('8','Phương tiện đi làm'),
('9','Tiếng anh'),
('10','Sở thích'),
('11','Mức lương mong muốn');
select*from CategoryQuestion;
INSERT INTO CategoryQuestion(CategoryID,CategoryName) VALUES
('7','IOS'),
('8','window'),
('9','Nokia'),
('10','BKAV'),
('11','C++');
select*from Question;
INSERT INTO Question(Content,CreateDate) VALUES
('IOS là gì','2021-2-2'),
('window là gì','2021-2-2'),
('Nokia là gì','2021-2-2'),
('BKAV là gì','2021-2-2'),
('C++ là gì','2021-2-2');
select*from Answer;
INSERT INTO Answer(content,isCorrect) VALUES
('Ngôn ngữ lập trình','sai'),
('Ngôn ngữ lập trình','sai'),
('Ngôn ngữ lập trình','sai'),
('Ngôn ngữ lập trình','sai'),
('Ngôn ngữ lập trình','dung');
select*from  Exam;
INSERT INTO Exam(Codevti,Title,Duration,CreateDate) VALUES
('102','Kiểm tra đầu vào','2021-05-05','2021-03-01'),
('100','Kiểm tra đầu vào','2021-05-05','2021-03-01'),
('101','Kiểm tra đầu vào','2021-05-05','2021-03-01'),
('102','Kiểm tra đầu vào','2021-05-05','2021-03-01'),
('100','Kiểm tra đầu vào','2021-05-05','2021-03-01');
######### 
SELECT*FROM Department;
SELECT*FROM Department WHERE DepartmentName = "sale";
SELECT*FROM `Account`;
SELECT MAX(FullName) FROM `Account`;





























 

 

 

