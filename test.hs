module Test where
  import Data.List
  import Symb
  -- :set -interactive-print=Text.Show.Unicode.uprint
  import Text.Show.Unicode
  -- newtype Symb = Symb {name::String}  deriving  (Eq, Show)
  -- x= Symb {name="x"}
  -- y= Symb {name="µµµ"}



  fmtStrPrelim:: [Char]->[(Char, Int)]
  fmtStrPrelim str = zip  uniqStr [length x | x<- dummy]
          where
            uniqStr=nub str
            dummy=[ [(x,y) | y<- str, y==x ] | x<-uniqStr]


  fmtStr ::[Char]->[Char]
  fmtStr str= concat $ [[a,'\\','^',head (Symb.show b)]  | (a,b)<-terms]
    where terms=fmtStrPrelim str






  simplify::  Symb ->Symb
  simplify (Sym x) = Sym (fmtStr x)


-- name
-- ans=simplify (x*y*x*x*x*x*x)
--
-- g:'\\':'^':[]="x\\^"
-- g
-- xs
-- Sym name=ans
-- name
-- fmtPrelim "xxxxjiuiuiu"
--
--
-- import latex-formula-image
--
--
-- import
--
--
--
--
--
--
--
-- ToPowers::[Char]->[Char]
--
--
-- y= Sym "y"
--
-- t=x*y
-- t
-- instance Show Var  where
--  show x = print "Hello"
--
-- t*x*x
-- fmt
--
--
--
--
--
--
--
--
--
-- m:: String->int->Symb
-- "x" `m` 2
--
-- instance Num Color where
--  Red*Red =Blue
--  Blue*Blue = Red
--  Red*Blue = Red
--  Blue*Red = Blue
--  Blue*(x::Integer) = Blue
-- 37.05+35.31+166.22+143.36
--
--
--
--
--
-- x= Blue::Color
-- y= Green::Color
--
-- y
-- x
-- y
-- y*y
-- x*x
-- x*y
-- (1+x)*3
--
--
--
--
--
--
-- instance Show Color where
--  show Red = "😡"
--  show Blue = "🥶"
--  show Green = "▶︎"
