/*Selecionar o primeiro e último nome dos atores que já contracenaram com a actriz 'JULIA ZELLWEGER', ordenado alfabeticamente pelo primeiro e último nome.*/
select distinct first_name, last_name
from actor
natural join film_actor
natural join film
where film.film_id in(
    select distinct film_id from film_actor
    natural join actor
    where actor.first_name = "JULIA" and actor.last_name = "ZELLWEGER")
and actor.actor_id not in(
    select actor_id from
    actor natural join film_actor
    where actor.first_name = "JULIA" and actor.last_name = "ZELLWEGER")
    /*evita que ele considere julia como coadjuvante*/
order by first_name, last_name;