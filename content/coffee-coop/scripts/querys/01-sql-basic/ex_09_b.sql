-- ex_09_b.sql
-- Exercise 09 - b
-- Analyses of 2026-09-30 with moisture outside 10%-12% (NOT BETWEEN), with analyst and observations
SELECT
    T1.analysis_id, T1.delivery_id, T1.analyzed_at, T1.moisture_pct,
    T1.yield_factor, T1.defects_pct, T1.cup_score, T1.is_accepted,
    T1.analyst_name, T1.observations
FROM buy.quality_analyses AS T1
WHERE T1.analyzed_at >= '2026-09-30'
  AND T1.analyzed_at < '2026-10-01'
  AND T1.moisture_pct NOT BETWEEN 10 AND 12;
/**
    analysis_id     |     delivery_id     |     analyzed_at     | moisture_pct | yield_factor | defects_pct | cup_score | is_accepted |    analyst_name    |                          observations          
--------------------+---------------------+---------------------+--------------+--------------+-------------+-----------+-------------+--------------------+-----------------------------------------------------------------
 QA-20260930-000026 | DLV-20260930-000005 | 2026-09-30 10:26:26 |        12.19 |        95.42 |        4.33 |     78.56 | t           | Wilson Galvis      |
 QA-20260930-000102 | DLV-20260930-000155 | 2026-09-30 15:48:14 |        12.31 |        94.01 |        5.26 |     87.28 | t           | Adriana Losada     |
 QA-20260930-000085 | DLV-20260930-000161 | 2026-09-30 14:16:58 |        12.03 |        92.12 |        2.72 |           | t           | Carlos Ospina      | Muestra limpia, color homog├®neo.
 QA-20260930-000068 | DLV-20260930-000165 | 2026-09-30 13:10:38 |        16.13 |       100.22 |       17.29 |           | f           | Germ├ín Pe├▒a        | Muestra tomada por duplicado.
 QA-20260930-000093 | DLV-20260930-000178 | 2026-09-30 14:58:42 |        12.11 |        92.83 |        4.26 |           | t           | Nicol├ís Serrano    | Humedad en el l├¡mite superior, se recomienda mejorar el secado.
 QA-20260930-000121 | DLV-20260930-000200 | 2026-09-30 17:19:55 |        12.38 |        90.67 |        2.05 |     81.34 | t           | Guillermo Acevedo  |
 QA-20260930-000104 | DLV-20260930-000214 | 2026-09-30 15:55:59 |        17.68 |        97.46 |       19.54 |     82.59 | f           | Carolina Rodr├¡guez | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 | 2026-09-30 16:49:06 |         9.57 |        99.70 |       12.94 |     85.05 | f           | Reinaldo Berm├║dez  | Caf├® sobresecado, grano quebradizo.
 QA-20260930-000094 | DLV-20260930-000227 | 2026-09-30 15:08:23 |        12.43 |        96.11 |        5.00 |           | t           | Ruth Polan├¡a       |
 QA-20260930-000134 | DLV-20260930-000236 | 2026-09-30 18:06:27 |        12.48 |        89.55 |        1.24 |           | t           | Gloria Restrepo    |
 QA-20260930-000119 | DLV-20260930-000253 | 2026-09-30 17:15:04 |         8.39 |       106.52 |       15.59 |     84.33 | f           | An├¡bal Pab├│n       | Exceso de impurezas y pasilla.
 QA-20260930-000105 | DLV-20260930-000260 | 2026-09-30 16:02:40 |        12.01 |        92.44 |        5.17 |           | t           | Daniel Betancur    |
 QA-20260930-000109 | DLV-20260930-000272 | 2026-09-30 16:26:57 |        12.18 |        95.93 |        5.54 |           | t           | Jaime Ortega       |
 QA-20260930-000145 | DLV-20260930-000277 | 2026-09-30 19:25:07 |        12.27 |        93.96 |        5.92 |     83.32 | t           | Reinaldo Berm├║dez  | Muestra tomada por duplicado.
 QA-20260930-000149 | DLV-20260930-000286 | 2026-09-30 20:39:52 |        12.28 |        94.58 |        2.48 |           | t           | Germ├ín Pe├▒a        |
 QA-20260930-000018 | DLV-20260930-000006 | 2026-09-30 09:53:20 |        17.24 |       103.31 |        7.88 |     79.98 | f           | Nicol├ís Serrano    | Caf├® con humedad alta, requiere m├ís secado.
 QA-20260930-000017 | DLV-20260930-000012 | 2026-09-30 09:46:31 |        12.15 |        93.62 |        2.04 |           | t           | Natalia Trujillo   |
 QA-20260930-000033 | DLV-20260930-000027 | 2026-09-30 10:48:11 |        12.41 |        92.76 |        3.29 |           | t           | Sara S├ínchez       |
 QA-20260930-000013 | DLV-20260930-000038 | 2026-09-30 09:26:29 |        12.28 |        91.77 |        4.74 |     83.22 | t           | Adriana Losada     |
 QA-20260930-000005 | DLV-20260930-000040 | 2026-09-30 07:57:01 |        12.22 |        95.01 |        1.37 |     80.54 | t           | Iv├ín Castro        |
 QA-20260930-000027 | DLV-20260930-000043 | 2026-09-30 10:30:06 |        12.07 |        92.47 |        0.98 |           | t           | Germ├ín Gonz├ílez    | Caficultor solicita contramuestra.
 QA-20260930-000023 | DLV-20260930-000046 | 2026-09-30 10:19:14 |        12.23 |        89.75 |        4.73 |           | t           | Alejandra Torres   | Caf├® de buena presentaci├│n, sin olores extra├▒os.
 QA-20260930-000012 | DLV-20260930-000057 | 2026-09-30 09:26:23 |        12.16 |        92.79 |        2.47 |           | t           | Guillermo Acevedo  |
 QA-20260930-000022 | DLV-20260930-000070 | 2026-09-30 10:11:52 |        12.95 |       103.55 |        9.75 |           | f           | Santiago Rojas     | Caf├® con humedad alta, requiere m├ís secado.
 QA-20260930-000025 | DLV-20260930-000083 | 2026-09-30 10:22:08 |        16.00 |       102.88 |       13.82 |           | f           | Germ├ín Pe├▒a        |
 QA-20260930-000078 | DLV-20260930-000093 | 2026-09-30 13:54:59 |        12.01 |        91.64 |        0.81 |           | t           | Heriberto Galvis   |
 QA-20260930-000045 | DLV-20260930-000104 | 2026-09-30 11:46:54 |        12.11 |        92.52 |        0.78 |           | t           | Ruth Polan├¡a       |
 QA-20260930-000069 | DLV-20260930-000109 | 2026-09-30 13:13:00 |        15.30 |        99.98 |       12.48 |     83.85 | f           | Efra├¡n Betancur    |
 QA-20260930-000082 | DLV-20260930-000111 | 2026-09-30 14:07:44 |        12.38 |        94.29 |        1.45 |     87.18 | t           | Sara S├ínchez       |
 QA-20260930-000092 | DLV-20260930-000113 | 2026-09-30 14:50:25 |        12.39 |        90.14 |        0.37 |     83.16 | t           | Wilson Galvis      |
 QA-20260930-000035 | DLV-20260930-000115 | 2026-09-30 11:04:55 |        12.31 |        90.58 |        2.00 |           | t           | Santiago Rojas     | Muestra tomada por duplicado.
 QA-20260930-000076 | DLV-20260930-000116 | 2026-09-30 13:52:38 |        12.08 |        91.70 |        5.61 |           | t           | Germ├ín Gonz├ílez    |
 QA-20260930-000095 | DLV-20260930-000118 | 2026-09-30 15:09:28 |        12.32 |        92.00 |        0.08 |     80.52 | t           | Laura Henao        |
 QA-20260930-000056 | DLV-20260930-000120 | 2026-09-30 12:30:16 |        12.40 |        93.55 |        5.27 |           | t           | Alejandra Torres   |
 QA-20260930-000099 | DLV-20260930-000131 | 2026-09-30 15:31:32 |        12.15 |        92.38 |        2.35 |           | t           | Gustavo Serrano    |
 QA-20260930-000077 | DLV-20260930-000144 | 2026-09-30 13:54:23 |        12.25 |        92.93 |        2.38 |           | t           | Emilio Polan├¡a     |
 QA-20260930-000086 | DLV-20260930-000147 | 2026-09-30 14:23:08 |        15.20 |        96.57 |       13.21 |           | f           | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000052 | DLV-20260930-000149 | 2026-09-30 12:23:33 |        12.31 |        91.85 |        5.63 |           | t           | Efra├¡n Betancur    | Grano uniforme, buen secado.
 QA-20260930-000144 | DLV-20260930-000289 | 2026-09-30 19:24:38 |        12.28 |        87.62 |        3.49 |           | t           | Anc├¡zar Delgado    |
 QA-20260930-000137 | DLV-20260930-000295 | 2026-09-30 18:35:55 |        12.35 |        91.07 |        5.60 |     87.14 | t           | Sara S├ínchez       |
(40 filas)