C ***********************************************************
C Fortran file translated from WHIRL Wed Feb 12 12:24:28 2014
C ***********************************************************

	REAL(4) FUNCTION gemm(N, A, B, C)
	IMPLICIT NONE
	INTEGER(4) N
	REAL(8) A(t$1, t$1)
	REAL(8) B(t$1, t$1)
	REAL(8) C(t$1, t$1)
C
C	**** Variables and functions ****
C
	INTEGER(8) t$1
	INTEGER(8) t$2
	INTEGER(4) I
	INTEGER(4) J
	INTEGER(4) K
	INTEGER(8) t$3
	INTEGER(8) t$4
	REAL(8) temp__misym0
	REAL(8) temp__misym1
	REAL(8) temp__misym2
	REAL(8) temp__misym3
	REAL(8) temp__misym4
	REAL(8) temp__misym5
	REAL(8) temp__misym6
	REAL(8) temp__misym7
	REAL(8) temp__misym8
	REAL(8) temp__misym9
	REAL(8) temp__misym10
	REAL(8) temp__misym11
	REAL(8) temp__misym12
	REAL(8) temp__misym13
	REAL(8) temp__misym14
	REAL(8) temp__misym15
	REAL(8) temp__misym16
	REAL(8) temp__misym17
	REAL(8) temp__misym18
	REAL(8) temp__misym19
	REAL(8) temp__misym20
	REAL(8) temp__misym21
	REAL(8) temp__misym22
	REAL(8) temp__misym23
	REAL(8) temp__misym24
	
	REAL(4) gemm
C
C	**** Temporary variables ****
C
	INTEGER(4) w2c__ab0
	INTEGER(4) w2c_tile2K
	INTEGER(4) w2c_tile2I
	INTEGER(4) w2c_wd_K0
	INTEGER(4) w2c_wd_J
	INTEGER(4) w2c_wd_K
C
C	**** statements ****
C
	t$1 = N
	t$2 = MAX(N, 0)
	t$3 = (t$2 * 2)
	t$4 = (t$2 * t$2)
	w2c__ab0 = INT4(N)
	DO w2c_tile2K = 1, w2c__ab0, 100
	  DO w2c_tile2I = 1, w2c__ab0, 112
	    DO J = 1, (w2c__ab0 + -3), 4
	      DO K = w2c_tile2K, MIN((w2c__ab0 + -3), (w2c_tile2K + 96)), 4
	        temp__misym0 = B(K, J)
	        temp__misym1 = B(K + 3, J + 3)
	        temp__misym2 = B(K + 3, J + 2)
	        temp__misym3 = B(K + 3, J + 1)
	        temp__misym4 = B(K + 3, J)
	        temp__misym5 = B(K, J + 1)
	        temp__misym6 = B(K + 2, J + 3)
	        temp__misym7 = B(K + 2, J + 2)
	        temp__misym8 = B(K + 2, J + 1)
	        temp__misym9 = B(K + 2, J)
	        temp__misym10 = B(K, J + 2)
	        temp__misym11 = B(K + 1, J + 3)
	        temp__misym12 = B(K + 1, J + 2)
	        temp__misym13 = B(K + 1, J + 1)
	        temp__misym14 = B(K + 1, J)
	        temp__misym15 = B(K, J + 3)
	        DO I = w2c_tile2I, MIN(w2c__ab0, (w2c_tile2I + 111)), 1
	          C(I, J) = (C(I, J) +(A(I, K) * temp__misym0))
	          C(I, J + 1) = (C(I, J + 1) +(A(I, K) * temp__misym5))
	          C(I, J + 2) = (C(I, J + 2) +(A(I, K) * temp__misym10))
	          C(I, J + 3) = (C(I, J + 3) +(A(I, K) * temp__misym15))
	          C(I, J) = (C(I, J) +(A(I, K + 1) * temp__misym14))
	          C(I, J + 1) = (C(I, J + 1) +(A(I, K + 1) * temp__misym13))
	          C(I, J + 2) = (C(I, J + 2) +(A(I, K + 1) * temp__misym12))
	          C(I, J + 3) = (C(I, J + 3) +(A(I, K + 1) * temp__misym11))
	          C(I, J) = (C(I, J) +(A(I, K + 2) * temp__misym9))
	          C(I, J + 1) = (C(I, J + 1) +(A(I, K + 2) * temp__misym8))
	          C(I, J + 2) = (C(I, J + 2) +(A(I, K + 2) * temp__misym7))
	          C(I, J + 3) = (C(I, J + 3) +(A(I, K + 2) * temp__misym6))
	          C(I, J) = (C(I, J) +(A(I, K + 3) * temp__misym4))
	          C(I, J + 1) = (C(I, J + 1) +(A(I, K + 3) * temp__misym3))
	          C(I, J + 2) = (C(I, J + 2) +(A(I, K + 3) * temp__misym2))
	          C(I, J + 3) = (C(I, J + 3) +(A(I, K + 3) * temp__misym1))
	        END DO
	      END DO
	      DO w2c_wd_K0 = K, MIN(w2c__ab0, (w2c_tile2K + 99)), 1
	        temp__misym16 = B(w2c_wd_K0, J)
	        temp__misym17 = B(w2c_wd_K0, J + 3)
	        temp__misym18 = B(w2c_wd_K0, J + 1)
	        temp__misym19 = B(w2c_wd_K0, J + 2)
	        DO I = w2c_tile2I, MIN(w2c__ab0, (w2c_tile2I + 111)), 1
	          C(I, J) = (C(I, J) +(A(I, w2c_wd_K0) * temp__misym16))
	          C(I, J + 1) = (C(I, J + 1) +(A(I, w2c_wd_K0) * temp__misym18))
	          C(I, J + 2) = (C(I, J + 2) +(A(I, w2c_wd_K0) * temp__misym19))
	          C(I, J + 3) = (C(I, J + 3) +(A(I, w2c_wd_K0) * temp__misym17))
	        END DO
	      END DO
	    END DO
	    DO w2c_wd_J = J, w2c__ab0, 1
	      DO K = w2c_tile2K, MIN((w2c__ab0 + -3), (w2c_tile2K + 96)), 4
	        temp__misym20 = B(K, w2c_wd_J)
	        temp__misym21 = B(K + 3, w2c_wd_J)
	        temp__misym22 = B(K + 1, w2c_wd_J)
	        temp__misym23 = B(K + 2, w2c_wd_J)
	        DO I = w2c_tile2I, MIN(w2c__ab0, (w2c_tile2I + 111)), 1
	          C(I, w2c_wd_J) = (C(I, w2c_wd_J) +(A(I, K) * temp__misym20))
	          C(I, w2c_wd_J) = (C(I, w2c_wd_J) +(A(I, K + 1) * temp__misym22))
	          C(I, w2c_wd_J) = (C(I, w2c_wd_J) +(A(I, K + 2) * temp__misym23))
	          C(I, w2c_wd_J) = (C(I, w2c_wd_J) +(A(I, K + 3) * temp__misym21))
	        END DO
	      END DO
	      DO w2c_wd_K = K, MIN(w2c__ab0, (w2c_tile2K + 99)), 1
	        temp__misym24 = B(w2c_wd_K, w2c_wd_J)
	        DO I = w2c_tile2I, MIN(w2c__ab0, (w2c_tile2I + 111)), 1
	          C(I, w2c_wd_J) = (C(I, w2c_wd_J) +(A(I, w2c_wd_K) * temp__misym24))
	        END DO
	      END DO
	    END DO
	  END DO
	END DO
	gemm = 0.0
	RETURN
	END FUNCTION
