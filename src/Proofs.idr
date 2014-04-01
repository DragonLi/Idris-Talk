module Proofs

plusReducesZ : (n:Nat) -> n = plus n Z
plusReducesZ Z     = refl
plusReducesZ (S k) = cong (plusReducesZ k)

plusReducesS : (n:Nat) -> (m:Nat) -> S (plus n m) = plus n (S m)
plusReducesS Z     m = ?t2
plusReducesS (S k) m = ?t3

plusAssoc : plus n (plus m o) = plus (plus n m) o
plusAssoc = ?t4

-- Proofs.t1 = proof
--   intro
--   compute
--   rewrite plusReducesZ k
--   trivial

-- Proofs.t2 = proof
--   intro
--   trivial

-- Proofs.t3 = proof
--   intros
--   let hi = plusReducesS k m
--   rewrite hi
--   trivial

-- Proofs.t4 = proof
--   intros
--   induction n
--   compute
--   trivial
--   intros
--   compute
--   rewrite ihn__0
--   trivial
