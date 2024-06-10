
#Método da bisseção implementado para minimização de função unimodal

using LinearAlgebra, Printf, Plots

function bisection_minimization(f, a, b; ϵ=1e-6, max_iter=100)
    iter = 0
    table = []

    while (b - a) > ϵ && iter < max_iter
        iter += 1
        c = (a + b) / 2
        d = (c + b) / 2

        # Registro dos valores na tabela
        push!(table, (iter, a, b, abs(a - b), f(c)))

        # Comparação dos valores da função para decidir o novo intervalo
        if f(c) < f(d)
            b = d
        else
            a = c
        end
    end

    # Registro final dos valores na tabela
    c = (a + b) / 2
    push!(table, (iter + 1, a, b, abs(a - b),f(c)))

    return c, iter, table
end

# Exemplo de uso
f(x) = 10*x*exp(-x^2)-1 # Função
a = -4.0  # Limite inferior 
b = 4.0  # Limite superior



min_x, num_iter, table = bisection_minimization(f, a, b)

println("O mínimo da função ocorre em x ≈ ", min_x)
println("Valor da função no mínimo f(x) ≈ ", f(min_x))
println("Número de iterações: ", num_iter)

# Imprimindo a tabela
    println("\nIteração |    a      |    b      |   |a-b|   |  f(c) ")
    println("---------|-----------|-----------|-----------|--------------")
    for (iter, a, b, abs_ab, fc) in table
        @printf("%8d | %9.5f | %9.5f | %9.5e | %12.5f\n", iter, a, b, abs_ab, fc)
    end

    # # Construção do gráfico no ponto de mínimo
    x_vals = range(a, b, length=100)
    y_vals = f.(x_vals)
    plot(x_vals, y_vals, label="f(x) =sin(x)-x^5+x^3-1", xlabel="x", ylabel="f(x)", title="Minimização usando Método da Bisseção", legend=:topright)
    scatter!([min_x], [f(min_x)], label="Mínimo encontrado", color=:red, marker=:circle, markersize=7)


# f(x) = exp(-x)+cos(x) # Função
# a = 2.0  # Limite inferior 
# b = 5.0  # Limite superior

# f(x) = 10*x*exp(-x^2)-1 # Função
# a = -1.0  # Limite inferior 
# b = 1.0  # Limite superior

# f(x) = x^3-2x+2 # Função
# a = -3.0  # Limite inferior 
# b = 3.0  # Limite superior

# f(x) = x^2-exp(x)-3x+2 # Função
# a = -2.0  # Limite inferior 
# b = 2.0  # Limite superior

# f(x) = sin(x) - x/2 # Função
# a = -3.0  # Limite inferior 
# b = 5.0  # Limite superior

# f(x) = sin(x)-x^5+x^3-1 # Função
# a = -5.0  # Limite inferior 
# b = 2.0  # Limite superior




