
.. _examples:

=============================================================
Some examples
=============================================================

Here are a few examples of solutions to hyperbolic partial differential
equations.  For some other examples, see :ref:`notebooks`, :ref:`riemann`,
and the `Clawpack Gallery <http://www.clawpack.org/gallery/index.html>`_.

.. _examples_advection:

Advection
---------

The advection equation :math:`q_t +uq_x=0` with constant advection velocity
:math:`u` is the simplest example of a hyperbolic PDE.  The solution simply
advects with shape unchanged.  

This animation below shows an example when the velocity is :math:`u=1` and
periodic boundary conditions are used on a domain of length 1.  The computed
solution was obtained using one of the high-resolution finite volume methods
to be studied in this class, using the code from
`$CLAW/classic/examples/advection_1d_example1
<http://www.clawpack.org/gallery/_static/classic/examples/advection_1d_example1/README.html>`_.

.. include:: advection_1d_example1_fig1.rst


.. _examples_burgers:

Burgers' equation
-----------------

Nonlinear scalar equations lead to shock formation, as illustrated by
Burgers' equation :math:`u_t + \left(\frac 1 2 u^2\right)_x = 0`.  
This is an animation of Figure 11.8 in [FVMHP]_, computed using the code in
`$CLAW/apps/fvmbook/chap11/burgers
<http://www.clawpack.org/gallery/_static/apps/fvmbook/chap11/burgers/README.html>`_.

.. include:: burgers_fig1.rst


.. _examples_acoustics:

Linear Acoustics
----------------

Linear acoustics in one space dimension can be modeled by a system of two
PDEs for pressure and velocity.  Below we see animations of how they evolve
from initial data with zero velocity and only a disturbance in pressure.
There is a reflecting boundary condition (:math:`v=0`) at 
the left edge and an outflow boundary condition at the right edge of the domain.
This is an animation of Figure 3.1 in [FVMHP]_, computed using the code in
`$CLAW/apps/fvmbook/chap3/acousimple
<http://www.clawpack.org/gallery/_static/apps/fvmbook/chap3/acousimple/README.html>`_.

.. include:: acousimple_fig1.rst

.. _examples_burgers_2d:

Two dimensional Burgers' equation
----------------------------------

This illustrates solution of the 2D Burgers' equation 
:math:`u_t + \left(\frac 1 2 u^2\right)_x + \left(\frac 1 2 u^2\right)_y = 0` 
with piecewise constant intial data and periodic boundary conditons:

.. include:: burgers_2d_square_fig0.rst

This was computed using adaptive mesh refinement, with patches of finer grid
cells near the discontinuties where more resolution is required.  Three
levels of patches were used as seen in the animation below.  The individual
grid cells are shown only on the coarsest level.

.. include:: burgers_2d_square_fig2.rst

This was computed using the code in
`$CLAW/amrclaw/examples/burgers_2d_square
<http://www.clawpack.org/_static/amrclaw/examples/burgers_2d_square/README.html>`_.



