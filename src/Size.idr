module Size

fact' : Nat -> Nat
fact' Z = 1
fact' (S k) = (S k)*(fact' k)

size : Vect n a -> Nat
size {n=n} _ = n
