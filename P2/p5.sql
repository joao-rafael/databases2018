select title from film
where film_id in(
	select film_id from inventory 
	natural join rental
	where inventory.inventory_id is not null and rental.rent_date is null)
order by title;