subroutine qinit(meqn,mbc,mx,xlower,dx,q,maux,aux)

    ! Set initial conditions for the q array.
    ! This version sets up a Riemann problem at x=0 using the
    ! left and right states read in by setprob.f90.

    use setprob_module, only: vleft,uleft,vright,uright

    implicit none
    
    integer, intent(in) :: meqn,mbc,mx,maux
    real(kind=8), intent(in) :: xlower,dx
    real(kind=8), intent(in) :: aux(maux,1-mbc:mx+mbc)
    real(kind=8), intent(inout) :: q(meqn,1-mbc:mx+mbc)

    ! local variables:
    integer :: i
    real(kind=8) :: xedge

    do i=1,mx
       xedge = xlower + (i-1)*dx
       if (xedge .lt. 0.0d0) then
           q(1,i) = vleft
           q(2,i) = uleft
	   else 
           q(1,i) = vright
           q(2,i) = uright
       endif
    enddo

end subroutine qinit
