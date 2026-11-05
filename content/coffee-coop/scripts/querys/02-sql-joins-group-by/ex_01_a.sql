SELECT
    T1.municipality_code,
    T1.municipality_name AS municipality,
    T2.department_name AS department
FROM
    geo.municipalities AS T1
INNER JOIN geo.departmentS AS T2
    ON T1.department_code = T2.department_code
WHERE
    T1.department_code LIKE '54%';

/**
 municipality_code |   municipality    |     department
-------------------+-------------------+--------------------
 54003             | ┴brego            | Norte De Santander
 54051             | Arboledas         | Norte De Santander
 54099             | Bochalema         | Norte De Santander
 54109             | Bucarasica        | Norte De Santander
 54128             | Cßchira           | Norte De Santander
 54125             | Cßcota            | Norte De Santander
 54172             | Chinßcota         | Norte De Santander
 54174             | Chitagß           | Norte De Santander
 54206             | Convenci¾n        | Norte De Santander
 54001             | C·cuta            | Norte De Santander
(10 filas)