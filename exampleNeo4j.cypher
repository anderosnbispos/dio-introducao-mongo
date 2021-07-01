CREATE (:Client {name : "Bob Esponja:", age : 28, hobbies: ['Caça Água Viva', 'Comer Hamburgers']})
MATCH (bob_esponja) RETURN bob_esponja

CREATE (:Client {name : "Lula Molusco:", age : 30, hobbies: ['Tocar Clarinete']})
- [:Bloqueado]-> (:Client {name : "Patrick:", hobbies: ['Caça Água Viva']})