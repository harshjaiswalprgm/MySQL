-- Creating multiple tables in MySQL statement---
--  involves using the `CREATE TABLE` statement for each table you want to create. Below is an example demonstrating how to create several related tables in a database, including the use of primary and foreign keys to establish relationships between them.

-- ### Example: Creating Multiple Related Tables

-- Let's create a database for a simple university system with tables for students, courses, and enrollments.

#### 1. Create the `Students` Table

SQL statement---

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    BirthDate DATE,
    Email VARCHAR(100) UNIQUE NOT NULL
);


#### 2. Create the `Courses` Table

SQL statement---

CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    Department VARCHAR(100)
);


#### 3. Create the `Enrollments` Table

This table will link students and courses, representing which students are enrolled in which courses.

SQL statement---

CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
```

### Putting It All Together

Here is the complete set of commands to create these tables:

```SQL statement---

-- Create Students Table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    BirthDate DATE,
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Courses Table
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    Department VARCHAR(100)
);

-- Create Enrollments Table
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


### Explanation

1. **Students Table**: Contains student details with `StudentID` as the primary key.
2. **Courses Table**: Contains course details with `CourseID` as the primary key.
3. **Enrollments Table**: Links students and courses using `StudentID` and `CourseID` as foreign keys, creating a many-to-many relationship between students and courses.

This setup ensures referential integrity and allows you to easily manage relationships between students and courses in your university database.