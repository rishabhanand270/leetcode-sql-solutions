--176. Second Highest Salary

SELECT max(Case when rank=2 then salary
            ELSE NULL
            end) as SecondHighestSalary FROM
(SELECT salary,dense_rank() over (order by salary desc) as rank from employee) AS RANKED_SAL
;