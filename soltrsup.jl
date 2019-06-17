function soltrsup(a,b)
include("soltrinf.jl")

w=[]
  a=flipdim(a,2)   #flip left rigth, espeja la matriz 
  a=flipdim(a,1)   #flip upside down, ahora a es una triangular inferior
  b=flipdim(b,2)
  w=soltrinf(a,b)  #utilizo la otra formula
  w=flipdim(w,2)
end