10 screen0,0,0:COLOR1,14,14:KEYOFF:CLS:DEFINTA-Z:B=base(0)+40*7+15:dimCK(7,7):R=RND(-TIME)
20 forJ=0to7:forI=0to7:CK(I,J)=(1-(I+J)mod2)*(-1*(I<3) -2*(I>4)):nextI,J
30 P(0)=46:P(1)=111:P(2)=79: forI=0to7:vpokeB-2+i*40,56-i:vpokeB+9*40+i,65+32+i:nextI:
35 rem CK(5,1)=0: CK(3,1)=2 : rem ai
40 gosub200: 
41 gosub150: if CK(R,C)<>1 then 41:else R0=R:C0=C
42 :GOSUB150: if R=R0+1 and abs(C0-C)=1 and CK(R,C)=0 then CK(R,C)=1:CK(R0,C0)=0:beep:goto49
43 if R=R0+2 and abs(C0-C)=2 and CK(R,C)=0 and CK(R-1, (C+C0)/2 )=2 then CK(R-1,(C+C0)/2 )=0:CK(R,C)=1:CK(R0,C0)=0:beep:goto49
44 C=C0: R=R0: goto 41

49 gosub200

50 rem ai
60 AI=0:forI=1to7:forJ=2to5: 
61 DU=RND(1)*7:DV=RND(1)*7: for J=0 to 7:  U=(J+DU)mod8: if U<2 then next J: else for I=0 to 7:V=(I+DV)mod8 :
62 D= -(V<2) + +(V>5) + (V>1) * (V<6)  *SGN(RND(1)-.5): 
63 IF CK(U,V)=2 and CK(U-1,V+D)=1 and CK(U-2,V+2*D)=0 then CK(U,V)=0: CK(U-1,V+D)=0:CK(U-2,V+2*D)=2 : I=7:J=7: AI=1
65 next I,J

70 if AI=1 then 40
71 for K=0 to 10: 
72 U=RND(1)*6+1 : V=RND(1)*7 : D= -(V<1) + +(V>6) + (V>0) * (V<7)  *SGN(RND(1)-.5): 
73 IF CK(U,V)=2 and CK(U-1,V+D)=0 then CK(U,V)=0: CK(U-1,V+D)=2: K=11: AI = 1
75 next K
80 if AI=0 then 50
90 goto 40

150 LOCATE13+C,14-R:k$=INPUT$(1):K=ASC(K$)
160 :ifK=30andr<7thenR=R+1elseifK=31andR>0thenR=R-1:
170 ifK=28andC<7thenC=C+1:elseifK=29andC>0thenC=C-1:
180 ifK=32then return: else goto 150
200 forJ=0to7:forI=0to7:vpoke B+40*(J)+I,P(CK(7-J,I)):nextI,J:RETURN : REM REFRESH


CK(R,C) = 0 empty
CK(R,C) =1 player
CK(R,C) =2 opponent

 P(0)=46: empty
 P(1)=111: white
 P(2)=79 black




80 for I=1 TO 7: for J=0 TO 7: 
81 if J>0 and CK(I-1,J-1)=0 then 
90 goto 40
