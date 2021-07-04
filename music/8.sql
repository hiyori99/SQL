-- 他のアーティストをフィーチャーした曲の名前をリストする
SELECT name
FROM songs
WHERE name LIKE "%feat%";