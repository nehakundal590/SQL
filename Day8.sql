select* from payment;
select customer_list from payment group by customer_id;
select staff_id from payment group by staff_id;
-- group by  is used to apply on similar values are group of values
select customer_id from payment group by payment_id;

select sum(amount) from payment where customer_id=1;
select sum(amount) from payment where customer_id=3;

select customer_id , sum(amount) ,count(customer_id) from payment group by customer_id;
-- group by is a statements
select sum(amount) from payment where staff_id=1;
select sum(amount) from payment where staff_id=2;

select staff_id,sum(amount) from payment group by staff_id;
select count(*) ,sum(amount)from payment where payment_id=3;
select payment_id ,count(*),sum(amount) payment group by payment_id;

-- total amount
-- max amount
-- total number of customer served by staff
select staff_id,sum(amount),max(amount),count(customer_id) from payment  where payment_id>9 group by staff_id;

select month(payment_date),sum(amount),avg(amount),count(customer_id) from payment
group by month(payment_date);

-- select *, month(payment_date) from payment where month(payment_date) in(5,6,7);

select month(payment_date),sum(amount),avg(amount),max(amount) from payment
where amount(payment_date)in(5,6,7) and day(payment_date) between 7 and 14
group by month(payment_date);
