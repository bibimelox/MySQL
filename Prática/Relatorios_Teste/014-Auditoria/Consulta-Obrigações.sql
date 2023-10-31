SELECT 	
		intranetdb.tabtriobrigacaocompetencia.cadEmpresa,
        intranetdb.tabtriobrigacao.cadId As "ID_Obirgação",
		intranetdb.tabtriobrigacao.cadSigla As "Obrigação",
		intranetdb.tabtriobrigacaocompetencia.cadInicio,
		intranetdb.tabtriobrigacaocompetencia.cadTermino,
        #intranetdb.tabtriobrigacaoprazo.cadPrazo,
        intranetdb.tabtriobrigacaocompetencia.cadTipo,
        intranetdb.tabtriobrigacaocompetencia.cadDTAR,
        intranetdb.tabtriobrigacaocompetencia.cadUserR,
        intranetdb.tabtriobrigacaocompetencia.cadStatus,
		intranetdb.tabtriobrigacaocompetencia.cadFolder
        
FROM intranetdb.tabtriobrigacaocompetencia
INNER JOIN intranetdb.tabtriobrigacao
ON intranetdb.tabtriobrigacaocompetencia.cadObrigacao = intranetdb.tabtriobrigacao.cadID
JOIN intranetdb.tabtriobrigacaoprazo
ON intranetdb.tabtriobrigacaocompetencia.cadObrigacao = intranetdb.tabtriobrigacaoprazo.cadIDRegistro
WHERE intranetdb.tabtriobrigacaoprazo.cadTermino between '2019-01-01' AND '2023-12-31'
AND intranetdb.tabtriobrigacao.cadDepto = "2";