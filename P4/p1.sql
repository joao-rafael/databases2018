select title from film natural join
category where category.name = "Sports"
order by title;