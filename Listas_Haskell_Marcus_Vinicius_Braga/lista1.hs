-- 1) Crie uma função para verificar se uma letra é minúscula (Não use
-- funções do Prelude).

isLower x | x == 'a' = 'a' 
          | x == 'b' = 'b' 
          | x == 'c' = 'c' 
          | x == 'd' = 'd'     
          | x == 'e' = 'e'    
          | x == 'f' = 'f' 
          | x == 'g' = 'g'     
          | x == 'h' = 'h'   
          | x == 'i' = 'i'   
          | x == 'j' = 'j'   
          | x == 'k' = 'k'   
          | x == 'l' = 'l'   
          | x == 'm' = 'm'   
          | x == 'n' = 'n'   
          | x == 'o' = 'o'   
          | x == 'p' = 'p'   
          | x == 'q' = 'q'  
          | x == 'r' = 'r'   
          | x == 's' = 's'   
          | x == 't' = 't'   
          | x == 'u' = 'u'  
          | x == 'v' = 'v'   
          | x == 'w' = 'w'   
          | x == 'x' = 'x'  
          | x == 'y' = 'y'    
          | x == 'z' = 'z'

-- 2) Crie uma função para retornar o valor absoluto.

modulo x = if x < 0 then x * (-1)
           else x

-- 3) Crie uma função que recebe um número e retorne seu antecessor se
-- for maior que zero.

antecessorIfMaiorZero x = if x > 0 then x - 1
                          else x

-- 4) Crie três versões de uma mesma função que ao receber três valores x
-- y z, retorne 10 se x for 7 retornar 20 se y for 8 e retornar 30 se
-- z for 9. Em uma versão utilize padrões de função, outra deve ter
-- variáveis anônimas e a última, comando de guarda ou condicional.
funcao1 x y z = if x == 7 then 10
                else if y == 8 then 20
                else if z == 9 then 30
                else -1

funcao21 x _ _ | x == 7 = 10 | otherwise = -1
funcao22 _ y _ | y == 8 = 20 | otherwise = -1
funcao23 _ _ z | z == 9 = 30 | otherwise = -1

funcao3 x y z | x == 7 = 10 | y == 8 = 20 | z == 9 = 30 | otherwise = -1

-- 5) Crie uma função utilizando variáveis anônimas para definir a função
-- lógica “and”
andV2 True True = True
andV2 _ _ = False

-- 6) Crie uma função utilizando variáveis anônimas para definir a função
-- lógica “or”
orV2 False False = False
orV2 _ _ = True

-- 7) Crie uma função comDesconto :: Float -> Float que, dado o valor de
-- uma mercadoria, calcule o valor com desconto segundo as regras
-- abaixo:
-- -Valor < 50.0, desconto de 0%
-- -Valor >=50.0 e < 100.0 , desconto de 5%
-- -Valor >= 100.0 e < 300.0 , desconto de 10%
-- -Valor >= 300.0, desconto de 15%
comDesconto :: Float -> Float

comDesconto valor | valor < 50.0 = valor 
                  | valor >= 50.0 && valor < 100.0 = valor * 0.95
                  | valor >= 100.0 && valor < 300.0 = valor * 0.90
                  | valor >= 300.0 = valor * 0.85
                  | otherwise = valor

-- 8) Faça uma função recursiva para calcular a potência de dois. Por
-- exemplo, potDois 3 significa 2^3.
potDois 1 = 2
potDois n = 2 * potDois (n-1)

-- 9) Dados três comprimentos de lados, verifique se podem formar um
-- triângulo. Observações: O comprimento de um lado do triângulo é
-- sempre menor do que a soma dos outros dois. Retorne também o tipo
-- do triângulo:
-- Equilátero > Todos lados iguais
-- Isósceles > Dois lados iguais
-- Escaleno > Todos os lados diferentes
triangulo a b c | a > b + c = "Nao eh triangulo"
                | b > a + c = "Nao eh triangulo"
                | c > a + b = "Nao eh triangulo"
                | a == b && b == c = "Trianglo equilatero"
                | a == b || a == c || b == c = "Triangulo isosceles"
                | otherwise = "Triangulo escaleno"

-- 10) Dado um valor monetário em Reais, faça um programa que devolve uma
-- tupla-3 contendo o valor em Real, e sua conversão para Euro (1Real =
-- 0.448Euro) e Dólar (1R =0.547USD), como no exemplo abaixo:
-- > valorRealConvertido 500.8
-- ((500.8,"Real"),(224.3584,"Euro"),(273.9376,"Dolar"))
valorRealConvertido x = ((x, "Real"), (x * 0.448, "Euro"), (x * 0.547, "Dolar"))

-- 11) Crie uma função para calcular a expressão 3 * 5, usando uma
-- definição recursiva.

expressao x 1 = x
expressao x y = x + expressao x (y-1)

-- 12) Dado um número natural n > 0, n é dito perfeito se a soma de seus
-- divisores, incluindo o número 1, é igual ao próprio n. O primeiro número
-- natural perfeito é o número 6, porque 6=1+2+3. Defina uma função
-- eperfeito(n) que informe se n é, ou não, um número perfeito. Outros
-- números perfeitos: 28, 496 e 8.128.

eperfeito n | sum (1 : filter ((==0) . rem n) [2 .. n `div` 2]) == n = True
           | otherwise = False

-- 13) Considere o algoritmo a seguir que gera uma seqüência de números
-- naturais não nulos, a partir de um número natural n > 0. Se n for par,
-- divida-o por 2. Se n for ímpar, multiplique-o por 3 e some 1. Repita este
-- processo com o novo valor de n, até que ele seja igual a 1, se possível.
-- Por exemplo, para n = 22, a seqüência é: 22, 11, 34, 17, 52, 26, 13, 40,
-- 20, 10, 5, 16, 8, 4, 2 e 1. Para cada n, define-se o tamanho do ciclo de
-- n como a quantidade de números da seqüência gerada, incluindo o número 1.
-- No exemplo acima, o tamanho do ciclo para n = 22 é 16. Defina uma função
-- tamciclo(n) que dê como resultado o tamanho do ciclo de n.

tamciclo :: Int -> Int
tamciclo n | n == 1 = 1
           | mod n 2 == 0 = 1 + (tamciclo(div n 2))
           | otherwise = 1 + (tamciclo((n * 3) + 1))

-- 14) Dados dois números naturais, x e y, ambos maiores que zero, defina
-- uma função mdc(x,y) que dê como resultado o máximo divisor comum entre x
-- e y.
              
mdc :: Integral a => a -> a -> a
mdc a b | mod a b == 0 = b
        | mod b a == 0 = a
        | a > b = mdc b (mod a b)
        | a < b = mdc a (mod b a)