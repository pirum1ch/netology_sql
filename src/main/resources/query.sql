select product_name
from orders
         join customers on orders.customer_id = customers.id
where name ilike :name;