SELECT 
    tabsocempresas.cadCodigo,
    tabcomdesligamento.cadTipo,
    tabcomdesligamento.cadSubTipo
FROM intranetdb.tabcomdesligamento
INNER JOIN intranetdb.tabsocempresas
ON intranetdb.tabcomdesligamento.cadGrupo = intranetdb.tabsocempresas.cadGrupo 
AND  intranetdb.tabcomdesligamento.cadDesligamento = intranetdb.tabsocempresas.cadDesligamento;