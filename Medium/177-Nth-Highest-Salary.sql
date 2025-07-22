--177. Nth Highest Salary

CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
      SELECT max(Case when rank=@N then salary
            ELSE NULL
            end) as SecondHighestSalary FROM
(SELECT salary,dense_rank() over (order by salary desc) as rank from employee) AS RANKED_SAL
    );
END