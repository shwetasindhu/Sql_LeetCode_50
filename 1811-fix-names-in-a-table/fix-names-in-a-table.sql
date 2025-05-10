# Write your MySQL query statement below
select  user_id,CONCAT(UPPER(LEFT(name, 1)) , Lower(Right(name,Length(name)-1))) name
from Users
order by user_id