# Write your MySQL query statement below
select distinct num as ConsecutiveNums from 
(select id,num,Lead(num)over(order by id) as nxt,Lag(num) over(order by id) as prev
From Logs) as L
where L.num=L.nxt and L.num=L.prev
