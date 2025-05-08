# Write your MySQL query statement below
select s.person_name from  (select person_name,Sum(weight) over (order by turn) as total
from Queue ) as s
where s.total<=1000
order by s.total desc limit 1;

