fatorial :: Int -> Int


fatorial 0 = 1
fatorial n = fatorial (n - 1) * n

-- fibonacci
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = (fibonacci (n - 2)) + ((fibonacci (n - 1)))

-- Números múltiplos de 7 existentes entre 0 e n
multiplo7 0 = 0
multiplo7 7 = 1
multiplo7 n | n <= 6 = 0 
            | otherwise = 1 + multiplo7 (n - 7)

-- Calculando a potencia de um número
potencia :: Int -> Int -> Int

potencia b p | p == 0 = 1
             | otherwise = b * (potencia b (p - 1))


-- Recursão para ver se um número é par ou não
isPar :: Int -> Bool

isPar n | n == 2 = True
        | otherwise = (rem n 2 == 0) && (isPar(n - 2))

-- Somatório de N números
somatorio :: Int -> Int

somatorio n | n == 0 = 0
            | otherwise = n + somatorio (n - 1)