
.. _clawpack:

Installing Clawpack
===================

See 

- `clawpack.org <http://clawpack.org/>`_ for general documentation
- `clawpack.org/installing.html <http://clawpack.org/installing.html>`_ 
  for a variety of installation options

These notes show the recommended way to do it on the UW JupyterHub 
so that the Riemann book notebooks work, and so that the 
`apps repository` can be updated if necessary.

pip install (almost) everything
-------------------------------

Following the instructions at 
http://www.clawpack.org/installing_pip.html#install-quick-all,
open a terminal and give this command::

    pip install --src=$HOME/clawpack_src --user -e \
        git+https://github.com/clawpack/clawpack.git@v5.9.0#egg=clawpack-v5.9.0 \
        --use-deprecated=legacy-resolver

(The last line might not be needed if using an old version of pip).

This may take a while to install since it compiles some Fortran code.

This should create a new directory `$HOME/clawpack_src/clawpack-v5-9-0` and
for running Fortran codes later (and for the purposes of these instructions)
we set an environment variable to point to this directory::

    export CLAW=$HOME/clawpack_src/clawpack-v5-9-0

Clawpack includes a useful utility to test whether clawpack can be imported
in Python and what version of clawpack it's using, if you happen to have
multiple versions::

    python $CLAW/clawutil/src/python/clawutil/whichclaw.py

This is all that's needed to get started with Clawpack, and on the UW
JupyterHub the notebooks in the `Riemann_book` directory should now run.
That directory should already be in your Hub instance, and is a clone of
https://github.com/clawpack/riemann_book.

Apps Repository
---------------

Some other notebooks and Fortran applications directories can be found in
the `apps repository <http://www.clawpack.org/apps.html>`__.  This isn't
downloaded by default when Clawpack is installed, but you can use git clone
as suggested on that documentation page.  However, for AMath 574 I suggest
you clone it instead from my fork of the repository so that you can check
out a particular branch (called `am574`) that I will be updating during the
quarter.  Here's how to do this::

    cd $CLAW
    git clone git@github.com:rjleveque/apps.git


This directory has several subdirectories, in particular:

- `$CLAW/apps/fvmbook` contains examples from the textbook FVMHP
  (as indicated by the links in the captions of many figures).

- `$CLAW/apps/notebooks` has several subdirectories containing Jupyter
  notebooks related to different capabilities of Clawpack.

Unfortunately some of these examples are slightly out of date and may not
run perfectly, but I hope they will get fixed up this quarter.  Hence the
branch `am574`.

Before running any of the notebooks or Clawpack code in this repository, you
might want to copy things into a separate directory, e.g. under `$MY574`, to
avoid merge conflicts if you want to update this repository later with a
`git pull`.



