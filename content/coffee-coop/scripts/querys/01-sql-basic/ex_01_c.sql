-- ex_01_c.sql
-- Exercise 01 - c
-- Departments: code and name, ordered alphabetically by name
SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
ORDER BY department;

/**
 code |                        department
------+----------------------------------------------------------
 91   | Amazonas
 05   | Antioquia
 81   | Arauca
 88   | Archipi├®lago De San Andr├®s, Providencia Y Santa Catalina
 08   | Atl├íntico
 11   | Bogot├í, D.C.
 13   | Bol├¡var
 15   | Boyac├í
 17   | Caldas
 18   | Caquet├í
(10 filas)