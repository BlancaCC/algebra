{-
GRUPO RAÍCES N-ÉSIMAS DE LA UNIDAD

Son las raíces (complejas) de z^n = 1

Consideraciones matemáticas:

Forman un grupo:
- Propiedad asociativa
- Existencia elemento neutro (1)
- Existencia elemento simétrico
      si z = cos(O)+i sin(O)  => z' = cos(-O)+i sin(-O) cumple que z*z' = cos(O-O)+i sin(O-O) = 1


Las únicas soluciones son de la forma:
(Esto es consecuenca de la fórmula de moivre)

cos( 2pi/n * k) + i sin( 2pi/n * k) con 0<= k <n k natural 


Granada 23 /II/20 
-}

data  Imaginario a = Re a | Im a   deriving Show 

grupoRaicesUnidaded n = [(Re (cos(2*pi /n * k)), Im (sin(2*pi /n * k)) ) | k <- [0..(n-1)] ]


{-
Ejemplo de ejecución: (Funciona regular con los redondeos :( ) 
*Main> grupoRaicesUnidaded 1
[(Re 1.0,Im 0.0)]
*Main> grupoRaicesUnidaded 2
[(Re 1.0,Im 0.0),(Re (-1.0),Im 1.2246467991473532e-16)]


-}
