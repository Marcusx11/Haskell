-- fst = Pega-se o primeiro elemento da tupla
-- snd = Pega-se o segundo elemento da tupla


first (x, _) = x
second (_, x) = x

-- Criando-se estruturas de dados com o type
type Seq = String
type Estacoes = (Seq, Seq, Seq, Seq)

fNomesEstacoes :: Estacoes
fNomesEstacoes = ("Primavera", "Verao", "Outono", "Inverno")

primeiraEstacao :: Estacoes -> Seq

primeiraEstacao (x, _, _, _) = x

type Nome = String
type Idade = Int
type Peso = Float
type Esporte = String

type Pessoa = (Nome, Idade, Peso, Esporte)

esportePreferido :: Pessoa -> Esporte
esportePreferido (_, _, _, x) = x

maisNova :: Pessoa -> Pessoa -> Nome

maisNova (n1, x, _, _) (n2, y, _, _) = if (x < y) then n1
                                       else n2