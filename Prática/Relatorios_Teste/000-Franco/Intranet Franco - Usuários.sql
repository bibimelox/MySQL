SELECT DISTINCT
cadID AS "ID",
cadCodigo AS "Código",
cadNome AS "Nome",
cadNick AS "Tratamento",
CASE
WHEN cadSexo = 1 THEN "Masculino"
WHEN cadSexo = 2 THEN "Feminino"
END AS Sexo,
cadCPF AS "CPF",
cadCRC AS "CRC",
cadDepto AS "Departamento",
cadCargo AS "Cargo",
CASE
WHEN cadGestor = 1 THEN "Gestor"
WHEN cadGestor = 0 THEN "Normal"
END AS Tipo,
CASE
WHEN cadAdministrador = 1 THEN "Administrador"
WHEN cadAdministrador = 0 THEN "Usuário"
END AS Perfil,
cadEmail AS "e-mail",
cadLogin AS "Login",
cadRamal AS "Ramal",
cadPhone AS "Celular Comercial",
CASE
WHEN cadStatus = 3 THEN "Desligado"
WHEN cadStatus = 1 THEN "Ativo"
END AS "Status",
cadDTAR AS "Registro",
CASE
WHEN cadUserR = 1 THEN "Jefferson Clark Silvestre de Souza"
WHEN cadUserR = 2 THEN "Eduardo Paz do Prado"
WHEN cadUserR = 126 THEN "Gilson Batista"
WHEN cadUserR = 207 THEN "Danilo dos Santos Barbosa Martins"
END AS "Registrado por"
FROM intranetdb.tabusers;