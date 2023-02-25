subroutine setprob

    ! Read in parameters specifying the problem

    use setprob_module, only: a
    use setprob_module, only: vleft,uleft,vright,uright

    implicit none
    integer :: iunit

    
    iunit = 7
!   # open the unit with new routine from Clawpack 4.4 to skip over
!   # comment lines starting with #:
    call opendatafile(iunit, 'setprob.data')

    read(7,*) a
    read(7,*) vleft
    read(7,*) uleft
    read(7,*) vright
    read(7,*) uright

    close(iunit)

end subroutine setprob
