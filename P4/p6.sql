select count(*)
from
(select distinct actor_id from film_actor
natural join film natural join category
where category.name = "Action")
as actors;