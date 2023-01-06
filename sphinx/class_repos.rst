
.. _class_repos:

Class GitHub Repository
=======================

All of the files that you may need to access for this class will be pushed
to the GitHub repository `amath574w2023 
<https://github.com/rjleveque/amath574w2023>`_.

To clone this repository::

    git clone https://github.com/rjleveque/amath574w2023.git

This will create a directory `amath574w2023`.  

AM574 environment variable
--------------------------

I suggest you define an environment variable `AM574` that points to this
repository, e.g. in the bash shell::

    export AM574=/full/path/to/amath574w2023

(You will need to adjust this to set the path properly.)

On a Unix system or a Mac, you can put this command in the file
`~/.bashrc` if you want it to be executed every time you open a new shell.

Then you can do, e.g. ::

    cd $AM574

to change directories to the class repository.

Below and elsewhere in these notes, `$AM574` will be used to refer to the
full path to the class repository.

To update
---------

If new files have been added to the class repository, you can get them by
doing::

    cd $AM574
    git pull

Your copy of these files
------------------------

To avoid having to worry about
conflicts if you change a file and the same file changes in the repository,
I suggest that you never modify the files in this directory.  Instead, 
create another directory for doing your own work, e.g. ::

    cd
    mkdir my574
    export MY574=/full/path/to/my574

Then copy all files from $AM574 to $MY574, preserving the directory
structure::

    cp -r $AM574/* $MY574/

Now you can do anything you want with the files in $MY574 without creating
any possible conflicts in $AM574.

For example, you might want to modify the file hw1.tex to include your
solutions (also changing the filename to include your name for submission)::

    cd $AM574/homeworks/hw1
    cp hw1.tex hw1_NAME.tex
    # edit hw1_NAME.tex to add your solutions
    pdflatex hw1_NAME

and then submit hw1_NAME.pdf.

Later you might want to copy individual files or subdirectories,
e.g. when homework2 appears you could do::

    cd $AM574
    git pull
    cp -r homeworks/hw2 $MY574/homeworks/

Just make sure you don't overwrite something important in $MY574 when doing
this!

