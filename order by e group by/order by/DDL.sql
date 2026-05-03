create database if not exists filmes;
USE filmes;

CREATE TABLE categorias(
id_categoria int primary key not null,
nome varchar(50),
categoria varchar(50)

);

##2
## Adicionando mais colunas

ALTER TABLE categorias add column data_compra date;

