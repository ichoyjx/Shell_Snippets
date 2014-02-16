      program testJACOBI

      parameter (N=1000)
      real*8  A(N,N)
      real start, finish
      INTEGER i, JACOBI_RET

      data A/1000000 * 9.87654321E30/

      call cpu_time(start)

      do i=1, 100
         JACOBI_RET = jacobi(N,A)
      ENDDO

      call cpu_time(finish)
      write (*,*) A(250,250)
      open(1, file="jacobi_result", access="APPEND")
      write (1,*) C(250,250)

      open(0, file="jacobi_time", access="APPEND")
      write (0, "(f25.20)") finish - start

      end

CCCCC Jacobi test function will be placed below
