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
