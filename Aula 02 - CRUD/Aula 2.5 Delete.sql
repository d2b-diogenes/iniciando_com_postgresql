-- Aula 2.5 Excluindo um registro de uma tabela

-- Recomendado antes faze um Select do registro para certificar se é/são os registro(s) que se quer deletar

SELECT *
	FROM aluno
	WHERE nome = 'Nico';
	
DELETE
	FROM aluno
	WHERE nome = 'Nico';