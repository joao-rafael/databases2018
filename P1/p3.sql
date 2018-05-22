select title from film
where film_id in
(select film_id from inventory natural join rental
where rental.customer_id = 258) order by title