select 
    order_id,
    customer_id,
    REGEXP_REPLACE(lower(item_name), r'[^a-zA-Z]' ,'') as item_name,
    REGEXP_REPLACE(item_price, r'[^0-9]' ,'') as item_price,
    date

from gad_project.raw_food_orders