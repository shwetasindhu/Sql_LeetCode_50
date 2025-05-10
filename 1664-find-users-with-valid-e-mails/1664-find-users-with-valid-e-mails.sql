# Write your MySQL query statement below
select * from Users where mail REGEXP '^[a-zA-Z]+[a-zA-Z-._0-9]*@leetcode[.]com$'