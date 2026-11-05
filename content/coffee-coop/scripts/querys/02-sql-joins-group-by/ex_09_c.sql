SELECT
    T1.farm_name AS farm,
    COUNT(T3.analysis_id) AS analyses_count,
    ROUND(AVG(T3.cup_score), 2) AS avg_cup_score
FROM farm.farms AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.quality_analyses AS T3
    ON T2.delivery_id = T3.delivery_id
GROUP BY T1.farm_id, T1.farm_name
HAVING COUNT(T3.analysis_id) >= 3
   AND AVG(T3.cup_score) >= 84
ORDER BY AVG(T3.cup_score) DESC
LIMIT 10;

/**
     farm      | analyses_count | avg_cup_score
---------------+----------------+---------------
 El Porvenir   |              4 |         90.00
 El Triunfo    |              4 |         90.00
 El Recreo     |              3 |         90.00
 Las OrquÝdeas |              5 |         90.00
 La Loma       |              3 |         90.00
 La Argentina  |              4 |         90.00
 La Palma      |              5 |         90.00
 La Selva      |              4 |         90.00
 San Antonio   |              3 |         90.00
 La Victoria   |              6 |         90.00
(10 filas)