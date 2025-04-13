Select
Order_ID,
Customer_Name,
Category,
Sub_Category,
City,
coalesce(try_to_date(Order_Date,'dd/mm/yyyy'),
try_to_date(Order_Date,'mm/dd/yyyy')) as Order_Date,   
Region,
Discount,
Profit,
State,
Insert_date
from
DBT_RAW_JAHA.RAW.DMART_TABLE