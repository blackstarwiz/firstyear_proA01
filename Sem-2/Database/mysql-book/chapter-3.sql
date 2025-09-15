use sakila;

-- Retrieve the actor ID, first name, and last name for all actors. Sort by last name and
 -- then by first name.
 
 select actor_id, first_name, last_name
 from actor
 order by last_name, first_name;
 
 -- Retrieve the actor ID, first name, and last name for all actors whose last name equals
 -- 'WILLIAMS' or 'DAVIS'.
 
 select actor_id, first_name, last_name
 from actor
 where last_name = 'WILLIAMS' OR last_name = 'DAVIS';
 
 
-- Write a query against the rental table that returns the IDs of the customers who ren
-- ted a film on July 5, 2005 (use the rental.rental_date column, and you can use the
-- date() function to ignore the time component). Include a single row for each distinct
-- customer ID.
 
 select rental_id
 from rental
 where date(rental_date) = '2005-07-05';
 
 -- Fill in the blanks (denoted by <#>) for this multitable query to achieve the following
 select c.email, r.return_date
 from customer c
	inner join rental r
    on c.customer_id = r.customer_id
where date(r.rental_date) = '2005-06-14'
order by r.return_date asc;
 
 
 
 