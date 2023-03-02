
""" 
Set up the plot figures, axes, and items to be done for each frame.

This module is imported by the plotting routines and then the
function setplot is called to set the plot parameters.
    
""" 

import numpy as np
import os

# reference solution computed via 1d radial equations:
if os.path.exists('./1drad/_output'):
    qref_dir = os.path.abspath('./1drad/_output')
else:
    qref_dir = None
    print("Directory ./1drad/_output not found")

#--------------------------
def setplot(plotdata):
#--------------------------
    
    """ 
    Specify what is to be plotted at each frame.
    Input:  plotdata, an instance of pyclaw.plotters.data.ClawPlotData.
    Output: a modified version of plotdata.
    
    """ 


    from clawpack.visclaw import colormaps

    plotdata.clearfigures()  # clear any old figures,axes,items data
    

    # Figure for pcolor plot of depth
    plotfigure = plotdata.new_plotfigure(name='depth', figno=0)

    # Set up for axes in this figure:
    plotaxes = plotfigure.new_plotaxes()
    plotaxes.xlimits = [-200., 200.]
    plotaxes.ylimits = [-200., 200.]
    plotaxes.title = 'depth'
    plotaxes.scaled = True

    # Set up for item on these axes:
    plotitem = plotaxes.new_plotitem(plot_type='2d_pcolor')
    plotitem.plot_var = 0
    plotitem.pcolor_cmap = colormaps.white_blue
    plotitem.pcolor_cmin = 0.
    plotitem.pcolor_cmax = 50.
    plotitem.add_colorbar = True
    

    # Figure for contour plot of depth
    plotfigure = plotdata.new_plotfigure(name='depth (contour)', figno=1)

    # Set up for axes in this figure:
    plotaxes = plotfigure.new_plotaxes()
    plotaxes.xlimits = [-200., 200.]
    plotaxes.ylimits = [-200., 200.]
    plotaxes.title = 'depth'
    plotaxes.scaled = True

    # Set up for item on these axes:
    plotitem = plotaxes.new_plotitem(plot_type='2d_contour')
    plotitem.plot_var = 0
    plotitem.contour_levels = np.arange(0.5,90,5)

    # Scatter plot of depth
    plotfigure = plotdata.new_plotfigure(name='Scatter', figno=10)

    # Set up for axes in this figure:
    plotaxes = plotfigure.new_plotaxes()
    plotaxes.xlimits = [0., 200.]
    plotaxes.ylimits = [0., 110.]
    plotaxes.title = 'Scatter plot of h'

    # Set up for item on these axes:
    plotitem = plotaxes.new_plotitem(plot_type='1d_from_2d_data')
    plotitem.plot_var = 0
    def q_vs_radius(current_data):
        from numpy import sqrt
        x = current_data.x
        y = current_data.y
        r = sqrt(x**2 + y**2)
        q = current_data.q[0,:,:]
        return r,q
    plotitem.map_2d_to_1d = q_vs_radius
    plotitem.plotstyle = 'b.'

    # Plot the 1drad solution on scatter plot:
    plotitem = plotaxes.new_plotitem(plot_type='1d_plot')
    plotitem.plot_var = 0
    plotitem.outdir = qref_dir
    plotitem.plotstyle = 'r-'


    # Parameters used only when creating html and/or latex hardcopy
    # e.g., via pyclaw.plotters.frametools.printframes:

    plotdata.printfigs = True                # print figures
    plotdata.print_format = 'png'            # file format
    plotdata.print_framenos = 'all'          # list of frames to print
    plotdata.print_fignos = 'all'            # list of figures to print
    plotdata.html = True                     # create html files of plots?
    plotdata.html_homelink = '../README.html'   # pointer for top of index
    plotdata.latex = True                    # create latex file of plots?
    plotdata.latex_figsperline = 2           # layout of plots
    plotdata.latex_framesperline = 1         # layout of plots
    plotdata.latex_makepdf = False           # also run pdflatex?

    return plotdata

    
