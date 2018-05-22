select first_name, last_name from actor
natural join film_actor
natural join film
where film.title = "WYOMING STORM"
order by first_name, last_name;