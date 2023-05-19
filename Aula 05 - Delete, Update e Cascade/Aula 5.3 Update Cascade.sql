-- Aula 5.3 Update Cascade

SELECT * FROM aluno;

SELECT * FROM curso;

SELECT * FROM aluno_curso;

-- UPDATE
SELECT * FROM aluno WHERE id = 1; -- Método de segurança onde é feita uma conferência antes da se é a linha que se quer deletar

UPDATE aluno -- 
	SET id = 10
	WHERE id = 2;
		-- O id da tabela "aluno" é usado como referência na foreign key da tabela "aluno_curso" e na criação dessa tabela não foi espeficicado a restrição do UPDATE
		-- Não foi permitido fazer o UPDATE, pois na falta de especificação, por padrão, fica RESTRICT, não permite Atualizar o campo da tabela de aluno se o mesmo campo estiver na tabela aluno_curso


DROP TABLE aluno_curso;
-- Criando uma nova tabela para ajustar a restrição do UPDATE para que se possa Atualizar o aluno e ele ser automaticamente desmatriculado
CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE, -- Definição de restrição do update: ao Atualizar da tabela de referência, as campos atualizados lá terão as linhas com esse campo atualizadas aqui
	
	FOREIGN KEY (curso_id)
	REFERENCES curso (id)	
);


-- Matriculando os alunos nos cursos
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (4,2);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,3);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (6,4);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (7,3);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (5,1);


-- Fazendo a consulta usando o JOIN para ver os nomes dos alunos e o nomes do cursos que eles estão matrículados
SELECT
	aluno.id AS aluno_id,
	aluno.nome AS "Nome do Aluno",
	curso.id AS curso_id,
	curso.nome AS Curso_Nome
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON curso.id = aluno_curso.curso_id;
	
-- UPDATE no aluno na tabela "aluno"
UPDATE aluno
	SET id = 20
	WHERE id = 2;

-- Devido a restrição do UPDATE está CASCADE, foi permitido fazer o UPDATE do campo da tabela aluno
-- Ao Atualizar o campo na tabela "aluno" as linhas onde esse campo estava na tabela "aluno_curso" foram alteradas também, um efeito cascata