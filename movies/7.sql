-- 2010年にリリースされたすべての映画とそのレーティングをレーティングの降順でリストする
-- 同じ評価の映画の場合は、タイトルのアルファベット順

SELECT title, rating
FROM movies JOIN ratings ON movies.id = ratings.movie_id
WHERE year = 2010
ORDER BY rating DESC, title ASC;