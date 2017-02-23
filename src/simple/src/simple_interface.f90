! This file was automatically generated by SWIG (http://www.swig.org).
! Version 3.0.12
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module SimpleInterface
 use, intrinsic :: ISO_C_BINDING
 use forteuchos
 implicit none

 ! PUBLIC METHODS AND TYPES
 public :: setup_matrix
 public :: setup_solver
 public :: solve
 public :: finalize
 public :: init
 interface init
  ! module procedure :: init__SWIG_0, init__SWIG_1
  module procedure :: init__SWIG_1
 end interface
 ! TYPES

 ! WRAPPER DECLARATIONS
 private
 interface
  ! subroutine swigc_init__SWIG_0(farg1) &
     ! bind(C, name="swigc_init__SWIG_0")
   ! use, intrinsic :: ISO_C_BINDING
   ! type(C_PTR), value :: farg1
  ! end subroutine
  subroutine swigc_init__SWIG_1() &
     bind(C, name="swigc_init__SWIG_1")
   use, intrinsic :: ISO_C_BINDING
  end subroutine
  subroutine swigc_setup_matrix(farg1, farg2, farg3, farg4, farg5, farg6) &
     bind(C, name="swigc_setup_matrix")
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT), intent(in) :: farg1
   integer(C_INT), dimension(*), intent(in) :: farg2
   integer(C_INT), dimension(*), intent(in) :: farg3
   integer(C_INT), intent(in) :: farg4
   integer(C_INT), dimension(*), intent(in) :: farg5
   real(C_DOUBLE), dimension(*), intent(in) :: farg6
  end subroutine
  subroutine swigc_setup_solver(farg1) &
     bind(C, name="swigc_setup_solver")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
  end subroutine
  subroutine swigc_solve(farg1, farg2, farg3) &
     bind(C, name="swigc_solve")
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT), intent(in) :: farg1
   real(C_DOUBLE), dimension(*), intent(in) :: farg2
   real(C_DOUBLE), dimension(*), intent(inout) :: farg3
  end subroutine
  subroutine swigc_finalize() &
     bind(C, name="swigc_finalize")
   use, intrinsic :: ISO_C_BINDING
  end subroutine
 end interface

contains
  ! FORTRAN PROXY CODE
  ! subroutine init__SWIG_0(comm)
   ! use, intrinsic :: ISO_C_BINDING
   ! type(SWIGTYPE_MPI_Comm) :: comm
   ! call swigc_init__SWIG_0(comm%ptr)
  ! end subroutine
  subroutine init__SWIG_1()
   use, intrinsic :: ISO_C_BINDING
   call swigc_init__SWIG_1()
  end subroutine
  subroutine setup_matrix(numRows, rowInds, rowPtrs, numNnz, colInds, values)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT), intent(in) :: numRows
   integer(C_INT), dimension(:), intent(in) :: rowInds
   integer(C_INT), dimension(:), intent(in) :: rowPtrs
   integer(C_INT), intent(in) :: numNnz
   integer(C_INT), dimension(:), intent(in) :: colInds
   real(C_DOUBLE), dimension(:), intent(in) :: values
   call swigc_setup_matrix(numRows, rowInds, rowPtrs, numNnz, colInds, values)
  end subroutine
  subroutine setup_solver(paramList)
   use, intrinsic :: ISO_C_BINDING
   class(ParameterList) :: paramList
   call swigc_setup_solver(paramList%ptr)
  end subroutine
  subroutine solve(size, rhs, lhs)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT), intent(in) :: size
   real(C_DOUBLE), dimension(:), intent(in) :: rhs
   real(C_DOUBLE), dimension(:), intent(inout) :: lhs
   call swigc_solve(size, rhs, lhs)
  end subroutine
  subroutine finalize()
   use, intrinsic :: ISO_C_BINDING
   call swigc_finalize()
  end subroutine
end module SimpleInterface
