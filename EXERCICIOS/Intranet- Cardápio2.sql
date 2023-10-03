use intranetdb;

SELECT * FROM tabcardapio;
SELECT * FROM tabcardapioopcao;
SELECT * FROM tabcardapiorating;

SELECT DISTINCT
card.cadID AS "ID Cardapio",
card.cadData,
REPLACE(card.cadPrincipal, ",","-") AS "Prato Principal"
FROM tabcardapio AS card
WHERE card.cadData >= "2023-01-01"
;


SELECT DISTINCT
card.cadID AS "ID Cardapio",
opt.cadUser AS "User Solicitante",
REPLACE(opt.cadOpcao, ",", "-") AS "Solicitação",
opt.cadStatus AS "Status"
FROM tabcardapioopcao AS opt
LEFT JOIN tabcardapio as card
ON opt.cadData = card.cadData
WHERE opt.cadData >= "2023-01-01"
;


SELECT DISTINCT
card.cadID AS "ID Cardapio",
av.cadData,
av.cadUserR AS "User Avaliou",
av.cadTipo,
CASE
WHEN av.cadTipo = 1 THEN "Avaliação do menu"
WHEN av.cadTipo = 0 THEN "Avaliação do preparo"
END AS cadTipo,
av.cadRate AS "Nota",
REPLACE(REPLACE(REPLACE(av.cadComentario, ",", "-"), ";", "-"), "\r\n", " ") AS Comentários
FROM tabcardapiorating AS av
LEFT JOIN tabcardapio as card
ON av.cadData = card.cadData
WHERE av.cadData >= "2023-01-01"
;