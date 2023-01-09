/* DATABASE NORTHWIND*/
----------------------------------------

-- SELECT NOME_COLUNA
-- FROM TABELA A, TABELA B
-- WHERE CONDICAO

-- Exemplo 1: QUEREMOS TODOS OS CLIENTES QUE MORAM NA MESMA REGIÃO
SELECT A.ContactName AS 'NOME_1', A.Region AS 'REGIÃO_1', B.ContactName AS 'NOME_2', B.Region AS 'REGIÃO_2'
FROM Customers A, Customers B
WHERE A.Region = B.Region

-- Exemplo 2: QUEREMOS ENCONTRAR (NOME E DATA DE CONTRATAÇÃO) DE TODOS OS FUNCIONÁRIOS QUE FORAM
-- CONTRATADOS NO MESMO ANO

SELECT *
FROM Employees

SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate
FROM Employees A, Employees B
WHERE DATEPART(month, a.HireDate) = DATEPART(month, b.hiredate)

-- DESAFIO 1 --
-- NA TABELA DETALHE DE PEDIDO, QUAIS PRODUTOS TEM O MESMO PERCENTUAL DE DESCONTO?

SELECT *
FROM [Order Details]

SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE B.Discount = A.Discount