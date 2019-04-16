
ovfw = 1.;
n = 2.;
n2 = .5;
udfw = 1.;
while (isfinite(n))
  global n = n*2;
  global ovfw = ovfw*2;
end
println(ovfw)

while (n2 != 0)
  global n2 = n2/2;
  global udfw = udfw/2;
end
println(udfw)