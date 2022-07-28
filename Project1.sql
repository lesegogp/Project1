CREATE TABLE Employees(
emp_id bigserial,
first_name varchar(25),
surname varchar (25),
gender char (1),
address varchar(50),
email varchar(30),

CONSTRAINT emp_key PRIMARY KEY(emp_id),
CONSTRAINT email_unique UNIQUE(email),
depart_id integer REFERENCES Department(depart_id),
role_id integer REFERENCES Roles(role_id),
salary_id integer REFERENCES Salaries(salary_id),
overtime_id integer REFERENCES Overtime(overtime_id)
);

CREATE TABLE Department(
depart_id bigserial,
depart_name varchar(25),
depart_city varchar(50),
CONSTRAINT depart_key PRIMARY KEY(depart_id),
CONSTRAINT comp_key PRIMARY KEY (depart_name,depart_city)
);

CREATE TABLE Roles(
role_id bigserial,
role_title varchar(30),
CONSTRAINT role_key PRIMARY KEY(role_id)
);

CREATE TABLE Salaries(
salary_id bigserial,
salary_pa numeric,
CONSTRAINT salary_key PRIMARY KEY(salary_id)
);

CREATE TABLE Overtime(
overtime_id bigserial,
overtime_hours time,
CONSTRAINT overtime_key PRIMARY KEY(overtime_id)
);

INSERT INTO Employees(emp_id,first_name,surname,gender,address,email,depart_id,role_id,salary_id,overtime_id)
VALUES
('1','Louisa','Lekgetho','F','465 Oakland Avenue','lekgethol2@gmail.com','11','111','1111','11111'),
('2','Mpho','Kunene','M','33 kent Avenue','mkunene@gmail.com','22','222','2222','22222'),
('3','Evelyn','Sibiya','F','465 letsatsi street','sibiyal2@gmail.com','33','333','3333','33333'),
('4','Malebo','Mlambo','F','645 makabe street','mlambo@gmail.com','44','444','4444','44444'),
('5','Bokamoso','Mbokazi','F','729 matlala street','bmbokazil2@gmail.com','55','555','5555','55555'),
('6','Johanna','Moroka','M','466 rivornia avenue','johannambokazi@gmail.com','66','666','6666','66666'),
('7','Malebo','Nkala','F','64 graystone','nkalamalebo@gmail.com','77','777','7777','77777'),
('8','Thapelo','Kunene','M','877 legale street','kunenethapelo@gmail.com','88','888','8888','88888'),
('9','Thabang','Khumalo','F','34552 ndlovu street','khumalot@gmail.com','99','999','9999','99999'),
('10','David','Jacobs','M','777 fairlands','jacobsdavid@gmail.com','1010','101010','10101010','1010101010'),
('11','Tsholofelo','Manene','F','322 matseke','manenetsholofelo@gmail.com','1111','111111','11111111','1111111111'),
('12','Kelebogile','Masobe','F','333 amazimtoti','masobe@gmail.com','1212','121212','12121212','1212121212'),
('13','Khumoetsile','Moabi','F','66 greyvile','moabi@gmail.com','1313','131313','13131313','1313131313'),
('14','Boikanyo','Williams','F','55 parmore Avenue','williams2@gmail.com','1414','141414','14141414','1414141414'),
('15','Kefiloe','Konka','F','bree street','konka@gmail.com','1515','151515','15151515','1515151515');

DROP TABLE employees;

SELECT * FROM Employees;

INSERT INTO Department(depart_id,depart_name,depart_city)
VALUES
('11','HR','CPT'),
('22','Management','JHB'),
('33','IT','DURBAN'),
('44','Marketing','NW'),
('55','Hygeine','PE'),
('66','IT','PRETORIA'),
('77','Safety','JHB'),
('88','Management','DURBAN'),
('99','HR','TURFLOOP'),
('1010','Management','CPT'),
('1111','IT','CPT'),
('1212','HR','JHB'),
('1313','HR','PRETORIA'),
('1414','Management','CPT'),
('1515','Finance','NW');

SELECT * FROM Department;


INSERT INTO Roles(role_id ,role_title)
VALUES
('111','Manager'),
('222','Assistant'),
('333','Developer'),
('444','Receptionist'),
('555','Cleaner'),
('666','Analyst'),
('777','Security'),
('888','Book keeper'),
('999','Ambassodor'),
('101010','CEO'),
('111111','Data scientist'),
('121212','HR'),
('131313','Recruiter'),
('141414','Programmes manager'),
('151515','Accountant');

SELECT * FROM Roles;

INSERT INTO salaries(salary_id,salary_pa)
VALUES
('1111','2500000 '),
('2222','1360000'),
('3333','5700000'),
('4444','180000'),
('5555','60000'),
('6666','400000'),
('7777','76000'),
('8888','690000'),
('9999','44500'),
('10101010','1000000'),
('11111111','500000'),
('12121212','250000'),
('13131313','175000'),
('14141414','230000'),
('15151515','1240000');

SELECT * FROM Salaries;

INSERT INTO Overtime(overtime_id,overtime_hours)
VALUES
('11111','00:00:00'),
('22222','00:00:00'),
('33333','00:00:00'),
('44444','00:00:00'),
('55555','00:00:00'),
('66666','00:00:00'),
('77777','00:00:00'),
('88888','00:00:00'),
('99999','00:00:00'),
('1010101010','00:00:00'),
('1111111111','00:00:00'),
('1212121212','00:00:00'),
('1313131313','00:00:00'),
('1414141414','00:00:00'),
('1515151515','00:00:00');

SELECT * FROM Overtime;

SELECT department.depart_name,
       roles.role_title,
       salaries.salary_pa,
       overtime.overtime_hours
FROM employees
LEFT JOIN department
ON employees.depart_id = department.depart_id
LEFT JOIN roles
ON employees.role_id = roles.role_id
LEFT JOIN salaries
ON employees.salary_id = salaries.salary_id
LEFT JOIN overtime
ON employees.overtime_id = overtime.overtime_id;

--
