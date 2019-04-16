#Escribir una funcion en Julia que implemente el metodo de Newton para hallar una raız
#de f : R 7→ R partiendo de un punto inicial x0. La funcion debe llamarse “rnewton”,
#y tener como entrada (fun,x0,err,mit) donde fun es una funcion que dado x retorna
#f(x) y f
#0
#(x), x0 es un punto inicial en R, err es la tolerancia deseada del error y mit
#es el numero maximo de iteraciones permitidas. El algoritmo debe finalizar en la k-esima
#iteracion si vale alguna de las siguientes:
#|xk − xk−1|
#|xk|
#< err, |f(xk)| < err, k ≥ mit.
#
#La salida debe ser [hx,hf] donde hx= [x1, . . . , xN ] es el historico de puntos generados y
#hf= [f(x1), . . . , f(xN )] el historico de los respectivos valores funcionales.

function rnewton(fun,x0,err,mit)
  include("deriv.jl")

  v = fun(x0)
  hx = []
  hf = []
  push!(hx,x0)
  push!(hf,v)
  for k = 1:mit
    if (abs(x0) < err)
      println("Valores historicos de puntos generados y valores historicos de los valores funcionales")
      return (hx, hf)
    x1 = (x0 - v)/ deriv(fun,x0)
    v = fun(x1)
    push!(hf,v)
    push!(hx,x1)
    if (((abs(x1-x0))/x1) < err)
      println("Valores historicos de puntos generados y valores historicos de los valores funcionales")
      return (hx, hf)
    end
    x0 = x1
  end
  println("Se supero el maximo de iteraciones sin encontrar una raiz menor a", err)
  println("Valores historicos de puntos generados y valores historicos de los valores funcionales")
  return (hx, hf)
end