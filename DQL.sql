##Comandos selects com Where

##Selecionando, todos os dados, da tabela cleinte, onde o nome é igual a Ana costa
SELECT * FROM cliente WHERE nome = 'Ana Costa';
##Selecionando da tabela conta, onde o tipo é corrente
SELECT * FROM conta WHERE tipo = 'Corrente';

##Utilizando distinct para não trazer tuplas repetidas (Nesse banco não tem, mas é bom praticar)
SELECT DISTINCT idCliente from conta;


##Utilizando AND, OR, BETWEEN, IN, IS NULL, NOT IN, LIKE

SELECT * from investimento where tipo = 'CDB' or tipo = 'LCI' and valor between '1000.00' and '2000.00';

##In seleciona tudo que está dentro dos parenteses, o not in faz o mesmo mas ele não busca o o valor entre os parenteses.
SELECT * FROM investimento WHERE data_inicio in ('2023-01-01', '2023-04-01', '2024-03-15');

##Buscando por inicio com Ca, nome que contem il, e nome que não termina com A
SELECT * FROM cliente WHERE nome like 'Ca%';
SELECT * FROM cliente WHERE nome like '%il%';
SELECT * FROM cliente WHERE nome not like '%a';