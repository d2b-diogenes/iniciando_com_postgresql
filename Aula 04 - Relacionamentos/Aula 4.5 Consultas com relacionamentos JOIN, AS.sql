-- Aula 4.5 Consultas com relacionamentos

SELECT * FROM aluno;
SELECT * FROM curso;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);

-- Query para fazer o JOIN com as 3 tabelas, aluno, curso e aluno_curso
SELECT * -- Irá mostrar todas as colunas de todas as tabelas
	FROM aluno -- 1ª tabela. A 1ª tabela usada para fazer o JOIN.
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id -- 2ª tabela. Fazendo o JOIN da tabela "aluno" com o "aluno_curso" e conectando as chaves de cada tabela.
	JOIN curso       ON curso.id = aluno_curso.curso_id; -- 3ª tabela. Fazendo o JOIN da tabela "aluno_curso" com o "curso" e conectando as chaves de cada tabela.

-- Query para fazer o JOIN com as 3 tabelas e apresentando apenas as colunas específicas
SELECT
	aluno.nome, -- Irá mostrar a coluna "nome" da tabela "aluno"
	curso.nome -- Irá mostrar a coluna "nome" da tabela "curso"
		-- Foi necessário específicar a tabela e o termo "nome", pois o termo "nome" existe nas 2 tabelas
		
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id -- "aluno_curso.aluno_id" - Nome da tabela e a coluna; "= aluno.id" qual campo 
	JOIN curso       ON curso.id = aluno_curso.curso_id;
	
	-- ON aluno_curso.aluno_id = aluno.id
		-- ON: o ponto em que as tabelas irão se conectar
		-- "aluno_curso.aluno_id" - Nome da tabela e o nome da coluna dessa tabela que irá fazer a junçãocom a tabela "aluno"
		-- = a igualdade que o campo da tabela "aluno_curso" irá ter em relação ao campo da outra tabela "aluno"
		-- "aluno.id" - Nome da tabela e o nome da coluna dessa tabela que irá fazer a junção com a tabela "aluno_curso"
	
	
-- Qyery para fazer o JOIN das 3 tabelas e para apresentar as colunas específicas dando outro nome
SELECT
	aluno.nome AS "Nome do aluno", -- As aspas DUPLAS são utilizadas para dar nomes que contenham espaços 
	curso.nome AS Curso_nome -- Se o nome não tem espaços, não precisa das apas
		-- AS: termo usado para dar um nome a coluna 
		-- O "AS" vem depois de especificar a coluna que se quer apresentar
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso       ON curso.id = aluno_curso.curso_id;