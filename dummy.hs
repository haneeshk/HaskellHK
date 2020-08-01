Haneesh Kesari. This is an e-ink monitor.

import Data.Optional

nIntegrate:: (Double->Double)->Double->Double->Double
nIntegrate f xmin xmax = sum [a*b | (a,b)<-dt ] where
    dt  = zip (map f xms) dxs
    dxs = [(xs !! i) -xs !! (i-1) | i<- [1..length xs-1] ]
    xms = [0.5*((xs !! i) + xs !! (i-1)) | i<- [1..length xs-1] ]
    xs  =[xmin,0.01..xmax]

data FuncInput = BasicInput {age::Int, weight::Int} | BasicInput {age::Int, weight::Int, height::Int} deriving(Show)

dt={x=1,y=2}

bi=BasicInput {age=1, weight=2}
mi=ModerateInput {age=1,weight=2,height=3}

bi
mi
:t func

func::FuncInput->Int
func BasicInput {age=age, weight=weight}=age+weight
func ModerateInput {age=age, weight=weight,height=height}=age+weight+height


func2::FuncInput->Int
func2 x=age x+weight x+height x
func2 x=age x+weight x

func2 mi
func2 bi


func bi
func mi


weight bi
weight mi

height mi

func bi
func mi

func:: (Double,Double)->Double
func (x,y) =x+y

func (1.0,2.0)
func 1.0

π=3.14
nIntegrate sin 0 π/2
import Data.Op
