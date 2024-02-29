-- Pergunta 1
SELECT Nome, Email
FROM Pessoa
WHERE Evento_ID is not null;

-- Pergunta 2
SELECT A.Nome, A.Data, A.Inicio, A.fim, A.Descricao, B.Nome as Local
FROM Evento AS A, Local AS B
WHERE A.local_ID == B.ID;

-- Pergunta 3
SELECT A.ID, A.Nome, A.Data, A.Inicio, A.fim, A.Descricao, B.Nome, B.ID as Local_ID
FROM Evento AS A, Local AS B
WHERE A.Local_ID == B.ID AND B.Nome=='UC';

-- Pergunta 4
SELECT *
FROM Evento AS A
WHERE TIME('13:00') BETWEEN TIME(A.Inicio) AND TIME(A.Fim);

-- Pergunta 5
SELECT A.Nome, A.Email, B.ID
FROM Pessoa as A, Evento as B
WHERE B.ID == A.Evento_ID AND B.Nome=='Abertura PL';

-- Pergunta 6
SELECT A.Nome, A.Email, B.ID, C.nome
FROM Pessoa as A, Evento as B, Local as C
WHERE B.ID == A.Evento_ID AND
      C.ID == B.Local_ID AND
      TIME('16:00') BETWEEN TIME(B.Inicio) AND TIME(B.Fim) AND
      C.Nome=='UC';