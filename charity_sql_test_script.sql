
CREATE TABLE Departments (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(100)
);

CREATE TABLE Employees (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(100),
    Dept_ID NUMBER,
    CONSTRAINT FK_Department FOREIGN KEY (Dept_ID) REFERENCES Departments(Dept_ID)
);

CREATE TABLE Projects (
    Project_ID NUMBER PRIMARY KEY,
    Project_Name VARCHAR2(100)
);

CREATE TABLE Employee_Projects (
    Emp_ID NUMBER,
    Project_ID NUMBER,
    CONSTRAINT FK_Employee FOREIGN KEY (Emp_ID) REFERENCES Employees(Emp_ID),
    CONSTRAINT FK_Project FOREIGN KEY (Project_ID) REFERENCES Projects(Project_ID)
);
INSERT INTO Departments (Dept_ID, Dept_Name) VALUES (001, 'HR');
INSERT INTO Departments (Dept_ID, Dept_Name) VALUES (002, 'IT');
INSERT INTO Departments (Dept_ID, Dept_Name) VALUES (003, 'Finance');
INSERT INTO Departments (Dept_ID, Dept_Name) VALUES (004, 'Operations');

INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (101, 'Neza Charity', 001);
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (102, 'Mupenzi Eric', 002);
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (103, 'Muhwezi Egide', 003);
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (104, 'Kamikazi Enid', 004);
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (105, 'Manzi Prince', 001);
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (106, 'Kevin Elvis', 002);
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (107, 'Sam Sam', 003);
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (108, 'Li HF', 004);
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (109, 'Ange Mutoni', 001);
INSERT INTO Employees (Emp_ID, Emp_Name, Dept_ID) VALUES (110, 'Keza Sonia', 002);

UPDATE Employees SET Emp_Name = 'Neza Charirt' WHERE Emp_ID = 101;

DELETE FROM Employees WHERE Emp_ID = 107;
SELECT e.Emp_Name, d.Dept_Name
FROM Employees e
JOIN Departments d ON e.Dept_ID = d.Dept_ID;

SELECT Emp_Name
FROM Employees
WHERE Dept_ID = (SELECT Dept_ID FROM Departments WHERE Dept_Name = 'HR');

BEGIN
    INSERT INTO Projects (Project_ID, Project_Name) VALUES (01, 'Project one');
    INSERT INTO Projects (Project_ID, Project_Name) VALUES (02, 'Project two');
    INSERT INTO Projects (Project_ID, Project_Name) VALUES (03, 'Project three');
    INSERT INTO Projects (Project_ID, Project_Name) VALUES (04, 'Project four');

    COMMIT;
END;
/
