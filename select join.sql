select * 
from orders
full outer join customers on orders.customer_id = customers.id 
where "name" ilike 'alexey';