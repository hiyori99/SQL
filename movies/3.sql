-- リリース日が2018年以降のすべてのムービーのタイトルをアルファベット順にリストするSQLクエリ
SELECT title FROM movies WHERE year >= 2018 ORDER BY title ASC;