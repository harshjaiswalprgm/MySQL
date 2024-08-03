create table mySql(
id int,
name varchar(50),
birth_date date,
phone varchar(12),
gender varchar(1)
);

select * from mySql;

insert into mySql(id, name, birth_date, phone, gender)
values(1, "Harsh", "2002-07-22", "9794545008", "M"),
	(1, "Harsh", "2002-07-22", "9794545008", "M"),
    (2, "Aman", "2002-10-12", "97942345008", "M"),
    (3, "Pranv", "2004-05-26", "9793445008", "M"),
    (4, "Lokesh", "2001-03-12", "9792345008", "M");

ALTER TABLE mySql
ADD age int;

UPDATE mySql
SET age = 22
WHERE id =1;

UPDATE employees
SET age = 35
WHERE name = 'Emily Davis';



-- describe mySql;


