CREATE TABLE employee (
  id INTEGER,
  name VARCHAR(50),
  birthday DATE,
  email VARCHAR(100)
);

**Update
1- UPDATE employee
   SET name = 'John Doe'
   WHERE id = 1;

2- UPDATE employee
SET birthday = '1990-05-15'
WHERE id = 2;

3- UPDATE employee
SET email = 'jane@example.com'
WHERE id = 3;

4- UPDATE employee
SET name = 'Michael Smith',
birthday = '1985-12-10'
WHERE id = 4;

5- UPDATE employee
SET name = 'Emily Johnson',
birthday = '1992-08-22',
email = 'emily@example.com'
WHERE id = 5;

**Delete

1- DELETE FROM employee
WHERE id = 1;

2- DELETE FROM employee
WHERE name = 'John Doe';

3- DELETE FROM employee
WHERE birthday = '1990-05-15';

4- DELETE FROM employee
WHERE email = 'jane@example.com';

5-DELETE FROM employee
WHERE id = 5;