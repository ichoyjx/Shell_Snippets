      program testMM

      parameter (N=500)
      real*8  A(N,N), B(N,N), C(N,N)
      real start, finish
      INTEGER MM_RET

      data A/250000 * 123456789.0/, B/250000 * 987654321.0/
      data C/250000 * 0.0/

      call cpu_time(start)

      MM_RET = mm(N,A,B,C)

      call cpu_time(finish)
      write (*,*) C(250,250)
      
      open(0, file="mm_time", access="APPEND")
      write (0, "(f15.12)") finish - start
      
      end

CCCCC MM test function will be placed below
