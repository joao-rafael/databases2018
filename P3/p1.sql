select store.country as country, count(*) as n
from store
right join staff on store.store_id = staff.store_id
group by country
UNION ALL
select country, 0 as n from store where store_id not in (
select store_id from staff)
order by country asc;