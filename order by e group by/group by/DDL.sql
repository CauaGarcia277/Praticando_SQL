CREATE DATABASE IF NOT EXISTS bandeirantes;
use bandeirantes;

CREATE TABLE vendas(
id int primary key auto_increment,
primeiro_nome varchar (50),
venda decimal(6.2),
data_venda date
);