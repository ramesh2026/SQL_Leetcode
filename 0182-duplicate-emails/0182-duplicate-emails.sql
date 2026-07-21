# Write your MySQL query statement below
select email
from person
group by email
Having count(id)>1