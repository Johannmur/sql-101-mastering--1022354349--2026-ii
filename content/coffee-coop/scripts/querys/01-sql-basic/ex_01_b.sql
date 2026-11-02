-- ex_01_b.sql
-- Exercise 01 - b
-- Departments: code and name with column aliases
SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1;
/** 
 code |  department
------+--------------
 05   | Antioquia
 08   | Atl├íntico
 11   | Bogot├í, D.C.
 13   | Bol├¡var
 15   | Boyac├í
 17   | Caldas
 18   | Caquet├í
 19   | Cauca
 20   | Cesar
 23   | C├│rdoba
(10 filas)