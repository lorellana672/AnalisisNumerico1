function rbisec(fun,I,err,mit) 

#fun es una funcion que dado x
#retorna f(x), I= [a, b] es un intervalo en R, err es la tolerancia deseada del error y mit
#es el numero maximo de iteraciones permitidas. El algoritmo debe finalizar en la k-esima
#iteracion si |f(xk)| <err o si k ≥mit. Los argumentos de salida deben ser [hx,hf] donde
#hx= [x1, . . . , xN ] es el historico de puntos medios y hf= [f(x1), . . . , f(xN )] el historico de
# los respectivos valores funcionales.

  a = I[1]
  b = I[2]
  u = fun(a)
  v = fun(b)
  e = a-b
  hx = []
  hf = []
  push!(hx,e)
  push!(hf,fun(e))
  if(sign(u) == sign(v))
    return (hx, hf)
  end
  for k= 0:mit
    e = e/2
    c = a+e
    w = fun(c)
    push!(hx,e)
    push!(hf,fun(e))
    if(abs(e) < err)
      return (hx, hf)
    end
    if (sign(w) != sign(u))
      b = c
      v = w
    else 
      a = c
      u = w
    end
  end 
  println("Se paso del maximo de iteraciones sin encontrar una raiz con error menor a", err)
  return (hx,hf)
end
