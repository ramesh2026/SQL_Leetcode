
WITH CTC as (
select 
d.name as Department,
e.name as Employee,
e.salary as Salary,
RANK() OVER (PARTITION By E.departmentId ORDER BY e.Salary DESC ) as rnk
from Employee e
join Department d
on e.departmentId=d.id
)
SELECT Department,Employee,Salary
from ctc
where rnk=1