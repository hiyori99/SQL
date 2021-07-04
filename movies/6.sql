-- 2012年にリリースされたすべての映画の平均レーティングを決定するSQLクエリ
SELECT AVG(rating) FROM ratings JOIN movies ON movies.id = ratings.movie_id WHERE year = 2012;