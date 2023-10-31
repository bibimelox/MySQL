SELECT distinct
gest.cadID AS "ID",
us.cadNick AS "Gestor",
gest.cadDepto AS "Depto.",
gest.cadColaboradores AS "Colaboradores",
gest.cadDTAR AS "Registro",
CASE
WHEN gest.cadStatus = "0" THEN "Ativo"
WHEN gest.cadStatus = "1" THEN "Desligado"
END AS "Status",
(LENGTH(gest.cadColaboradores) - LENGTH(REPLACE(gest.cadColaboradores, ',', ''))+1) AS "Total Colaboradores"
FROM tabgrhgestores AS gest
INNER JOIN tabusers AS us 
ON gest.cadGestor = us.cadID
WHERE gest.cadDTAR >= "2023-01-01 00:00:00";

SELECT * FROM tabgrhgestores;