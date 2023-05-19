-- Aula 3.3 Filtrando por campos tipo texto

INSERT INTO aluno (nome) VALUES ('Vinícius Dias');
INSERT INTO aluno (nome) VALUES ('Nico Steppat');
INSERT INTO aluno (nome) VALUES ('João Roberto');
INSERT INTO aluno (nome) VALUES ('Diego');

SELECT *
	FROM aluno;
	
-- Aplicando filtro usando "WHERE"

-- Fazendo o filtro para encontrar examente o termo 
SELECT * 
	FROM aluno
	WHERE nome = 'Diego';
	-- Irá retornar a linha que contém o resgistro "Diego"
	
SELECT * 
	FROM aluno
	WHERE nome = 'Thiago';
	-- Não irá retornar nada, pois não há registro na tabela com "Thiago"
	
-- Fazendo o filtro para encontrar os resultados que são diferentes do termo
SELECT *
	FROM aluno
	WHERE nome <> 'Diego';
	
SELECT *
	FROM aluno
	WHERE nome != 'Diego';
	-- Irá retornar os demais resultados que não são iguais ao termo procurado
	
-- Operador LIKE, como sef fosse "Parecido"
SELECT * 
	FROM aluno
	WHERE nome LIKE 'Di_go';
	-- Usando caracteres especial _ para substituir uma letra
	-- Irá retornar Diego e Diogo, pois os 2 atendem ao termo procurado
	
SELECT * 
	FROM aluno
	WHERE nome LIKE 'D%';
	-- Usando caracteres especial % para substituir os caracteres até aquele ponto
	-- Irá retornar Diego e Diogo, pois os 2 iniciam com D e atendem o termo procurado
	
SELECT * 
	FROM aluno
	WHERE nome LIKE '%Di%';
	-- Irá retornar Diego, Diogo e Vinícius Dias, pois o termo procurado queria resultados que tivessem "Di" em qualquer posição 
	
SELECT *
	FROM aluno
	WHERE nome LIKE '%i%a%';
	-- Irá retornar Vinícius Dias e Nico Steppat, pois os 2 atendem ao termo procurado
	/
-- Operador NOT LIKE, como sef fosse "Diferente"
SELECT *
	FROM aluno
	WHERE nome NOT LIKE 'Di_go';
	-- Ignora os valores que correspontem ao termo e 
	-- retornar os demais resultados que não são iguais ao termo procurado
	
-- 