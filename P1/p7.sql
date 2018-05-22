/*seleciona o first_name, last_name dos filmes da tabela actor e compara com film.film_id*/
select distinct first_name, last_name from actor
natural join film_actor
natural join film
where film.film_id in
/*como existem duas atrizes diferentes com o nome de Susan Davis, elas participam de filmes distintos*/
    (select distinct film_id 
    from film natural join category 
    where category.name = "Drama") 
order by first_name, last_name;