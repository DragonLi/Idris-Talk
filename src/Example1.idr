module Example1

fact' : Nat -> Nat
fact' Z = 1
fact' (S k) = (S k)*(fact' k)

data VectSum : Nat -> Nat -> Type where
     Nil : VectSum Z Z
     (::) : (b : Nat) -> VectSum k a -> VectSum (S k) (b + a)

(++) : VectSum n i -> VectSum m k -> VectSum (n + m) (i + k)
(++) Nil v     = v
(++) (x::xs) v = ?Vec2

Example1.Vec2 = proof
  intros
  rewrite plusAssociative x a k
  exact x :: ( xs ++ v )
