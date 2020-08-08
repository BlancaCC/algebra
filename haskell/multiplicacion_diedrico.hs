import qualified Data.Set as S

-- Esta operación multiplica r^k s^j r^a s^b = r^x s^y, dentro del grupo D_8
op :: Integral a => (a,a) -> (a,a) ->(a,a)
op (a, 0) (b, c) =(mod (a+b) 8 , mod c 2)
op (a,d) (b,c) = (mod (a-b) 8 , mod (c+d) 2)

-- Se corresponde a 
ini = [(2,0),(0,1)]

-- Opera todas las combinaciones de lxl 
f :: Integral a => [(a, a)] -> [(a, a)]
f l = S.toList $ S.fromList $ [op x y | x <- l , y <- l]

-- Con esto hacemos <r^2,s> (en la tercera iteración ya no se producen nuevos elementos
l = (take 5 (iterate f ini))!! 4

-- finalmente esta matrix contiene 
r = [map (\x -> op e x) l | e<- l]


{-- Resultado de r
[
[(0,0),(0,1),(2,0),(2,1),(4,0),(4,1),(6,0),(6,1)],
[(0,1),(0,0),(6,1),(6,0),(4,1),(4,0),(2,1),(2,0)],
[(2,0),(2,1),(4,0),(4,1),(6,0),(6,1),(0,0),(0,1)],
[(2,1),(2,0),(0,1),(0,0),(6,1),(6,0),(4,1),(4,0)],
[(4,0),(4,1),(6,0),(6,1),(0,0),(0,1),(2,0),(2,1)],
[(4,1),(4,0),(2,1),(2,0),(0,1),(0,0),(6,1),(6,0)],
[(6,0),(6,1),(0,0),(0,1),(2,0),(2,1),(4,0),(4,1)],
[(6,1),(6,0),(4,1),(4,0),(2,1),(2,0),(0,1),(0,0)]
]

--}
