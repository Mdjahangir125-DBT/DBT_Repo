with dmart_dim as (
    select
    distinct Region,
    city
    from
    {{ ref('Dmart_Data') }}
    order by Region
)
select 
row_number () over (Order by Region) as Region_ID,
Region,
City
from
dmart_dim