=============================================================================================
===================================	DESAFIO SOLIDES	    =================================
=============================================================================================


Para resolver o desafio foi usado Ruby on Rails e MySQL. 

A aplicação possui um cadastro de usuários e horários. Existem 2 tipos de usuários: manager e user. 
O manager tem acesso a todas funcionalidades do sistema, como criar novos usuários e editar horários dos usuários comuns caso precisem de alguma alteração. 
Um usuário comum (user) só consegue criar e visualizar seus próprios horários, ou seja, não tem acesso aos dados de outros usuários.

Devido já conhecer algumas GEMs do ambiente Rails resolvi usar algumas para focar nos requisitos e funcionalidades da aplicação.
A GEM "rails_admin", a GEM "devise" para controle de login e a GEM "cancancan" para gerenciar as permissões de usuário. 


Tutorial para restaurar o backup do banco no mysql e clonar a aplicação do repositório Github

1- Entrar no Mysql via terminal e criar uma database para restaurar o arquivo DUMP com o comando:

	create database solides_desafio_development

2- Para restaurar o arquivo DUMP é preciso entrar na pasta onde se encontra o arquivo DUMP e rodar o comando no terminal: 

	mysql -uroot -p -hlocalhost solides_desafio_development < bkp_dump_test_solides

	O que vem depois de -u é o usuário e -p é o parametro do password.
	solides_desafio_development é o nome do banco e bkp_dump_test_solides é o nome do arquivo dump gerado pelo mysql. 
	Após executar o comando será criado a database e as tabelas User e Timetables. 

3- Executar o seguinte comando para clonar o projeto do GitHub:

	https://github.com/joao-avelino-92/teste-solides.git

4- Entrar na pasta 'teste-solides'.

5 - Após entrar na pasta 'teste-solides' executar o seguinte comando no terminal:
	
	bundle install

6 - Executar via terminal o comando:
	
	rake db:create 

	Se a restauração do arquivo DUMP foi feito deve aparecer a mensagem avisando que a database já existe.

7 - Executar via terminal o comando: 
	
	rake db:migrate

8 - Caso ocorra algum aviso do Yarn, executar o comando "yarn install" ou atualizar a versão do Yarn.

9 - Para rodar a aplicação deve-se executar o comando:
	
	rails s

10 - Para acessar a aplicação via navegador o endereço é: 
	
	localhost:3000