select first_name, last_name from customer
union all
select first_name, last_name from staff
order by first_name, last_name;