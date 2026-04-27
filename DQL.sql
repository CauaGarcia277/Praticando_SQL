##Comandos selects com Where

##Selecionando, todos os dados, da tabela cleinte, onde o nome é igual a Ana costa
SELECT * FROM cliente WHERE nome = 'Ana Costa';
##Selecionando da tabela conta, onde o tipo é corrente
SELECT * FROM conta WHERE tipo = 'Corrente';

##Utilizando distinct para não trazer tuplas repetidas (Nesse banco não tem, mas é bom praticar)
SELECT DISTINCT idCliente from conta;
