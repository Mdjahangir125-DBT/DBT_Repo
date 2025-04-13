{{
    config(
        materialized='table'
    )
}}
Select
Order_ID,
Customer_Name,
Category,
Sub_Category,
City,
coalesce(try_to_date(Order_Date,'dd/mm/yyyy'),
try_to_date(Order_Date,'mm/dd/yyyy')) as Order_Date,   
Region,
sales,
Discount,
Profit,
State,
Insert_date
from
{{ source('Dmart_source', 'dmart_table') }}
