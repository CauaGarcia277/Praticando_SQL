##1

##Selecionando a categoria de terror e ordenando os nomes em ordem crescente.
SELECT nome, categoria from categorias where categoria = 'Terror' order by nome;

##Por categoria família
SELECT nome, categoria from categorias where categoria = 'Família' order by nome;

##Usando desc para fazer uma consulta decrescente
SELECT nome, categoria from categorias where categoria = 'Família' order by nome desc;


##2

SELECT nome, categoria, data_compra from categorias where categoria =  'Ação' order by nome, data_compra desc;