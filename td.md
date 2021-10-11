---
title: Boundary and Multipoint Value Problems
date: MFT-3-1-2 2021/2022
author: Vincent Le Chenadec
bibliography: biblio.bib
header-includes:
- \usepackage{amsmath}
- \usepackage{stmaryrd}
- \usepackage{fullpage}
...

A general way of expressing write BVP is
$$
\left \{ \begin{aligned}
F \left ( \dot{u}, u, t \right ) & = 0, \\
h \left ( u \left ( a \right ), u \left ( b \right ) \right ) & = 0
\end{aligned} \right .
$$
where the first and second equations are respectively referred to as the *governing equation* (solved over $\left [ a, b \right ]$) and the *boundary condition*. $t$ is a temporal or spatial coordinate referred to as the independent variable, and $u$ is a $\mathbb{R} ^ n$-valued field referred to as the dependent variable ($n \in \mathbb{N} ^ *$).

A necessary condition for the BVP to be well-posed is for the jacobian of the function
$$
h \colon \left \vert \begin{array}{cll}
\mathbb{R} ^ n \times \mathbb{R} ^ n & \to & \mathbb{R} ^ n, \\
\left ( x, y \right ) & \mapsto & h \left ( x, y \right )
\end{array} \right .
$$
to have full rank.

In addition, when the jacobian of the function
$$
F \colon \left \vert \begin{array}{cll}
\mathbb{R} ^ n \times \mathbb{R} ^ n \times \left [ a, b \right ] & \to & \mathbb{R} ^ n, \\
\left ( x, y, t \right ) & \mapsto & F \left ( x, y, t \right )
\end{array} \right .
$$
with respect to the first argument ($x$) has full rank, a less general albeit more practical way to recast the governing equation is as follows
$$
\dot{u} = f \left ( u, t \right ).
$$

# Steady conduction equation

Let us consider as a first example the steady conduction of heat
$$
0 = \frac{1}{r ^ \alpha} \frac{\mathrm{d}}{\mathrm{d} r} \left ( r ^ \alpha \lambda \frac{\mathrm{d} T}{\mathrm{d} r} \right ).
$$
Here, the independent coordinate $t = r$ refers to a Cartesian ($\alpha = 0$), cylindrical ($\alpha = 1$) or spherical ($\alpha = 2$) coordinates.

**Questions**

1. Rewrite this second order Ordinary Differential Equation (ODE) in the form of a system of coupled first order ODEs.
1. Write the function $h$ corresponding to the boundary conditions reported below and show that its jacobian has full rank.
$$
\left \{ \begin{aligned}
T \left ( a \right ) & = 0 \\
\frac{\mathrm{d} T}{\mathrm{d} r} \left ( b \right ) & = 1
\end{aligned} \right .
$$

# Steady convection-diffusion equation

We model steady oxidisation of char particle by the following reactions : direct oxidisation of char at the particle surface
$$
\mathrm{C} \left [ s \right ] + \frac{1}{2} \mathrm{O}_2 \left [ g \right ] \rightarrow \mathrm{CO} \left [ g \right ],
$$
and the gas phase, the one-step global reaction
$$
2 \mathrm{CO} \left [ g \right ] + \mathrm{O}_2 \left [ g \right ] \rightarrow 2\mathrm{CO}_2 \left [ g \right ].
$$

The following non-dimensional set of equations models the steady direct oxidisation of a coal particle in an oxy-atmosphere :
$$
\left \{ \begin{aligned}
\frac{1}{r ^ \alpha} \frac{\mathrm{d} m}{\mathrm{d} r} & = 0, \\
\frac{m}{r ^ \alpha} \frac{\mathrm{d} Y_1}{\mathrm{d} r} - \frac{1}{r ^ \alpha} \frac{\mathrm{d}}{\mathrm{d} r} \left ( r ^ \alpha \frac{\mathrm{d} Y_1}{\mathrm{d} r} \right ) & = -\frac{5}{7} \Omega \left ( Y_1, Y_2, T \right ), \\
\frac{m}{r ^ \alpha} \frac{\mathrm{d} Y_2}{\mathrm{d} r} - \frac{1}{r ^ \alpha} \frac{\mathrm{d}}{\mathrm{d} r} \left ( r ^ \alpha \frac{\mathrm{d} Y_2}{\mathrm{d} r} \right ) & = -\frac{2}{7} \Omega \left ( Y_1, Y_2, T \right ), \\
\frac{m}{r ^ \alpha} \frac{\mathrm{d} Y_3}{\mathrm{d} r} - \frac{1}{r ^ \alpha} \frac{\mathrm{d}}{\mathrm{d} r} \left ( r ^ \alpha \frac{\mathrm{d} Y_3}{\mathrm{d} r} \right ) & = \Omega \left ( Y_1, Y_2, T \right ), \\
\frac{m}{r ^ \alpha} \frac{\mathrm{d} T}{\mathrm{d} r} - \frac{1}{r ^ \alpha} \frac{\mathrm{d}}{\mathrm{d} r} \left ( r ^ \alpha \frac{\mathrm{d} T}{\mathrm{d} r} \right ) & = \Omega \left ( Y_1, Y_2, T \right )
\end{aligned} \right .
$$
where $\alpha = 2$, $Y_1$, $Y_2$ and $Y_3$ respectively denote the carbon monoxyde, oxygen and carbon dioxyde mass fractions and
$$
\Omega \colon \left ( Y_1, Y_2, T \right ) \mapsto \mathrm{Da}_g \frac{Y_1 ^ 2 Y_2}{T ^ 2} \exp \left ( - \frac{\theta}{T} \right ).
$$

The boundary conditions are set to
$$
Y_1 \left ( a \right ) + Y_2 \left ( a \right ) + Y_3 \left ( a \right ) = 1,
$$
$$
\begin{aligned}
m \left ( a \right ) Y_1 \left ( a \right ) - Y_1' \left ( a \right ) & = \frac{5}{2} \omega \left ( Y_2 \left ( a \right ) \right ), \\
m \left ( a \right ) Y_2 \left ( a \right ) - Y_2' \left ( a \right ) & = -\omega \left ( Y_2 \left ( a \right ) \right ), \\
m \left ( a \right ) Y_3 \left ( a \right ) - Y_3' \left ( a \right ) & = 0,
\end{aligned}
$$
and
$$
T \left ( a \right ) = T ^ s
$$
where $a = 1$ denote the particle surface, and
$$
\begin{aligned}
Y_1 \left ( b \right ) & = Y _ 1 ^ \infty, \\
Y_2 \left ( b \right ) & = Y _ 2 ^ \infty, \\
Y_3 \left ( b \right ) & = Y _ 3 ^ \infty,
\end{aligned}
$$
and
$$
T \left ( b \right ) = T ^ \infty
$$
where $b = \infty$ denote the free-stream.

The function $\omega$ is defined as
$$
\omega \colon \left ( Y_2 \right ) \mapsto \mathrm{Da} _ s Y _ 2.
$$

**Questions**

1. Write the system in first order form.
1. Show that the boundary conditions are well-posed.

# Physiological flow problem

The following problem is due to @Lin1988
$$
\left \{ \begin{aligned}
v ' \left ( x \right ) & = \frac{C \left ( x \right ) - 1}{n}, \\
C ' \left ( x \right ) & = \frac{v \left ( x \right ) C \left ( x \right ) - \operatorname{min} \left ( x, 1 \right )}{\eta}
\end{aligned} \right .
$$
where $n$ and $\eta$ are known (dimensionless) parameters. This system of ODEs is to be solved for $x \in \left [ 0, \lambda \right ]$ ($\lambda > 1$), subject to the boundary conditions
$$
\left \{ \begin{aligned}
v \left ( 0 \right ) & = 0, \\
C \left ( \lambda \right ) & = 1.
\end{aligned} \right .
$$

The $\operatorname{min} \left ( x, 1 \right )$ in the RHS of the second equation is not smooth at $x = 1$. This is know as a *breaking point*, where the accuracy of numerical methods in its vicinity therefore deteriorates.

**Questions**

1. By introducing two subintervals $\left [ 0, 1 \right ]$ and $\left [ 1, \lambda \right ]$, show that the system can be written as a multipoint boundary value problem whose right-hand side is smooth.
1. Transform this multipoint BVP in a two-point BVP.

# References

