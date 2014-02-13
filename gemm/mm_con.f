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
      OVER1 = MOD(N, 2)
      END IF
      DO 2, T2 = 1, -OVER1 + N, 4
      DO 4, T4 = T2, MIN0(T2 + 2, N - OVER1), 2
      DO 6, T6 = 1, N, 1
      DO 8, T8 = 1, N, 1
      C(T8, T4) = C(T8, T4) + A(T8, T6) * B(T6, T4)
      C(T8, T4 + 1) = C(T8, T4 + 1) + A(T8, T6) * B(T6, T4 + 1)
    8 CONTINUE
    6 CONTINUE
    4 CONTINUE
    2 CONTINUE
      IF (1 .LE. OVER1) THEN
      DO 10, T4 = 1, N, 1
      DO 12, T6 = 1, N, 1
      C(T6, N) = C(T6, N) + A(T6, T4) * B(T4, N)
   12 CONTINUE
   10 CONTINUE
      END IF
      MM = 0
      RETURN

      END
