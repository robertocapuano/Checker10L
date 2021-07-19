10 screen0,0,0:COLOR1,14,14:KEYOFF:CLS:DEFINTA-Z:B=base(0)+40*7+15:dimCK(7,7):
20 forJ=0to7:forI=0to7:CK(I,J)=(1-(I+J)mod2)*(-1*(I<3) -2*(I>4)):nextI,J
30 P(0)=46:P(1)=111:P(2)=79: forI=0to7:vpokeB-2+i*40,56-i:vpokeB+9*40+i,65+32+i:nextI:
35 CK(5,1)=0: CK(3,1)=2 : rem ai
40 gosub200: 
41 gosub150: if CK(R,C)<>1 then 41:else R0=R:C0=C
42 :GOSUB150: if R=R0+1 and abs(C0-C)=1 and CK(R,C)=0 then CK(R,C)=1:CK(R0,C0)=0:beep:goto40
43 if R=R0+2 and abs(C0-C)=2 and CK(R,C)=0 and CK(R-1, (C+C0)/2 )=2 then CK(R-1,(C+C0)/2 )=0:CK(R,C)=1:CK(R0,C0)=0:beep:goto40
44 C=C0: R=R0: goto 41

50 rem ai
60 forJ=0to7:forI=0to7: next I,J

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
