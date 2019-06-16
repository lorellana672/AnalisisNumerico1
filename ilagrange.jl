function ilagrange(x,y,z)
  #x,y es un array de tamaño n
  n = length(x);
  m = length(z);
  w = []
  for j in 1:m
    wj = 0;
    for k in 1:n
      L = 1;
      for i in 1:n
        if(i != k)
          L *= (z[j] - x[i]) / (x[k] - x[i]);
        end
      end
      wj += y[k] * L;
    end
    push!(w, wj);
  end
  return w;
end