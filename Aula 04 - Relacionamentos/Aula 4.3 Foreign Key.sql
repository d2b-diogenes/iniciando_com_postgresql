-- Aula 4.3 Foreign key

DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);
	-- SERIAL: A cada novo registro será incrementado automaticamente, auto incremento.
	
INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Vinícius');

DROP TABLE aluno_curso;

-- Tabela criada para relacionas o aluno ao curso, ela é quem seria a responsável por fazer o cadastro do aluno no curso
CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER, -- Vírgula: Se for inserir uma PRIMARY KEY de chaves compostas, é necessário inserir a vírgula.
	PRIMARY KEY (aluno_id, curso_id), -- Vírgula: Se for inserir uma FOREIGN KEY, é necessário inserir a vírgula.
		-- Os 2 campos compõe a PRIMARY KEY
		-- Isso evita que o mesmo aluno seja inserido 2 vezes no mesmo curso.
	
	FOREIGN KEY (aluno_id) 
	REFERENCES aluno (id), -- Vírgula: Se for inserir uma PRIMARY KEY de chaves compostas, é necessário inserir a vírgula.

	FOREIGN KEY (curso_id) -- Defini que o campo da tabela atual será a chave estrangeira que irá se referenciar pelo outro campo de outra tabela
	REFERENCES curso (id) -- Faz a referência para a tabela e o campo da tabela que será feita a referência
	
		-- Ter uma FOREIGN KEY não irá permitir que seja relacionado um id de aluno ou um id de curso que não exista.
		-- Para adicionar em aluno_id ou curso_id é preciso que o valor exista na tabela referenciada.
		-- Para esses casos, não ter FOREIGN KEY não permite que ocorra inconsistência de dados	
);

-- Estrutura para criar uma FOREIGN KEY:
	-- FOREIGN KEY (NOME_CAMPO_DA_TABELA_ORIGEM)
	-- REFERENCES NOME_TABELA_DESTINO (NOME_CAMPO_TABELA_DESTINO),
	--		ON UPDATE OPÇÃO
	--		ON DELETE OPÇÃO


SELECT * FROM aluno;
SELECT * FROM curso;
SELECT * FROM aluno_curso;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
	-- Inserções feitas com sucesso

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);
	-- Não foi permitida a inserção devido violar a regra da foreign key
	-- Só é possível insertir o valor que existir no campo da tabela referenciada
	-- Evitou uma a inconsistência de dados, 

SELECT * FROM ALUNO WHERE id = 1;
SELECT * FROM CURSO WHERE id = 2;

