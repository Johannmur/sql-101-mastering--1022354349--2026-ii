-- ex_05_b.sql
-- Exercise 05 - b
-- Collection points without a phone number, ordered by name
SELECT
    T1.collection_point_id,
    T1.point_name,
    T1.municipality_code,
    T1.address_line,
    T1.phone_number,
    T1.is_active
FROM buy.collection_points AS T1
WHERE T1.phone_number IS NULL
ORDER BY T1.point_name;

/**
 collection_point_id |           point_name           | municipality_code |      address_line      | phone_number | is_active
---------------------+--------------------------------+-------------------+------------------------+--------------+-----------
                  60 | Punto de Compra Aipe 1         | 41016             | Carrera 13 # 17-16     |              | t
                  54 | Punto de Compra Anserma 1      | 17042             | Calle 39 # 7-96        |              | t
                  57 | Punto de Compra ApÝa 2         | 66045             | Calle 9 # 14-56        |              | f
                 162 | Punto de Compra Baraya 1       | 41078             | Calle 1 # 19-77        |              | t
                 163 | Punto de Compra Bochalema 1    | 54099             | Carrera 25 # 47-89     |              | t
                  15 | Punto de Compra Bosconia 1     | 20060             | Carrera 26 # 26-43     |              | t
                  20 | Punto de Compra CajibÝo 1      | 19130             | Carrera 15 # 32-45     |              | t
                 146 | Punto de Compra Cisneros 1     | 05190             | Calle 37 # 10-5        |              | t
                 176 | Punto de Compra Coello 1       | 73200             | Transversal 20 # 49-66 |              | t
                 152 | Punto de Compra El Carmen 2    | 54245             | Calle 3 # 34-88        |              | t
                  98 | Punto de Compra El Tambo 2     | 19256             | Calle 16 # 56-53       |              | t
                  76 | Punto de Compra Flandes 1      | 73275             | Carrera 38 # 40-79     |              | t
                  12 | Punto de Compra Hatonuevo 1    | 44378             | Calle 7 # 16-89        |              | t
                  83 | Punto de Compra Icononzo 1     | 73352             | Calle 19 # 35-13       |              | t
                 129 | Punto de Compra Isnos 1        | 41359             | Calle 12 # 33-28       |              | t
                 104 | Punto de Compra La Argentina 1 | 41378             | Calle 37 # 58-65       |              | t
                  77 | Punto de Compra La Gloria 1    | 20383             | Transversal 38 # 7-85  |              | t
                  61 | Punto de Compra Marsella 1     | 66440             | Transversal 19 # 42-92 |              | t
                 116 | Punto de Compra Pelaya 1       | 20550             | Avenida 19 # 26-92     |              | t
                  58 | Punto de Compra PuracÚ 1       | 19585             | Calle 16 # 50-5        |              | t
                 132 | Punto de Compra San Lorenzo 1  | 52687             | Calle 29 # 54-48       |              | t
                  78 | Punto de Compra Tesalia 1      | 41797             | Transversal 15 # 23-61 |              | t
                 135 | Punto de Compra TimbiquÝ 1     | 19809             | Transversal 34 # 19-91 |              | t
                 167 | Punto de Compra Turbo 2        | 05837             | Calle 36 # 12-19       |              | t
                  90 | Punto de Compra Venecia 1      | 05861             | Avenida 5 # 9-43       |              | t
                 173 | Punto de Compra Villa Rica 1   | 19845             | Diagonal 6 # 8-43      |              | t
(26 filas)