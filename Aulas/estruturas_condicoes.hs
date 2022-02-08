-- if then else

abs2:: Float -> Float
abs2 x = if x > 0 then x
        else -x

-- Sempre deve-se usar o else

sinal:: Int -> Int
sinal x = if (x > 0) then 1
          else if (x == 0) then 0
          else -1

-- Comando de Guarda = Outra forma de expressar as condições
-- Otherwise é como se fosse um "else" final
-- Sempre deve garantir um retorno
sinalV2:: Int -> Int
sinalV2 x | x > 0 = 1 
          | x == 0 = 0
          | otherwise = -1

-- Múltiplas Equações
ou :: Bool -> Bool -> Bool
ou False False = False
ou True False = True
ou False True = True
ou True True = True

-- Casamento de Padrão (Variável Anônima)
ouV2 :: Bool -> Bool -> Bool
ouV2 False False = False
ouV2 _ _ = True -- "_" é anônimo, não importando qual parâmetro seja

-- Calculando a distância entre dois pontos
formulaDistancia2Pontos :: Float -> Float -> Float -> Float -> Float
exponenciacao :: Float -> Float

exponenciacao a = a * a 
formulaDistancia2Pontos x1 x2 y1 y2 = sqrt ( exponenciacao (x2 - x1) + exponenciacao (y2 - y1) )

-- Verificando se um número é par ou ímpar
isPar :: Int -> Bool
isPar x = if (rem x 2 == 0) then True
          else False
