-- ex_09_c.sql
-- Exercise 09 - c
-- Non-accepted analyses of 2026-09-30 with observations, highest defects first
SELECT
    T1.analysis_id, T1.delivery_id, T1.analyzed_at, T1.moisture_pct,
    T1.yield_factor, T1.defects_pct, T1.cup_score, T1.is_accepted,
    T1.analyst_name, T1.observations
FROM buy.quality_analyses AS T1
WHERE T1.analyzed_at >= '2026-09-30'
  AND T1.analyzed_at < '2026-10-01'
  AND T1.is_accepted = FALSE
  AND T1.observations IS NOT NULL
ORDER BY T1.defects_pct DESC;
/*

/**
    analysis_id     |     delivery_id     |     analyzed_at     | moisture_pct | yield_factor | defects_pct | cup_score | is_accepted |    analyst_name    |                observations
--------------------+---------------------+---------------------+--------------+--------------+-------------+-----------+-------------+--------------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 | 2026-09-30 15:55:59 |        17.68 |        97.46 |       19.54 |     82.59 | f           | Carolina Rodr├¡guez | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 | 2026-09-30 13:10:38 |        16.13 |       100.22 |       17.29 |           | f           | Germ├ín Pe├▒a        | Muestra tomada por duplicado.
 QA-20260930-000119 | DLV-20260930-000253 | 2026-09-30 17:15:04 |         8.39 |       106.52 |       15.59 |     84.33 | f           | An├¡bal Pab├│n       | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 | 2026-09-30 14:23:08 |        15.20 |        96.57 |       13.21 |           | f           | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 | 2026-09-30 16:49:06 |         9.57 |        99.70 |       12.94 |     85.05 | f           | Reinaldo Berm├║dez  | Caf├® sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 | 2026-09-30 10:11:52 |        12.95 |       103.55 |        9.75 |           | f           | Santiago Rojas     | Caf├® con humedad alta, requiere m├ís secado.
 QA-20260930-000018 | DLV-20260930-000006 | 2026-09-30 09:53:20 |        17.24 |       103.31 |        7.88 |     79.98 | f           | Nicol├ís Serrano    | Caf├® con humedad alta, requiere m├ís secado.
(7 filas)