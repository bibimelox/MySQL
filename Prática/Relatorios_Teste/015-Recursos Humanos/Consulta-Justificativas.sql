SELECT * FROM intranetdb.tabgrhjustificativas;

SELECT cadID,
		cadDepto,
        cadTipo,
        cadDTAI,
        cadDTAF,
        cadSubtipo,
        cadMotivo,
        cadStatus,
        cadUserR,
        cadDTAR,
        cadAvaliacao,
        cadUserGestor,
        cadDTAGestor,
        cadUserRH,
        cadDTARH,
        cadFolder
        FROM intranetdb.tabgrhjustificativas Where cadDTAI >= "2023-01-01";