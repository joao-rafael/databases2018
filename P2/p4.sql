select title from film
where film_id not in
(select film_id from film_actor)/*em que o film_id não se encontra em film_actor*/
order by title;
