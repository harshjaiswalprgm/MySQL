-- Inserting multiple values into multiple tables in My### SQL statement---
--  involves using the `INSERT INTO` statement for each table. Below, I'll provide an example of inserting multiple rows into the previously created `Students`, `Courses`, and `Enrollments` tables.

### Inserting Multiple Values

#### 1. Inserting Multiple Rows into `Students` Table

### SQL statement---

INSERT INTO Students (FirstName, LastName, BirthDate, Email)
VALUES 
('John', 'Doe', '2000-01-15', 'john.doe@example.com'),
('Jane', 'Smith', '1999-03-22', 'jane.smith@example.com'),
('Robert', 'Brown', '2001-05-30', 'robert.brown@example.com');
```

#### 2. Inserting Multiple Rows into `Courses` Table

### SQL statement---

INSERT INTO Courses (CourseName, Credits, Department)
VALUES 
('Introduction to Computer Science', 3, 'Computer Science'),
('Calculus I', 4, 'Mathematics'),
('Physics I', 4, 'Physics');
```

#### 3. Inserting Multiple Rows into `Enrollments` Table

Assuming you have already retrieved the `StudentID` and `CourseID` values from the previous inserts, you can then insert values into the `Enrollments` table. For simplicity, let's assume `StudentID` values are 1, 2, and 3, and `CourseID` values are 1, 2, and 3.

### SQL statement---

INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
VALUES 
(1, 1, '2024-01-10'),
(1, 2, '2024-01-10'),
(2, 1, '2024-01-11'),
(2, 3, '2024-01-11'),
(3, 2, '2024-01-12'),
(3, 3, '2024-01-12');
```

### Complete Example

Here is the complete ### SQL statement---
 script for inserting multiple rows into each table:

### SQL statement---

-- Insert into Students Table
INSERT INTO Students (FirstName, LastName, BirthDate, Email)
VALUES 
('John', 'Doe', '2000-01-15', 'john.doe@example.com'),
('Jane', 'Smith', '1999-03-22', 'jane.smith@example.com'),
('Robert', 'Brown', '2001-05-30', 'robert.brown@example.com');

-- Insert into Courses Table
INSERT INTO Courses (CourseName, Credits, Department)
VALUES 
('Introduction to Computer Science', 3, 'Computer Science'),
('Calculus I', 4, 'Mathematics'),
('Physics I', 4, 'Physics');

-- Insert into Enrollments Table
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
VALUES 
(1, 1, '2024-01-10'),
(1, 2, '2024-01-10'),
(2, 1, '2024-01-11'),
(2, 3, '2024-01-11'),
(3, 2, '2024-01-12'),
(3, 3, '2024-01-12');
```

### Explanation

1. **Inserting into `Students` Table**: Three rows are added with the details of three students.
2. **Inserting into `Courses` Table**: Three rows are added with details of three courses.
3. **Inserting into `Enrollments` Table**: Six rows are added, linking students to the courses they are enrolled in, with the respective enrollment dates.

This method ensures that multiple rows are efficiently inserted into each table, maintaining the relationships and data integrity within the database.