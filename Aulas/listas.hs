-- O último elemento de listas em Haskell é uma lista vazia

-- Operador de concatenação de listas = "++"

-- Toda String é uma lista de Char
-- ['O', 'l', 'a'] == "Ola"
-- True


-- Há várias funções prontas do Haskell para manipular listas
-- A função "words" "tokeniza" uma String em uma lista de Strings, sendo cada elemento uma separação de espaço
-- >    words "O rato roeu a roupa do rei de rouma"
-- >    ["O","rato","roeu","a","roupa","do","rei","de","rouma"]
-- É uma "lista de listas" tecnicamente pelas Strings serem uma lista de Char

-- "unwords" faz o caminho inverso
-- ghci> unwords ["O","rato","roeu","a","roupa","do","rei","de","rouma"]
--       "O rato roeu a roupa do rei de rouma"

-- Pode-se usar sequências aritméticas para se criar uma lista
--  ghci> [1..10] -> Lista de números do 1 ao 10
--      [1,2,3,4,5,6,7,8,9,10]

-- ghci> [1, 3..10] -> Lista de números de 1 a 10 pulando-se 2 em 2 números
--      [1,3,5,7,9]

-- ghci> [10,9..2] -> Lista de 10 a 1. Deve-se informar como será a forma de decremento
--      [10,9,8,7,6,5,4,3,2]

-- Produtório
produtorio :: [Int] -> Int
produtorio [] = 1
-- Operador de "split", pegando-se o primeiro elemento como "x" e deixando o resto da lista como "xs"
produtorio (x:xs) = x * produtorio xs

-- Vendo quantidade de elementos da lista
-- "a" indica qualquer tipo de lista
qtdElementos :: [a] -> Int

qtdElementos [] = 0
qtdElementos (_: xs) = 1 + qtdElementos xs

-- EXERCÍCIOS LISTAS --
-- 1) Retornando todas as letras do alfabeto
alfabeto = ['a'..'z']

-- 2) Retornando de 200 a 0
retorno200a0 = [200, 199..0]

-- 3) Retornar o inverso de uma lista
inverso [x] = [x]
inverso (x: xs) = inverso(xs) ++ [x]

-- 4) Pegando-se os "n" primeiros elementos de uma lista
nPrimeirosElementos :: [a] -> Int -> [a]
nPrimeirosElementos (x: xs) n | n == 1 = [x]
                              | otherwise = [x] ++ (nPrimeirosElementos xs (n - 1))

-- 5) Removendo-se os "n" primeiros elementos de uma lista
removeNPrimeirosElementos :: [a] -> Int -> [a]
removeNPrimeirosElementos (x: xs) n | n == 1 = xs
                                    | otherwise = removeNPrimeirosElementos xs (n - 1)


-- 6) Removendo-se o último elemento da lista
removeUltimoLista [x] = []
removeUltimoLista (x : xs) = [x] ++ removeUltimoLista xs

-- 7) Removendo-se os "n" últimos elementos da lista
removeNUltimos [x] n = []
removeNUltimos (x : xs) n = if n <= n then removeNUltimos xs n ++ []
                            else [x] ++ removeNUltimos xs (n - 1)