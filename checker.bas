10 screen0,0,0:COLOR1,14,14:KEYOFF::DEFINTA-Z:B=base(0)+40*7+15:dimCK(7,7):R=RND(-TIME):
20 CLS:P1=0:P2=0:forJ=0to7:forI=0to7:CK(I,J)=(1-(I+J)mod2)*(-1*(I<3) -2*(I>4)):nextI,J
30 P(0)=46:P(1)=111:P(2)=79: forI=0to7:vpokeB-2+i*40,56-i:vpokeB+9*40+i,65+32+i:nextI:
rem CK(5,1)=0: CK(3,1)=2 : rem ai
40 gosub200: rem refresh

rem user move
41 gosub150: if CK(R,C)<>1 then 41:else R0=R:C0=C
42 GOSUB150: if R=R0+1 and abs(C0-C)=1 and CK(R,C)=0 then CK(R,C)=1:CK(R0,C0)=0:beep:goto49
43 if R=R0+2 and abs(C0-C)=2 and CK(R,C)=0 and CK(R-1, (C+C0)/2 )=2 then CK(R-1,(C+C0)/2 )=0:CK(R,C)=1:CK(R0,C0)=0:P1=P1+1:vpokeB+479+P1,p(2):beep:goto49
44 C=C0: R=R0: goto 41

49 gosub200:  if P1=12 goto 20


rem ai
60 AI=0: DU=RND(1)*7:DV=RND(1)*7: for J=0 to 7:  U=(J+DU)mod8:  for I=0 to 7: V=(I+DV)mod8 :
62 for k=-1 to 1step2: D= -(V<2) + +(V>5) + (V>1) * (V<6)  *K: 
63 IF U>1 and CK(U,V)=2 then if CK(U-1,V+D)=1 and CK(U-2,V+2*D)=0 then CK(U,V)=0: CK(U-1,V+D)=0:CK(U-2,V+2*D)=2 : I=7:J=7:K=1: AI=1: vpokeB-120+P2,p(1): P2=P2+1
65 next K,I,J

70 if P2=12 then 20 else if AI=1 then 40
71 DU=RND(1)*7:DV=RND(1)*7: for J=0 to 7:  U=(J+DU)mod8:  for I=0 to 7: V=(I+DV)mod8 :
72 D= -(V<1) + +(V>6) + (V>0) * (V<7)  *SGN(RND(1)-.5): 
73 IF U>0 and CK(U,V)=2 then IF CK(U,V)=2 and CK(U-1,V+D)=0 then CK(U,V)=0: CK(U-1,V+D)=2: K=11: AI = 1: J=7:I=7
75 next I,J

80 goto 40

REM USER INPUT
150 LOCATE13+C,14-R:k$=INPUT$(1):K=ASC(K$):if K=32then return
160 ifK=30andr<7thenR=R+1elseifK=31andR>0thenR=R-1:elseifK=28andC<7thenC=C+1:elseifK=29andC>0thenC=C-1
170 goto 150

rem REFRESH
200 forJ=0to7:forI=0to7:vpoke B+40*(J)+I,P(CK(7-J,I)):nextI,J:  RETURN 

