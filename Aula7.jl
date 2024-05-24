
using LinearAlgebra

# Vetores 
vetor1 = [2, 3]
vetor2 = [-1, 2]

# Soma de vetores
soma = vetor1 + vetor2

# Multiplicação de um escalar por um vetor
escalar = 2
multiplicacao = escalar * vetor1

# Norma de um vetor
norma_v1 = norm(vetor1)
norma_v2 = norm(vetor2)

# Produto interno entre dois vetores
produto_int = dot(vetor1, vetor2)


#println("Soma de vetores: ", soma)
#println("Multiplicação de escalar por vetor: ", multiplicacao)
println("Norma do vetor 1: ", norma_v1)
println("Norma do vetor 2: ", norma_v2)
println("Produto interno: ", produto_int)




