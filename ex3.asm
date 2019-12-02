;---------------------------------------------------
; Programa: EX 3
; Autor:LEONARDO VIEIRA E LEONARDO EDENIR
; Data:
;---------------------------------------------------

ORG 0
  LDI 80 
  SUB A
  JN ERRO

  LDI 20
  SUB B
  JN ERRO

  LDA A
  ADD B
  ADD C
  OUT 0
  JMP FIM

ERRO:
  LDI 69
  OUT 2
  LDI 82
  OUT 2
  OUT 2
  JMP FIM

FIM:
  HLT

ORG 200
  A: DB 80

ORG 202
  B: DB 20

ORG 204
  C: DB 5


