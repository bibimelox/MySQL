SELECT 
		cadEmpresa,
        CadID,
        cadRespPrincipal,
        cadRespSecundario,
        cadUserR,
        cadCategoria,
        cadFaturado,
        cadTaxa,
        cadDTAR,
        cadBaixa,
        cadStatus
 FROM intranetdb.tabsocprocesso
 where cadDTAR <> "1899-12-31 00:00:00"