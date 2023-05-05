/*
Nama : Mochamad Lindung Hasti Budi Aldany
*/

# == SQL QUERY #1 ==

#1. HR Data
select customerName, phone from customers c

#2. Querying Data
select * from employees

#3. Sorting Data
select firstName, lastName, email, jobTitle 
from employees 
order by firstName asc

#4 Filtering data 
select firstName, lastName, email, jobTitle 
from employees 
where firstName like 'A%'
order by firstName asc

#5. Join
select c.customerName, p.checkNumber, p.amount, p.paymentDate
from customers c
inner join payments p on c.customerNumber = p.customerNumber 
order by p.paymentDate desc

#6. Agregate
select c.customerName, p.checkNumber, p.amount, p.paymentDate
from customers c
inner join payments p on c.customerNumber = p.customerNumber 
order by p.paymentDate desc

#7. Cursor
declare avgamount cursor for select avg(amount) from payments
open avgamount
fetch avgamount
close avgamount

# == End SQL QUERY #1 ==

# == SQL QUERY #2 ==

#2. DDL(Syntax for altering and creating structures)
ALTER TABLE customers add (description text);
select * from customers

#3. DML
UPDATE customers c 
SET c.customerName = "Atelier graphique 2" 
where c.customerName = "Atelier graphique"

#4. Where
select firstName, lastName, email, jobTitle 
from employees 
where jobTitle = "Sales Rep"
order by firstName asc

#5. JOIN 
select c.customerName, p.checkNumber, p.amount, p.paymentDate
from customers c
right join payments p on c.customerNumber = p.customerNumber 
order by p.paymentDate desc

#6. Agregate
select avg(p.amount) as rata_rata
from payments p 
order by p.paymentDate desc

# == End SQL QUERY #2 ==

# == Indexing ==



# == End Indexing ==