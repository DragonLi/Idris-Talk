module Example1

fact' : Nat -> Nat
fact' Z = 1
fact' (S k) = (S k)*(fact' k)
