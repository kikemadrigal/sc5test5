1 ' �� mapas screen5 16x16 ��
2 ' dos blucles anidados(b=para las filas y a=para las columnas)
3 ' son 13 filas x 16 columnas,
10 SCREEN 5,2,0:open "grp:" for output as #1:GOSUB 2000
15 SETPAGE 0,0:COLOR 15,0,0:DEFINT A-Z
16 time=0
20 FOR B=0 TO 12
    21 FOR A=0 TO 15:READ H
        22 ON H GOSUB 500,510,520,530,540
    28 NEXT
29 NEXT
30 preset (0,0):print #1,"fre:"fre(0)" time:"time/50
31 GOTO 31
500 COPY(0,0)-(15,15),1 TO(A*16,B*16):RETURN
510 COPY(16,0)-(31,15),1 TO(A*16,B*16):RETURN
520 COPY(32,0)-(47,15),1 TO(A*16,B*16):RETURN
530 COPY(48,0)-(63,15),1 TO(A*16,B*16):RETURN
540 COPY(64,0)-(79,15),1 TO(A*16,B*16):RETURN

800 DATA1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
810 DATA1,4,1,1,1,3,3,1,1,1,1,1,5,5,5,1
820 DATA1,1,1,1,3,3,3,3,1,1,1,5,5,5,5,1
830 DATA1,1,1,3,3,3,3,3,3,1,1,1,1,1,1,1
840 DATA1,1,1,3,3,3,3,3,3,1,1,1,1,1,1,1
850 DATA1,1,1,1,3,3,3,3,1,1,1,1,1,1,1,1
860 DATA1,1,1,1,1,3,3,1,1,1,1,1,1,1,1,1
870 DATA1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1
880 DATA1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1
890 DATA1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1
900 DATA3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
910 DATA3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
920 DATA3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3


    2000 SETPAGE 0,1:CLS:COLOR 15,0,0
    2010 LINE(0,0)-(15,15),7,BF
    2020 LINE(16,0)-(31,15),6,BF
    2030 CIRCLE(56,8),7,10:PAINT STEP(0,0),10
    2040 DRAW"c12bm32,0f15;bm32,15e15"
    2050 LINE(64,0)-(79,15),15,BF
2100 RETURN
