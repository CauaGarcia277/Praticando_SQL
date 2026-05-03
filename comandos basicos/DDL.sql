CREATE DATABASE Treino_Select;
Use Treino_Select;
## Criando tabelas
CREATE TABLE Cliente(
idCliente int auto_increment,
nome varchar(50) not null,
CPF char(11) not null unique,
data_nascimento date not null,
CEP char(8) not null,
senha int(10) not null,

constraint pk_cliente primary key (idCliente) ##Criando uma constraint para chave primária
);

CREATE TABLE Investimento (
idInvestimento int auto_increment,
idCliente int not null,
valor numeric(12,2) not null,
tipo varchar(50) not null,
rendimento numeric(10,2) not null,
valor_CDI numeric(5,2) not null,
data_inicio date not null,
data_fim date not null,


constraint pk_investimento primary key (idInvestimento, idCliente),
constraint fk_investimento_cliente foreign key (idCliente) references Cliente(idCliente) on delete cascade on update cascade ##Para chaves estrangeiras
);

CREATE TABLE Conta (
idConta int auto_increment,
idCliente int not null,
saldo numeric(12,2),
tipo varchar(50) not null,
chave_senha varchar(15),

constraint pk_conta primary key(idConta, idCliente),
constraint fk_conta_cliente foreign key (idCliente) references Cliente(idCliente)
);


CREATE TABLE transacao(
idTransacao int auto_increment,
idContaOrigem int not null,
idContaDestino int not null,
valor numeric(12,2) not null,
data_realizada date not null,

constraint pk_transacao primary key (idTransacao),
constraint fk_transacao_contaorigem foreign key (idcontaorigem) references Conta(idConta) on delete cascade on update cascade,
constraint fk_transacao_contadestino foreign key (idContaDestino) references Conta(idConta) on delete cascade on update cascade
);


##Usando Alter

## Adicionando a coluna RG
ALTER TABLE Cliente add column RGS char(11);

##Deletando a coluna RG
ALTER TABLE Cliente drop column RGS;

## Adicionando campo RG
ALTER TABLE Cliente add column RGS char(11);

##Adicionando unique
ALTER TABLE Cliente modify column RGS char(11) unique;

##Mudando o nome da coluna
ALTER TABLE Cliente change column RGS RG char(11) unique;

##Comandos drops

##Deletando tabela
drop table Investimento;

#Deletando o banco de dados
drop database treino_select;