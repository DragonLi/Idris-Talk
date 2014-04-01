module Example3

vecHead : Vect n a -> so (n > 0) -> a
vecHead (x :: xs) _ = x

vecHead' : Vect (S n) a -> a
vecHead' (x :: xs) =  x

vectMap : (A : Type) -> ( B : Type)
          -> (A -> B)-> Vect n A -> Vect n B
vectMap _  _  f Nil     = Nil
vectMap t1 t2 f (x::xs) = f x :: vectMap t1 t2 f xs

vectMap' : {A : Type} -> {B : Type}
           -> (A -> B)-> Vect n A -> Vect n B
vectMap' f Nil     = Nil
vectMap' f (x::xs) = f x :: vectMap' f xs

vectMap'' : (a -> b)-> Vect n a -> Vect n b
vectMap'' f Nil     = Nil
vectMap'' f (x::xs) = f x :: vectMap'' f xs
