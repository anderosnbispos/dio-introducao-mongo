# Bancos não relacionais

## Neo4j (Grafos)

- Implementa ACID
- Controle de concorrência
- Linguagem Cypher
- sandbox.neo4j.com

## Colunas / Família de Colunas

- key space -> família de colunas
- coluna -> chave,valor,timestamp
- somente serão reservados dados onde realmente tiver informação
- Cassandra ( katacoda.com (try-cql) )
    - Criado pelo facebook
    - Baseado no bigtable do Google
    - Utilizado por: twiter, facebook, netflix
    - Ausência total de transações
        - bom para um volume maior de leitura que escrita
    - fazer consultas por chave primária
    - https://katacoda.com/datastax/courses/cassandra-try-it-out/try-cql

### Terminologia

### Principais casos de uso

- rastreamento dos correios