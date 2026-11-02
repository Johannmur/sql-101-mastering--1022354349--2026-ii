-- ex_04_c.sql
-- Exercise 04 - c
-- Municipalities nationwide whose name contains Pamplona (case-insensitive)
SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality
FROM geo.municipalities AS T1
WHERE T1.municipality_name ILIKE '%pamplona%'
ORDER BY municipality;

/**
 municipality_code | municipality
-------------------+------------
 54518             | Pamplona
(1 fila)