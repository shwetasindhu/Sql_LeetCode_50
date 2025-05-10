# Write your MySQL query statement below
select product_name,sum(unit)  unit
from Products p join Orders o on p.product_id=o.product_id 
WHERE DATE_FORMAT(O.order_date,'%Y-%m') ='2020-02'
GROUP BY O.product_id
HAVING unit >=100;