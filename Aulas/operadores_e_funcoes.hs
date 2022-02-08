-- Operadores aritméticos podem ser usados como funções também
-- (+) 4 5 (Irá fazer a soam de 4 com 5)

-- Funções podem ser usadas como operadores ao adicionar aspas de crase (`)
-- 4 `mod` 2 (Irá fazer o resto da divisão inteira de 4 com 2)
areaQuadrado b a = b * a

-- Função constantes em Haskell - Não é uma VARIÁVEL constante
-- Essa função vai SEMPRE retornar um valor 12
funcaoConstante = 12

soma x y = x + y

-- Criando-se funções utilizando-se de outras funções
soma3 x y z = soma (soma x y) z

media3 x y z = (soma3 x y z) / 3

-- Calculando-se a média de 4 números
media4 a b c d = (soma (soma3 a b c) d) / 4

-- Cálculo da hipotenusa
hipotenusa c1 c2 = sqrt (soma (c1 * c1) (c2 * c2))

-- where é usado para definir funções locais
a = b + c
    where b = 1;
          c = 2; -- Em cada final da definição do where deve-se colocar ";"


d = a * 2
---------------------------------------

-- O let primeiro define as coisas e depois as usa. Mas seu funcionamento é o mesmo do where
a2 = let b = 1
         c = 2
         in b + c