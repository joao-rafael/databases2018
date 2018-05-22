select distinct title from film natural join inventory
where inventory.store_id = 1 and film.film_id not in
(select film_id from film natural join inventory where store_id <> 1) 
order by title;