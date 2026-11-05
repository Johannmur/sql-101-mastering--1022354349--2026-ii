SELECT
    T1.farm_name AS farm,
    T1.rural_district,
    T2.municipality_name AS municipality, 
    T3.first_name,
    T3.last_name
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN farm.farmers AS T3
    ON  T1.farmer_id = T3.farmer_id
WHERE
    T1.municipality_code = '54518'
ORDER BY
    T3.last_name
LIMIT 10; 

/**
    farm     | rural_district | municipality |   first_name   |     last_name
-------------+----------------+--------------+----------------+--------------------
 El JardÝn   | El Escorial    | Pamplona     | Manuel         | Agudelo JimÚnez
 La Selva    | Pe±as          | Pamplona     | Manuel         | Agudelo JimÚnez
 El Diamante | El Alizal      | Pamplona     | Marleny        | Agudelo Sandoval
 El Encanto  | Fontib¾n       | Pamplona     | RocÝo          | ┴lvarez Cßrdenas
 Bellavista  | Alto Grande    | Pamplona     | RocÝo          | ┴lvarez Cßrdenas
 La Caba±a   | Lengua         | Pamplona     | M¾nica         | ┴lvarez Carrillo
 Monteverde  | Lengua         | Pamplona     | M¾nica         | ┴lvarez Carrillo
 El Arrayßn  | Navarro        | Pamplona     | Marleny        | ┴lvarez Correa
 El Mango    | La Legua       | Pamplona     | Alberto        | ┴lvarez Villamizar
 Monteverde  | La Legua       | Pamplona     | Myriam Yuliana | Arango Narvßez
(10 filas)
