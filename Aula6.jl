##################### Limites de Sequências #####################

### Sequência (x_n) = n/n+1 ###

using Plots

# Definindo a sequência
n = 1:100
x_n = n ./ (n .+ 1)

# Plotando a sequência
scatter(n, x_n, title="Sequência x_n = n/(n+1)", xlabel="n", 
ylabel="x_n", legend=false)

















### Sequência (x_n) = 1/n ###

# Definindo a sequência
n = 1:100
x_n = 1 ./ n

# Plotando a sequência com pontos
scatter(n, x_n, title="Sequência x_n = 1/n", xlabel="n", ylabel="x_n", legend=false)







### Sequência x_k = 2,3,5,7,9,... ###

# Definindo a sequência
n = 1:10
x_n = 2 .* n .- 1

# Plotando a sequência com pontos
scatter(n, x_n, title="Sequência x_n = 2n - 1", xlabel="n", ylabel="x_n", legend=false)






### Sequência x_n = (-1)^n ###

# Definindo a sequência
n = 1:10
x_n = (-1) .^ n

# Plotando a sequência com pontos
scatter(n, x_n, title="Sequência x_n = (-1)^n", xlabel="n", ylabel="x_n", ylim=(-5,5), legend=false)






### Sequência x_n = 1/n * cos n ###

# Definindo a sequência
n = 1:10
x_n = (1 ./ n) .* cos.(n)

# Plotando a sequência com pontos
scatter(n, x_n, title="Sequência x_n = (1/n) * cos(n)",
 xlabel="n", ylabel="x_n", ylim=(-1,1), legend=false)






### Sequência x_n = n-1 / n ###

# Definindo a sequência
n = 1:10
x_n = (n .- 1) ./ n

# Plotando a sequência com pontos
scatter(n, x_n, title="Sequência x_n = (n-1)/n",
 xlabel="n", ylabel="x_n", ylim=(0,1), legend=false)






### Sequência (9/10)^n ###

# Definindo a sequência
n = 1:100
x_n = (9/10) .^ n

# Plotando a sequência com pontos
scatter(n, x_n, title="Sequência x_n = (1/100)^n",
 xlabel="n", ylabel="x_n",
 markercolor=:red,
  ylim=(0,1), legend=false)






### Sequência x_k = 1, 0, 2, 0, 3, 0,... ###

# Definindo a sequência
n = 1:100
x_n = [i % 2 == 0 ? 0 : div(i+1, 2) for i in n]

# Plotando a sequência com pontos
scatter(n, x_n, title="Sequência x_n = 1, 0, 2, 0, 3, 0, ...",
 xlabel="n", ylabel="x_n", ylim=(-1, maximum(x_n)+1), legend=false)






### Sequência x_n = sen(πn/2) ###


# Gera os valores da sequência para os primeiros 200 termos
n_valores = 1:200
sequence_values = sin.(π .* n_valores ./ 2)

# Plota a sequência
plot(n_valores, sequence_values, marker=:circle,
 label="sin(πn/2)", xlabel="n", ylabel="x_n",
 title="Sequência Trigonométrica")






### Sequência x_n = sen(n) + cos(n) ###

# Gera os valores da sequência para os primeiros 200 termos
n_valores = 1:200
sequence_values = sin.(n_valores) .+ cos.(n_valores)

# Plota a sequência
plot(n_valores, sequence_values, marker=:circle,
 label="sin(n) + cos(n)", xlabel="n",
  ylabel="x_n", title="Sequência Trigonométrica")
