SELECT * FROM intranetdb.tabgrhstaff;

SELECT DISTINCT
cadID AS "ID",
cadNome AS "Nome",
cadDepto AS "Depto",
cadCargo AS "Cargo",
cadAdmissao AS "Admissão",
cadDemissao AS "Demissão",
cadEntrada AS "Data Inicial",
cadSaida AS "Data Final",
cadNascimento AS "Nascimento",
cadNacionalidade AS "Nacionalidade",
concat(cadNaturalidadeEstado, "-", cadNaturalidade) AS "Naturalidade",
CASE
WHEN cadGestor = 1 THEN "Sim"
WHEN cadGestor = 0 THEN "Não"
END AS Gestor,
CASE
WHEN cadEscolaridade = 1 THEN "Fundamental Incompleto"
WHEN cadEscolaridade = 2 THEN "Fundamental Completo"
WHEN cadEscolaridade = 3 THEN "Médio Incompleto"
WHEN cadEscolaridade = 4 THEN "Médio Completo"
WHEN cadEscolaridade = 5 THEN "Técnico"
WHEN cadEscolaridade = 6 THEN "Superior Incompleto"
WHEN cadEscolaridade = 7 THEN "Superior Completo"
WHEN cadEscolaridade = 8 THEN "Pós Graduação"
WHEN cadEscolaridade = 9 THEN "Mestrado"
END AS Escolaridade,
CASE
WHEN cadEstadoCivil = 1 THEN "Solteiro"
WHEN cadEstadoCivil = 2 THEN "Casado"
WHEN cadEstadoCivil = 3 THEN "Separado"
WHEN cadEstadoCivil = 4 THEN "Divorciado"
WHEN cadEstadoCivil = 5 THEN "Viuvo"
WHEN cadEstadoCivil = 6 THEN "União Estável"
END AS "Estado Civil",
CASE
WHEN cadSexo = 1 THEN "M"
WHEN cadSexo = 2 THEN "F"
END AS Sexo,
cadNomePai AS "Pai",
cadNomeMae AS "Mãe",
cadCEP AS "CEP",
cadEstado AS "UF",
cadMunicipio AS "Município",
cadBairro AS "Bairro",
concat(cadLogradouro, " ",cadEndereco) AS Endereço,
cadNumero AS "Nº",
cadComplemento AS Complemento,
cadEmail AS "E-mail",
cadTelResidencial AS "Tel.Resid.",
cadTelCelular AS "Tel.Celular",
cadTelEmergencia AS "Tel.Emergência",
cadTelContato AS "Contato Emergência",
cadCPF AS "CPF",
cadRG AS "RG Nº",
cadRGEmissao AS "RG Emissão",
cadRGEmissor AS "RG Emissor",
cadRGEstado AS "RG UF",
cadTituloEleitor AS "Título Eleitor",
cadCTPS AS "CTPS Nº",
cadCTPSEmissao AS "CTPS Emissão",
cadPIS AS "PIS Nº",
cadPISCadastro AS "PIS Cadastro",
cadCNH AS "CNH",
cadCNHCategoria AS "CNH Cat.",
cadCNHVencimento AS "CNH Vecto",
cadReservista AS "Reservista",
cadReservistaCategoria AS "Reservista Cat.",
cadTrabalho AS "Tipo",
cadHorario AS "Horário de Trabalho",
cadAlmoco AS "Horário de Almoço",
cadCargaHoraria AS "Carga Semanal",
cadCargaMensal AS "Carga Mensal",
CASE
WHEN cadFoto IS NULL THEN "Pendente"
WHEN cadFoto != "" THEN "ok"
END AS Foto,
cadMatricula AS "Matrícula",
CASE
WHEN cadStatus = 0 THEN "Ativo"
WHEN cadStatus = 2 THEN "Desligado"
WHEN cadStatus = 4 THEN "Transferido"
WHEN cadStatus = 6 THEN "Fora do Sistema"
END AS Status,
cadStatusAvaliacao AS "Avaliações"
FROM tabgrhstaff ;