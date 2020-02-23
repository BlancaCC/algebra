{-
  Cálculo de los coeficientes de BEZOUT
  bezout x y = (r,a,b)
  que significa a*x+b*y = r


Granada 22/II/20

Ejemplo de ejecución: 
*Main> bezout 36 7
(1,1,-5)
*Main> bezout 7 36
(1,-5,1)

-}

bezout :: Integral a => a -> a -> (a, a, a)
bezout x y = (bezout' (x,1,0) (y,0,1))

bezout':: Integral a => (a, a, a) -> (a, a, a) -> (a, a, a)
bezout' (r1,x1,y1) (r2,x2,y2) 
  | r2 == 0 = (r1,x1,y1)
  | otherwise = bezout'(r2,x2,y2) (r3,x3,y3)
  where
    d = r1 `div` r2
    r3 = r1 - d*r2
    x3 = x1 - d*x2
    y3 = y1 - d*y2
    
{- Cómo calcular en el inverso de una unidad en  Zn: 
Sea z unos de las unidadesdes), su mcd( z,n) = 1
Al aplicar (Bezou z n) obtenderemos (r, a, b) esto quiere decir que r = az + nb 

Como estamos en Zn tenemos entonces que r = az + 0b = az 
Por tanto a es el inverso de z, a = a `mod` n (para verlo en su clase de equivalencia. 
-}
