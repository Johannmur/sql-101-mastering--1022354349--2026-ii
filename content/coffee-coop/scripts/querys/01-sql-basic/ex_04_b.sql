-- ex_04_b.sql
-- Exercise 04 - b
-- Norte de Santander municipalities whose name starts with the word San
SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.municipality_code LIKE '54%'
  AND T1.municipality_name LIKE 'San %'
ORDER BY municipality;
/**
 municipality_code | municipality
-------------------+--------------
 54670             | San Calixto
 54673             | San Cayetano
 54680             | Santiago
(3 filas)
 