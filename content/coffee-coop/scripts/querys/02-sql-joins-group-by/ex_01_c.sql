SELECT
    T1.delivery_id AS delivery,
    T2.farm_name  AS farm,
    T3.point_name AS collection_point,
    T1.gross_weight_kg
FROM
    buy.deliveries AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.collection_points AS T3
    ON T1.collection_point_id = T3.collection_point_id
WHERE 
    T1.delivery_id LIKE 'DLV-20260903%'
ORDER BY T3.point_name, T1.gross_weight_kg DESC 
LIMIT 10;

/**
      delivery       |       farm       |     collection_point     | gross_weight_kg
---------------------+------------------+--------------------------+-----------------
 DLV-20260903-000287 | Bella Vista Alta | Punto de Compra Aipe 2   |          288.04
 DLV-20260903-000119 | Villa Hermosa    | Punto de Compra Aipe 2   |          183.30
 DLV-20260903-000075 | El Arrayßn       | Punto de Compra Aipe 2   |          146.55
 DLV-20260903-000193 | La Pradera       | Punto de Compra Alcalß 1 |          122.28
 DLV-20260903-000280 | San Rafael       | Punto de Compra Alcalß 1 |           90.12
 DLV-20260903-000083 | El Danubio       | Punto de Compra Alcalß 1 |           82.47
 DLV-20260903-000189 | La Esperanza     | Punto de Compra Alcalß 1 |           42.77
 DLV-20260903-000215 | El Higuer¾n      | Punto de Compra Aldana 1 |          146.30
 DLV-20260903-000153 | El Higuer¾n      | Punto de Compra Aldana 1 |           87.55
 DLV-20260903-000032 | El Bosque        | Punto de Compra Aldana 1 |           42.98
(10 filas)