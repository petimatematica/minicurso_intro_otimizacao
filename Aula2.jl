## GRÁFICOS BÁSICOS ##

using Plots

a = -1
b = 0
c = 2

f(x) = a*x^2 + b*x + c 

valores_x = -10:0.1:10
valores_y = f.(valores_x)

plot(valores_x, 
valores_y,
xlabel = "Eixo das abscissas",
ylabel = "Eixo das ordenadas",
title = "Meu gráfico",
linestyle = :solid, # :solid, :dash, :dot, :dashdot. :dashdotdot
linealpha = 1.0, # alpha varia de 0.0 a 1.0
linewidth = 4,
linecolor = :royalblue,
fillrange = -100,
fillalpha = 0.2,
fillcolor = :blue)

savefig("meu_gráfico")

## EXEMPLO 1 ##

## define the Lorenz attractor
# Base.@kwdef mutable struct Lorenz
#     dt::Float64 = 0.02
#     σ::Float64 = 10
#     ρ::Float64 = 28
#     β::Float64 = 8/3
#     x::Float64 = 1
#     y::Float64 = 1
#     z::Float64 = 1
# end

# function step!(l::Lorenz)
#     dx = l.σ * (l.y - l.x)
#     dy = l.x * (l.ρ - l.z) - l.y
#     dz = l.x * l.y - l.β * l.z
#     l.x += l.dt * dx
#     l.y += l.dt * dy
#     l.z += l.dt * dz
# end

# attractor = Lorenz()


# # initialize a 3D plot with 1 empty series
# plt = plot3d(
#     1,
#     xlim = (-30, 30),
#     ylim = (-30, 30),
#     zlim = (0, 60),
#     title = "Lorenz Attractor",
#     legend = false,
#     marker = 2,
# )

# # build an animated gif by pushing new points to the plot, saving every 10th frame
# @gif for i=1:1500
#     step!(attractor)
#     push!(plt, attractor.x, attractor.y, attractor.z)
# end every 10


## EXEMPLO 2 ##

# default(legend = false)
# x = y = range(-5, 5, length = 40)
# zs = zeros(0, 40)
# n = 100

# @gif for i in range(0, stop = 2π, length = n)
#     f(x, y) = sin(x + 10sin(i)) + cos(y)

#     # create a plot with 3 subplots and a custom layout
#     l = @layout [a{0.7w} b; c{0.2h}]
#     p = plot(x, y, f, st = [:surface, :contourf], layout = l)

#     # induce a slight oscillating camera angle sweep, in degrees (azimuth, altitude)
#     plot!(p[1], camera = (10 * (1 + cos(i)), 40))

#     # add a tracking line
#     fixed_x = zeros(40)
#     z = map(f, fixed_x, y)
#     plot!(p[1], fixed_x, y, z, line = (:black, 5, 0.2))
#     vline!(p[2], [0], line = (:black, 5))

#     # add to and show the tracked values over time
#     global zs = vcat(zs, z')
#     plot!(p[3], zs, alpha = 0.2, palette = cgrad(:blues).colors)
# end