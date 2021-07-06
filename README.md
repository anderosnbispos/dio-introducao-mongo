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

## Chave Valor

 - key -> Value
    - Value pode ser JASON, lista, etc
 - +Bom desempenho para apps na nuvem
 - -Menor capacidade de busca
 - Casos de uso
    - cache, sessão de usuário, carrinhos de compra
- Redis
    - Alto desempenho
    - Estruturaçã ode dados na memória
    - Versatilidade de uso
    - Replicação e persistência
        - twitter, github, stackoverflow entre outros
    - try.redis.io

## Documento

- Dados e documentos autocontidos e auto descritivos
- Permite redundância e incosistência
- Livre de esquemas podendo utilizar JSON, XML e outros

## Mongo DB

- Código Aberto
- Alta Performance
- Schema-free
- Utiliza JSON para armazenamento dos dados (BISON)
- Suporte a indices
- Auto-Sharding
- Map-Reduce
- GridFS

### Estruturacao

- Document ==> Tupla/Registro
    - Dados não devem depender de outros dados
- Collection ==> Tabela
- Embedding/linking ==> Join

### Casos de Uso

- Quando usar:
    - Grande volume de dados
    - Dados não necessariamente estruturados

- Quando não usar:
    - Necessidade de relacionamentos/joins.
    - Propriedades ACID e transações são importantes.
    - Curiosidade: Diversas entidades de pagamento não homologam sistemas cujos dados financeiros dos clientes nao estejam em bancos de dados relacionais tradicionais.

## Schema Design x Boas Práticas

- Documento autocontido
    - Recomendacao criar relacionamentos embedding

- Documentos com dependncia pra outros documentos ou collections

### Schema Design - Embedding:

- Prós:
    - Consulta informações em uma única query
    - Atualiza o registro em uma única operação

- Contras:
    - Limite de 16 MB por documento

### Schema Design - Referência:

- Prós:
    - Documentos pequenos
    - Não duplica informações
        - (Usado quando os dados não são acessados em todas as consultas)
- Contras:
    - Duas ou mais queries ou utilização do $lookup

### Boas Práticas

- Evite documentos muito grandes
- Use nome de campos objetivos e curtos
- Analise as suas queries utilizando explain()
- Atualize apenas os campos alterados
- Evite negações em queries
- Listas/Arrays dentro dos documentos não podem crescer sem limite

### JSON x BSON

- BSON:
    - É uma serialização codificada em binário de documentos semelhantes a JSON.
    - Contém extensões que permitem a representação de tipos de dados que não fazem parte da especificação JSON. Por exemplo, BSON tem um tipo Date, ObjectID, etc