## Selecionando os nomes e as vendas, ordenando por nome
Select primeiro_nome, venda from vendas order by primeiro_nome;
##Utilizando group by,
SELECT primeiro_nome, SUM(venda) from vendas where primeiro_nome = 'Ana';
SELECT primeiro_nome, SUM(venda) from vendas group by primeiro_nome order by SUM(venda);