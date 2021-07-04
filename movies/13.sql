-- Kevin Baconが主演した映画に出演したすべての人の名前をリストする
SELECT DISTINCT name
FROM stars JOIN people ON stars.person_id = people.id
WHERE movie_id IN
(SELECT movie_id
FROM people JOIN stars ON stars.person_id = people.id
WHERE name = "Kevin Bacon")
AND name != "Kevin Bacon";
