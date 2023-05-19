-- Aula 2.3 Atualizando um registro na tabela

-- Recomendado fazer um Selec antes usando o filtro do "WHERE" para verificar antes se o retorno é/são os campos que se quer alterar
SELECT * FROM aluno
	WHERE id = 1;

-- Comando de atualização
UPDATE aluno SET 
	nome = 'Nico',
	cpf = '10987654321',
	observacao = 'Teste',
	idade = 38,
	dinheiro = 15.23,
	altura = 1.90,
	ativo = false,
	data_nascimento = '1980-01-15',
	hora_aula = '13:00:00',
	matriculado_em = '2022-01-02 15:00:00'
WHERE id = 1;
	-- o "WHERE" é campo que será buscado para mudar o conteúdo das linhas que corresponderem a esse campo
	-- O "id" é único, mas se fosse outro campo e ele não fosse único, iria mudar todas as linhas que tivessem o campo igual

Select * from aluno;