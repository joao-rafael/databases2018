select first_name, last_name from customer where  customer.customer_id 
in(select distinct customer_id from rental where rental.return_date is NULL) 
order by first_name, last_name;