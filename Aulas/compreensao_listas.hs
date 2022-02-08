-- Utilização da teoria de conjuntos da matemática

-- Em Haskell, podemos definir uma lista a partir de outra através de notações semelhantes de conjuntos
-- ghci> [x^2 | x <- [1, 2, 3, 4, 5]]
--       [1,4,9,16,25]

-- [ Padrão de geração | Gerador da lista ]
-- ghci> [ x | x <- [1..10]] 
--       [1,2,3,4,5,6,7,8,9,10]

-- Pode-se criar múltiplos geradores

-- ghci> [ (x, y) | x <- [1, 2, 3], y <- [4, 5]  ]
--       [(1,4),(1,5),(2,4),(2,5),(3,4),(3,5)]

-- A ordem dos geradores pode alterar o resultado
-- ghci> [ (x, y) | y <- [4, 5], x <- [1, 2, 3]  ]
--       [(1,4),(2,4),(3,4),(1,5),(2,5),(3,5)]

-- Pode-se usar um gerador para outro gerador
-- ghci> [ (x, y) | x <- [1..3], y <- [x..3] ]
--       [(1,1),(1,2),(1,3),(2,2),(2,3),(3,3)]

-- Concatena várias listas em uma só
-- concat [[1, 2, 3], [4, 5], [6, 7, 8, 9] ]
--        [1,2,3,4,5,6,7,8,9]

myConcat :: [[a]] -> [a]

myConcat xss = [x | xs <- xss, x <- xs]

-- Guarda = Posso criar uma lista em que podemos definir uma condição para gerar ela
-- ghci> [ x | x <- [1..10], x `mod` 2 == 0 ]
--       [2,4,6,8,10]

divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

primo :: Int -> Bool
primo n = divisores n == [1, n]

primos :: Int -> [Int]

primos n = [x | x <- [1..n], primo x]

-- Ver se a lista está em ordem crescente
-- zipar cria uma lista de tuplas a partir dos elementos de 2 listas

zipar (a: as) (b: bs) = (a, b) : zipar as bs
zipar _ _ = []

-- pares [1, 2, 3, 4, 5] -> [(1, 2), (2, 3), (3, 4), (4, 5)]
pares :: [a] -> [(a, a)]

pares xs = zipar xs (tail xs)

crescente :: Ord a => [a] -> Bool
crescente xs = and [x <= y | (x, y) <- pares xs ]

-- Procurar um valor numa lista e obter todos os seus índices
indices :: Eq a => a -> [a] -> [Int]

indices x ys = [ i | (i, y) <- zip [0..n] ys, x == y ]
               where n = length ys - 1