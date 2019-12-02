;---------------------------------------------------
; Programa:
; Autor:
; Data:
;---------------------------------------------------

ORG 0

INICIO:
  LDA POSICAO
  ADD UM
  STA POSICAO
  SUB NUMFIM
  JN LASSO
  JMP FIM

LASSO:
  LDA @POSICAO
  SUB VINTE
  JN IF
  JMP INICIO

IF:
  LDA @POSICAO
  SUB QUINZE
  JN INICIO
  JMP CONT

CONT:
  LDA CONTADOR
  ADD UM
  STA CONTADOR
  JMP INICIO

FIM:
  LDA CONTADOR
  OUT 0
  HLT

ORG 100
  UM: DB 1
  VINTE: DB 20
  QUINZE: DB 15
  CONTADOR: DB 0
  POSICAO: DB 127
  NUMFIM: DB 138

ORG 128
  A: DB 15
  B: DB 27
  C: DB 16
  D: DB 13
  E: DB 18
  F: DB 12
  G: DB 13
  H: DB 2
  I: DB 20
  J: DB 22