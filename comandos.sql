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

## Alimentando o banco de dados
INSERT INTO Cliente (nome, CPF, data_nascimento, CEP, senha) VALUES
('João Silva', '12345678901', '1998-05-10', '08700100', 123456),
('Maria Oliveira', '23456789012', '2000-08-22', '08710230', 234567),
('Carlos Souza', '34567890123', '1995-12-15', '08720340', 345678),
('Ana Costa', '45678901234', '2002-03-05', '08730450', 456789),
('Lucas Pereira', '56789012345', '1999-07-30', '08740560', 567890);

INSERT INTO Conta (idCliente, saldo, tipo, chave_senha) VALUES
(1, 1500.00, 'Corrente', 'abc123'),
(2, 2500.50, 'Poupança', 'def456'),
(3, 3200.75, 'Corrente', 'ghi789'),
(4, 1800.00, 'Poupança', 'jkl012'),
(5, 5000.00, 'Corrente', 'mno345');

INSERT INTO Investimento (idCliente, valor, tipo, rendimento, valor_CDI, data_inicio, data_fim) VALUES
(1, 1000.00, 'CDB', 8.50, 13.65, '2023-01-01', '2024-01-01'),
(2, 2000.00, 'LCI', 7.20, 13.65, '2023-02-01', '2024-02-01'),
(3, 1500.00, 'Tesouro Direto', 9.10, 13.65, '2023-03-01', '2025-03-01'),
(4, 3000.00, 'Ações', 12.00, 13.65, '2023-04-01', '2026-04-01'),
(5, 2500.00, 'Fundos Imobiliários', 10.50, 13.65, '2023-05-01', '2025-05-01');

INSERT INTO transacao (idContaOrigem, idContaDestino, valor, data_realizada) VALUES
(1, 2, 200.00, '2024-01-10'),
(2, 3, 150.50, '2024-01-11'),
(3, 4, 300.75, '2024-01-12'),
(4, 5, 100.00, '2024-01-13'),
(5, 1, 250.25, '2024-01-14');