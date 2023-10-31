SELECT 
	intranetdb.tabgrhvagas.cadID,
	intranetdb.tabgrhvagas.cadDepto,
    intranetdb.tabgrhvagas.cadCargo,
    intranetdb.tabgrhvagas.cadSalario,
    intranetdb.tabgrhvagas.cadDTAR,
    intranetdb.tabgrhvagas.cadDirDTAR,
    intranetdb.tabgrhvagas.cadStatus
FROM intranetdb.tabgrhvagas
WHERE intranetdb.tabgrhvagas.cadDirDTAR > "2022-01-01 00:00:00";