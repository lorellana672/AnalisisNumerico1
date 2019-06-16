function inewton(x,y,z)
  n = length(x);
  m = length(z);
  w = []
  mtx = zeros(n,n);
  #diff-divs
  for i in 1:n
    mtx[i,1] = y[i];
  end
  for i in 1:n-1
    for j in 1:n-i
      mtx[j, i+1] = (mtx[j,i] - mtx[j+1,i])/(x[j] - x[i + j]);
    end
  end
  for k in 1:m
    wi = 0;
    for i in 1:n
      wj = 1
      for j in 1:i-1
        wj *= (z[k] - x[j])
      end
      wi += mtx[1,i] * wj
    end
    push!(w,wi);
  end
  return w;
end