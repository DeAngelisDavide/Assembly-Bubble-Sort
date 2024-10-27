*-----------------------------------------------------------
* Title      : BUBBLE SORT
* Written by : DAVIDE DE ANGELIS
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:           
         LEA ARRAY , A0  *SALVATAGGIO INDIRIZZO ARRAY IN A0
         CLR D2 *D2 = TRUE
         MOVE #LEN-2 , D3 *D3 = LUNGHEZZA - 1
LOOP: 
         MOVE (A0) , D0 *SALVATAGGIO DELL'ELEMTNO DELL'ARRAY IN D0
         MOVE 2(A0) , D1 *SALVATAGGIO DELL'ELEMENTO SUCCESSIVO DELL'ARRAY IN D1
         CMP D0 , D1  *CONFRONTO D0 ,D1
         BGE NOSWAP   *SALTO A NONSWAP SE DO < D1
         MOVE D0 , 2(A0) *SALVA D0 NELLA SUA POSIZIONE SUCCESSIVA ( POS 2(A0))
         MOVE D1 , (A0) SALVA D1 NELLA SUA POSIZIONE PRECEDENTE (POS A0)
         MOVE #1 , D2 *D2 = FALSE

NOSWAP ADD #2 , A0  *INCREMENTO DI 2 DELL'INDIRIZZO
       DBRA D3 , LOOP *SALTO A LOOP SE D3 (LEN) != -1 E DECREMENTO DI D3

       TST D2  *VERIFICA D2 (TRUE O FALSE , 0 O 1 )
       BNE START (SALTO ALL ' INIZIO SE D2 = 1 (FALSE)
          
END
    SIMHALT
ARRAY DC 17 , 11 , 10 , 18 , 5
LEN EQU 5 *LUNGHEZZA ARRAY
             
    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
