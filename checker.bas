10 screen0,0,0:COLOR1,14,14:KEYOFF:CLS:DEFINTA-Z:B=base(0)+40*7+15:dimCK(7,7):
20 forJ=0to7:forI=0to7:CK(I,J)=(1-(I+J)mod2)*(-1*(I<3) -2*(I>4)):nextI,J
30 P(0)=46:P(1)=111:P(2)=79: forI=0to7:vpokeB-2+i*40,56-i:vpokeB+9*40+i,65+32+i:nextI:
40 gosub200: 
41 gosub150: if CK(R,C)<>1 then 41:else R0=R:C0=C:
42 GOSUB150:if R<>R0+1 or abs(C0-C)<>1 or CK(R,C)<>0 then C=C0: R=R0: goto 41
44 CK(R,C)=1:CK(R0,C0)=0:beep
49 goto 40
150 LOCATE13+C,14-R:k$=INPUT$(1):K=ASC(K$)
160 :ifK=30andr<7thenR=R+1elseifK=31andR>0thenR=R-1:
170 ifK=28andC<7thenC=C+1:elseifK=29andC>0thenC=C-1:
180 ifK=32then return: else goto 150
200 forJ=0to7:forI=0to7:vpoke B+40*(J)+I,P(CK(7-J,I)):nextI,J:RETURN


CK(R,C) = 0 empty
CK(R,C) =1 player
CK(R,C) =2 opponent

 P(0)=46: empty
 P(1)=111: white
 P(2)=79 black
