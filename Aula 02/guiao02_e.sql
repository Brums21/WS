-- Pergunta 1

SELECT (SELECT Value FROM Objetos WHERE ID = p.ID AND Key = 'Nome') AS Nome,
       (SELECT Value FROM Objetos WHERE ID = p.ID AND Key = 'Email') AS Email
FROM Objetos AS p
WHERE Key = 'Tipo' AND Value = 'Pessoa' AND
      EXISTS (SELECT 1 FROM Objetos WHERE ID = p.ID AND Key = 'Evento_ID' AND Value IS NOT NULL);


-- Pergunta 2

SELECT
    (SELECT Value FROM Objetos WHERE ID = e.ID AND Key = 'Nome') AS Nome,
    (SELECT Value FROM Objetos WHERE ID = e.ID AND Key = 'Data') AS Data,
    (SELECT Value FROM Objetos WHERE ID = e.ID AND Key = 'Inicio') AS Inicio,
    (SELECT Value FROM Objetos WHERE ID = e.ID AND Key = 'Fim') AS Fim,
    (SELECT Value FROM Objetos WHERE ID = e.ID AND Key = 'Descricao') AS Descricao,
    (SELECT Value FROM Objetos WHERE
        ID = (SELECT Value FROM Objetos WHERE ID = e.ID AND Key = 'Local_ID')
        AND Key = 'Nome') AS Local
FROM Objetos AS e
WHERE Key = 'Tipo' AND Value = 'Evento' AND
      EXISTS (SELECT 1 FROM Objetos WHERE ID = e.ID AND Key = 'Local_ID');


-- Pergunta 3

  


-- Pergunta 4




-- Pergunta 5




-- Pergunta 6


