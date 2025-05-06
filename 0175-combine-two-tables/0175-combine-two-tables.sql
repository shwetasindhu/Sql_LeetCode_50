# Write your MySQL query statement below
select firstName,lastName,City,State
from Person p left join Address a on p.personId=a.personId
