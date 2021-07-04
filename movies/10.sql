-- 9.0以上のレーティングを受けた映画を監督したすべての人の名前をリストする
SELECT name
FROM people JOIN directors ON people.id = directors.person_id JOIN ratings ON ratings.movie_id = directors.movie_id
WHERE rating >= 9.0;