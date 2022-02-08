-- Funções anônimas (Conceitos)

-- • Alonzo Church inventou um sistema formal, chamado λ-calculus (Lambda
-- Cálculo) , e definiu a noção de função computável utilizando este sistema.
-- • O Lambda Cálculo pode ser chamado “a menor linguagem de programação
-- universal” do mundo. As linguagens funcionais são baseadas nesse conceito.
-- • O lambda cálculo pode ser visto como uma linguagem de programação
-- abstrata em que funções podem ser combinadas para formar outras
-- funções, de uma forma pura.
-- • Como dito anteriormente, o lambda cálculo trata funções como cidadãos de
-- primeira classe, isto é, entidades que podem, como um dado qualquer, ser
-- utilizadas como argumentos e retornadas como valores de outras funções.
-- Funções

-- Uma abstração lambda é um tipo de expressão que denota uma função:
-- (λx. X + 1)

-- O λ determina que existe uma função, e é imediatamente seguido por uma
-- variável, denominada parâmetro formal da função.

-- Exemplo: Fazendo um número elevado a 2
-- ghci> (\x -> x * x) 5
-- 25

-- Outra forma mas retornando uma lista com o número e seu resultado da potencia
-- ghci> (\x -> x : x * x: []) 5
-- [5,25]

-- ghci> (\(x1, y1) (x2, y2) -> (x1, y2)) (2, 3) (4, 5)
-- (2,5)

-- A ideia das funções anônimas é melhoras a facilidade de escrita
cauda = \(_: c) -> c

trocaPares xs = map troca xs
                where troca (x, y) = (y, x)

-- ghci> trocaPares [(3, 1), (4, 2), (5, 3)]
-- [(1,3),(2,4),(3,5)]

trocaParesAF xs = map (\(x, y) -> (y, x)) xs

-- ghci> trocaParesAF [(3, 1), (4, 2), (5, 3)]
-- [(1,3),(2,4),(3,5)]