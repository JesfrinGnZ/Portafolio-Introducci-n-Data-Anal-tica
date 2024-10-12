--rental
select * from rental;
--store
select * from store;
--customer
select * from customer;
--film
select * from film;
--staff
select * from staff;

--rental_payment
select * from payment p
inner join rental r on 

--rental_store
select st.* from staff s
inner join rental r on s.staff_id = r.staff_id
inner join store st on s.store_id = st.store_id ;  

--rental_total
select r.rental_id, sum(p.amount) from rental r
inner join payment p on r.rental_id = p.rental_id 
group by r.rental_id;

--customer_rental
select r.rental_id, c.* from customer c
inner join rental r on c.customer_id = r.customer_id;

--staff_rental
select * from staff s
inner join rental r on s.staff_id = r.staff_id; 

--film_rental
select r.rental_id, f.*, l.name from rental r 
inner join inventory i on r.inventory_id = i.inventory_id 
inner join film f on i.film_id = f.film_id
inner join language l on f.language_id = l.language_id ; 

--store_address
select s.store_id, a.address, a.address2, c.city, co.country from address a 
inner join city c on a.city_id = c.city_id 
inner join country co on co.country_id = c.country_id
inner join store s on s.address_id = a.address_id ; 



