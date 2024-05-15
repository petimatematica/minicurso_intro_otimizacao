#
#  Minicurso de Introdução à Otimização Contínua
#       Aula 05 - Sequências numéricas
#

using Plots

# Exemplo 1: Sequência constante
    #function seq_constante(b, n)
    #    return fill(b, n)
    #end
#

# Exemplo 1: Representação de uma sequência constante
    #f(n) = 3

    #n_values = 1:25
    #y_values = [f(n) for n in n_values]

    #fig = scatter(n_values, y_values, xlabel="n", ylabel="x_n", 
    #label="Termo de x_n = 3", marker=:circle, ylims=(0, 5))
    #savefig(fig, "constante.png");
#

# Exemplo 2: Sequência de Fibonacci
    #function fibonacci(n)
    #    fib = [1, 1]
    #        while length(fib) < n
    #            push!(fib, fib[end-1] + fib[end])
    #        end
    #    return fib
    #end
#

# Exemplo 2: Representação da sequência de Fibonacci
    #function fibonacci(n)
    #    if n <= 2
    #        return  1
    #    else
    #        return fibonacci(n - 1) + fibonacci(n - 2)
    #    end
    #end

    #n_values = 1:10
    #y_values = [fibonacci(n) for n in n_values]

    #fig = scatter(n_values, y_values, xlabel="n", ylabel="f_n", 
    #label="Termos da Sequência de Fibonacci", marker=:circle, 
    #ylims=(0, maximum(y_values)+5))
    #savefig(fig, "fibonacci.png")
#

# Exemplo 3: Sequência crescente
    #function seq_crescente(n)
    #    return collect(1:n)
    #end
#

# Exemplo 3: Representação de uma sequência crescente
    #function seq_crescente(n)
    #    return n
    #end

    #n_values = 1:50
    #y_values = [seq_crescente(n) for n in n_values]

    #fig_crescente = scatter(n_values, y_values, xlabel="n", ylabel="x_n", 
    #label="Termos de x_n=n", marker=:circle, ylims=(0, maximum(y_values)+1))
    #savefig("crescente.png");
#

# Exemplo 4: Subsequências
    #function subseq(n)
    #    return (-1)^n 
    #end

    #n_values = 1:20
    #y_values = [subseq(n) for n in n_values]

    #fig = scatter(n_values, y_values, xlabel="n", ylabel="x_n", 
    #label="Termo de x_n=(-1)^n", marker=:circle, ylims=(-3,3))
    #savefig(fig, "subseq.png")

        # Subsequência de índices pares
            #n_values_pares = filter(iseven, n_values)
            #y_values_pares = [subseq(n) for n in n_values_pares]

            #scatter(n_values_pares, y_values_pares, xlabel="n", ylabel="x_n", 
            #        label="Termo de x_n=(-1)^n (pares)", marker=:circle, 
            #        ylims=(-3,3))

        # Subsequência de índices ímpares
            #n_values_impares = filter(isodd, n_values)
            #y_values_impares = [subseq(n) for n in n_values_impares]

            #scatter(n_values_impares, y_values_impares, xlabel="n", ylabel="x_n", 
            #        label="Termo de x_n=(-1)^n (ímpares)", marker=:circle, 
            #        ylims=(-3,3))
#

# Exemplo 5: Sequência limitada
    #function seq_limitada(n)
    #    return [2^n for n in 1:n]
    #end
#

# Exemplo 5: Representação de uma sequência limitada apenas inferiormente
    #function seq_limitada_inf(n)
    #    return 2^n
    #end

    #n_values = 1:6
    #y_values = [seq_limitada_inf(n) for n in n_values]

    #fig = scatter(n_values, y_values, xlabel="n", ylabel="x_n", 
    #label="Termos de x_n=2^n", marker=:circle, ylims=(minimum(y_values)-1, maximum(y_values)+1))
    #savefig("limitada.png");
#

# Exemplo 6: Sequência limitada inferiormente e superiormente
    #function seq_limitada(n)
    #    return [2 + 1/n for n in 1:n]
    #end
#

# Exemplo 6: Representação de uma sequência limitada
    #function seq_limitada(n)
    #    return 2 + 1/n
    #end

    #n_values = 1:20
    #y_values = [seq_limitada(n) for n in n_values]

    #fig = scatter(n_values, y_values, xlabel="n", ylabel="x_n", 
    #label="Termos de x_n=2 + (1/n)", marker=:circle,  ylims=(1.5,3.5))
    #savefig(fig, "limitada.png")
#

# Extra: Sequência não limitada
    #function seq_nao_limitada(k)
    #    return (-1)^k * k
    #end

    #k_nao_limitada = 1:50
    #y_nao_limitada = [seq_nao_limitada(k) for k in k_nao_limitada]

    #fig = scatter(k_nao_limitada, y_nao_limitada, xlabel="k", ylabel="Valores", 
    #label="Sequência não limitada", marker=:circle, ylims=(minimum(y_nao_limitada)-1, maximum(y_nao_limitada)+1))
#

# Exemplo 7: Conjunto limitado
    #function conjunto_limitado(n)
    #    return [1/n for n in 1:n]
    #end
#

# Exemplo 8: Supremo e ínfimo de conjuntos (caso saiba que o sup e o inf pertencem ao conjunto)
    #conjunto_A = conjunto_limitado(1000)
    #sup_A = maximum(conjunto_A)
    #inf_A = minimum(conjunto_A) # Não é de fato o ínfimo
#