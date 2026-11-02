-- ex_03_c.sql
-- Exercise 03 - c
-- Certifications with premium per kg >= 350 COP
SELECT
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg_cop AS premium_per_kg_cop
FROM farm.certifications AS T1
WHERE T1.premium_per_kg_cop >= 350
ORDER BY premium_per_kg_cop DESC;

/**
 certification
---------------
 Fairtrade
 Orgßnico
 Nespresso AAA
 Bird Friendly
(4 filas)