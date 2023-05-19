-- Aula 4.1 Criando chave primária

CREATE TABLE curso (
	id INTEGER,
	nome VARCHAR(255)
);
	-- Sem especificar que o campo é "NOT NULL", o campo pode ficar vazio, não precisa ser preenchido

INSERT INTO curso (id, nome) VALUES (NULL, NULL);
	-- Campos vazios podem ser incluídos na tabela, pois na criação da tabela não foram criadas restrições.

DROP TABLE curso;
CREATE TABLE curso (
	id INTEGER NOT NULL,
	nome VARCHAR(255) NOT NULL
);
	-- Especificando que o campo é "NOT NULL", não é mais permitido que o campo fique vazio, ele tem que ser preenchido

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (1, 'JAVA');
	-- IDs podem ser repedidos na tabela, com identificadores iguais, pois na criação da tabela não foi criada restrição.
	-- IDs normalmente não podem repetir, pois serão identificadores únicos

DROP TABLE curso;
CREATE TABLE curso (
	id INTEGER NOT NULL UNIQUE,
	nome VARCHAR(255) NOT NULL
);
	-- NOT NULL: O campo não pode ficar vazio, tem que ser prenchido
	-- UNIQUE: o valor do campo não pode repetir, tem que ser único

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (1, 'JAVA');
	-- Não será permitida a criação de outro curso com o mesmo ID, pois foi criada a restrição no momento da criação da tabela
	
INSERT INTO curso (id, nome) VALUES (2, 'JAVA');
	-- Será permitida a inserção dos dados, pois agora o ID não se repete, respeitan a restrição da unicidade
	
DROP TABLE curso;
CREATE TABLE curso (
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);
	-- PRIMATY KEY: Chave Primária. Tem as propriedades de NOT NULL e UNIQUE, Campo único e não pode ser nulo, pois será um identificador
	-- NOT NULL: O campo não pode ficar vazio, tem que ser prenchido
	-- UNIQUE: o valor do campo não pode repetir, tem que ser único
	
INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'JAVA');

SELECT * FROM curso;