module Symb where

newtype Symb = Sym String deriving  (Eq)

instance Show Symb where
  show (Sym x)= Prelude.show x


instance Num Symb where
  (Sym x) * (Sym y) = Sym (x++y)
  (Sym x) + (Sym y) = Sym (x++"+"++y)
  abs x =x
  signum x=x
  fromInteger x= Sym $ Prelude.show x
  negate x=x
