-- IMDbレーティングが10.0の映画の数を判別するSQL
SELECT COUNT(movie_id) FROM ratings WHERE rating = 10.0;