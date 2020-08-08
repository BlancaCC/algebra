{-
    Cuestiones sobre Zn
Los elemetos de Zn o son primos relativos del n ei mcd n e = 1
o son divisores del 0, es decir e (mcd r e) = 0

Granada 22/II/20
-}

tablaMultiplicarZn :: Integral a => a -> [[a]]
tablaMultiplicarZn n = [[mod (x*y) n | x<-[1..(n-1)]] | y <- [1..(n-1)]]

--- maximo común divisor algoritmo de Euclides 
mcd :: Integer -> Integer -> Integer 
mcd a 0 = a
mcd a b = mcd b (a `mod` b)

unidadesZn :: Integer -> [Integer]
unidadesZn n = filter (\x -> (mcd x n)==1) [1..(n-1)]


tablaMultiplicarUnidadesZn n =[[mod (x*y) n | x<-unidades ]| y <- unidades]
  where unidades = unidadesZn n
