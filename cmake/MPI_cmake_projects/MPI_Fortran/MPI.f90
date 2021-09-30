 ! Copyright (C) 2017-2021 by NEC Corporation
 !
 ! Permission is hereby granted, free of charge, to any person obtaining a copy
 ! of this software and associated documentation files (the "Software"), to
 ! deal in the Software without restriction, including without limitation the
 ! rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 ! sell copies of the Software, and to permit persons to whom the Software is
 ! furnished to do so, subject to the following conditions:
 !
 ! The above copyright notice and this permission notice shall be included in
 ! all copies or substantial portions of the Software.
 !
 ! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 ! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 ! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 ! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 ! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 ! FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 ! IN THE SOFTWARE.

! Test program for MPI in Fortran
program Hello
   implicit none

   include 'mpif.h'

   integer :: num_procs, mpierror
   integer :: rank_id

   call MPI_Init(mpierror)
   call MPI_Comm_size(MPI_COMM_WORLD, num_procs, mpierror)
   call MPI_Comm_rank(MPI_COMM_WORLD, rank_id, mpierror)

   print *, "Hello MPI Fortran"
   print *, "Rank ID: ", rank_id
   print *, "Number of processes: ", num_procs

   call MPI_Finalize(mpierror)

 end program
