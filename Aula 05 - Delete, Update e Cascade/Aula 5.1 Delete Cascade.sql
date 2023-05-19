-- Aula 5.1 Delete Cascade

SELECT * FROM aluno;

SELECT * FROM curso;

SELECT * FROM aluno_curso;

-- DELETE
SELECT * FROM aluno WHERE id = 1; -- Método de segurança onde é feita uma conferência antes da se é a linha que se quer deletar

DELETE FROM aluno WHERE id = 1; -- Comando para deletar
	-- O id da tabela "aluno" é usado como referência na foreign key da tabela "aluno_curso" e na criação dessa tabela não foi espeficicado a restrição do DELETE
	-- Não foi permitido fazer o DELETE, pois na falta de especificação, por padrão, fica RESTRICT, não permite Deletar o campo da tabela de aluno se o mesmo campo estiver na tabela aluno_curso
	
DROP TABLE aluno_curso;
-- Criando uma nova tabela para ajustar a restrição do DELETE para que se possa Deletar o aluno e ele ser automaticamente desmatriculado
CREATE TABLE aluno_curso (
	
	aluno_id INTEGER,
	curso_id INTEGER,
	
	PRIMARY KEY (aluno_id, curso_id),
	
	FOREIGN KEY (aluno_id)
	REFERENCES aluno (id)
	ON DELETE CASCADE, -- Definição de restrição do DELETE: ao Apagar da tabela de referências, as campos Apagados lá terão as linhas com esse campo Apagadas aqui
	
	FOREIGN KEY (curso_id)
	REFERENCES curso (id)
	
);


-- Matriculando os alunos nos cursos
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,2);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (4,3);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);


-- Fazendo a consulta usando o JOIN para ver os nomes dos alunos e o nomes do cursos que eles estão matrículados
SELECT 
	aluno.nome AS "Nome do Aluno",
	curso.nome AS Curso_Nome
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso       ON curso.id = aluno_curso.curso_id;
	
	
-- DELETE no aluno na tabela "aluno"
DELETE FROM aluno WHERE id = 1;
	-- Devido a restrição do DELETE está CASCADE, foi permitido fazer o DELETE do campo da tabela aluno
	-- Ao Deletar o campo na tabela "aluno" as linhas onde esse campo estava na tabela "aluno_curso" foram deletadas também, um efeito cascata.