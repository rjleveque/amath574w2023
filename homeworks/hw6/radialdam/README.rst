.. _fvmbook_chap21_radialdam:

Shallow water equations with radial dam break data
--------------------------------------------------


This version uses `g = 9.81` and a different set of data than
Example [book/chap21/radialdam] in the book 
`Finite Volume Methods for Hyperbolic Problems <http://www.clawpack.org/book.html>`_
by R. J. LeVeque.
        

Shallow water equations with radial symmetric initial conditions.  
The solution should remain radially symmetric.  

First run the code in the 1drad subdirectory to
compute the "reference solution" and then setplot.py contains code to produce a
scatter plot of the computed depth h vs. distance from origin compared
with the 1d solution.

