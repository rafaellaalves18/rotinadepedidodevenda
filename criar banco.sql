create database bdvendas;

use bdvendas;

CREATE TABLE IF NOT EXISTS clientes (
	id_cli int   AUTO_INCREMENT PRIMARY KEY,
	nome Varchar(100) NOT NULL,
	cidade varchar(100),
    uf varchar(2)
);
CREATE INDEX idx_CLIENTES_CODIGO ON CLIENTES(id_cli);

CREATE TABLE IF NOT EXISTS produtos (
	id_produto int   AUTO_INCREMENT PRIMARY KEY,
	nome Varchar(100) NOT NULL,
	preco_venda double
);
CREATE INDEX idx_PRODUTO_CODIGO ON produtos(id_produto);

CREATE TABLE IF NOT EXISTS pedidos (
	numero_ped int   AUTO_INCREMENT PRIMARY KEY,
	data date,
    id_cliente int,
    valor_total double
);
CREATE INDEX idx_NUM_PED ON pedidos(numero_ped);

 ALTER TABLE pedidos 
ADD  FOREIGN KEY (id_cliente)
 REFERENCES clientes (id_cli) ; 

CREATE TABLE IF NOT EXISTS pedidos_produtos (
	id int   AUTO_INCREMENT PRIMARY KEY,
    id_ped int,
    cod_produto int, 
    quantidade double,
    valor_unitario double,
    valor_total double
);
 ALTER TABLE pedidos_produtos 
ADD  FOREIGN KEY (id_ped)
 REFERENCES pedidos (numero_ped) ;
 
 ALTER TABLE pedidos_produtos 
ADD  FOREIGN KEY (cod_produto)
 REFERENCES produtos (id_produto) ;
CREATE INDEX idx_NUM_PED_ites ON pedidos_produtos(id_ped,cod_produto); 
 

INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('RAFAELLA ALVES', 'CARMO DO CAJURU', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('JOSE DE ABREU', 'CARMO DO CAJURU', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('LUCAS DE SOUSA', 'DIVINOPOLIS', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('DYEGO RODRIGUES MATEUS', 'BELO HORIZONTE', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('ARMINDA VILELA RABELO', 'DIVINOPOLIS', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('THIAGO DE SOUZA DIAS', 'FLORIANOPOLIS', 'SC');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('BRUNA RABELO DE OLIVEIRA', 'SAO PAULO', 'SP');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('ANGELICA CRISTINA DE SOUZA VILELA', 'RIO DE JANEIRO', 'RJ');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('MARIANA DE FATIMA NOGUEIRA', 'BELO HORIZONTE', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('LEONARDO DE SOUSA FILHO', 'DIVINOPOLIS', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('FERNANDA RODRIGUES DIAS', 'CARMO DO CAJURU', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('ANA LUISA MATEUS', 'DIVINOPOLIS', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('MATEUS VILELA', 'DIVINOPOLIS', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('ADRIANA MATEUS VILELA', 'CARMO DO CAJURU', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('JARBAS ALVES NOGUEIRA', 'CARMO DO CAJURU', 'MG');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('LETICIA RODRIGUES', 'FLORIANOPOLIS', 'SC');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('EDUARDA VILELA MATEUS', 'FLORIANOPOLIS', 'SC');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('BRUNO MATEUS', 'FLORIANOPOLIS', 'SC');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('LORENA VILELA DIAS', 'SAO PAULO', 'SP');
INSERT INTO CLIENTES (NOME, CIDADE, UF) VALUES ('LETICIA RODRIGUES', 'FLORIANOPOLIS', 'SC');




INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('BALA', 15.90);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('CHICLETES', 17.90);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('CHOCOLATE', 29.99);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('REFRIGERANTE', 4.5);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('BOLACHA', 1.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('CERVEJA', 5.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('TRIDENT', 1.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('BOLO', 100.00);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('ENERGETICO', 8.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('MUSSARELA', 22.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('PRESUNTO', 19.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('AGUA', 1.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('ARROZ', 22.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('AZEITE', 27.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('MIOJO', 3.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('MAIONESE', 10.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('AGUA COM GAS', 2.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('BATATA RUFLES', 9.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('DORITOS', 10.50);
INSERT INTO PRODUTOS (NOME, PRECO_VENDA) VALUES ('PICOLE', 4.50);

select p.numero_ped, p.data, p.id_cliente, pp.cod_produto,
pp.quantidade, pp.valor_unitario, pp.valor_total, c.cidade, c.uf, C.NOME, pr.nome
 from pedidos p, pedidos_produtos pp, clientes c, produtos pr  
where pp.id_ped = p.numero_ped
and c.ID_CLI = p.id_cliente
and pr.id_produto = pp.cod_produto

select * from pedidos_produtos 

select LAST_INSERT_ID()

select * from pedidos

update pedidos set id_cliente = :codigo_cliente, valor_total = :total where numero_ped =

 
 
select * from clientes where ID_CLI=3

Select SCOPE_IDENTITY()  as ID from PEDIDOS

SHOW TABLE STATUS LIKE PEDIDOS
select * from information_schema.tables


SELECT SCOPE_IDENTITY()

select SCOPE_IDENTITY() num_ped

select p.numero_ped, p.data, p.id_cliente, pp.cod_produto, pp.quantidade,                                               
 pp.valor_unitario, pp.valor_total, c.cidade, c.uf, C.NOME, pr.nome as produto
from pedidos p, pedidos_produtos pp, clientes c , produtos pr                  
where pp.id_ped = p.numero_ped                                                
and c.ID_CLI = p.id_cliente                                                   
and pr.id_produto = pp.cod_produto                                            
and p.numero_ped =11


select * from  pedidos p, pedidos_produtos pp, clientes c , produtos pr      where  pp.id_ped = p.numero_ped and c.ID_CLI = p.id_cliente and pr.id_produto = pp.cod_produto  and numero_ped=11