use intranetdb;

SELECT DISTINCT
card.cadData,
card.cadPrincipal AS "PRATO PRINCIPAL",
REPLACE(card.cadOpcao, ",","-") AS "OPCAO DO DIA",
opt.cadUser AS "Usuario Solicitou",
av.cadUserR AS "Usuario votou",
REPLACE(opt.cadOpcao, ",","-") AS "Opção solicitada",
opt.cadStatus,
opt.cadData,
av.cadRate,
av.cadTipo,
CASE
WHEN av.cadTipo = 1 THEN "Avaliação do menu"
WHEN av.cadTipo = 0 THEN "Avaliação do preparo"
END AS cadTipo,
REPLACE(REPLACE(REPLACE(av.cadComentario, ",", "-"), ";", "-"), "\r\n", " ") AS cadComentario,
av.cadData
FROM tabcardapio AS card
LEFT JOIN tabcardapioopcao AS opt
ON card.cadData= opt.cadData 
LEFT JOIN tabcardapiorating AS av
ON av.cadUserR = opt.cadUser
AND av.cadData = card.cadData 
WHERE card.cadData >= "2023-01-01"
;


SELECT DISTINCT
card.cadID,
card.cadData,
card.cadPrincipal AS "PRATO PRINCIPAL",
REPLACE(card.cadOpcao, ",","-") AS "OPCAO DO DIA",
opt.cadUser,
opt.cadOpcao,
opt.cadStatus,
opt.cadData
FROM tabcardapio AS card
INNER JOIN tabcardapioopcao as opt
ON card.cadData = opt.cadData
WHERE card.cadData >= "2023-01-01"
;

SELECT * FROM tabcardapioopcao where cadData > "2023-01-01";

SELECT * FROM tabcardapio;
SELECT * FROM tabcardapioopcao;
SELECT * FROM tabcardapiorating;