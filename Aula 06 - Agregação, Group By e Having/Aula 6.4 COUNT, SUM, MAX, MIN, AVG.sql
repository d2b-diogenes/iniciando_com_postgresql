-- Aula 6.4 Funções de Agregação

	-- Funções que não retornam dados da tabela, mas informações relacionas aos dados contidos na tebela
	
	
SELECT 
		COUNT (id), -- Conta quantos registros existem nesse campo
		SUM(id), -- Soma todos os valores de todos os registros 
		MAX(id), -- Retorna o maior valor entre todos os registros
		MIN(id), -- Retorna o menor valor entre todos os registros
		AVG(id), -- Retonar a média de todos os valores dos registros somado dividido pela quantidade de registros
		ROUND(AVG(id), 2), -- Arredonda com 2 casas decimais
		ROUND(AVG(id)) -- Arredonda sem casas decimais
	FROM funcionarios;
	
	
	
	

