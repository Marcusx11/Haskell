-- 1) Crie uma função para retornar a cabeça de uma lista.

cabeca (x: xs) = x

-- 2) Cria uma função para retornar a cauda de uma lista.

cauda (x: xs) = xs

-- 3) Crie uma função que receba uma lista de inteiros com tamanho maior
-- que três e retorne a soma dos três primeiros elementos.
soma3Elementos :: [Int] -> Int
soma3Elementos (x: xs) = x + (head xs) + head (tail xs)

-- 4) Crie uma função recursiva para verificar se um determinado elemento
-- pertence a uma lista.
isInLista [] n = False
isInLista (x: xs) n = if x == n then True
                      else isInLista xs n

-- 5) Crie uma função recursiva chamada zipar, ela recebe duas listas e
-- retorna uma lista com tuplas dos elementos da mesma posição Ex:
-- [1,2] [a,b] => [(1,a),(2,b)].
zipar (a: as) (b: bs) = (a, b) : zipar as bs
zipar _ _ = []

-- 6) Crie uma função recursiva que recebe uma lista de inteiros e
-- retorna uma lista com o dobro de cada elemento da primeira lista.

dobro xs = [x * 2 | x <- xs]

-- 7) Defina a função and_list :: [Bool] -> Bool que retorna a conjunção
-- da lista. Por exemplo, andList [e1; e2;...;en] = e1&&e2&&...&&en
and_list :: [Bool] -> Bool
and_list [e1] = e1
and_list (x: xs) = x && and_list xs

-- 8) Crie uma função recursiva que insere um elemento na posição “x” de
-- uma lista.
insereX newE 1 as = (newE: as)
insereX newE i (a: as) = a: insereX newE (i - 1) as

-- 9) Crie uma função recursiva que insere um elemento na última posição
-- de uma lista caso ele não exista.

insereUlt e [] = [e]
insereUlt e (a: as) = if a /= e then (a: insereUlt e as)
                      else (a: as)

-- 10) Crie uma função recursiva que recebe uma lista de inteiros e
-- retorna o maior elemento.
maiorElement [e] = e
maiorElement (x: xs) = if x > maiorElement xs then x
                       else maiorElement xs

-- 11) Defina as seguintes listas por compreensão:
-- a) [0,3,6,9,12,15]
tabuada3 = [x | x <- [0..15], mod x 3 == 0]
-- b) Os múltiplos de 2 e 3 entre 0 e 20.
multiplos23 = [x | x <- [0..20], mod x 2 == 0 && mod x 3 == 0]
-- c) [[1],[2],[3],[4],[5]]
listaListas = [ [x] | x <- [1..5]]
-- d) [[1], [1,1], [1,1,1], [1,1,1,1], [1,1,1,1,1]]
listaUms = [replicate x 1 | x <- [1..5]]
-- e)[(1,3),(1,2),(1,1),(2,3),(2,2),(2,1),(3,3),(3,2),(3,1)].
listaTuplas = [ (x, y) | x <- [1, 2, 3], y <- [3, 2, 1] ]

-- 12) Defina uma função que dada uma lista de inteiros, retorna o número
-- de elementos de valor superior a um número n qualquer.
-- >retornaSup 4 [3,2,5,6]
-- 2.
retornaSup n [] = 0
retornaSup n (x: xs) = if n > x then 1 + retornaSup n xs
                       else retornaSup n xs

-- 13) Faça uma função que recebe duas listas e faça a interseção delas.
-- Obs: a interseção não tem repetição de elementos.
intersecao [] _ = []
intersecao (x:xs) ys
    | x `elem` ys = x : intersecao xs ys
    | otherwise = intersecao xs ys


-- 14) Defina a função tabuada :: Int -> [(Int, Int, Int)] que dado um
-- inteiro n produz uma lista da tabuada dos n números inteiros.

tabuada :: Int -> [(Int, Int, Int)]

tabuada n = [(n, x, n*x) | x <- [1..10]]

-- 15) Função para sequência: recebe dois números naturais n e m, e
-- retorna uma lista com n elementos, onde o primeiro é m, o segundo é m+1,
-- etc...
-- Ex.: sequencia 0 2 ==> []
-- sequencia 3 4 ==> [4,5,6]

sequencia 0 m = []
sequencia n m = m: sequencia (n-1) (m+1)