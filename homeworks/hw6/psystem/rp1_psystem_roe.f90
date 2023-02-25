! =========================================================
subroutine rp1(maxmx,meqn,mwaves,maux,mbc,mx,ql,qr,auxl,auxr,wave,s,amdq,apdq)
! =========================================================

! Solve Riemann problems for the p-system
!   v_t - u_x = 0
!   u_t + (p(v))_x = 0
! using Roe's approximate Riemann solver.

! The function p(v) is specified in setprob_module.f90

! Note that the characteristic speeds are:
!     lambda^1 = -sqrt(exp(v)) and lambda^2 = +sqrt(exp(v)).
! so there is always 1 left-going and 1 right-going wave, 
! and an entropy fix is never needed.

! waves: 2
! equations: 2

! Conserved quantities:
!       1 v = specific volume
!       2 u = velocity

! This function solves the Riemann problem at all interfaces in one call

! On input, ql contains the state vector at the left edge of each cell
!           qr contains the state vector at the right edge of each cell
! On output, wave contains the waves,
!            s the speeds,
!            amdq the  left-going flux difference  A^- \Delta q
!            apdq the right-going flux difference  A^+ \Delta q

! Note that the i'th Riemann problem has left state qr(:,i-1)
!                                    and right state ql(:,i)
! From the basic clawpack routine step1, rp is called with ql = qr = q.


    use setprob_module, only: p  ! function defining p(v)

    implicit none

    integer, intent(in) :: maxmx, meqn, mwaves, maux, mbc, mx
    real(kind=8), intent(in), dimension(meqn,1-mbc:maxmx+mbc) :: ql, qr
    real(kind=8), intent(in), dimension(maux,1-mbc:maxmx+mbc) :: auxl, auxr
    real(kind=8), intent(out) :: s(mwaves, 1-mbc:maxmx+mbc)
    real(kind=8), intent(out) :: wave(meqn, mwaves, 1-mbc:maxmx+mbc)
    real(kind=8), intent(out), dimension(meqn,1-mbc:maxmx+mbc) :: amdq,apdq

    ! local variables:
    real(kind=8) :: alpha1,alpha2,cbar,vim,vi,uim,ui,dpdv
    real(kind=8) :: delta(2)
    integer :: i,m,mw


    ! # Main loop of the Riemann solver.
    do 30 i=2-mbc,mx+mbc
    
        ! # compute  Roe-averaged quantities:
        vim = qr(1,i-1)
        uim = qr(2,i-1)
        vi = ql(1,i)
        ui = ql(2,i)
        if (abs(vi-vim) > 1e-8) then
            dpdv = (p(vi) - p(vim)) / (vi - vim)
          else
            dpdv = (p(vi+1e-8) - p(vim)) / 1e-8
          endif
        
        cbar = sqrt(-dpdv)
                 
        delta(1) = ql(1,i) - qr(1,i-1)
        delta(2) = ql(2,i) - qr(2,i-1)

        ! # Compute coeffs in the evector expansion of delta(1),delta(2)
        alpha1 = 0.5d0*(cbar*delta(1) + delta(2))/cbar
        alpha2 = 0.5d0*(cbar*delta(1) - delta(2))/cbar

        ! # Finally, compute the waves.
        wave(1,1,i) = alpha1
        wave(2,1,i) = alpha1*cbar
        s(1,i) = -cbar
                 
        wave(1,2,i) = alpha2
        wave(2,2,i) = -alpha2*cbar
        s(2,i) = cbar
                 
    30 enddo

    ! # Compute fluctuations amdq and apdq
    ! ------------------------------------

    ! # amdq = SUM s*wave   over left-going waves
    ! # apdq = SUM s*wave   over right-going waves

    do m=1,2
        do i=2-mbc, mx+mbc
            amdq(m,i) = s(1,i)*wave(m,1,i)
            apdq(m,i) = s(2,i)*wave(m,2,i)
        enddo
    enddo
    
    end subroutine rp1

