/* PROJETO LOJA DE ROUPAS - Modelagem básica*/

LOJA DE ROUPAS
CODIGO - INT (11)
PECA - VARCHAR (11)
COR - VARCHAR (20)
TAMANHO - INT (2)
PRECO - VARCHAR (5)

/*MODELAGEM FÍSICA - SCRIPTS DO BANCO DE DADOS*/

/* CRIANDO O BANCO DE DADOS*/

CREATE DATABASE LOJA;

/* CONECTANDO-SE AO BANCO*/
USE LOJA;

/*CRIANDO A TABELA DA LOJA DE ROUPAS*/

CREATE TABLE ROUPAS (
CODIGO INT (11),
PECA VARCHAR (30),
COR VARCHAR (20),
TAMANHO VARCHAR (2),
PRECO VARCHAR (5)
);

/* MOSTRAR AS TABELAS DO BANCO*/

SHOW TABLES;

/* INSERIR DADOS NA TABELA*/

INSERT INTO ROUPAS VALUES (123456, 'CALÇA MOM', 'PRETA', 38, '90');
INSERT INTO ROUPAS VALUES (134564, 'CALÇA MOM', 'PRETA', 40, '90');
INSERT INTO ROUPAS VALUES (123451, 'CALÇA MOM', 'PRETA', 42, '90');
INSERT INTO ROUPAS VALUES (123452, 'CALÇA MOM', 'PRETA', 44, '90');
INSERT INTO ROUPAS VALUES (123453, 'CALÇA MOM', 'PRETA', 46, '90');
INSERT INTO ROUPAS VALUES (223457, 'BLUSA CROPPED', 'BRANCA', 38, '40');
INSERT INTO ROUPAS VALUES (223451, 'BLUSA CROPPED', 'BRANCA', 40, '40');
INSERT INTO ROUPAS VALUES (223452, 'BLUSA CROPPED', 'BRANCA', 42, '40');
INSERT INTO ROUPAS VALUES (223453, 'BLUSA CROPPED', 'BRANCA', 44, '40');
INSERT INTO ROUPAS VALUES (223454, 'BLUSA CROPPED', 'BRANCA', 46, '40');
INSERT INTO ROUPAS VALUES (223455, 'BLUSA CROPPED', 'ROSA PINK', 38, '40');
INSERT INTO ROUPAS VALUES (223456, 'BLUSA CROPPED', 'ROSA PINK', 40, '40');
INSERT INTO ROUPAS VALUES (223458, 'BLUSA CROPPED', 'ROSA PINK', 42, '40');
INSERT INTO ROUPAS VALUES (223459, 'BLUSA CROPPED', 'ROSA PINK', 44, '40');
INSERT INTO ROUPAS VALUES (223450, 'BLUSA CROPPED', 'ROSA PINK', 46, '40');
INSERT INTO ROUPAS VALUES (233455, 'BLUSA CROPPED', 'VERDE LIMÃO', 38, '40');
INSERT INTO ROUPAS VALUES (243456, 'BLUSA CROPPED', 'VERDE LIMÃO', 40, '40');
INSERT INTO ROUPAS VALUES (253458, 'BLUSA CROPPED', 'VERDE LIMÃO', 42, '40');
INSERT INTO ROUPAS VALUES (263459, 'BLUSA CROPPED', 'VERDE LIMÃO', 44, '40');
INSERT INTO ROUPAS VALUES (273450, 'BLUSA CROPPED', 'VERDE LIMÃO', 46, '40');
INSERT INTO ROUPAS VALUES (234455, 'BLUSA CROPPED', 'PRETA', 38, '40');
INSERT INTO ROUPAS VALUES (241456, 'BLUSA CROPPED', 'PRETA', 40, '40');
INSERT INTO ROUPAS VALUES (252458, 'BLUSA CROPPED', 'PRETA', 42, '40');
INSERT INTO ROUPAS VALUES (265459, 'BLUSA CROPPED', 'PRETA', 44, '40');
INSERT INTO ROUPAS VALUES (276450, 'BLUSA CROPPED', 'PRETA', 46, '40');
INSERT INTO ROUPAS VALUES (333450, 'VESTIDO', 'CINZA', 38, '60');
INSERT INTO ROUPAS VALUES (343451, 'VESTIDO', 'CINZA', 40, '60');
INSERT INTO ROUPAS VALUES (353452, 'VESTIDO', 'CINZA', 42, '60');
INSERT INTO ROUPAS VALUES (363453, 'VESTIDO', 'CINZA', 44, '60');
INSERT INTO ROUPAS VALUES (373454, 'VESTIDO', 'CINZA', 46, '60');
INSERT INTO ROUPAS VALUES (303450, 'VESTIDO', 'AZUL', 38, '60');
INSERT INTO ROUPAS VALUES (313451, 'VESTIDO', 'AZUL', 40, '60');
INSERT INTO ROUPAS VALUES (323452, 'VESTIDO', 'AZUL', 42, '60');
INSERT INTO ROUPAS VALUES (333453, 'VESTIDO', 'AZUL', 44, '60');
INSERT INTO ROUPAS VALUES (343454, 'VESTIDO', 'AZUL', 46, '60');
INSERT INTO ROUPAS VALUES (133419, 'CALÇA FLARE', 'VERDE', 38, '90');
INSERT INTO ROUPAS VALUES (143428, 'CALÇA FLARE', 'VERDE', 40, '90');
INSERT INTO ROUPAS VALUES (153437, 'CALÇA FLARE', 'VERDE', 42, '90');
INSERT INTO ROUPAS VALUES (163446, 'CALÇA FLARE', 'VERDE', 44, '90');
INSERT INTO ROUPAS VALUES (173455, 'CALÇA FLARE', 'VERDE', 46, '90');

/*VISUALIZAZAR TABELA COM TODOS OS DADOS*/

select * from ROUPAS;

/* FILTRANDO DADOS COM WHERE E LIKE */

/* VAMOS COMEÇAR COM WHERE*/

SELECT PECA, COR FROM ROUPAS
WHERE TAMANHO = '46';

/* UTILIZANDO O LIKE */

SELECT PECA, COR FROM ROUPAS
WHERE TAMANHO LIKE '46';

/* CONTANDO OS REGISTROS DE UMA TABELA */

SELECT COUNT(*) FROM ROUPAS;

/* USANDO GROUP BY - A FIM DE AGRUPAR O QUE SE PEDE */
SELECT PECA, COUNT(*) 
FROM ROUPAS
GROUP BY PECA;

SELECT COUNT(*), PECA
FROM ROUPAS
GROUP BY PECA;

/* FILTRANDO VALORES NULOS */

SELECT PECA, PRECO, COR
FROM ROUPAS
WHERE TAMANHO = '40';

SELECT PECA, PRECO, COR
FROM ROUPAS
WHERE CODIGO = NULL;

SELECT PECA, PRECO, COR
FROM ROUPAS
WHERE CODIGO IS NOT NULL;