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
      OVER1 = MOD(N, 8)
      END IF
      DO 2, T2 = 1, N - OVER1, 6
      DO 4, T4 = T2 + MOD(1 - T2, 8), MIN0(T2 + 4, N - OVER1), 8
      DO 6, T6 = 1, N, 1
      DO 8, T8 = 1, N, 1
      C(T4, T8) = C(T4, T8) + A(T4, T6) * B(T6, T8)
      C(T4 + 1, T8) = C(T4 + 1, T8) + A(T4 + 1, T6) * B(T6, T8)
      C(T4 + 2, T8) = C(T4 + 2, T8) + A(T4 + 2, T6) * B(T6, T8)
      C(T4 + 3, T8) = C(T4 + 3, T8) + A(T4 + 3, T6) * B(T6, T8)
      C(T4 + 4, T8) = C(T4 + 4, T8) + A(T4 + 4, T6) * B(T6, T8)
      C(T4 + 5, T8) = C(T4 + 5, T8) + A(T4 + 5, T6) * B(T6, T8)
      C(T4 + 6, T8) = C(T4 + 6, T8) + A(T4 + 6, T6) * B(T6, T8)
      C(T4 + 7, T8) = C(T4 + 7, T8) + A(T4 + 7, T6) * B(T6, T8)
    8 CONTINUE
    6 CONTINUE
    4 CONTINUE
    2 CONTINUE
      DO 10, T2 = MAX0(1, N - OVER1 + 1), N, 1
      DO 12, T4 = 1, N, 1
      DO 14, T6 = 1, N, 1
      C(T2, T6) = C(T2, T6) + A(T2, T4) * B(T4, T6)
   14 CONTINUE
   12 CONTINUE
   10 CONTINUE
      MM = 0
      RETURN

      END
