      FUNCTION MM (N, A, B, C)

      INTEGER OVER1, OVER2, T2, T4, T6, T12, T10, T8, AUB1, AUB2, BUB1
      INTEGER BUB2, CUB1, CUB2
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
      OVER2 = 0
      DO 2, T2 = 1, N, 10
      DO 4, T4 = 1, N, 4
      DO 6, T6 = 1, N, 4
      OVER1 = MOD(N, 4)
      IF (OVER1 + T4 .LE. N) THEN
      OVER2 = MOD(N, 4)
      IF (OVER2 + T6 .LE. N) THEN
      DO 8, T12 = T2, MIN0(N, T2 + 9), 1
      C(T4, T6) = C(T4, T6) + A(T4, T12) * B(T12, T6)
      C(T4 + 1, T6) = C(T4 + 1, T6) + A(T4 + 1, T12) * B(T12, T6)
      C(T4 + 2, T6) = C(T4 + 2, T6) + A(T4 + 2, T12) * B(T12, T6)
      C(T4 + 3, T6) = C(T4 + 3, T6) + A(T4 + 3, T12) * B(T12, T6)
      C(T4, T6 + 1) = C(T4, T6 + 1) + A(T4, T12) * B(T12, T6 + 1)
      C(T4 + 1, T6 + 1) = C(T4 + 1, T6 + 1) + A(T4 + 1, T12) * B(T12, T6
     $ + 1)
      C(T4 + 2, T6 + 1) = C(T4 + 2, T6 + 1) + A(T4 + 2, T12) * B(T12, T6
     $ + 1)
      C(T4 + 3, T6 + 1) = C(T4 + 3, T6 + 1) + A(T4 + 3, T12) * B(T12, T6
     $ + 1)
      C(T4, T6 + 2) = C(T4, T6 + 2) + A(T4, T12) * B(T12, T6 + 2)
      C(T4 + 1, T6 + 2) = C(T4 + 1, T6 + 2) + A(T4 + 1, T12) * B(T12, T6
     $ + 2)
      C(T4 + 2, T6 + 2) = C(T4 + 2, T6 + 2) + A(T4 + 2, T12) * B(T12, T6
     $ + 2)
      C(T4 + 3, T6 + 2) = C(T4 + 3, T6 + 2) + A(T4 + 3, T12) * B(T12, T6
     $ + 2)
      C(T4, T6 + 3) = C(T4, T6 + 3) + A(T4, T12) * B(T12, T6 + 3)
      C(T4 + 1, T6 + 3) = C(T4 + 1, T6 + 3) + A(T4 + 1, T12) * B(T12, T6
     $ + 3)
      C(T4 + 2, T6 + 3) = C(T4 + 2, T6 + 3) + A(T4 + 2, T12) * B(T12, T6
     $ + 3)
      C(T4 + 3, T6 + 3) = C(T4 + 3, T6 + 3) + A(T4 + 3, T12) * B(T12, T6
     $ + 3)
    8 CONTINUE
      END IF
      DO 10, T10 = MAX0(T6, -OVER2 + N + 1), MIN0(T6 + 3, N), 1
      DO 12, T12 = T2, MIN0(T2 + 9, N), 1
      C(T4, T10) = C(T4, T10) + A(T4, T12) * B(T12, T10)
      C(T4 + 1, T10) = C(T4 + 1, T10) + A(T4 + 1, T12) * B(T12, T10)
      C(T4 + 2, T10) = C(T4 + 2, T10) + A(T4 + 2, T12) * B(T12, T10)
      C(T4 + 3, T10) = C(T4 + 3, T10) + A(T4 + 3, T12) * B(T12, T10)
   12 CONTINUE
   10 CONTINUE
      END IF
      DO 14, T8 = MAX0(T4, N - OVER1 + 1), MIN0(N, T4 + 3), 1
      DO 16, T10 = T6, MIN0(N, T6 + 3), 1
      DO 18, T12 = T2, MIN0(N, T2 + 9), 1
      C(T8, T10) = C(T8, T10) + A(T8, T12) * B(T12, T10)
   18 CONTINUE
   16 CONTINUE
   14 CONTINUE
    6 CONTINUE
    4 CONTINUE
    2 CONTINUE
      MM = 0
      RETURN

      END
