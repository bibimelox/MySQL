SELECT 
	intranetdb.tabgrhtimesheet.cadID,
    intranetdb.tabgrhtimesheet.cadAtividade,
    intranetdb.tabgrhtimesheet.cadEmpresa,
    intranetdb.tabgrhtimesheetatividades.cadPeso,
	intranetdb.tabgrhtimesheet.cadCompetencia,
    intranetdb.tabgrhtimesheet.cadProjeto,
    intranetdb.tabgrhtimesheet.cadInicio,
    intranetdb.tabgrhtimesheet.cadTermino,
    intranetdb.tabgrhtimesheet.cadTempo,
    intranetdb.tabgrhtimesheet.cadDepto,
    intranetdb.tabgrhtimesheet.cadStatus,
    intranetdb.tabgrhtimesheet.cadUserR
 FROM intranetdb.tabgrhtimesheet
 
 INNER JOIN intranetdb.tabgrhtimesheetatividades
 ON intranetdb.tabgrhtimesheetatividades.cadID =  intranetdb.tabgrhtimesheet.cadAtividadeID
 
 WHERE intranetdb.tabgrhtimesheet.cadTermino 
	BETWEEN "2023-01-01 00:00:00" 
    AND now();