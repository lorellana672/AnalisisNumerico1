#Escribir una funcion en Julia que implemente el metodo de iteracion de punto fijo para
#hallar un punto fijo de φ : R 7→ R partiendo de un punto inicial x0. La funcion debe
#llamarse “ripf”, y tener como entrada (fun,x0,err,mit) donde fun es una funcion que
#dado x retorna φ(x), x0 es un punto en R, err es la tolerancia deseada del error y mit
#es el numero maximo de iteraciones permitidas. El algoritmo debe finalizar en la k-esima
#iteracion si |xk − xk−1| < err o k ≥ mit. La salida debe ser hx donde hx= [x1, . . . , xN ] es
#el historico de puntos generados.

function ripf(fun,x0,err,mit)
  hx = []
  for k=1:mit
    push!(hx,x0)
    if (abs(x0-fun(x0)) < err)
      return(hx)
    end
    x0 = fun(x0)
  end
  println("Se supero el maximo de iteraciones sin encontrar una raiz menor a", err)
  return (hx)
end