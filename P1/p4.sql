select title 
from film natural join film_actor natural join actor 
where actor.first_name = "HARRISON" order by 1;