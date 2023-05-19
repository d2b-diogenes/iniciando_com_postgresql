-- Aula 3.5 Filtrando por campos tipo num, data e bool

-- Filtando campo NULL
SELECT *
	FROM aluno
	WHERE cpf IS NULL;
	-- Irá retornar todos os campos de 'cpf' que é NULL

SELECT *
	FROM aluno
	WHERE cpf IS NOT NULL;
	-- Irá retornar todos os campos de 'cpf' não é NULL
	
-- Operador para Numericos
-- igual
SELECT * 
	FROM aluno
	WHERE idade = 35;
	
-- Diferente
SELECT * 
	FROM aluno
	WHERE idade <> 35;
	
-- Maior ou igual
SELECT * 
	FROM aluno
	WHERE idade >= 35;
	
-- Menor ou igual
SELECT * 
	FROM aluno
	WHERE idade <= 35;
	
-- Menor
SELECT * 
	FROM aluno
	WHERE idade < 35;
	
	
-- Maior
SELECT * 
	FROM aluno
	WHERE idade > 35;
	
-- BETWEEN para achar resultados entre determinados valores
SELECT *
	FROM aluno
	WHERE idade BETWEEN 10 AND 100
	-- BETWEEN é inclusivo
	
-- Booleando
SELECT *
	FROM aluno
	WHERE ativo = true;/