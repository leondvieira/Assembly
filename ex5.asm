;---------------------------------------------------
; Programa: EX 05
; Autor: LEONARDO VIEIRA E LEONARDO EDENIR
; Data:
;---------------------------------------------------

LASSO:
  LDA DIVIDENDO
  SUB DIVISOR
  STA DIVIDENDO
  JN FIM

  LDA RESULTADO
  ADD UM
  STA RESULTADO
  
  JMP LASSO

FIM:
  LDA RESULTADO
  OUT 0
  HLT  

DIVIDENDO: DB 18
DIVISOR: DB 3
RESULTADO: DB 0
UM: DB 1