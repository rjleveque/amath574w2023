"""
Create figure to accompany problem 3.5.

Note that the scaling for x-t used here assumes the propagation speeds are
-1 and +1, but then the time axis is labelled with generic times, which in
general would depend on values chosen for the parameters rho and K in the
acoustics equations since c = sqrt(K/rho).

"""

# load numpy, matplotlib commands...
from pylab import *

clf()  # clear figure

plot([0,4],[0,0],'k') # x-axis  'k' means black line
plot([0,0],[0,6],'k') # t-axis
plot([4,4],[0,6],'k') # right boundary

def plot_rightgoing(x1,t1):
    """
    plot right-going wave of slope 1 starting at (x1,t1) to right boundary
    """
    t2 = t1 + (4-x1)
    plot([x1,4], [t1,t2], 'k')

def plot_leftgoing(x1,t1):
    """
    plot left-going wave of slope -1 starting at (x1,t1) to left boundary
    """
    t2 = t1 + x1
    plot([x1,0], [t1,t2], 'k')

plot_rightgoing(1,0)
plot_rightgoing(2,0)
plot_rightgoing(0,1)
plot_rightgoing(0,2)

plot_leftgoing(1,0)
plot_leftgoing(2,0)
plot_leftgoing(4,2)
plot_leftgoing(4,3)

text(0.3, 0.2, 'A')
text(1.5, 0.2, 'B')
text(3.0, 0.2, 'C')
text(0.5, 0.7, 'D')
text(2.5, 1.0, 'E')
text(0.2, 1.5, 'F')
text(2.0, 2.0, 'G')
text(3.8, 2.5, 'H')
text(1.0, 2.3, 'I')
text(3.0, 3.3, 'J')
text(0.5, 4.0, 'K')
text(2.5, 4.0, 'L')
text(3.5, 4.0, 'M')

yticks([1,2,3],['t1','t2','t3'])

ylim(0,5)

fname = 'problem_3_5.png'
savefig(fname)
print 'Created ',fname

