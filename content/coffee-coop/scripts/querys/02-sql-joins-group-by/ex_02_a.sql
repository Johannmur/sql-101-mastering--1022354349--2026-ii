SELECT
    T1.document_number AS document,
    T1.first_name, 
    T1.last_name,
    T2.farm_name AS farm
FROM 
    farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    on T1.farmer_id = T2.farmer_id
WHERE
    T1.municipality_code = '54518'
LIMIT 10;
LIMIT 10;

/**
  document  |    first_name    |     last_name      |     farm
------------+------------------+--------------------+---------------
 45737769   | Laura            | Perdomo GarcÝa     | La Selva
 685781360  | Mercedes Yuliana | Quintero Rojas     | El Diamante
 753408985  | Reinaldo         | Vera Vera          | El Recuerdo
 730715447  | Sandra           | Hernßndez Gonzßlez | La Esperanza
 352700877  | Rosa             | Acevedo Moreno     | El Nogal
 238646899  | Luisa SofÝa      | JimÚnez RamÝrez    | La Divisa
 609636222  | EfraÝn           | Silva MejÝa        | Las Delicias
 115211910  | Emilio           | Erazo L¾pez        | Villa Rosa
 882117500  | AnÝbal Brayan    | PolanÝa Guerrero   | La Granja
 1021657296 | Carmen           | L¾pez Cardona      | Los Arrayanes
(10 filas)