#derivada de una funcion

function deriv(fun,x)
  h = 0.00001
  return (fun(x + h) - fun(x)) / h
end