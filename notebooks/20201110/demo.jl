### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ 8e1bdc16-2342-11eb-22a6-cb3487fd6818
using LinearAlgebra

# ╔═╡ c810852c-2342-11eb-3c4c-b35d8ca9bb77
using Plots

# ╔═╡ e2bdc99a-2340-11eb-36d1-5b26c095e69d
md"""
# Ma première cellule `Markdown`

Une première équation ``\LaTeX``
```math
\overline{\rho}_i \equiv \frac{n_i}{V}.
```

Pour exécuter une cellule, deux options :

1. Cliquer sur le bouton *play* en bas à droite de la cellule,
1. Presser *Shift* puis *Enter* séquentiellement en maintenant *Shift* appuyé.

"""

# ╔═╡ 7e43d9a4-2341-11eb-2a9b-6f2fab9f6803
function hello(name = "Louis")
	println("Hello, $name !")
end

# ╔═╡ aab3a9b0-2341-11eb-37a1-476a3acf758b
hello("Martin")

# ╔═╡ bccedea6-2341-11eb-3a3c-65363b8441ec
begin
	a = 3
	b = 2
end

# ╔═╡ d52c2852-2341-11eb-1ff2-393759544efe
a, b

# ╔═╡ df4ac668-2341-11eb-0203-2f2059b0c3e9
md"""
Voici grossièrement comment un système de notebook fonctionne.

* Jupyter,
* Pluto.

Le système Pluto.jl est ce qu'on appelle un environnement réactif.

"""

# ╔═╡ 3512729e-2342-11eb-161c-f31631663ff0
c = [1., 2., 4., 10.]

# ╔═╡ 646d1382-2342-11eb-1e6a-c9f8f95c9d0d
typeof(c)

# ╔═╡ 68594ec0-2342-11eb-1b54-8133d0d00cc1
A = [1. 0. 3. 4.
	5. 6. 7. 8.
	1. 0. 3. 4.
	5. 6. 7. 8.]

# ╔═╡ 85dcfd16-2342-11eb-1759-bf7897e56472
typeof(A)

# ╔═╡ 8aed5238-2342-11eb-0bc9-8fbe5e1929fb
A * c

# ╔═╡ 962ebdbc-2342-11eb-1a08-85f6c5fb0acd
eigvals(A)

# ╔═╡ d12ab39e-2342-11eb-181b-895534c67768
plot(exp, lw = 2, xlim = (-2, 3), label = "exp")

# ╔═╡ a2a81b28-2343-11eb-2190-63139c0ce9af
md"""
Le package `DifferentialEquations.jl` permet de résoudre : EDO, DAE, DDE, stochastique

* Problèmes de Cauchy,
* Problèmes aux limites,
* ...

"""

# ╔═╡ Cell order:
# ╟─e2bdc99a-2340-11eb-36d1-5b26c095e69d
# ╠═7e43d9a4-2341-11eb-2a9b-6f2fab9f6803
# ╠═aab3a9b0-2341-11eb-37a1-476a3acf758b
# ╠═bccedea6-2341-11eb-3a3c-65363b8441ec
# ╠═d52c2852-2341-11eb-1ff2-393759544efe
# ╟─df4ac668-2341-11eb-0203-2f2059b0c3e9
# ╠═3512729e-2342-11eb-161c-f31631663ff0
# ╠═646d1382-2342-11eb-1e6a-c9f8f95c9d0d
# ╠═68594ec0-2342-11eb-1b54-8133d0d00cc1
# ╠═85dcfd16-2342-11eb-1759-bf7897e56472
# ╠═8aed5238-2342-11eb-0bc9-8fbe5e1929fb
# ╠═8e1bdc16-2342-11eb-22a6-cb3487fd6818
# ╠═962ebdbc-2342-11eb-1a08-85f6c5fb0acd
# ╠═c810852c-2342-11eb-3c4c-b35d8ca9bb77
# ╠═d12ab39e-2342-11eb-181b-895534c67768
# ╟─a2a81b28-2343-11eb-2190-63139c0ce9af
