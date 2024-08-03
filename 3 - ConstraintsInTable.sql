-- Using constraints in SQL is a fundamental part of database design that ensures the integrity and accuracy of the data. Here are some common constraints with examples to illustrate their use:

-- ### 1. NOT NULL Constraint

-- Ensures that a column cannot have a NULL value.

-- ### sql
CREATE TABLE Employees (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL
);
```

### 2. UNIQUE Constraint

Ensures that all values in a column are different.

```sql
CREATE TABLE Employees (
    EmployeeID INT NOT NULL,
    Email VARCHAR(100) UNIQUE,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);
```

### 3. PRIMARY KEY Constraint

Uniquely identifies each record in a table. A table can have only one primary key, which can be a single column or a combination of columns.

```sql
CREATE TABLE Employees (
    EmployeeID INT NOT NULL,
    Email VARCHAR(100),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PRIMARY KEY (EmployeeID)
);
```

### 4. FOREIGN KEY Constraint

Ensures referential integrity for a record in another table. The foreign key in one table points to a primary key in another table.

```sql
CREATE TABLE Departments (
    DepartmentID INT NOT NULL,
    DepartmentName VARCHAR(100),
    PRIMARY KEY (DepartmentID)
);

CREATE TABLE Employees (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
```

### 5. CHECK Constraint

Ensures that the value in a column meets a specific condition.

```sql
CREATE TABLE Employees (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2),
    CHECK (Age >= 18),
    CHECK (Salary > 0)
);
```

### 6. DEFAULT Constraint

Provides a default value for a column when none is specified.

```sql
CREATE TABLE Employees (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE DEFAULT GETDATE()
);
```

These constraints help maintain the integrity of the data in your SQL database, ensuring that the data remains accurate and reliable.