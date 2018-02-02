! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.

! Copyright 2017, UT-Battelle, LLC
!
! SPDX-License-Identifier: BSD-3-Clause
! License-Filename: LICENSE

module forerror
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES

 public :: fortrilinos_ierr


type, bind(C) :: SwigArrayWrapper
  type(C_PTR), public :: data = C_NULL_PTR
  integer(C_SIZE_T), public :: size = 0
end type

 public :: fortrilinos_get_serr

 ! PARAMETERS

 integer(C_INT), bind(C) :: fortrilinos_ierr


 ! WRAPPER DECLARATIONS
 interface
function swigc_fortrilinos_get_serr() &
bind(C, name="swigc_fortrilinos_get_serr") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigArrayWrapper
type(SwigArrayWrapper) :: fresult
end function

 end interface


contains
 ! FORTRAN PROXY CODE

subroutine SWIG_chararray_to_string(wrap, string)
  use, intrinsic :: ISO_C_BINDING
  type(SwigArrayWrapper), intent(IN) :: wrap
  character(kind=C_CHAR, len=:), allocatable, intent(OUT) :: string
  character(kind=C_CHAR), dimension(:), pointer :: chars
  integer(kind=C_SIZE_T) :: i
  call c_f_pointer(wrap%data, chars, [wrap%size])
  allocate(character(kind=C_CHAR, len=wrap%size) :: string)
  do i=1, wrap%size
    string(i:i) = chars(i)
  enddo
end subroutine

function fortrilinos_get_serr() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
character(kind=C_CHAR, len=:), allocatable :: swig_result
type(SwigArrayWrapper) :: fresult 

fresult = swigc_fortrilinos_get_serr()

call SWIG_chararray_to_string(fresult, swig_result)
end function


end module
