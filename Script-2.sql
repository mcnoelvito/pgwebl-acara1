-- Select all data
select * from persons p 

-- count all data
select count(*) from persons p  

--Select column (s)
select p.id, p.firstname, p.lastname, p.color from persons p 

-- Select data where color is blue
SELECT p.id, p.firstname, p.lastname, p.color FROM persons p WHERE p.color = 'violet'

-- Select count data group by color
SELECT p.color, count(*) as jumlah FROM persons p group by p.color ORDER BY p.color

-- Count persons using gmail
SELECT count(*)  FROM persons p WHERE p.email like '%@gmail.com'

-- Select persons with same born and city
SELECT * from persons p WHERE p.born = p.city

-- Select persons with age from date_of_birth
SELECT p.id, p.firstname, p.lastname, p.date_of_birth, age(p.date_of_birth) as age FROM persons p

-- Select person with day from date_of_birth
select p.id, p.firstname, p.lastname, p.date_of_birth, to_char(p.date_of_birth,'Day') as day_of_birth FROM persons p

-- Select data with dayname & age from date_of_birth
SELECT p.id, p.firstname, p.lastname, p.nik, p.email, p.born, p.date_of_birth, 
date_part('year', age(p.date_of_birth)) as year_age, 
date_part('month', age(p.date_of_birth)) as month_age, 
date_part('day', age(p.date_of_birth)) as day_age, to_char(p.date_of_birth, 'Day') as day_of_birth   FROM  persons p

-- Select persons where live in Malang
SELECT * from persons p WHERE p.city  = 'Malang'

-- Count persons where live in Malang
SELECT count(*) from persons p WHERE p.city  = 'Malang'

-- Select persons where born in Semarang
SELECT * from persons p WHERE p.city  = 'Semarang'

--select persons where the firstname last letter is a  
SELECT * FROM persons p where p.firstname like '%a'

--select persons where the lastname first letter is J
SELECT * FROM persons p
WHERE LEFT(p.lastname, 1) LIKE 'J%'

-- Select persons where live in Surakarta by address
SELECT * from persons p WHERE p.address like '%Surakarta%'



