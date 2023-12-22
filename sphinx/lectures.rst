
.. _lectures:

Lecture videos and slides
=========================

Video lectures were recorded as supplemental materials for this
class,  and are available on the 
`Clawpack YouTube Channel <https://www.youtube.com/@clawpackvideos3679>`__
in `this playlist
<https://www.youtube.com/playlist?list=PLHJVj2zE9oLRPo7Xn1QI6WTl9QrBXLkqS>`__.

Slides for each lecture (pdf files) can be found in the `slides directory
<https://github.com/rjleveque/amath574w2023/tree/main/slides>`__ 
of the :ref:`class_repos`, or in 
`this directory <https://faculty.washington.edu/rjl/slides/fvmhp/>`__.


Lecture contents
^^^^^^^^^^^^^^^^

"FVMHP" refers to the :ref:`info_text`.


FVMHP01 - Derivation of Conservation Laws
-------------------------------------------

Material from FVMHP Chap. 2

- Integral form in one space dimension
- Advection
- Compressible gas -- mass and momentum
- Source terms
- Diffusion

`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp01_derivation.pdf>`__
...
`YouTube video <https://youtu.be/R_CoKrvlicE>`__


FVMHP02 - Variable Coefficient Advection
-------------------------------------------

Material from FVMHP Sec. 9.1

- Quasi-1D pipe
- Units in one space dimension
- Conservative form:  $q_t + (u(x)q)_x = 0$
- Advective form:     $q_t + u(x)q_x = 0$   (color equation)

`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp02_vcadvection.pdf>`__
...
`YouTube video <https://youtu.be/AMDju_mkLK8>`__


FVMHP03 - Linearization of Nonlinear Systems
---------------------------------------------

Material from FVMHP Chap. 2

- General form, Jacobian matrix
- Scalar Burgers' equation
- Compressible gas dynamics
- Linear acoustics equations

`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp03_linearization.pdf>`__
...
`YouTube video <https://youtu.be/JRRHiiBMPpU>`__


FVMHP04 - Linear Hyperbolic Systems
-----------------------------------------------------

Material from FVMHP Chap. 3

- General form, coefficient matrix, hyperbolicity
- Scalar advection equation
- Linear acoustics equations
- Eigen decomposition
- Characteristics and general solution
- Boundary conditions

`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp04_linsys.pdf>`__
...
`YouTube video <https://youtu.be/BjGLFG-oXrY>`__


FVMHP05 - Linear Systems - Riemann Problems
-----------------------------------------------------

Material from FVMHP Chap. 3

- Riemann problems
- Riemann problem for advection
- Riemann problem for acoustics
- Phase plane

`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp05_linsysRp.pdf>`__
...
`YouTube video <https://youtu.be/z8bHBXMd06I>`__

FVMHP06 - Linear Systems - Nonhyperbolic Cases
-----------------------------------------------------

Material from FVMHP Chap. 3, 16

- Acoustics equations if $K_0 < 0$ (eigenvalues complex)
- Acoustics equations if $K_0 = 0$ (not diagonalizable)
- Coupled advection equations

`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp06_linsysNonhyp.pdf>`__
...
`YouTube video <https://youtu.be/nFrLZrzP3GE>`__


FVMHP07 - Introduction to Finite Volume Methods
-----------------------------------------------------

Material from FVMHP Chap. 4

- Comparsion to finite differences
- Conservation form, importance for shocks
- Godunov's method, wave propagation view
- Upwind for advection
- REA Algorithm
- Godunov applied to acoustics


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp07_fvm1.pdf>`__
...
`YouTube video <https://youtu.be/4wbQN7rQYy0>`__


FVMHP08 - Accuracy, Consistency, Stability, CFL Condition
----------------------------------------------------------

Material from FVMHP Chap. 4, 8

- Order of accuracy, local and global error
- Consistent numerical flux functions
- Stability
- CFL Condition


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp08_fvm2.pdf>`__
...
`YouTube video <https://youtu.be/NCiDdUPFC7Q>`__

FVMHP09 - Dissipation, Dispersion, Modified Equations
-----------------------------------------------------

Material from FVMHP Chap. 4

- Upwind, Lax-Friedrichs
- Lax-Wendroff and Beam-Warming
- Numerical dissipation and dispersion
- Modified equations


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp09_fvm3.pdf>`__
...
`YouTube video <https://youtu.be/F4Gfmz1PVrA>`__

FVMHP10 - High-resolution TVD methods
-----------------------------------------------------

Material from FVMHP Chap. 6

- Godunov: wave-propagation and REA algorithms
- Extension of REA to piecewise linear
- Relation to Lax-Wendroff, Beam-Warming
- Limiters and minmod
- Monotonicity and Total Variation


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp10_hires.pdf>`__
...
`YouTube video <>`__

FVMHP11 - TVD Methods and Limiters
-----------------------------------------------------

Material from FVMHP Sec. 6.11, 6.12

- Slope limiters vs.\ flux limiters
- Total variation for scalar problems
- Proving TVD in flux-limiter form
- Design of TVD limiters
- Sweby Region


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp11_tvd.pdf>`__
...
`YouTube video <https://youtu.be/7Y21fG_QhfM>`__

FVMHP12 - Nonlinear Scalar PDEs, Traffic flow
-----------------------------------------------------

Material from FVMHP Chap. 11

- Traffic flow --- car following models
- Traffic flow --- conservation law
- Shock formation
- Rankine-Hugoniot jump conditions
- Riemann problems


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp12_nonlinscalar1.pdf>`__
...
`YouTube video <https://youtu.be/rdJE7mnFPh4>`__

FVMHP13 - Nonlinear scalar rarefaction waves
-----------------------------------------------------

Material from FVMHP Chap. 11

- Form of centered rarefaction wave
- Non-uniqueness of weak solutions
- Entropy conditions


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp13_nonlinscalar2.pdf>`__
...
`YouTube video <https://youtu.be/dnyOw1tCf58>`__

FVMHP14 - Finite Volume Methods for Scalar Conservation Laws
-------------------------------------------------------------

Material from FVMHP Chap. 12

- Godunov's method
- Fluxes, cell averages, and wave propagation form
- Transonic rarefactions waves
- Approximate Riemann solver with entropy fix


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp14_fvmscalar.pdf>`__
...
`YouTube video <https://youtu.be/oo7KrE9sNnY>`__

FVMHP15 - Solutions and Entropy Functions
-----------------------------------------------------

Material from FVMHP Chap. 12

- Weak solutions and conservation form
- Admissibility / entropy conditions
- Entropy functions
- Weak form of entropy condition
- Relation to vanishing viscosity solution


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp15_entropy.pdf>`__
...
`YouTube video <https://youtu.be/4Ye9RZF7q_E>`__

FVMHP16 - Convergence to Weak Solutions and Nonlinear Stability
-----------------------------------------------------

Material from FVMHP Chap. 12

- Lax-Wendroff Theorem
- Entropy consistent finite volume methods
- Nonlinear stability
- Total Variation stability


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp16_convergence.pdf>`__
...
`YouTube video <>`__

FVMHP17 - Nonlinear systems, shock waves
-----------------------------------------------------

Material from FVMHP Chap. 13

- Shallow water equations
- Rankine-Hugoniot condition
- Hugoniot locus in phase space
- All-shock Riemann solutions


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp17_nonlinsys1.pdf>`__
...
`YouTube video <>`__

FVMHP18 - Rarefaction waves and integral curves
-----------------------------------------------------

Material from FVMHP Chap. 13

- Integral curves
- Genuine nonlinearity and rarefaction waves
- General Riemann solution for shallow water
- Riemann invariants
- Linear degeneracy and contact discontinuities


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp18_nonlinsys2.pdf>`__
...
`YouTube video <>`__

FVMHP19 - Gas dynamics and Euler equations
-----------------------------------------------------

Material from FVMHP Chap. 14

- The Euler equations
- Conservative vs.\ primitive variables
- Contact discontinuities
- Projecting phase space to $p$--$u$ plane
- Hugoniot loci and integral curves
- Solving the Riemann problem


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp19_gas.pdf>`__
...
`YouTube video <>`__

FVMHP20 - Finite volume methods for nonlinear systems
-----------------------------------------------------

Material from FVMHP Chap. 15

- Wave propagation method for systems
- High-resolution methods using wave limiters
- Example for shallow water equations


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp20_fvmsys1.pdf>`__
...
`YouTube video <>`__

FVMHP21 - Approximate Riemann solvers
-------------------------------------------

Material from FVMHP Chap. 15

- HLL method
- Linearized Jacobian approach
- Roe solvers
- Shallow water example
- HLLE method and positivity
- Harten-Hyman entropy fix


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp21_approxrsolvers.pdf>`__
...
`YouTube video <>`__

FVMHP22 - Multidimensional hyperbolic problems
-----------------------------------------------

Material from FVMHP Chap. 18

- Derivation of conservation law
- Hyperbolicity
- Advection
- Gas dynamics and acoustics
- Shear waves


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp22_multid.pdf>`__
...
`YouTube video <>`__

FVMHP23 - Fractional step methods
-------------------------------------------

Material from FVMHP Chap. 19

- Dimensional splitting (Chapter 19)
- Fractional steps for source terms (Chapter 17)
- Godunov and Strang splitting
- Cross-derivatives in 2D hyperbolic problems
- Upwind splitting of $ABq_{yx}$ and $BAq_{xy}$


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp23_splitting.pdf>`__
...
`YouTube video <>`__

FVMHP24 - Multidimensional finite volume methods
-------------------------------------------------

Material from FVMHP Chap. 19--21

- Integral form on a rectangular grid cell
- Flux differencing form
- Scalar advection: donor cell upwind
- Corner transport upwind and transverse waves
- Wave propagation algorithms for systems
- Transverse Riemann solver


`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp24_unsplit.pdf>`__
...
`YouTube video <>`__

FVMHP25 - Acoustics in Heterogeneous Media
-------------------------------------------

Material from FVMHP Chap. 9, 21

- One space dimension
- Reflection and transmission at interfaces
- Non-conservative form, Riemann problems
- Two space dimensions
- Transverse Riemann solver
- Some examples

`Slides
<https://faculty.washington.edu/rjl/slides/fvmhp/fvmhp25_vcacou.pdf>`__
...
`YouTube video <>`__

