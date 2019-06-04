function inewton(x,y,z)

n = length(x)
zz = length(z)

d = y
w = zeros(1,zz) #devuelve una matriz 1,zz de todos 0

if (n > 1)
  for j = 2: n
    for i = n:-1:j
      d[i]=(d[i]-d[i-1])/(x[i]-x[i-j+1])
    end
  end
end


for j = 1: zz
  w[j]=d[n]
  for i = n-1:-1:1
    w[j]=d[i]+(z[j]-x[i])*w[j]
  end
end