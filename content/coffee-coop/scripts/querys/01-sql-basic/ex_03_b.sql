-- ex_03_b.sql
-- Exercise 03 - b
-- Literal a) plus a calculated column: premium per load (premium per kg * 125)
SELECT
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg_cop AS premium_per_kg_cop,
    T1.premium_per_kg_cop * 125 AS premium_per_load_cop
FROM farm.certifications AS T1
ORDER BY premium_per_kg_cop DESC;

/**
  certification    |              issuer               | premium_per_load_cop
---------------------+-----------------------------------+----------------------
 Rainforest Alliance | Rainforest Alliance               |             37500.00
 Fairtrade           | Fairtrade International           |             50000.00
 4C                  | 4C Services                       |             18750.00
 Orgßnico            | Ente certificador orgßnico        |            100000.00
 C.A.F.E. Practices  | Starbucks / SCS Global Services   |             31250.00
 Nespresso AAA       | Nespresso / Rainforest Alliance   |             43750.00
 Bird Friendly       | Smithsonian Migratory Bird Center |             62500.00
 (7 filas)