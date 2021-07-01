-- criando o keyspace
CREATE KEYSPACE fenda_biquini WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
-- entrando no keyspace
use fenda_biquini;
-- criando a primeira familia de colunas
CREATE COLUMNFAMILY cliente (name TEXT PRIMARY KEY,
                             age INT);
-- consultando a column family
SELECT * FROM cliente;

-- inserindo valores no formato SQL
INSERT INTO cliente (name, age)
     VALUES ('Bob Esponja',38);

-- inserindo diretamente baseado num JSON
INSERT INTO cliente JSON '{"name": "Patrick"}';

-- consultando timestamp da coluna
SELECT age, WRITETIME(age) FROM cliente;

-- outras consultas 
SELECT * FROM clientes WHERE name = 'Bob Esponja';

-- a consulta nao pode ser um JSON mais o retorno pode
SELECT JSON * FROM cliente;

-- autalizando um registro
UPDATE cliente SET age = 28 WHERE name = 'Patrick';

-- alterando o columnfamily
ALTER COLUMNFAMILY cliente ADD hobby text;
UPDATE cliente SET hobby='Caçar agua viva' WHERE name = 'Patrick';
SELECT age, WRITETIME(age),
       hobby, WRITETIME(hobby)
  FROM cliente;

-- apagando um registro
DELETE FROM cliente WHERE name = 'Bob Esponja';