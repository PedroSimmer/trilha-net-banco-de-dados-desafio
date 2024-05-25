
-- 1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lan�ados em 1997

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = '1997'

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > '2000'

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

-- Mostra o resultado informado no desafio--
SELECT
 Ano,
 COUNT (*) Quantidade
 FROM Filmes
 GROUP BY Ano
 ORDER BY Quantidade DESC

 /* mostra o resultado solicitado na quest�o 7
 SELECT
 Ano,
 COUNT (*) Quantidade
 FROM Filmes
 GROUP BY Ano
 ORDER BY MAX(Duracao) DESC
 */

 -- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
 --Mostra o resultado informado no Desafio

 SELECT * FROM Atores
 WHERE Genero = 'M'
 
/* Mostra o que pede no enunciado da quest�o 8

 SELECT Atores.PrimeiroNome,Atores.UltimoNome FROM Atores
 WHERE Genero = 'M'
*/ 



 -- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
 -- Apresenta o resultado informado no desafio
 
 SELECT * FROM Atores
 WHERE Genero = 'F'
 ORDER BY PrimeiroNome
 
 +/* O que � realmente solicitado na quest�o 9

 SELECT PrimeiroNome, UltimoNome FROM Atores
 WHERE Genero = 'F'
 ORDER BY PrimeiroNome
 */


 -- 10 - Buscar o nome do filme e o g�nero

SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

 /*
SELECT * FROM Filmes
SELECT * From FilmesGenero
SELECT * FROM Generos
*/

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mist�rio'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT 
Filmes.Nome, 
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel

FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor


