10 screen0,0,0:COLOR1,14,14:KEYOFF:CLS:DEFINTA-Z:B=base(0)+40*7+15:dimCK(7,7):
20 forJ=0to7:forI=0to7:CK(I,J)=(1-(I+J)mod2)*(-1*(I<3) -2*(I>4)):nextI,J
30 P(0)=46:P(1)=111:P(2)=79: forI=0to7:vpokeB-2+i*40,56-i:vpokeB+9*40+i,65+32+i:nextI:
40 gosub100: R=7:C=7:
41 if CK(R,C)<>1 then GOSUB50: goto 41:else R0=R:C0=C:
42 :if R<>R0+1 and abs(C0-C)<>1 then GOSUB50:goto42
43 rem if CK(R1)
44 CK(R,C)=1:CK(R1,C1)=0:beep
49 goto 40
50 LOCATE13+C,7+R:k$=INPUT$(1):K=ASC(K$)
60 :ifK=31andr<7thenR=R+1elseifK=30andR>0thenR=R-1:
70 ifK=28andC<7thenC=C+1:elseifK=29andC>0thenC=C-1:
80 ifK=32then return: else goto 50
100 forJ=0to7:forI=0to7:vpoke B+40*(7-J)+I,P(CK(J,I)):nextI,J:RETURN





20 forJ=0to7:forI=0to7:CK(I,J)=(1-(I+J)mod2)*(1-(I<3orI>4)):nextI,J

30 forI=0to63:C$=MID$(CH$,I+1,1):?(C$):next I
20 CH$="RNBKQBNRPPPPPPPP":forI=1to6:CH$=CH$+'........':NEXTI:CH$=CH$+'pppppppprnbkqbnr'



minimal

10 screen0,0,0:COLOR1,14,14:KEYOFF:CLS:DEFINTA-Z: :B=base(0)+40*7+15:PI$="RNBKQBNR":
20 forI=0to7:READ R:VPOKE B+I,R+32:VPOKE B+7*40+I,R:NEXTI
25 forI=0to7:VPOKE B+40+I,80+32:VPOKE B+6*40+I,80:NEXTI
30 forI=2to5:forJ=0to7:VPOKE B+I*40+J,46:nextJ,I
40 forI=0to7:vpokeB-2+i*40,56-i:vpokeB+9*40+i,65+32+i:nextI
90 k$=INPUT$(1)
100 DATA 82,78,66,75,81,66,78,82

P +1, +2
R +1, 


R 52 82
N 4E 78
B 42 66
K 4B 75
Q 51 81
P 50 80


rem gfx
10 SCREEN5,0,0:COLOR15,14,14:PSET(0,0):KEYOFF:DEFINTA-Z:open"grp:"as#1:Z=RND(-TIME):CLS
20 ?#1,"CHESS";:COLOR1:?#1,"10L":PI$="RNBKQBNR":
25 DIM CH$(8,8): PSET(50,50):forI=0to7:A$=MID$(PI$,I+1,1): CH$(0,I)=A$:CH$(7,I)=A$: next I
30 forI=1to8:forJ=1to8:line(80+i*8,50+j*8)-step(8,8),(I+J)mod2,bf::  nextJ,I
35 forI=1to8:forJ=1to8:PSET(80+J*8,50+I*8):color(I+J)mod2,1-(I+J)mod2:?#1,CH$(I-1,J-1):  nextJ,I
40 K$=INPUT$(1)

CHR$(200)


RNBKQBNR
PPPPPPPP

1 SCREEN5,0,0:COLOR15,14,14:KEYOFF:DEFINTA-Z:open"grp:"as#1:Z=RND(-TIME):?#1,"CHESS";:COLOR1:?#1,"10L":  K$=INPUT$(1):CLS
FORI=BASE(2)TOBASE(2)+1023:VPOKEI+1024,VPEEK(I)XOR255:NEXT



rem zx81
10 screen0,0,0:COLOR1,14,14:KEYOFF:CLS:DEFINTA-Z: :B=base(0)+40*8+15:FORI=BASE(2)TOBASE(2)+1023:VPOKEI+1024,VPEEK(I)XOR255:NEXT: ?"CHESS10L":
20 forI=0to7:READ R:VPOKE B+I,R+128:VPOKE B+7*40+I,R:NEXTI
25 forI=0to7:VPOKE B+40+I,80+128:VPOKE B+6*40+I,80:NEXTI
30 forI=2to5:forJ=0to7:VPOKE B+I*40+J, 32+128*((I+J)mod2):  nextJ,I

90 k$=INPUT$(1)
100 DATA 82,78,66,75,81,66,78,82

100 DATA 52,4E,42,4B,51,42,4E,52

110 DATA 20,a0,20,a0,C1,C2,C3








  vpoke base(0),32+128
  
  
  
  
  
