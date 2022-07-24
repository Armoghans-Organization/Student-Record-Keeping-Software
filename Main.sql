Create Database Project;
Use Project;

________________________________________________________________________________


-- Table Structure for  Administartor Table.

CREATE TABLE Admin (
  Admin_ID              BIGINT Primary Key  Not Null,
  Student_ID            BIGINT ,
  Student_Name          VARCHAR(20),
  Student_Password      VARCHAR(20)
);
________________________________________________________________________________

-- Table Structure for  Student Table.

CREATE TABLE Student (
  Student_ID            BIGINT Primary Key Not Null,
  Student_Name          VARCHAR(20),
  Address               VARCHAR(50),
  Contact_No            BIGINT,
  Departement_ID        BIGINT,
  Course_ID             BIGINT
);
________________________________________________________________________________

-- Table Structure for  Fee Table.


CREATE TABLE Fee (
  Challan_No            BIGINT Primary Key  Not Null,
  Student_ID            BIGINT,
  Student_Name          VARCHAR(20),
  Tution_Fee            BIGINT
);
________________________________________________________________________________

-- Table Structure for  Teacher Table.

CREATE TABLE Teacher (
  Teacher_ID            BIGINT Primary Key Not Null,
  Teacher_Name          VARCHAR(20),
  Student_ID            BIGINT
);
________________________________________________________________________________

-- Table Structure for  Course Table.

CREATE TABLE Course (
  Course_ID             BIGINT Primary Key Not Null,
  Course_Name           VARCHAR(20),
  Teacher_ID            BIGINT,
  Student_ID            BIGINT
);
________________________________________________________________________________

-- Table Structure for  Department Table.

CREATE TABLE Department (
  Departement_ID        BIGINT Primary Key Not Null,
  Department_Name       VARCHAR(20),
  Student_ID            BIGINT,
  Course_ID             BIGINT,
  Exam_ID               BIGINT
);
________________________________________________________________________________

-- Table Structure for  Exam Table.

CREATE TABLE Exam (
  Exam_ID               BIGINT Primary Key Not Null,
  Exam_Name             VARCHAR(20),
  Course_ID             BIGINT,
  Student_ID            BIGINT,
  Marks                 BIGINT
);
________________________________________________________________________________

-- Declaring Foreign Key For Admin Table
   
    Alter TABLE Admin

    CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)
 
    CONSTRAINT Fk_Student_Name FOREIGN KEY (Student_Name) 
    REFERENCES Student (Student_Name)
________________________________________________________________________________
-- Declaring Foreign Key For Student  Table

    Alter TABLE Student

    CONSTRAINT Fk_Course_ID FOREIGN KEY (Course_ID) 
    REFERENCES Course (Course_ID)

    CONSTRAINT Fk_Departement_ID FOREIGN KEY (Departement_ID) 
    REFERENCES Department (Departement_ID)
________________________________________________________________________________

-- Declaring Foreign Key For Teacher Table
    
    Alter TABLE Teacher
   
   CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)
________________________________________________________________________________

-- Declaring Foreign Key For Coursr Table
    
    Alter TABLE Coures

    CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)

    CONSTRAINT Fk_Teacher_ID FOREIGN KEY (Teacher_ID) 
    REFERENCES Teacher (Teacher_ID) 
________________________________________________________________________________

-- Declaring Foreign Key For Department Table
    
    ALTER TABLE Department

    CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)

    CONSTRAINT Fk_Course_ID FOREIGN KEY (Course_ID) 
    REFERENCES Course (Course_ID)
________________________________________________________________________________

    -- Declaring Foreign Key For Exam Table
    
    Alter TABLE Exam

    CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)
  
    CONSTRAINT Fk_Course_ID FOREIGN KEY (Course_ID) 
    REFERENCES Course (Course_ID)
________________________________________________________________________________

-- Declaring Foreign Key For Fee Table
    
    Alter TABLE Fee
    
    CONSTRAINT Fk_Student_ID FOREIGN KEY (Student_ID) 
    REFERENCES Student (Student_ID)
 
    CONSTRAINT Fk_Student_Name FOREIGN KEY (Student_Name) 
    REFERENCES Student (Student_Name)
________________________________________________________________________________