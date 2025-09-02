
-- Window functions
-- Rank and Dense Rank
-- Rank - it skips the ranks
-- dense rank - it wont skip the ranks

select *, dense_rank() over(order by score desc) from tbl_score;

select *,rank() over(order by score desc) from tbl_score;

-- rownumber

select *,row_number() over(order by score desc) from tbl_score; 