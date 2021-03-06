## Copyright 2017, UT-Battelle, LLC
##
## SPDX-License-Identifier: BSD-3-Clause
## License-Filename: LICENSE
TRIBITS_COPY_FILES_TO_BINARY_DIR(Simple_cp
  SOURCE_FILES stratimikos.xml davidson.xml LHS_matrix.mat RHS_matrix.mat
 )

IF (${PACKAGE_NAME}_ENABLE_Belos AND ${PACKAGE_NAME}_ENABLE_Ifpack2)

  TRIBITS_ADD_EXECUTABLE_AND_TEST(
    test_simple_solver_handle_test_cpp
    SOURCES test_simple_solver_handle.cpp
    COMM serial mpi
  )

  TRIBITS_ADD_EXECUTABLE_AND_TEST(
    test_simple_solver_handle_test_fortran
    SOURCES test_simple_solver_handle.f90
    COMM serial mpi
  )

ENDIF()

IF (${PACKAGE_NAME}_ENABLE_Anasazi)

  TRIBITS_ADD_EXECUTABLE_AND_TEST(
    eigen_handle_test_cpp
    SOURCES test_simple_eigen_handle.cpp
    COMM serial mpi
    NUM_MPI_PROCS 1
    )

  TRIBITS_ADD_EXECUTABLE_AND_TEST(
    eigen_handle_preset_test_cpp
    SOURCES test_simple_eigen_handle_preset.cpp
    COMM serial mpi
    NUM_MPI_PROCS 1
    )

  TRIBITS_ADD_EXECUTABLE_AND_TEST(
    eigen_handle_test_fortran
    SOURCES test_simple_eigen_handle.f90
    COMM serial mpi
    NUM_MPI_PROCS 1
    )

ENDIF()
