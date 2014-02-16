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
      write (1,*) A(250,250)

      open(0, file="jacobi_time", access="APPEND")
      write (0, "(f25.20)") finish - start

      end

CCCCC Jacobi test function will be placed below
      FUNCTION JACOBI (N, A)

      INTEGER T2, T4, T6, AUB1, AUB2
      DOUBLE PRECISION A

      DIMENSION A(N, N)

      AUB1 = N
      AUB2 = N
      IF (3 .LE. N) THEN
      DO 2, T2 = 2, 98, 4
      DO 4, T4 = T2, MIN0(T2 + 3, 100), 1
      DO 6, T6 = 2, N - 1, 1
      A(T4, T6) = A(T4 -1, T6 - 1) + A(T4 -1, T6) + A(T4 -1, T6 +
     $ 1)
    6 CONTINUE
    4 CONTINUE
    2 CONTINUE
      END IF
      JACOBI = 0
      RETURN

      END
