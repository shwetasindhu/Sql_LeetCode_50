# Write your MySQL query statement below
select Department,Employee,salary 
from (select d.Name as Department,E.name Employee,E.salary,
Dense_rank() OVER (
PARTITION BY E.departmentId
ORDER BY E.salary desc
) as rankID
from Employee E join Department d on e.departmentId=d.id) a
where rankId<4