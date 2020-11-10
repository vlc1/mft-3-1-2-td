### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ d17ee77a-2333-11eb-088d-933433605dae
md"""
Définissons un dictionnaire dans lequel on stocke le nombre de moles de ``O_2`` et ``N_2``.
```math
\left ( n_i \right ).
```

Ce faisant, on utilise

* Le langage Julia,
* Dans un environment *notebook* (Pluto).

"""

# ╔═╡ f94ab6c6-2333-11eb-2c7a-916758076373
begin
	n = Dict{Symbol,Float64}()
	n[:O₂] = 1
	n[:N₂] = 3.76
	n
end

# ╔═╡ 335650c8-2334-11eb-2698-59a57f16c669
md"""
Commençons par calculer les fractions molaires.
```math
\forall i = 1, \ldots, N, \quad y_i \equiv \frac{n_i}{\sum_j n_j}.
```

"""

# ╔═╡ 53ac85f4-2334-11eb-222f-67ffde76ecab
begin
	y = Dict{Symbol,Float64}()
	for (i, val) in n
		y[i] = val / sum(values(n))
	end
	y
end

# ╔═╡ 8d6ba298-2334-11eb-3d1b-b7dc5ab65b47
md"""
On rappelle la définition des fractions massiques :
```math
\forall i = 1, \ldots, N, \quad Y_i \equiv \frac{m_i}{\sum_j m_j}.
```

On a besoin de définir les masses molaires des espèces en présense.

"""

# ╔═╡ b21ec9ee-2334-11eb-1eee-371cfe344942
begin
	M = Dict{Symbol,Float64}()
	M[:O₂] = 2 * 16
	M[:N₂] = 2 * 14
	M
end

# ╔═╡ ef206274-2334-11eb-315e-b16f16b7333e
md"""
On commence par calculer la masse
```math
\forall i \in 1, \ldots, N, \quad m_i = M_i n_i.
```

"""

# ╔═╡ d19ecd1e-2334-11eb-2660-3113ff91a503
begin
	m = Dict{Symbol,Float64}()
	for i in intersect(keys.((n, M))...)
		m[i] = M[i] * n[i]
	end
	m
end

# ╔═╡ 1778e6d0-2335-11eb-1b8b-239c96f88297
md"""
Il ne reste plus qu'à évaluer les ``\left ( Y_i \right )``.

"""

# ╔═╡ 12702824-2335-11eb-1e27-8d77009d5f2c
begin
	Y = Dict{Symbol,Float64}()
	for (i, val) in m
		Y[i] = val / sum(values(m))
	end
	Y
end

# ╔═╡ 38b0ed0c-2335-11eb-158f-3112b5f75e9a
y, Y

# ╔═╡ Cell order:
# ╟─d17ee77a-2333-11eb-088d-933433605dae
# ╠═f94ab6c6-2333-11eb-2c7a-916758076373
# ╟─335650c8-2334-11eb-2698-59a57f16c669
# ╠═53ac85f4-2334-11eb-222f-67ffde76ecab
# ╟─8d6ba298-2334-11eb-3d1b-b7dc5ab65b47
# ╠═b21ec9ee-2334-11eb-1eee-371cfe344942
# ╟─ef206274-2334-11eb-315e-b16f16b7333e
# ╠═d19ecd1e-2334-11eb-2660-3113ff91a503
# ╟─1778e6d0-2335-11eb-1b8b-239c96f88297
# ╠═12702824-2335-11eb-1e27-8d77009d5f2c
# ╠═38b0ed0c-2335-11eb-158f-3112b5f75e9a
