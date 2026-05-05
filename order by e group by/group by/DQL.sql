## Selecionando os nomes e as vendas, ordenando por nome
Select primeiro_nome, venda from vendas order by primeiro_nome;
##Utilizando group by,
SELECT primeiro_nome, SUM(venda) from vendas where primeiro_nome = 'Ana';
SELECT primeiro_nome, SUM(venda) from vendas group by primeiro_nome order by SUM(venda);

##Selecionando máximo
SELECT primeiro_nome, MAX(venda) from vendas group by primeiro_nome order by MAX(venda);

##Selecionando mínimo
SELECT primeiro_nome, MIN(venda) from vendas group by primeiro_nome order by MIN(venda);

##Contando quantos cada um vendeu
SELECT primeiro_nome, count(venda) from vendas group by primeiro_nome;

## Fazendo a média
SELECT primeiro_nome, avg(venda) from vendas group by primeiro_nome;

##Retorna valores únicos das colunas
select distinct primeiro_nome from vendas;

##Retorna valores unicos por vendedor, quantos dias de venda tiveram no total
SELECT primeiro_nome, count(distinct data_venda) from vendas
group by primeiro_nome
order by count(distinct data_venda);


##O comando utiliza o group by para agrupar pelos nomes dos vendedores, o SUM calcula o valor por cada nome, order by é
##Utilizado para para ordernar os valores de cada vendedor e retorna em ordem decrescente (DESC), Assim
##Sabendo quem teve mais lucro, o Limit faz retorna um limite, foi utilizado 2 para retornar o primeiro e
##Segundo colocado.
SELECT primeiro_nome, SUM(venda) FROM vendas
GROUP BY primeiro_nome
ORDER BY SUM(venda) DESC
LIMIT 2;

##Retorna o segundo colocado
SELECT primeiro_nome, SUM(venda) FROM vendas
GROUP BY primeiro_nome
ORDER BY SUM(venda) DESC
LIMIT 1,1;