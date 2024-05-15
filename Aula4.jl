 #Códigos utilizados na aula 4 do minicurso  "Introdução aos métodos computacionais em Otimização Contínua"
 # Os códigos apresentados aqui é uma pequena abordagem de como plotar o esboço de funções de duas variáveis reais.
 # Além disso, plotar as curvas de nível.
 
 using Plots
 
#Superfície de $f(x,y)= x^2+y^2 +3$
     
#Para rodar o código descomente da linha 10 a 15
    #  x = -3:.1:3
    #  y = -3:.1:3
    #  Z = (x .^ 2 .+ y' .^ 2).+3
 
    # surface(x,y,Z,color=:viridis,clim=(-2, 2))
    # savefig("surface.png")

 #Superfície de $f(x,y)= sin(x) +cos(x)$
     
#Para rodar o código descomente da linha 20 a 24.
    # xs = ys = range(1, stop=10, length=100)
    # f(x, y) = sin(x) + cos(y)
     
    # surface(xs, ys, f)
    # savefig("surface2.png")



#Curva de nível $f(x,y)= x^2+y^2 +3$
   
#Para rodar o código descomente da linha 31 a 37.
    # x = -3:.1:3
    # y = -3:.1:3
    # Z = (x .^ 2 .+ y' .^ 2).+3

    # contour(x, y, Z)
    # plot(p2)
    # savefig("plot3.png")

#Curva de nível de $f(x,y)= sin(x) +cos(x)$

    #Para rodar o código descomente da linha 42 a 46. 
    #  xs = ys = range(1, stop=10, length=100)
    #  f(x, y) = sin(x) + cos(y)

    # p2 = contour(xs, ys, f, levels=10, xlabel="x", ylabel="y", color=:viridis)
    # savefig("plot2.png")
