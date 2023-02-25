module setprob_module

    ! Set up variables for parameters specifying the problem
    ! These will be read in by setprob.f90 and used in the Riemann solver

    implicit none
    real(kind=8) :: a   ! parameter defining isothermal flow, p = a**2 / v
    real(kind=8) :: vleft,uleft,vright,uright  ! initial data
    
    save   ! so these variables can be read in setprob and used elsewhere


contains

    function p(v)
    
    implicit none
    real(kind=8) :: p
    real(kind=8), intent(in) :: v

    p = a**2 / v

    end function p


end module setprob_module
