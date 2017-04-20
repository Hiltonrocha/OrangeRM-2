# language: pt
# utf-8

Funcionalidade: Cadastrar e Editar Funcionarios
	Eu como administrador
	Quero cadastrar e editar novos funcionarios

@cadastro_funcionario
Esquema do Cenario: Cadastrar Funcionario
	Dado esteja autenticado como adiministrador
	Quando clicar em "Add Employee"
	E preencher o campo nome "<firstname>"
	E preencho o campo middle name "<middlename>"
	E preencho o campo last name "<lastname>"
	E seleciono a locaçao "<location>"
	E clico em Salvar 
	Então o funcionario deve ser cadastrado com sucesso

	Exemplos:
		|	firstname	|	middlename	|	lastname	|	location			|
		|	John		|	John		|	Bisping 	| New York Sales Office	|
		|	Maria		|	Cecicia		|	Santos		| Texas R&D 			|

@busca_funcionario
Cenario: Buscar funcionarios
	Dado que esteja autentificado como administrador
	E clicar em Lista de funcionarios
	Quando realizar a busca por ID de funcionario
	Então o funcionario deve aparecer na lista




