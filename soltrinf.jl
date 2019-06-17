#La matriz se agrega como w=[1 2 3; 4 5 6] para formar 1 2 3
#                            4 5 6
#Pero para se recorre como vectores, si quiero el 4 es w[2] si quiero el 2 es w[3]

function soltrinf(a,b)

  if (det(a)==0)
    println("La matriz es singular")
    return a
  end
  diagelem=diag(a)
  w = []
  push!(w,(b[1]/a[1]))
  for i=2:(length(b))
    push!(w,b[i])
    println(w)
    for j=1:(i-1)
      w[i] = w[i] - (a[size(a,2)*(j-1)+ i] * w[j])
   println("j es",j)
   println("i es ",i)
   println(a[(size(a,2)*(j-1))+ i])
   println("el wj",w[j])
   println("el wi es",w[i])
    end                                                                                                                                          
    w[i]=(w[i]/a[diagelem[i]])
    
  end
    println("El valor de x es")
    return w
end
