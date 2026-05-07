CREATE DATABASE Educationalcourses;
GO 
USE Educationalcourses;
GO

CREATE TABLE Teachers
(
TeacherId INT PRIMARY KEY IDENTITY,
Age VARCHAR(20),
FirstName VARCHAR(50),
LastName VARCHAR(50),
Login VARCHAR(50),
Password VARCHAR(50),
CourseId INT,
FOREIGN KEY (CourseId) REFERENCES Courses(CourseId),
RoleID INT,
FOREIGN KEY (RoleID) REFERENCES Roles(RoleId)
)
CREATE TABLE Roles
(
RoleId INT PRIMARY KEY IDENTITY,
RoleName NVARCHAR(50)
)
CREATE TABLE Courses
(
CourseId INT PRIMARY KEY IDENTITY,
Subgect VARCHAR (20),
ID_Organization INT,
ID_Group INT,
FOREIGN KEY (ID_Organization) REFERENCES Organization(OrganizationId),
FOREIGN KEY (ID_Group) REFERENCES Groups(GroupId)
)
CREATE TABLE Listeners
(
ListenerId INT PRIMARY KEY IDENTITY,
FirstName VARCHAR (50),
MiddleName VARCHAR(50),
LastName VARCHAR(50),
Login VARCHAR(50),
Password VARCHAR(50)
)
CREATE TABLE Groups
(
GroupId INT PRIMARY KEY IDENTITY,
Number VARCHAR(20),
Listener_id INT,
FOREIGN KEY (Listener_Id) REFERENCES Listeners(listenerid)
)
CREATE TABLE Organization
(
OrganizationId INT PRIMARY KEY IDENTITY,
Type VARCHAR(100)
)
CREATE TABLE Attendance
(
AttendanceId INT PRIMARY KEY IDENTITY,
numberofpeoplepresent VARCHAR (100),
numberofabsentees VARCHAR (100),
Teacher_Id INT,
FOREIGN KEY (Teacher_Id) REFERENCES Teachers(TeacherId),
ID_listeners INT,
FOREIGN KEY (ID_listeners) REFERENCES Listeners(ListenerID)
)
CREATE TABLE Shedule
(
SheduleId INT PRIMARY KEY IDENTITY,
DateLessons DATE,
Subjects VARCHAR (100),
Teacher_Id INT,
FOREIGN KEY (Teacher_Id) REFERENCES Teachers(TeacherId)
)
INSERT INTO Roles(RoleName)
VALUES
('Àäìèíèñòðàòîð'),
('Ïðåïîäîâàòåëü'),
('Ó÷åíèê')
INSERT INTO Teachers(Age,FirstName,LastName, Login, Password)
VALUES
('43','Àëåêñåé','Ãóñüêîâ', 'hjdjss', '43737'),
('32', 'Ìèõàèë','Ñàâåíêîâ', 'iteos', '02168'),
('45','Èâàí', 'Êîíüêîâ', 'agnypq', '74850'),
('44','Àíäðåé','Ñàâåëüåâ','dsvfgh','56913')

INSERT INTO Courses (Subgect, ID_Organization, ID_Group)
VALUES 
('Ìàòåìàòèêà', 1, 1),
('Èñòîðèÿ', 2, 2),
('Ïðîãðàììèðîâàíèå', 3, 3);

INSERT INTO Listeners(FirstName,LastName,MiddleName, Login, Password)
VALUES
('Cåðãåé','Áóðîâ','Ãåíàäüåâè÷','oskaqw','843921'),
('Èâàí', 'Èâàíîâ','Èâàíîâè÷', 'fffff', '56889'),
('Äåíèñ', 'Êàðïîâ', 'Àíäðååâè÷','addggdd','12445'),
('Èãîðü','Îñëîâ','Äìèòðååâè÷','typfksl','66688')

INSERT INTO Attendance (numberofpeoplepresent, numberofabsentees, Teacher_Id, ID_listeners)
VALUES 
('25', '5', 1, 1),
('20', '2', 2, 2),
('18', '0', 3, 3);

INSERT INTO Shedule (DateLessons, Subjects, Teacher_Id)
VALUES 
('2026-05-10', 'Ìàòåìàòèêà', 1),
('2026-05-11', 'Èñòîðèÿ', 2),
('2026-05-12', 'Ïðîãðàììèðîâàíèå', 3);