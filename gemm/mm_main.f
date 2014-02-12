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
      
      open(0, file="mm_new_time", access="APPEND")
      write (0, "(f15.12)") finish - start
      
      end

      FUNCTION MM (N, A, B, C)

      INTEGER OVER1, T2, T4, T6, T8, AUB1, AUB2, BUB1, BUB2, CUB1, CUB2
      DOUBLE PRECISION A, B, C

      DIMENSION A(N, N)
      DIMENSION B(N, N)
      DIMENSION C(N, N)

      AUB1 = N
      AUB2 = N
      BUB1 = N
      BUB2 = N
      CUB1 = N
      CUB2 = N
      OVER1 = 0
      IF (1 .LE. N) THEN
         OVER1 = MOD(-(-(5 + N)) / 6, 4)
      END IF
      DO 2, T2 = 1, -6 * OVER1 + N, 24
         DO 4, T4 = T2, MIN0(N, T2 + 5), 1
            DO 6, T6 = 1, N, 1
               DO 8, T8 = 1, N, 1
                  C(T8, T6) = C(T8, T6) + A(T8, T4) * B(T4, T6)
 8             CONTINUE
 6          CONTINUE
 4       CONTINUE
         DO 10, T4 = T2 + 6, MIN0(T2 + 11, N), 1
            DO 12, T6 = 1, N, 1
               DO 14, T8 = 1, N, 1
                  C(T8, T6) = C(T8, T6) + A(T8, T4) * B(T4, T6)
 14            CONTINUE
 12         CONTINUE
 10      CONTINUE
         DO 16, T4 = T2 + 12, MIN0(T2 + 17, N), 1
            DO 18, T6 = 1, N, 1
               DO 20, T8 = 1, N, 1
                  C(T8, T6) = C(T8, T6) + A(T8, T4) * B(T4, T6)
 20            CONTINUE
 18         CONTINUE
 16      CONTINUE
         DO 22, T4 = T2 + 18, MIN0(T2 + 23, N), 1
            DO 24, T6 = 1, N, 1
               DO 26, T8 = 1, N, 1
                  C(T8, T6) = C(T8, T6) + A(T8, T4) * B(T4, T6)
 26            CONTINUE
 24         CONTINUE
 22      CONTINUE
 2    CONTINUE
      DO 28, T2 = MAX0(1, N - 6 * OVER1 + 1 + MOD(1 - (N - 6 * OVER1 +
     $     1), 6)), N, 6
         DO 30, T4 = T2, MIN0(T2 + 5, N), 1
            DO 32, T6 = 1, N, 1
               DO 34, T8 = 1, N, 1
                  C(T8, T6) = C(T8, T6) + A(T8, T4) * B(T4, T6)
 34            CONTINUE
 32         CONTINUE
 30      CONTINUE
 28   CONTINUE
      MM = 0
      RETURN

      END
