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


-- Exercício 2
isIguais = do
           print("Digite o numero 1: ")
           a <- getLine
           print("Digite o numero 2: ")
           b <- getLine
           print("Digite o numero 3: ")
           c <- getLine
           if (a == b) && (b == c)
               then print("Numeros iguais")
               else print("Numeros nao sao iguais")




areaHeron a b c = sqrt (s * (s - a) * (s - b) * (s - c))
                  where s = (a + b + c) / 2