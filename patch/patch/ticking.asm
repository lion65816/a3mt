; replaces the P-Switch music with a ticking sound effect while keeping the normal music playing
; by Kil

header
lorom

!SFX_NUMBER = $2B

!FREESPACE = $138000

org $8DDB
JSL POW_CODE

org $01AB07
LDA #!SFX_NUMBER
STA $1DF9

org $C54C
NOP #3

org !FREESPACE
db "STAR"
dw END_CODE-POW_CODE
dw END_CODE-POW_CODE^$FFFF

POW_CODE:
STA $4310,x
DEX
PHP
PHB
PHY
PHX
PHA
LDA $14AD
AND #$0F
CMP #$0F
BNE CHECKSILVER
LDA #!SFX_NUMBER
STA $1DF9
CHECKSILVER:
LDA $14AE
AND #$0F
CMP #$0F
BNE RETURN
LDA #!SFX_NUMBER
STA $1DF9
RETURN:
PLA
PLX
PLY
PLB
PLP
RTL
END_CODE: