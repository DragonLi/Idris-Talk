module VectWithSum

data VectSum : Nat -> Nat -> Type where
     Nil : VectSum Z Z
     (::) : (b : Nat) ->
            VectSum k a ->
            VectSum (S k) (b + a)

(++) : VectSum n i -> VectSum m k -> VectSum (n + m) (i + k)
(++) Nil v     = v
(++) (x::xs) v = ?Vect2

-- Example2.Vec2 = proof
--   intros
--   rewrite plusAssociative x a k
--   exact x :: ( xs ++ v )

-- data Vect' a : Nat -> Type where
--   Nil : Vect' a Z
--  (::) : a -> Vect' a n -> Vect' a (S n)
