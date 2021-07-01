// comandos basicos de manipulacao do Neo4j
CREATE (:Client {name : "Bob Esponja:", age : 28, hobbies: ['Caça Água Viva', 'Comer Hamburgers']})
MATCH (bob_esponja) RETURN bob_esponja

CREATE (:Client {name : "Lula Molusco:", age : 30, hobbies: ['Tocar Clarinete']})
- [:Bloqueado]-> (:Client {name : "Patrick:", hobbies: ['Caça Água Viva']})

//busca todos os objetos da base (nós e relacionamentos)
MATCH (todos) RETURN todos

MATCH (a)-[bloqueio:Bloqueado]->() DELETE bloqueio

MATCH (lula:Client {name: "Lula Molusco"}), (patrick:Client {name: "Patrick"}) CREATE (lula)-[:Bloqueado]->(patrick)

MATCH (bob:Client {name: "Bob Esponja:"}), (patrick:Client {name: "Patrick:"}) CREATE (bob)-[:Amigo]->(patrick) 

MATCH (lula:Client {name: "Lula Molusco:"})-[relaciona:Bloqueado]->() DELETE relaciona

MATCH (lula:Client {name: "Lula Molusco:"}) DELETE lula

// altera uma propriedade de um nó
MATCH (patrick:Client {name: "Patrick:"}) SET patrick.name = "Patrick"
MATCH (bob:Client {name: "Bob Esponja:"}) SET bob.name = "Bob Esponja"
MATCH (patrick:Client {name: "Patrick"}) SET patrick.age = 20

// atualiza label
MATCH (patrick:Client {name: "Patrick"}) SET patrick:Client_Premium

// cria e apaga 
CREATE (:Object)
MATCH (ob:Object) DELETE ob