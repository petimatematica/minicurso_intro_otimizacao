using Plots

x = range(-10, 10, length=1000)
f(x) = x^2
y = f.(x)
#p = plot(x, y, legend = false) (passo 1)

z = 5*x  # Considerando os pontos (0,0) e (5,25)

#p = plot(x, [y z], legend = false) (passo 2)
# Função Reta Secante

function retaSec(x,f; a=0, b=3)
    return f(a)+(f(b)-f(a))/(b-a)*(x-a)
end

s1 = retaSec.(x,f, a=0, b=5)
s2 = retaSec.(x,f, a=0, b=4)
s3 = retaSec.(x,f, a=0, b=3)
s4 = retaSec.(x,f, a=0, b=2)
s5 = retaSec.(x,f, a=0, b=1.e-6)

p = plot(x, [y s1 s2 s3 s4 s5])