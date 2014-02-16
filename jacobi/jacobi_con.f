      FUNCTION JACOBI (N, A)

      INTEGER OVER1, T2, T4, T6, AUB1, AUB2
      DOUBLE PRECISION A

      DIMENSION A(N, N)

      AUB1 = N
      AUB2 = N
      OVER1 = 0
      IF (3 .LE. N) THEN
      OVER1 = MOD(-(-(3 + N)) / 6, 8)
      END IF
      DO 2, T2 = 2, -6 * OVER1 + N - 1, 48
      DO 4, T4 = T2, MIN0(N - 1, T2 + 5), 1
      DO 6, T6 = 2, 100, 1
      A(T6, T4) = A(T6 -1, T4 - 1) + A(T6 -1, T4) + A(T6 -1, T4 +
     $ 1)
    6 CONTINUE
    4 CONTINUE
      DO 8, T4 = T2 + 6, MIN0(N - 1, T2 + 11), 1
      DO 10, T6 = 2, 100, 1
      A(T6, T4) = A(T6 -1, T4 - 1) + A(T6 -1, T4) + A(T6 -1, T4 +
     $ 1)
   10 CONTINUE
    8 CONTINUE
      DO 12, T4 = T2 + 12, MIN0(N - 1, T2 + 17), 1
      DO 14, T6 = 2, 100, 1
      A(T6, T4) = A(T6 -1, T4 - 1) + A(T6 -1, T4) + A(T6 -1, T4 +
     $ 1)
   14 CONTINUE
   12 CONTINUE
      DO 16, T4 = T2 + 18, MIN0(N - 1, T2 + 23), 1
      DO 18, T6 = 2, 100, 1
      A(T6, T4) = A(T6 -1, T4 - 1) + A(T6 -1, T4) + A(T6 -1, T4 +
     $ 1)
   18 CONTINUE
   16 CONTINUE
      DO 20, T4 = T2 + 24, MIN0(N - 1, T2 + 29), 1
      DO 22, T6 = 2, 100, 1
      A(T6, T4) = A(T6 -1, T4 - 1) + A(T6 -1, T4) + A(T6 -1, T4 +
     $ 1)
   22 CONTINUE
   20 CONTINUE
      DO 24, T4 = T2 + 30, MIN0(N - 1, T2 + 35), 1
      DO 26, T6 = 2, 100, 1
      A(T6, T4) = A(T6 -1, T4 - 1) + A(T6 -1, T4) + A(T6 -1, T4 +
     $ 1)
   26 CONTINUE
   24 CONTINUE
      DO 28, T4 = T2 + 36, MIN0(N - 1, T2 + 41), 1
      DO 30, T6 = 2, 100, 1
      A(T6, T4) = A(T6 -1, T4 - 1) + A(T6 -1, T4) + A(T6 -1, T4 +
     $ 1)
   30 CONTINUE
   28 CONTINUE
      DO 32, T4 = T2 + 42, MIN0(T2 + 47, N - 1), 1
      DO 34, T6 = 2, 100, 1
      A(T6, T4) = A(T6 -1, T4 - 1) + A(T6 -1, T4) + A(T6 -1, T4 +
     $ 1)
   34 CONTINUE
   32 CONTINUE
    2 CONTINUE
      DO 36, T2 = MAX0(2, N - 6 * OVER1 + MOD(2 - (N - 6 * OVER1), 6)),
     $ N - 1, 6
      DO 38, T4 = T2, MIN0(T2 + 5, N - 1), 1
      DO 40, T6 = 2, 100, 1
      A(T6, T4) = A(T6 -1, T4 - 1) + A(T6 -1, T4) + A(T6 -1, T4 +
     $ 1)
   40 CONTINUE
   38 CONTINUE
   36 CONTINUE
      JACOBI = 0
      RETURN

      END
