
.. _info:

=============================================================
Course information
=============================================================


Instructor
---------------

* `Prof. Randall LeVeque <http://faculty.washington.edu/rjl>`_

  * Office: Lewis 328 
  * Office hours:  TBA
  * netid for email: rjl


Class meeting times
-------------------

* MWF 10:30 - 11:20am in SMI 115

Canvas page
-----------

Registered students can view grades and other materials 
on the `Canvas page <https://canvas.uw.edu/courses/1611247>`_.

Grading
-------

* Homework: 75%, midterm: 20%, quizzes 5%
* See :ref:`homeworks` for more information and due dates.

.. _syllabus:

Recommended Background
----------------------

**Prerequisite:** Either AMATH 586 or permission of instructor.
Applied Math 585-6 or similar background is strongly recommended, i.e.
experience in numerical methods for differential equations, along with basic
understanding of partial differential equations.

Programming experience is also expected. Experience in Fortran and Python
would be most valuable but not required.

Experience with using git and GitHub would also be useful, but not required.

Textbook
--------

The primary text book for the class is

- [FVMHP] R. J. LeVeque 
  `Finite Volume Methods for Hyperbolic Problems
  <http://faculty.washington.edu/rjl/book.html>`_, 
  Cambridge University Press, 2002.

We will also use

- [RPJS] D. I. Ketcheson, R. J. LeVeque, and M. J. del Razo,
  `Riemann Problems and Jupyter Solutions
  <http://www.clawpack.org/riemann_book/>`_,
  SIAM 2020. 

  (Freely available as a set of Jupyter notebooks at the link above)

Some other resources:
---------------------

- [ETH] R. J. LeVeque, 
  `Numerical Methods for Conservation Laws <http://link.springer.com/book/10.1007/978-3-0348-5116-9>`_,
  ETH Lecture Notes, 
  Birkhauser-Verlag, Basel, 1990. ISBN 3-7643-2464-3.

  These notes contains a more concise summary of some topics.  Registered
  students will have access to a pdf version.

- The `Clawpack Documentation <http://www.clawpack.org/>`_
  available online.  
  This will be useful since we will be using this software extensively.

- Many other references are available on these topics.  Some of these will
  be listed in the :ref:`biblio`.

Goals
-----

- Master the basic theory of hyperbolic PDEs and nonlinear conservations
  laws, 
- Understand the development of high-resolution shock-capturing finite
  volume methods for solving these equations, 
- Learn about some applications of hyperbolic problems,
- Gain experience in using the Clawpack software for solving these
  equations, including how to set up a new problem,
- Learn the basics of Python programming and use of Jupyter notebooks 
  (and a bit about Fortran),
- Become comfortable using Git and GitHub and learn about the development
  paradigm used for Clawpack and many other open source scientific codes.

Topics
--------

Some of the topics to be covered are listed below.
See also :ref:`outline` and :ref:`examples`.

- Mathematical theory of linear and nonlinear systems of hyperbolic 
  PDEs and conservation laws.
    - Eigenstructure of Jacobian matrix.
    - Shock and rarefaction waves, contact discontinuities.
    - Phase plane analysis -- Hugoniot loci and integral curves.
    - Solution to the Riemann problem for linear and 
      nonlinear systems of equations.
    - Entropy functions and admissibility criteria.

- Theory of finite volume methods.
    - Upwind method, Godunov's method, use of true and approximate Riemann solvers.
    - High-resolution methods with limiters, TVD methods.
    - Review concepts from AMath 586 such as dissipation, dispersion, 
      Lax-Wendroff method, stability, CFL condition, etc.
    - Multi-dimensional finite volume methods on Cartesian and mapped grids
    - Adaptive Mesh Refinement (AMR)

- Programming and use of Clawpack software
    - Implementing some simple methods from scratch.
    - Using Clawpack for more extensive experiments.
    - Setting up a problem, defining a Riemann solver.
    - Plotting solutions.
    - Experimenting with different methods.

- Applications such as
    - Linear advection, acoustics, and elasticity,
    - Nonlinear Burgers' equation, traffic flow,
    - Shallow water equations,
    - Euler equations of compressible gas dynamics.

