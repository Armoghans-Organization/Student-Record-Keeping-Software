Create Database Project;
Use Project;

________________________________________________________________________________

-- Table Structure for  Administartor Table.

Create TABLE  Admin (
    Admin_ID            BIGINT,
    Admin_Name          VARCHAR(20),
    Admin_Password      VARCHAR(20)
);
________________________________________________________________________________

-- Table Structure for  Student Table.

Create Table Student (
    Student_ID          BIGINT,
    Student_Name        VARCHAR(20),
    Address             VARCHAR(50),
    Contact_No          BIGINT,
    Departement_ID      BIGINT,
    Course_ID           BIGINT
);
________________________________________________________________________________

-- Table Structure for  Fee Table.

Create Table Fee(
    Student_ID          BIGINT,
    Student_Name        VARCHAR(20),
    Tution_Fee          BIGINT
);
________________________________________________________________________________

-- Table Structure for  Teacher Table.

Create Table Teacher(
    Teacher_ID          BIGINT,
    Teacher_Name        VARCHAR(20),
    Student_ID          BIGINT
);
________________________________________________________________________________

-- Table Structure for  Course Table.

Create Table Course(
    Course_ID           BIGINT,
    Course_Name         VARCHAR(20),
    Teacher_ID          BIGINT,
    Student_ID          BIGINT
);
________________________________________________________________________________

-- Table Structure for  Department Table.

Create Table Department(
    Departement_ID      BIGINT,
    Department_Name     VARCHAR(20),
    Student_ID          BIGINT,
    Course_ID           BIGINT,
    Exam_ID             BIGINT
);
________________________________________________________________________________

-- Table Structure for  Exam Table.

Create Table Exam(
    Exam_ID             BIGINT,
    Exam_Name           VARCHAR(20),
    Course_ID           BIGINT,
    Student_ID          BIGINT,
    Marks               BIGINT
);
________________________________________________________________________________

-- Declaring Primary Key For Administartor Table

Alter TABLE Administartor
ADD CONSTRAINT PK_Administartor PRIMARY Key (Admin_ID)

________________________________________________________________________________

-- Declaring Primary Key For Student Table

Alter TABLE Student
ADD CONSTRAINT PK_Student PRIMARY Key (Student_ID)
________________________________________________________________________________

-- Declaring Primary Key For Department  Table

Alter TABLE Department
ADD CONSTRAINT PK_Department PRIMARY Key (Department_ID)
________________________________________________________________________________

-- Declaring Primary Key For Course Table

Alter TABLE Coures
ADD CONSTRAINT PK_Course PRIMARY Key (Course_ID)
________________________________________________________________________________

-- Declaring Primary Key For Teacher Table

Alter TABLE Teacher
ADD CONSTRAINT PK_Teacher PRIMARY Key (Teacher_ID)
________________________________________________________________________________

-- Declaring Primary Key For Exam  Table

Alter TABLE Exam 
ADD CONSTRAINT PK_Exam  PRIMARY Key Exam _ID)
________________________________________________________________________________

-- Declaring Foreign Key For Student  Table

    Alter TABLE Student
    CONSTRAINT fk_Department_ID FOREIGN KEY (Department_ID) 
    REFERENCES Department(Department_ID)

    Alter TABLE Student
    CONSTRAINT fk_Course_ID FOREIGN KEY (Course_ID) 
    REFERENCES Coures(Course_ID)
________________________________________________________________________________

-- Declaring Foreign Key For Teacher Table
    Alter TABLE Teacher
    CONSTRAINT fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student(Student_ID)
________________________________________________________________________________

-- Declaring Foreign Key For Coursr Table
    Alter TABLE Coures
    CONSTRAINT fk_Teacher_ID FOREIGN KEY (Teacher_ID) 
    REFERENCES Teacher(Teacher_ID)

    Alter TABLE Coures
    CONSTRAINT fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)  
________________________________________________________________________________

-- Declaring Foreign Key For Department Table
    Alter TABLE Department
    CONSTRAINT fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student(Student_ID)

    Alter TABLE Teacher
    CONSTRAINT fk_Course_ID FOREIGN KEY (Course_ID) 
    REFERENCES Course(Course_ID)

    Alter TABLE Teacher
    CONSTRAINT fk_Exam_ID FOREIGN KEY (Exam_ID) 
    REFERENCES Exam(Exam_ID)
________________________________________________________________________________

    -- Declaring Foreign Key For Exam Table
    Alter TABLE Exam
    CONSTRAINT fk_Course_ID FOREIGN KEY (Course_ID) 
    REFERENCES Course(Course_ID)

    Alter TABLE Exam
    CONSTRAINT fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)  
________________________________________________________________________________
