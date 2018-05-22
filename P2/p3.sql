/*Selecionar o título dos filmes que nunca foram alugados pelo cliente 'LEE HAWKS' mas que já foram alugados por outros clientes, ordenado alfabeticamente pelo título.*/
select distinct title from film 
where film_id not in(
    select distinct film_id from inventory 
    inner join rental on inventory.inventory_id = rental.inventory_id
    inner join customer on customer.customer_id = rental.customer_id
    where customer.first_name ="LEE" and customer.last_name ="HAWKS")
and film_id in(
    select distinct film_id from inventory
    natural join rental
    where rental.rent_date is not null)
order by title;