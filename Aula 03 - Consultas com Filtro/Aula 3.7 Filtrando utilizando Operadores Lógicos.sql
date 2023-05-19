-- Aula 3.7 Filtrando utilizando Operadores Lógicos

-- Operador Lógico: AND (E) - Retornar o resultado se todas as condições tem que ser atendidas

SELECT *
	FROM aluno 
	WHERE nome LIKE 'D%';
	-- Resultado: Diego e Diogo, pois atendem a condição de iniciarem com a Letra D
		
		
SELECT *
	FROM aluno 
	WHERE nome LIKE 'D%'
		AND
		ativo = 'true';
	-- Resultado: Diogo, pois ele atende a condição de iniciar com a letra D e tem CPF ativo, true.
	
-- Operador Lógico: OR (OU) - Retornar o resultado das condições que foram atendidas
SELECT *
	FROM aluno
	WHERE nome = 'Diogo'
	OR nome = 'Carlos';
	-- Resultado: Diogo, pois a condição é satisfeita se for encontrado pelo menos 1 dos termos procurados

SELECT *
	FROM aluno
	WHERE nome = 'Diogo'
	OR nome LIKE 'Felipe'
	OR nome LIKE 'N%';
	-- Resultado: Diogo e Nico Steppat, pois apenas 2 satisfizeram os termos procurados