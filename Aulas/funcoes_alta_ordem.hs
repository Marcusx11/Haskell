-- O paradigma do Haskell trata as funções como sendo de primeira ordem

-- Uma função é definida como de ordem superior se tem um argumento dela que é uma função ou se ela retorna uma função
import Data.Char

duasVezes :: (a -> a) -> a -> a
duasVezes f x = f (f x)

dobra x = 2 * x
triplica x = 3 * x

app :: (a -> b) -> (a, a) -> (b, b)

app f (x, y) = (f x, f y)

-- ghci> app chr (95, 96)
--       ('_','`')

-- Encadeamento de funções
-- Em Haskell, todas as funções são unárias (de um único parâmetro)
-- mult 2 5 -> (mult 2) 5 - Saída -> mult 5 -> 10
-- O conceito de Currying ajuda as funções a ficarem mais genéricas para uso

mult :: Int -> Int -> Int
mult x y = x * y

dobrar :: Int -> Int
dobrar = mult 2
triplicar = mult 3

-- No paradigma funcional, as funções retornam outras funções esperando algum outro parâmetro para sua resolução
-- ghci> (5+)7
--       12

-- A maioria das definições sobre listas se encaixam em três casos:

-- • folding - colocação de um operador entre os elementos de uma lista;
-- • filtering - filtra alguns elementos da lista;
-- • mapping - a aplicação de funções a todos os elementos da lista.

-- ghci> filter isDigit "123r345fedfd"
-- "123345"
-- ghci> filter isDigit "aaaa"        
-- ""
-- ghci> filter (6<=) [1, 2, 5, 7, 10, 4, 7, 5, 6, 8]
-- [7,10,7,6,8]

-- ghci> map dobrar [1..4]
-- [2,4,6,8]