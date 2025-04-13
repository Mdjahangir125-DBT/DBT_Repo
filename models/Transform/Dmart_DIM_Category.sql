with dmart_dim as (
    select
    distinct Category,
    Sub_Category
    from
    {{ ref('Dmart_Data') }}
    order by Category
)
select 
row_number () over (Order by Category) as category_ID,
Category,
Sub_Category
from
dmart_dim