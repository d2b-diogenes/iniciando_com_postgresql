-- Aula 6.2 Limitando as consultas
	-- Quando a consulta é muita grando, é feita uma limitação da consulta para retornar uma parte dos registros

-- Consultando todos os funcionários
SELECT * FROM funcionarios;

-- Limitando o retorno em apenas 5 registros
SELECT *
	FROM funcionarios
	LIMIT 5; -- Comando que limita os resultados entre os 5 primeiros registros
	

-- Ordenando os registros pelo "id" e Limitando o retorno em apenas 4 registros
SELECT *
	FROM funcionarios
	ORDER BY id -- Ordenação feita antes de aplicar o limite
	LIMIT 4; -- Limitando os resultado entre os 4 primeiros registros 
	
	
-- Ordenando os registos pelo "id", Limitando o retorno em apenas 3 registos e pulando os 2 primeiros registros para o retorno inicar apartir do 3º registro
SELECT *
	FROM funcionarios
	ORDER BY id
	LIMIT 4
	OFFSET 2; -- Comando usado para andar os registros para frente, ele irá pular os 2  primeiros registros e iniciará a limitação depois
	
	
-- Ordenando os registos pelo "id", Limitando o retorno em apenas 5 registos e pulando os 3 primeiros registros
	FROM funcionarios
	ORDER BY id
	LIMIT 5
	OFFSET 3;
	-- Se o limite for maior do que a quantidade de itens a serem apresentados, será mostrada apenas a quantidade de itens.