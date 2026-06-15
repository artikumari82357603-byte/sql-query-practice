-- drop the table if it already exists.
DROP TABLE IF EXISTS users;

-- create the user table 
CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);

SELECT * FROM users;

-- insert 5 sample users into the users table
INSERT INTO users(username,email,age,city)
VALUES('Rajesh','rajesh@gmail.com',25,'Mumbai'),
		('priya','priya@yahoo.com',30,'Delhi'),
		('Ankit','ankit@gmail.com',28,'Banglore'),
		('Sneha','sneha@hotmail.com',35,'Pune'),
		('Vikram','vikram@gmail.com',22,'Hyderabad');


select username,city from users;

UPDATE users 
SET age=26
WHERE username='Rajesh';
select * from users ORDER BY user_id ASC;

UPDATE users
SET city='Chennai'
WHERE age>=30;

UPDATE users
SET age=30, city='Kolkata'
WHERE username='Priya';

UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com';

