/*Selecionar o título dos filmes em que participa o actor 'HARRISON BALE' que já tiveram mais do que 20 alugueres, ordenado alfabeticamente pelo título.*/
select distinct title
from film 
natural join inventory 
natural join rental
where film.film_id in(
    select film.film_id from
    film natural join film_actor
    natural join actor
    where actor.first_name="HARRISON" and actor.last_name="BALE")
and film_id in(
    select film_id from film 
    natural join inventory natural join rental
    group by film_id 
    having count(film_id)>20)
order by title;