;===========================================================;
; Constant horizontal/vertical autoscroll UberASM by KevinM ;
; With minor edits to "unlock" the camera after autoscroll  ;
; has finished (by PSI Ninja).                              ;
;===========================================================;

; Change these to customize the autoscroll settings
!NoLRScroll     = 1     ;> 1 = no LR scroll, 0 = LR scroll enabled.
!Direction1     = 1     ;> 1 = vertical, 0 = horizontal.
!Direction2     = 1     ;> 1 = up/left, 0 = down/right.
!Teleport       = 0     ;> 1 = when the scroll stops, Mario will teleport based on the current screen exit.
!StartScreen    = $1B   ;> Screen number where to start scrolling.
!StopScreen     = $08   ;> Screen number where to stop scrolling.
!Speed          = $02   ;> How many pixels to move each frame.
!FractionSpeed  = $40   ;\ Fractional speed, used if you want more fine-tuned speed (e.g. 1.5 speed, 0.5, etc.)
                        ;| Goes from $00 to $FF, where $FF is almost equal to !Speed = $01
                        ;| So for example if you want 1.5 speed, you'd use !Speed = $01 and !FractionSpeed = $80
                        ;/ and for 0.5 speed you'd use !Speed = $00 and !FractionSpeed = $80.

; Don't edit from here, unless you know what you're doing!
!ScrollDir      = $55
!FractionBits   = $0EC5|!addr     ; 1 byte of freeram
;!ReachedTop     = $1929|!addr	;> PSI Ninja edit: 1 byte of freeram to keep track of whether or not the autoscroll has stopped.

if !Direction1
    !StopScroll = $1412|!addr
    !PosLow     = $1464|!addr
    !PosHigh    = $1465|!addr
else
    !StopScroll = $1411|!addr
    !PosLow     = $1462|!addr
    !PosHigh    = $1463|!addr
endif

if !Direction2
    !Instr1     = sec
    !Instr2     = sbc.b
    !Instr3     = bmi
    !Instr4     = bpl
    !StartPos   = (!StartScreen+1)<<8
    !StopPos    = (!StopScreen<<8)+1
else
    !Instr1     = clc
    !Instr2     = adc.b
    !Instr3     = bpl
    !Instr4     = bmi
    !StartPos   = (!StartScreen-1<<8)+1
    !StopPos    = !StopScreen<<8
endif

init:
    stz !FractionBits
    ;stz !ReachedTop		;> PSI Ninja edit: Initialize the flag.
    rtl

main:
    ;lda !ReachedTop		;\ PSI Ninja edit: If we reached the top, don't make the autoscroll trigger again.
    ;bne .return			;/

    lda $9D
    ora $13D4|!addr
    bne .return

if !NoLRScroll
    stz $1401|!addr
    stz $13FD|!addr
endif
    
    rep #$20
    lda !PosLow
    cmp.w #!StartPos
    sep #$20
    !Instr4 .return

    stz !StopScroll

if !Direction2
    stz !ScrollDir
else
    lda #$02
    sta !ScrollDir
endif
    
    rep #$20
    lda !PosLow
    cmp.w #!StopPos
    sep #$20
    !Instr3 .return2

    !Instr1
if !FractionSpeed != $00
    lda !FractionBits
    !Instr2 #!FractionSpeed
    sta !FractionBits
endif
    lda !PosLow
    !Instr2 #!Speed
    sta !PosLow
    lda !PosHigh
    !Instr2 #$00
    sta !PosHigh

.return:
    rtl

.return2:
    ;lda #$01		;\
    ;sta !StopScroll	;| PSI Ninja edit: Enable screen scrolling again once the autoscroll has stopped.
    ;sta !ReachedTop	;/ Also, prevent the autoscroll from triggering again.
if !Teleport
    stz $88
    stz $89
    lda #$06
    sta $71
endif
    rtl
