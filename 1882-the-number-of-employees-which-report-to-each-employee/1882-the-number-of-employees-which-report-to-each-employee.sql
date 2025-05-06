# Write your MySQL query statement below
select e.employee_id,e.name,count(m.employee_id) as reports_count,
ROUND(AVG(m.age*1.0),0) as average_age
from Employees e join Employees m 
on e.employee_id=m.reports_to
group by e.employee_id
order by e.employee_id