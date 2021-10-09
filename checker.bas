1 screen0,0,0:COLOR1,14,14:KEYOFF::DEFINTA-Z:B=base(0)+295:R=RND(-TIME):P(0)=46:P(1)=111:P(2)=79:P(5)=113:P(6)=81:B2=B+360:CLS:P1=0:P2=0:forJ=0to7:vpokeB-2+J*40,56-J:vpokeB2+J,97+J:forI=0to7:CK(I,J)=(1-(I+J)mod2)*(-1*(I<3)-2*(I>4)):nextI,J:
10 forJ=0to7:forI=0to7:vpoke B+40*(J)+I,P(CK(7-J,I)):nextI,J:gosub150:Q=CK(R,C)and4: if (CK(R,C)and1)=0 then 10:else R0=R:C0=C:GOSUB150:if(R=R0+1 or(Q=4 and R=R0-1))and abs(C0-C)=1 and CK(R,C)=0 then CK(R,C)=(CK(R0,C0)or(4*(-1*(R=7)))):CK(R0,C0)=0:goto60
20 CE=CK((R+R0)/2,(C+C0)/2):if(Q=0andR<>R0+2)orabs(R-R0)<>2orabs(C0-C)<>2orCK(R,C)<>0or(CE and2)<>2orQ<(CEand4)thenC=C0:R=R0:goto10:else:CK((R+R0)/2,(C+C0)/2)=0:CK(R,C)=(CK(R0,C0)or(4*(-1*(R=7)))):CK(R0,C0)=0:P1=P1+1:vpokeB+479+P1,p(CE):beep:ifP1=12then1
60 AI=0:DU=RND(1)*7:DV=RND(1)*7:forJ=0to7:forI=0to7:vpoke B+40*(J)+I,P(CK(7-J,I)):nextI,J: forJ=0to7:U=(J+DU)mod8:forI=0to7:V=(I+DV)mod8:Q=CK(U,V)and4:forK=-1to1 step 2:forL=-1to(-(Q=4))step2: if(L=-1 and U<2) or (L=1andU>5) or (CK(U,V)and2)<>2 then70
65 D=-(V<2)++(V>5)+(V>1)*(V<6)*K:T=-(U<2)++(U>5)+(U>1)*(U<6)*L:CE=CK(U+T,V+D):if(CEand1)=1and Q>=(CEand4) and CK(U+2*T,V+2*D)=0 then CK(U+2*T,V+2*D)=(CK(U,V)or(4*(-1*((U+2*T)=0)))):CK(U,V)=0:CK(U+T,V+D)=0:I=7:J=7:K=1:AI=1:vpokeB-120+P2,p(1):P2=P2+1:beep
70 nextL,K,I,J:if P2=12 then locate0,0:?"CPU WINS": k$=INPUT$(1) : goto 1 else if AI=1 then 10
71 S=SGN(RND(1)-.5):forJ=0to7:U=(J+DU)mod8:forI=0to7:Q=CK(U,V)and4:V=(I+DV)mod8:forK=-1to1 step 2:forL=-1to(-(Q=4))step2: if (L=-1 and U=0) or (L=1andU=7) or (CK(U,V)and2)<>2 then75
73 D= -(V<1) + +(V>6) + (V>0) * (V<7)*K: T= -(U<1) + +(U>6) + (U>0) * (U<7)*L: if CK(U+T,V+D)=0 then CK(U+T,V+D)=(CK(U,V)or(4*(-1*((U+T)=0)))):CK(U,V)=0:K=11: AI = 1: J=7:I=7:K=1:L=1
75 next L,I,J: goto 10: if AI=0 then locate0,0:?"TIE": k$=INPUT$(1):goto1
150 LOCATE13+C,14-R:k$=INPUT$(1):K=ASC(K$):if K=32then return: else if K=30andr<7thenR=R+1:goto150:elseifK=31andR>0thenR=R-1:goto150:elseifK=28andC<7thenC=C+1:goto150;elseifK=29andC>0thenC=C-1:GOTO150:ELSE150

