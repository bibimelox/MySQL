SELECT 
		cadID,
        cadColaborador,
        cadDepto,
        cadStatus,
        cadTipo,
        cadInicio,
        cadTermino,
        cadTempo,
        cadDTAR,
        cadGestor,
        cadBaixa
FROM intranetdb.tabgrhbancohoras Where cadInicio >= "2023-01-01";