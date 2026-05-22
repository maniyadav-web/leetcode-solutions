# Write your MySQL query statement below
select S.Score, Count(S2.SCORE) as 'rank' from Scores S,
(select distinct Score from Scores) S2
where S.Score <= S2.Score
group by S.ID
order by S.SCORE desc;