CREATE DATABASE BD_Teste

DROP DATABASE BD_Teste

CREATE DATABASE Exercicios

--

USE Exercicios

CREATE TABLE dCliente(ID_Cliente INT, Nome_Cliente VARCHAR(50), Data_de_Nascimento DATETIME)
CREATE TABLE dGerente(ID_Gerente INT, Nome_Gerente VARCHAR(50), Data_de_Contratacao DATETIME, Salario FLOAT)
CREATE TABLE fContratos(ID_Contrato INT, Data_de_Assinatura DATETIME, ID_Cliente INT, ID_Gerente INT, Valor_do_Contrato FLOAT)

SELECT * FROM dCliente dc
SELECT * FROM dGerente dg 
SELECT * FROM fContratos fc

--


INSERT INTO dCliente (ID_Cliente, Nome_Cliente, Data_de_Nascimento)
	VALUES
	(1, 'Andre Martins', '1989-02-12 00:00:00.00'),
	(2, 'Barbara Campos', '1992-05-07 00:00:00.00'),
	(3, 'Carol Freitas', '1985-04-23 00:00:00.00'),
	(4, 'Diogo Cardoso', '1994-10-11 00:00:00.00'),
	(5, 'Eduardo Pereira', '1988-11-09 00:00:00.00'),
	(6, 'Fabiano Silva', '1989-09-02 00:00:00.00'),
	(7, 'Gustavo Barbosa', '1993-06-27 00:00:00.00'),
	(8, 'Helen Viana', '1990-02-11 00:00:00.00')
	
INSERT INTO dGerente (ID_Gerente, Nome_Gerente, Data_de_Contratacao, Salario)
	VALUES
	(1, 'Lucas Sampaio', '2015-03-21 00:00:00.00', 6700),
	(2, 'Mariana Padilha', '2011-01-10 00:00:00.00', 9900),
	(3, 'Nathalia Santos', '2018-10-03 00:00:00.00', 7200),
	(4, 'Otavio Costa', '2017-04-18 00:00:00.00', 11000)

INSERT INTO fContratos (ID_Contrato, Data_de_Assinatura, ID_Cliente, ID_Gerente, Valor_do_Contrato)
	VALUES
	(1, '2019-01-12 00:00:00.00', 8, 1, 23000),
	(2, '2019-02-10 00:00:00.00', 3, 2, 15500),
	(3, '2019-03-07 00:00:00.00', 7, 2, 6500),
	(4, '2019-03-15 00:00:00.00', 1, 3, 33000),
	(5, '2019-03-21 00:00:00.00', 5, 4, 11100),
	(6, '2019-03-23 00:00:00.00', 4, 2, 5500),
	(7, '2019-03-28 00:00:00.00', 9, 3, 55000),
	(8, '2019-04-04 00:00:00.00', 2, 1, 31000),
	(9, '2019-04-05 00:00:00.00', 10, 4, 3400),
	(10, '2019-04-05 00:00:00.00', 6, 2, 9200)
	
	
	
INSERT INTO dCliente (ID_Cliente, Nome_Cliente, Data_de_Nascimento)
	VALUES
	(9, 'Novo', '1989-02-12 00:00:00.00')
	
INSERT INTO dGerente (ID_Gerente, Nome_Gerente, Data_de_Contratacao, Salario)
	VALUES
	(5, 'Novo', '2015-03-21 00:00:00.00', 6700)
INSERT INTO fContratos (ID_Contrato, Data_de_Assinatura, ID_Cliente, ID_Gerente, Valor_do_Contrato)
	VALUES
	(11, '2019-01-12 00:00:00.00', 8, 1, 23000)
	
--	
	
UPDATE
	fContratos
SET
	Data_de_Assinatura = '2019-03-17 00:00:00.00',
	ID_Gerente = 2,
	Valor_do_Contrato = 33500
WHERE
	ID_Contrato = 4

SELECT
	*
FROM
	fContratos 


--
	
DELETE
FROM
	fContratos
WHERE
	ID_Contrato = 4

SELECT
	*
FROM
	fContratos fc
