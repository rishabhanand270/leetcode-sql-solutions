--184. Department Highest Salary

WITH CTE AS (SELECT departmentId,salary,rank() over (partition by departmentId order by salary desc) as rn
from Employee), ABC AS(
SELECT Distinct departmentId,salary from CTE
where rn=1)
SELECT B.name as Department,A.name as Employee,c.salary as Salary
from Employee A
join Department B
on A.departmentId = B.id
join ABC C
on C.departmentId = B.id and C.Salary = A.salary
;