SELECT
    T1.department_name AS department,
    COUNT(T2.municipality_code) AS municipalities_count
FROM geo.departments AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.department_code = T2.department_code
GROUP BY T1.department_code, T1.department_name
ORDER BY COUNT(T2.municipality_code) DESC;

/**
                        department                        | municipalities_count
----------------------------------------------------------+----------------------
 Antioquia                                                |                  125
 Boyacß                                                   |                  123
 Cundinamarca                                             |                  116
 Santander                                                |                   87
 Nari±o                                                   |                   64
 Tolima                                                   |                   47
 BolÝvar                                                  |                   46
 Valle Del Cauca                                          |                   42
 Cauca                                                    |                   42
 Norte De Santander                                       |                   40
 Huila                                                    |                   37
 C¾rdoba                                                  |                   30
 Choc¾                                                    |                   30
 Magdalena                                                |                   30
 Meta                                                     |                   29
 Caldas                                                   |                   27
 Sucre                                                    |                   26
 Cesar                                                    |                   25
 Atlßntico                                                |                   23
 Casanare                                                 |                   19
 Caquetß                                                  |                   16
 La Guajira                                               |                   15
 Risaralda                                                |                   14
 Putumayo                                                 |                   13
 Quindio                                                  |                   12
 Arauca                                                   |                    7
 Guaviare                                                 |                    4
 Vichada                                                  |                    4
 VaupÚs                                                   |                    3
 ArchipiÚlago De San AndrÚs, Providencia Y Santa Catalina |                    2
 Amazonas                                                 |                    2
 GuainÝa                                                  |                    1
 Bogotß, D.C.                                             |                    1
(33 filas)