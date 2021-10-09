1 screen0,0,0:COLOR1,14,14:KEYOFF::DEFINTA-Z:B=base(0)+295:R=RND(-TIME):P(0)=46:P(1)=111:P(2)=79:P(5)=113:P(6)=81:B2=B+360:CLS:P1=0:P2=0:forJ=0to7:vpokeB-2+J*40,56-J:vpokeB2+J,97+J:forI=0to7:CK(I,J)=(1-(I+J)mod2)*(-5*(I=3)-6*(I=4)):nextI,J:
10 forJ=0to7:forI=0to7:vpoke B+40*(J)+I,P(CK(7-J,I)):nextI,J:gosub150:Q=CK(R,C)and4: if (CK(R,C)and1)=0 then 10:else R0=R:C0=C:GOSUB150:  if (R=R0+1 or (Q=4 and R=R0-1 )) and abs(C0-C)=1 and CK(R,C)=0 then CK(R,C)=CK(R0,C0):CK(R0,C0)=0:beep::goto60
20 CE=CK((R+R0)/2, (C+C0)/2 ):if (R<>R0+2 or (Q=0 and R<>R0-2)) or abs(C0-C)<>2 or CK(R,C)<>0 or (CE and 2)<>2 or Q<(CEand4) then C=C0: R=R0: goto 10:else:CK(R-1,(C+C0)/2 )=0:CK(R,C)=CK(R0,C0):CK(R0,C0)=0:P1=P1+1:vpokeB+479+P1,p(CE):beep
30 if P1=12 then locate0,0:?"USER WINS":k$=INPUT$(1): goto 1
60 AI=0:DU=RND(1)*7:DV=RND(1)*7:forJ=0to7:forI=0to7:vpoke B+40*(J)+I,P(CK(7-J,I)):nextI,J: forJ=0to7:U=(J+DU)mod8:forI=0to7:V=(I+DV)mod8:forK=-1to1 step 2:D=-(V<2)++(V>5)+(V>1)*(V<6)*K:if U<2 or CK(U,V)<>2 then70
65 if CK(U-1,V+D)=1 and CK(U-2,V+2*D)=0 then CK(U,V)=0:CK(U-1,V+D)=0:CK(U-2,V+2*D)=2:I=7:J=7:K=1:AI=1:vpokeB-120+P2,p(1):P2=P2+1:
70 nextK,I,J:if P2=12 then locate0,0:?"CPU WINS": k$=INPUT$(1) : goto 1 else if AI=1 then 10
71 S=SGN(RND(1)-.5):for J=0 to 7:  U=(J+DU)mod8:  for I=0 to 7: V=(I+DV)mod8 :  D= -(V<1) + +(V>6) + (V>0) * (V<7)*S: IF U>1 and CK(U,V)=2 then if (V+2*D)>=0 and (V+2*D)<=7 then IF CK(U-2,V+2*D)=1 then 75 
73 IF U>0 and CK(U,V)=2 then IF CK(U-1,V+D)=0 then CK(U,V)=0: CK(U-1,V+D)=2: K=11: AI = 1: J=7:I=7
75 next I,J: goto 10: if AI=0 then locate0,0:?"TIE": k$=INPUT$(1):goto1
150 LOCATE13+C,14-R:k$=INPUT$(1):K=ASC(K$):if K=32then return: else if K=30andr<7thenR=R+1:goto150:elseifK=31andR>0thenR=R-1:goto150:elseifK=28andC<7thenC=C+1:goto150;elseifK=29andC>0thenC=C-1:GOTO150:ELSE150

0 spazio
1 user
2 cpu
5 user
6 cpu