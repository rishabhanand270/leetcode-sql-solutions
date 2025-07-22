-- 178. Rank Scores

SELECT * FROM
(SELECT score,dense_rank() over (order by score desc) as rank from scores)rn
;