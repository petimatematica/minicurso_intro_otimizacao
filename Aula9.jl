## BUSCA LINEAR DE ARMIJO ##

using LinearAlgebra

# Definição da função a ser minimizada

# Função simples #

# f(x) = x^2 + 3*x
# ∇f(x) = 2*x + 3

# Função de Rosenbrock #

# f(x) = 100(x[2]-x[1]^2)^2 + (x[1]-1)^2
# ∇f(x) = [-400*x[1]*(x[2]-x[1]^2)+2(x[1]-1), 200(x[2]-x[1]^2)]

# Função Dixon-Price

f(x) = (x[1]-1)^2 + 2(2x[2]^2-x[1])^2 + 3(2*x[3]^2-x[2])^2
∇f(x) = [6*x[1] - 8*x[2]^2 - 2, 32*x[2]^3+6*x[2]-16*x[1]*x[2]-12*x[3]^2, 48*x[3]^3-24*x[2]*x[3]]

# Definição dos parâmetros

x = [4, 1, 2]
α_inicial = 1.0
σ = 1.e-4
minstep = 1.e-5

# Armijo

function armijo(x, f, ∇f, σ, minstep)
    α = α_inicial

    while true
        Teste = f(x - α * ∇f(x)) - f(x) + σ * α * (norm(∇f(x)))^2
        println("Teste = ", Teste, "       ", "α = ", α)
        if Teste > 0.0
            α = 0.5 * α
            if α < minstep
                println("Comprimento de passo muito pequeno!")
                break
            end
        else
            return(α)
        end 
    end
end

println("α = ", armijo(x, f, ∇f, σ, minstep))