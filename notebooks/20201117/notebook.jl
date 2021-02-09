### A Pluto.jl notebook ###
# v0.12.6

using Markdown
using InteractiveUtils

# ╔═╡ 6e39d780-235e-11eb-3408-1ff2a962f0fd
struct Chemistry{J}
	a::NTuple{J,Float64}
	β::NTuple{J,Float64}
	ℰ::NTuple{J,Float64}
	# f
	# ν′
	# ν″
end

# ╔═╡ 5eb9eb2e-2361-11eb-1063-35f00584a7bf
const R̅ = 8.314

# ╔═╡ 7c8db61a-2360-11eb-2293-73722022d15c
p = (ch = Chemistry((2.90e17, 6.81e18), (-1e0, -1e0), (0e0, 496.41e3)), T = 5000.)

# ╔═╡ 27e356f2-235f-11eb-2b82-0b926f5a96d1
function rhs!(ρ̅̇, ρ̅, p, t)
	ch, T = p.ch, p.T
	a, β, ℰ = ch.a, ch.β, ch.ℰ

	ρ̅ₘ = 0.35ρ̅[1] + ρ̅[2]

	k = @. a * T ^ β * exp(-ℰ / R̅ / T)
	r = (k[1] * ρ̅[1] ^ 2 * ρ̅ₘ, k[2] * ρ̅[2] * ρ̅ₘ)

	ρ̅̇[1] = -2r[1] + 2r[2]
	ρ̅̇[2] = +1r[1] - 1r[2]
end

# ╔═╡ 80bdd962-2361-11eb-387a-5bf56c2ad5eb
du, u = zeros(2), zeros(2)

# ╔═╡ 8da751ee-2361-11eb-1865-232fd6296203
rhs!(du, u, p, 0.)

# ╔═╡ Cell order:
# ╠═6e39d780-235e-11eb-3408-1ff2a962f0fd
# ╠═5eb9eb2e-2361-11eb-1063-35f00584a7bf
# ╠═7c8db61a-2360-11eb-2293-73722022d15c
# ╠═27e356f2-235f-11eb-2b82-0b926f5a96d1
# ╠═80bdd962-2361-11eb-387a-5bf56c2ad5eb
# ╠═8da751ee-2361-11eb-1865-232fd6296203
