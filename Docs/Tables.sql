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
