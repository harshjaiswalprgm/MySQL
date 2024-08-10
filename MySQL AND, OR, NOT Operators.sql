-- In MySQL, the `AND`, `OR`, and `NOT` operators are used to filter records based on more than one condition.

-- ### 1. **AND Operator**
-- The `AND` operator is used to filter records based on two or more conditions. It returns records where all the conditions are true.

-- **Syntax:**
-- ```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
```

**Example:**
```sql
SELECT * FROM Employees
WHERE age > 25 AND department = 'Sales';
```
This query will return all employees who are older than 25 and work in the Sales department.

### 2. **OR Operator**
The `OR` operator is used to filter records where at least one of the conditions is true.

**Syntax:**
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
```

**Example:**
```sql
SELECT * FROM Employees
WHERE age < 30 OR department = 'HR';
```
This query will return all employees who are either younger than 30 or work in the HR department.

### 3. **NOT Operator**
The `NOT` operator is used to filter records where a specific condition is not true.

**Syntax:**
```sql
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
```

**Example:**
```sql
SELECT * FROM Employees
WHERE NOT department = 'HR';
```
This query will return all employees who do not work in the HR department.

### Combining Operators
You can also combine these operators to create complex conditions.

**Example:**
```sql
SELECT * FROM Employees
WHERE age > 25 AND (department = 'Sales' OR department = 'HR') AND NOT city = 'New York';
```
This query returns all employees who are older than 25, work in either the Sales or HR department, and are not located in New York.