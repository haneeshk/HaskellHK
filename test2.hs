
fn:: (Num a)=>a->a
  fn x = x*x


  fmtStrPrelim:: [Char]->[(Char, Int)]
  fmtStrPrelim str = zip  uniqStr [length x | x<- dummy]
          where
            uniqStr=nub str
            dummy=[ [(x,y) | y<- str, y==x ] | x<-uniqStr]


y=map fn [1.0..n]
      where

  n=4.0

y

Redundant where
Found:
where
Why Not:
