C ***********************************************************
C Fortran file translated from WHIRL Tue Feb 11 15:31:31 2014
C ***********************************************************

	INTEGER(4) FUNCTION gemm(N, A, B, C)
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
	INTEGER(4) OVER1
	INTEGER(4) OVER2
	INTEGER(4) T10
	INTEGER(4) T12
	INTEGER(4) T8
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
	REAL(8) temp__misym25
	REAL(8) temp__misym26
	REAL(8) temp__misym27
	REAL(8) temp__misym28
	REAL(8) temp__misym29
	REAL(8) temp__misym30
	REAL(8) temp__misym31
	REAL(8) temp__misym32
	REAL(8) temp__misym33
	REAL(8) temp__misym34
	REAL(8) temp__misym35
	REAL(8) temp__misym36
	REAL(8) temp__misym37
	REAL(8) temp__misym38
	REAL(8) temp__misym39
	REAL(8) temp__misym40
	REAL(8) temp__misym41
	REAL(8) temp__misym42
	REAL(8) temp__misym43
	REAL(8) temp__misym44
	REAL(8) temp__misym45
	REAL(8) temp__misym46
	REAL(8) temp__misym47
	REAL(8) temp__misym48
	REAL(8) temp__misym49
	REAL(8) temp__misym50
	REAL(8) temp__misym51
	REAL(8) temp__misym52
	REAL(8) temp__misym53
	REAL(8) temp__misym54
	REAL(8) temp__misym55
	REAL(8) temp__misym56
	REAL(8) temp__misym57
	REAL(8) temp__misym58
	REAL(8) temp__misym59
	REAL(8) temp__misym60
	REAL(8) temp__misym61
	REAL(8) temp__misym62
	REAL(8) temp__misym63
	REAL(8) temp__misym64
	
	INTEGER(4) gemm
C
C	**** Temporary variables ****
C
	INTEGER(4) w2c_do_ivar1
	INTEGER(4) w2c_do_ivar0
	INTEGER(4) w2c_do_ivar
	INTEGER(4) w2c__ab0
	INTEGER(4) w2c__ab1
	INTEGER(4) w2c__ab2
	INTEGER(4) w2c__ab3
	INTEGER(4) w2c_tile2T10
	INTEGER(4) w2c_tile1T12
	INTEGER(4) w2c_T
	INTEGER(4) w2c_wd_T10
	INTEGER(4) w2c_spl_$tile1T12
	INTEGER(4) w2c__ab4
	INTEGER(4) w2c__ab5
	INTEGER(4) w2c__ab6
	INTEGER(4) w2c__ab7
	INTEGER(4) w2c_tile2T12
	INTEGER(4) w2c_tile2T8
	INTEGER(4) w2c_T1
	INTEGER(4) w2c_T0
	INTEGER(4) w2c_wd_T0
	INTEGER(4) w2c_wd_T
	INTEGER(4) w2c_wd_T12
C
C	**** statements ****
C
	t$1 = N
	t$2 = MAX(N, 0)
	t$3 = (t$2 * 2)
	t$4 = (t$2 * t$2)
	DO w2c_do_ivar1 = 0, INTRN_I4DIVFLOOR(INT4(N) + -1, 10), 1
	  DO w2c_do_ivar0 = 0, INTRN_I4DIVFLOOR(INT4(N) + -1, 4), 1
	    DO w2c_do_ivar = 0, INTRN_I4DIVFLOOR(INT4(N) + -1, 4), 1
	      OVER1 = MOD(INT4(N), 4)
	      IF(INT4(N) .GT.(OVER1 +(w2c_do_ivar0 * 4))) THEN
	        OVER2 = MOD(INT4(N), 4)
	        IF(INT4(N) .GT.(OVER2 +(w2c_do_ivar * 4))) THEN
	          w2c__ab0 = MIN(INT4(N), ((w2c_do_ivar1 * 10) + 10))
	          IF(w2c__ab0 .GT.(w2c_do_ivar1 * 10)) THEN
	            temp__misym0 = C((w2c_do_ivar0 * 4) + 1, (w2c_do_ivar * 4) + 1)
	            temp__misym1 = C((w2c_do_ivar0 * 4) + 4, (w2c_do_ivar * 4) + 4)
	            temp__misym2 = C((w2c_do_ivar0 * 4) + 3, (w2c_do_ivar * 4) + 4)
	            temp__misym3 = C((w2c_do_ivar0 * 4) + 2, (w2c_do_ivar * 4) + 4)
	            temp__misym4 = C((w2c_do_ivar0 * 4) + 2, (w2c_do_ivar * 4) + 1)
	            temp__misym5 = C((w2c_do_ivar0 * 4) + 1, (w2c_do_ivar * 4) + 4)
	            temp__misym6 = C((w2c_do_ivar0 * 4) + 4, (w2c_do_ivar * 4) + 3)
	            temp__misym7 = C((w2c_do_ivar0 * 4) + 3, (w2c_do_ivar * 4) + 3)
	            temp__misym8 = C((w2c_do_ivar0 * 4) + 2, (w2c_do_ivar * 4) + 3)
	            temp__misym9 = C((w2c_do_ivar0 * 4) + 3, (w2c_do_ivar * 4) + 1)
	            temp__misym10 = C((w2c_do_ivar0 * 4) + 1, (w2c_do_ivar * 4) + 3)
	            temp__misym11 = C((w2c_do_ivar0 * 4) + 4, (w2c_do_ivar * 4) + 2)
	            temp__misym12 = C((w2c_do_ivar0 * 4) + 3, (w2c_do_ivar * 4) + 2)
	            temp__misym13 = C((w2c_do_ivar0 * 4) + 2, (w2c_do_ivar * 4) + 2)
	            temp__misym14 = C((w2c_do_ivar0 * 4) + 4, (w2c_do_ivar * 4) + 1)
	            temp__misym15 = C((w2c_do_ivar0 * 4) + 1, (w2c_do_ivar * 4) + 2)
	            DO T12 = ((w2c_do_ivar1 * 10) + 1), w2c__ab0, 1
	              temp__misym0 = (temp__misym0 +(A((w2c_do_ivar0 * 4) + 1, T12) * B(T12, (w2c_do_ivar * 4) + 1)))
	              temp__misym4 = (temp__misym4 +(A((w2c_do_ivar0 * 4) + 2, T12) * B(T12, (w2c_do_ivar * 4) + 1)))
	              temp__misym9 = (temp__misym9 +(A((w2c_do_ivar0 * 4) + 3, T12) * B(T12, (w2c_do_ivar * 4) + 1)))
	              temp__misym14 = (temp__misym14 +(A((w2c_do_ivar0 * 4) + 4, T12) * B(T12, (w2c_do_ivar * 4) + 1)))
	              temp__misym15 = (temp__misym15 +(A((w2c_do_ivar0 * 4) + 1, T12) * B(T12, (w2c_do_ivar * 4) + 2)))
	              temp__misym13 = (temp__misym13 +(A((w2c_do_ivar0 * 4) + 2, T12) * B(T12, (w2c_do_ivar * 4) + 2)))
	              temp__misym12 = (temp__misym12 +(A((w2c_do_ivar0 * 4) + 3, T12) * B(T12, (w2c_do_ivar * 4) + 2)))
	              temp__misym11 = (temp__misym11 +(A((w2c_do_ivar0 * 4) + 4, T12) * B(T12, (w2c_do_ivar * 4) + 2)))
	              temp__misym10 = (temp__misym10 +(A((w2c_do_ivar0 * 4) + 1, T12) * B(T12, (w2c_do_ivar * 4) + 3)))
	              temp__misym8 = (temp__misym8 +(A((w2c_do_ivar0 * 4) + 2, T12) * B(T12, (w2c_do_ivar * 4) + 3)))
	              temp__misym7 = (temp__misym7 +(A((w2c_do_ivar0 * 4) + 3, T12) * B(T12, (w2c_do_ivar * 4) + 3)))
	              temp__misym6 = (temp__misym6 +(A((w2c_do_ivar0 * 4) + 4, T12) * B(T12, (w2c_do_ivar * 4) + 3)))
	              temp__misym5 = (temp__misym5 +(A((w2c_do_ivar0 * 4) + 1, T12) * B(T12, (w2c_do_ivar * 4) + 4)))
	              temp__misym3 = (temp__misym3 +(A((w2c_do_ivar0 * 4) + 2, T12) * B(T12, (w2c_do_ivar * 4) + 4)))
	              temp__misym2 = (temp__misym2 +(A((w2c_do_ivar0 * 4) + 3, T12) * B(T12, (w2c_do_ivar * 4) + 4)))
	              temp__misym1 = (temp__misym1 +(A((w2c_do_ivar0 * 4) + 4, T12) * B(T12, (w2c_do_ivar * 4) + 4)))
	            END DO
	            C((w2c_do_ivar0 * 4) + 1, (w2c_do_ivar * 4) + 2) = temp__misym15
	            C((w2c_do_ivar0 * 4) + 4, (w2c_do_ivar * 4) + 1) = temp__misym14
	            C((w2c_do_ivar0 * 4) + 2, (w2c_do_ivar * 4) + 2) = temp__misym13
	            C((w2c_do_ivar0 * 4) + 3, (w2c_do_ivar * 4) + 2) = temp__misym12
	            C((w2c_do_ivar0 * 4) + 4, (w2c_do_ivar * 4) + 2) = temp__misym11
	            C((w2c_do_ivar0 * 4) + 1, (w2c_do_ivar * 4) + 3) = temp__misym10
	            C((w2c_do_ivar0 * 4) + 3, (w2c_do_ivar * 4) + 1) = temp__misym9
	            C((w2c_do_ivar0 * 4) + 2, (w2c_do_ivar * 4) + 3) = temp__misym8
	            C((w2c_do_ivar0 * 4) + 3, (w2c_do_ivar * 4) + 3) = temp__misym7
	            C((w2c_do_ivar0 * 4) + 4, (w2c_do_ivar * 4) + 3) = temp__misym6
	            C((w2c_do_ivar0 * 4) + 1, (w2c_do_ivar * 4) + 4) = temp__misym5
	            C((w2c_do_ivar0 * 4) + 2, (w2c_do_ivar * 4) + 1) = temp__misym4
	            C((w2c_do_ivar0 * 4) + 2, (w2c_do_ivar * 4) + 4) = temp__misym3
	            C((w2c_do_ivar0 * 4) + 3, (w2c_do_ivar * 4) + 4) = temp__misym2
	            C((w2c_do_ivar0 * 4) + 4, (w2c_do_ivar * 4) + 4) = temp__misym1
	            C((w2c_do_ivar0 * 4) + 1, (w2c_do_ivar * 4) + 1) = temp__misym0
	          ENDIF
	        ENDIF
	        w2c__ab1 = MIN(INT4(N), ((w2c_do_ivar1 * 10) + 10))
	        w2c__ab2 = MAX(((w2c_do_ivar * 4) + 1), ((INT4(N) - MOD(INT4(N), 4)) + 1))
	        w2c__ab3 = MIN(INT4(N), ((w2c_do_ivar * 4) + 4))
	        DO w2c_tile2T10 = w2c__ab2, w2c__ab3, 240
	          DO w2c_tile1T12 = ((w2c_do_ivar1 * 10) + 1), (w2c__ab1 + -31), 32
	            DO T10 = w2c_tile2T10, MIN((w2c__ab3 + -1), (w2c_tile2T10 + 238)), 2
	              temp__misym16 = C((w2c_do_ivar0 * 4) + 1, T10)
	              temp__misym17 = C((w2c_do_ivar0 * 4) + 4, T10 + 1)
	              temp__misym18 = C((w2c_do_ivar0 * 4) + 3, T10 + 1)
	              temp__misym19 = C((w2c_do_ivar0 * 4) + 2, T10 + 1)
	              temp__misym20 = C((w2c_do_ivar0 * 4) + 2, T10)
	              temp__misym21 = C((w2c_do_ivar0 * 4) + 1, T10 + 1)
	              temp__misym22 = C((w2c_do_ivar0 * 4) + 3, T10)
	              temp__misym23 = C((w2c_do_ivar0 * 4) + 4, T10)
	              DO w2c_T = w2c_tile1T12, (w2c_tile1T12 + 31), 1
	                temp__misym16 = (temp__misym16 +(A((w2c_do_ivar0 * 4) + 1, w2c_T) * B(w2c_T, T10)))
	                temp__misym20 = (temp__misym20 +(A((w2c_do_ivar0 * 4) + 2, w2c_T) * B(w2c_T, T10)))
	                temp__misym22 = (temp__misym22 +(A((w2c_do_ivar0 * 4) + 3, w2c_T) * B(w2c_T, T10)))
	                temp__misym23 = (temp__misym23 +(A((w2c_do_ivar0 * 4) + 4, w2c_T) * B(w2c_T, T10)))
	                temp__misym21 = (temp__misym21 +(A((w2c_do_ivar0 * 4) + 1, w2c_T) * B(w2c_T, T10 + 1)))
	                temp__misym19 = (temp__misym19 +(A((w2c_do_ivar0 * 4) + 2, w2c_T) * B(w2c_T, T10 + 1)))
	                temp__misym18 = (temp__misym18 +(A((w2c_do_ivar0 * 4) + 3, w2c_T) * B(w2c_T, T10 + 1)))
	                temp__misym17 = (temp__misym17 +(A((w2c_do_ivar0 * 4) + 4, w2c_T) * B(w2c_T, T10 + 1)))
	              END DO
	              C((w2c_do_ivar0 * 4) + 4, T10) = temp__misym23
	              C((w2c_do_ivar0 * 4) + 3, T10) = temp__misym22
	              C((w2c_do_ivar0 * 4) + 1, T10 + 1) = temp__misym21
	              C((w2c_do_ivar0 * 4) + 2, T10) = temp__misym20
	              C((w2c_do_ivar0 * 4) + 2, T10 + 1) = temp__misym19
	              C((w2c_do_ivar0 * 4) + 3, T10 + 1) = temp__misym18
	              C((w2c_do_ivar0 * 4) + 4, T10 + 1) = temp__misym17
	              C((w2c_do_ivar0 * 4) + 1, T10) = temp__misym16
	            END DO
	            DO w2c_wd_T10 = T10, MIN(w2c__ab3, (w2c_tile2T10 + 239)), 1
	              temp__misym24 = C((w2c_do_ivar0 * 4) + 1, w2c_wd_T10)
	              temp__misym25 = C((w2c_do_ivar0 * 4) + 2, w2c_wd_T10)
	              temp__misym26 = C((w2c_do_ivar0 * 4) + 4, w2c_wd_T10)
	              temp__misym27 = C((w2c_do_ivar0 * 4) + 3, w2c_wd_T10)
	              DO w2c_T = w2c_tile1T12, (w2c_tile1T12 + 31), 1
	                temp__misym24 = (temp__misym24 +(A((w2c_do_ivar0 * 4) + 1, w2c_T) * B(w2c_T, w2c_wd_T10)))
	                temp__misym25 = (temp__misym25 +(A((w2c_do_ivar0 * 4) + 2, w2c_T) * B(w2c_T, w2c_wd_T10)))
	                temp__misym27 = (temp__misym27 +(A((w2c_do_ivar0 * 4) + 3, w2c_T) * B(w2c_T, w2c_wd_T10)))
	                temp__misym26 = (temp__misym26 +(A((w2c_do_ivar0 * 4) + 4, w2c_T) * B(w2c_T, w2c_wd_T10)))
	              END DO
	              C((w2c_do_ivar0 * 4) + 3, w2c_wd_T10) = temp__misym27
	              C((w2c_do_ivar0 * 4) + 4, w2c_wd_T10) = temp__misym26
	              C((w2c_do_ivar0 * 4) + 2, w2c_wd_T10) = temp__misym25
	              C((w2c_do_ivar0 * 4) + 1, w2c_wd_T10) = temp__misym24
	            END DO
	          END DO
	          DO w2c_spl_$tile1T12 = w2c_tile1T12, w2c__ab1, 32
	            DO T10 = w2c_tile2T10, MIN((w2c__ab3 + -1), (w2c_tile2T10 + 238)), 2
	              temp__misym28 = C((w2c_do_ivar0 * 4) + 1, T10)
	              temp__misym29 = C((w2c_do_ivar0 * 4) + 4, T10 + 1)
	              temp__misym30 = C((w2c_do_ivar0 * 4) + 3, T10 + 1)
	              temp__misym31 = C((w2c_do_ivar0 * 4) + 2, T10 + 1)
	              temp__misym32 = C((w2c_do_ivar0 * 4) + 2, T10)
	              temp__misym33 = C((w2c_do_ivar0 * 4) + 1, T10 + 1)
	              temp__misym34 = C((w2c_do_ivar0 * 4) + 3, T10)
	              temp__misym35 = C((w2c_do_ivar0 * 4) + 4, T10)
	              DO w2c_T = w2c_spl_$tile1T12, w2c__ab1, 1
	                temp__misym28 = (temp__misym28 +(A((w2c_do_ivar0 * 4) + 1, w2c_T) * B(w2c_T, T10)))
	                temp__misym32 = (temp__misym32 +(A((w2c_do_ivar0 * 4) + 2, w2c_T) * B(w2c_T, T10)))
	                temp__misym34 = (temp__misym34 +(A((w2c_do_ivar0 * 4) + 3, w2c_T) * B(w2c_T, T10)))
	                temp__misym35 = (temp__misym35 +(A((w2c_do_ivar0 * 4) + 4, w2c_T) * B(w2c_T, T10)))
	                temp__misym33 = (temp__misym33 +(A((w2c_do_ivar0 * 4) + 1, w2c_T) * B(w2c_T, T10 + 1)))
	                temp__misym31 = (temp__misym31 +(A((w2c_do_ivar0 * 4) + 2, w2c_T) * B(w2c_T, T10 + 1)))
	                temp__misym30 = (temp__misym30 +(A((w2c_do_ivar0 * 4) + 3, w2c_T) * B(w2c_T, T10 + 1)))
	                temp__misym29 = (temp__misym29 +(A((w2c_do_ivar0 * 4) + 4, w2c_T) * B(w2c_T, T10 + 1)))
	              END DO
	              C((w2c_do_ivar0 * 4) + 4, T10) = temp__misym35
	              C((w2c_do_ivar0 * 4) + 3, T10) = temp__misym34
	              C((w2c_do_ivar0 * 4) + 1, T10 + 1) = temp__misym33
	              C((w2c_do_ivar0 * 4) + 2, T10) = temp__misym32
	              C((w2c_do_ivar0 * 4) + 2, T10 + 1) = temp__misym31
	              C((w2c_do_ivar0 * 4) + 3, T10 + 1) = temp__misym30
	              C((w2c_do_ivar0 * 4) + 4, T10 + 1) = temp__misym29
	              C((w2c_do_ivar0 * 4) + 1, T10) = temp__misym28
	            END DO
	            DO w2c_wd_T10 = T10, MIN(w2c__ab3, (w2c_tile2T10 + 239)), 1
	              temp__misym36 = C((w2c_do_ivar0 * 4) + 1, w2c_wd_T10)
	              temp__misym37 = C((w2c_do_ivar0 * 4) + 2, w2c_wd_T10)
	              temp__misym38 = C((w2c_do_ivar0 * 4) + 4, w2c_wd_T10)
	              temp__misym39 = C((w2c_do_ivar0 * 4) + 3, w2c_wd_T10)
	              DO w2c_T = w2c_spl_$tile1T12, w2c__ab1, 1
	                temp__misym36 = (temp__misym36 +(A((w2c_do_ivar0 * 4) + 1, w2c_T) * B(w2c_T, w2c_wd_T10)))
	                temp__misym37 = (temp__misym37 +(A((w2c_do_ivar0 * 4) + 2, w2c_T) * B(w2c_T, w2c_wd_T10)))
	                temp__misym39 = (temp__misym39 +(A((w2c_do_ivar0 * 4) + 3, w2c_T) * B(w2c_T, w2c_wd_T10)))
	                temp__misym38 = (temp__misym38 +(A((w2c_do_ivar0 * 4) + 4, w2c_T) * B(w2c_T, w2c_wd_T10)))
	              END DO
	              C((w2c_do_ivar0 * 4) + 3, w2c_wd_T10) = temp__misym39
	              C((w2c_do_ivar0 * 4) + 4, w2c_wd_T10) = temp__misym38
	              C((w2c_do_ivar0 * 4) + 2, w2c_wd_T10) = temp__misym37
	              C((w2c_do_ivar0 * 4) + 1, w2c_wd_T10) = temp__misym36
	            END DO
	          END DO
	        END DO
	      ENDIF
	      w2c__ab4 = MIN(INT4(N), ((w2c_do_ivar1 * 10) + 10))
	      w2c__ab5 = MIN(INT4(N), ((w2c_do_ivar * 4) + 4))
	      w2c__ab6 = MAX(((w2c_do_ivar0 * 4) + 1), ((INT4(N) - MOD(INT4(N), 4)) + 1))
	      w2c__ab7 = MIN(INT4(N), ((w2c_do_ivar0 * 4) + 4))
	      DO w2c_tile2T12 = ((w2c_do_ivar1 * 10) + 1), w2c__ab4, 100
	        DO w2c_tile2T8 = w2c__ab6, w2c__ab7, 112
	          DO w2c_T1 = ((w2c_do_ivar * 4) + 1), (w2c__ab5 + -3), 4
	            DO w2c_T0 = w2c_tile2T12, MIN((w2c__ab4 + -3), (w2c_tile2T12 + 96)), 4
	              temp__misym40 = B(w2c_T0, w2c_T1)
	              temp__misym41 = B(w2c_T0 + 3, w2c_T1 + 3)
	              temp__misym42 = B(w2c_T0 + 3, w2c_T1 + 2)
	              temp__misym43 = B(w2c_T0 + 3, w2c_T1 + 1)
	              temp__misym44 = B(w2c_T0 + 3, w2c_T1)
	              temp__misym45 = B(w2c_T0, w2c_T1 + 1)
	              temp__misym46 = B(w2c_T0 + 2, w2c_T1 + 3)
	              temp__misym47 = B(w2c_T0 + 2, w2c_T1 + 2)
	              temp__misym48 = B(w2c_T0 + 2, w2c_T1 + 1)
	              temp__misym49 = B(w2c_T0 + 2, w2c_T1)
	              temp__misym50 = B(w2c_T0, w2c_T1 + 2)
	              temp__misym51 = B(w2c_T0 + 1, w2c_T1 + 3)
	              temp__misym52 = B(w2c_T0 + 1, w2c_T1 + 2)
	              temp__misym53 = B(w2c_T0 + 1, w2c_T1 + 1)
	              temp__misym54 = B(w2c_T0 + 1, w2c_T1)
	              temp__misym55 = B(w2c_T0, w2c_T1 + 3)
	              DO T8 = w2c_tile2T8, MIN(w2c__ab7, (w2c_tile2T8 + 111)), 1
	                C(T8, w2c_T1) = (C(T8, w2c_T1) +(A(T8, w2c_T0) * temp__misym40))
	                C(T8, w2c_T1 + 1) = (C(T8, w2c_T1 + 1) +(A(T8, w2c_T0) * temp__misym45))
	                C(T8, w2c_T1 + 2) = (C(T8, w2c_T1 + 2) +(A(T8, w2c_T0) * temp__misym50))
	                C(T8, w2c_T1 + 3) = (C(T8, w2c_T1 + 3) +(A(T8, w2c_T0) * temp__misym55))
	                C(T8, w2c_T1) = (C(T8, w2c_T1) +(A(T8, w2c_T0 + 1) * temp__misym54))
	                C(T8, w2c_T1 + 1) = (C(T8, w2c_T1 + 1) +(A(T8, w2c_T0 + 1) * temp__misym53))
	                C(T8, w2c_T1 + 2) = (C(T8, w2c_T1 + 2) +(A(T8, w2c_T0 + 1) * temp__misym52))
	                C(T8, w2c_T1 + 3) = (C(T8, w2c_T1 + 3) +(A(T8, w2c_T0 + 1) * temp__misym51))
	                C(T8, w2c_T1) = (C(T8, w2c_T1) +(A(T8, w2c_T0 + 2) * temp__misym49))
	                C(T8, w2c_T1 + 1) = (C(T8, w2c_T1 + 1) +(A(T8, w2c_T0 + 2) * temp__misym48))
	                C(T8, w2c_T1 + 2) = (C(T8, w2c_T1 + 2) +(A(T8, w2c_T0 + 2) * temp__misym47))
	                C(T8, w2c_T1 + 3) = (C(T8, w2c_T1 + 3) +(A(T8, w2c_T0 + 2) * temp__misym46))
	                C(T8, w2c_T1) = (C(T8, w2c_T1) +(A(T8, w2c_T0 + 3) * temp__misym44))
	                C(T8, w2c_T1 + 1) = (C(T8, w2c_T1 + 1) +(A(T8, w2c_T0 + 3) * temp__misym43))
	                C(T8, w2c_T1 + 2) = (C(T8, w2c_T1 + 2) +(A(T8, w2c_T0 + 3) * temp__misym42))
	                C(T8, w2c_T1 + 3) = (C(T8, w2c_T1 + 3) +(A(T8, w2c_T0 + 3) * temp__misym41))
	              END DO
	            END DO
	            DO w2c_wd_T0 = w2c_T0, MIN(w2c__ab4, (w2c_tile2T12 + 99)), 1
	              temp__misym56 = B(w2c_wd_T0, w2c_T1)
	              temp__misym57 = B(w2c_wd_T0, w2c_T1 + 3)
	              temp__misym58 = B(w2c_wd_T0, w2c_T1 + 1)
	              temp__misym59 = B(w2c_wd_T0, w2c_T1 + 2)
	              DO T8 = w2c_tile2T8, MIN(w2c__ab7, (w2c_tile2T8 + 111)), 1
	                C(T8, w2c_T1) = (C(T8, w2c_T1) +(A(T8, w2c_wd_T0) * temp__misym56))
	                C(T8, w2c_T1 + 1) = (C(T8, w2c_T1 + 1) +(A(T8, w2c_wd_T0) * temp__misym58))
	                C(T8, w2c_T1 + 2) = (C(T8, w2c_T1 + 2) +(A(T8, w2c_wd_T0) * temp__misym59))
	                C(T8, w2c_T1 + 3) = (C(T8, w2c_T1 + 3) +(A(T8, w2c_wd_T0) * temp__misym57))
	              END DO
	            END DO
	          END DO
	          DO w2c_wd_T = w2c_T1, w2c__ab5, 1
	            DO w2c_T0 = w2c_tile2T12, MIN((w2c__ab4 + -3), (w2c_tile2T12 + 96)), 4
	              temp__misym60 = B(w2c_T0, w2c_wd_T)
	              temp__misym61 = B(w2c_T0 + 3, w2c_wd_T)
	              temp__misym62 = B(w2c_T0 + 1, w2c_wd_T)
	              temp__misym63 = B(w2c_T0 + 2, w2c_wd_T)
	              DO T8 = w2c_tile2T8, MIN(w2c__ab7, (w2c_tile2T8 + 111)), 1
	                C(T8, w2c_wd_T) = (C(T8, w2c_wd_T) +(A(T8, w2c_T0) * temp__misym60))
	                C(T8, w2c_wd_T) = (C(T8, w2c_wd_T) +(A(T8, w2c_T0 + 1) * temp__misym62))
	                C(T8, w2c_wd_T) = (C(T8, w2c_wd_T) +(A(T8, w2c_T0 + 2) * temp__misym63))
	                C(T8, w2c_wd_T) = (C(T8, w2c_wd_T) +(A(T8, w2c_T0 + 3) * temp__misym61))
	              END DO
	            END DO
	            DO w2c_wd_T12 = w2c_T0, MIN(w2c__ab4, (w2c_tile2T12 + 99)), 1
	              temp__misym64 = B(w2c_wd_T12, w2c_wd_T)
	              DO T8 = w2c_tile2T8, MIN(w2c__ab7, (w2c_tile2T8 + 111)), 1
	                C(T8, w2c_wd_T) = (C(T8, w2c_wd_T) +(A(T8, w2c_wd_T12) * temp__misym64))
	              END DO
	            END DO
	          END DO
	        END DO
	      END DO
	    END DO
	  END DO
	END DO
	gemm = 0
	RETURN
	END FUNCTION
