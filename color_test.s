; da65 V2.19 - Git 3f3dc3d14
; Created:    2025-07-27 22:17:03
; Input file: color_test.nes
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0048           := $0048
L0086           := $0086
L1800           := $1800
L3021           := $3021
L3049           := $3049
L487B           := $487B
L5367           := $5367
        lsr     $5345
        .byte   $1A
        .byte   $02
        ora     (L0000,x)
        
        
        
        
        
        
        asl     $2D,x
        bmi     L601C
        clv
        
        jsr     LBA17
        
        plp
        and     ($43,x)
        
        bpl     L6032
        bmi     L6013
L6013:  jsr     L3021
        
        plp
        .byte   $2B
        lda     $2000,y
L601C:  .byte   $2B
        .byte   $BB
        
        plp
        .byte   $3F
        tsx
        
        jsr     LB83F
        
        plp
        .byte   $3F
        .byte   $BB
        
        bmi     L606C
        .byte   $2B
        
        sec
        .byte   $3F
        .byte   $B1
L6032:  
        rti

        eor     #$45
        
        bpl     L6082
        bmi     L603B
L603B:  jsr     L3049
        
        plp
        eor     #$30
        
        bmi     L60A2
        bcs     L6047
L6047:  jsr     L5367
        
        bpl     L60B4
        bmi     L604F
L604F:  jsr     L487B
        
        bpl     L60D0
        .byte   $B2
        
        jsr     LB37B
        
        plp
        .byte   $7B
        ldy     L0000,x
        .byte   $30
L6060:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L606C:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L6082:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L60A2:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L60B4:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
L60D0:  .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        ldx     #$00
L6106:  lda     L8004,x
        sta     $0200,x
        inx
        bne     L6106
        lda     $2002
        lda     #$3F
        sta     $2006
        lda     #$00
        sta     $2006
        ldy     #$10
L611E:  ldx     #$00
L6120:  lda     L8000,x
        sta     $2007
        inx
        cpx     #$04
        bcc     L6120
        dey
        bne     L611E
        lda     $2002
        lda     #$20
        sta     $2006
        lda     #$00
        sta     $2006
        ldy     #$10
L613D:  ldx     #$00
L613F:  lda     #$00
        sta     $2007
        inx
        bne     L613F
        dey
        bne     L613D
        lda     #$1E
        sta     L0000
        lda     #$80
        sta     $2000
        jmp     L8153

        lda     #$01
        sta     $4016
        lda     #$00
        sta     $4016
        ldx     #$08
L6162:  pha
        lda     $4016
        and     #$03
        cmp     #$01
        pla
        ror     a
        dex
        bne     L6162
        sta     $03
        lda     $03
        rts

        lda     #$00
        sta     $2003
        lda     #$02
        sta     $4014
        lda     $2002
        lda     #$3F
        sta     $2006
        lda     #$00
        sta     $2006
        lda     $01
        sta     $2007
        cmp     #$20
        bcc     L61A7
        lda     L0000
        and     #$01
        bne     L61A2
        lda     $01
        and     #$0F
        cmp     #$0E
        bcs     L61A7
L61A2:  lda     #$0F
        jmp     L81A9

L61A7:  lda     #$30
        pha
        lda     $2002
        lda     #$3F
        sta     $2006
        lda     #$13
        sta     $2006
        pla
        sta     $2007
        lda     #$00
        sta     $2005
        sta     $2005
        lda     L0000
        sta     $2001
        jsr     L8156
        jsr     L8156
        lda     $04
        beq     L61D5
        jmp     L8279

L61D5:  lda     $03
        and     #$F2
        cmp     #$10
        bne     L61E6
        lda     $01
        clc
        adc     #$F0
        and     #$3F
        sta     $01
L61E6:  lda     $03
        and     #$F2
        cmp     #$20
        bne     L61F7
        lda     $01
        clc
        adc     #$10
        and     #$3F
        sta     $01
L61F7:  lda     $03
        and     #$F2
        cmp     #$40
        bne     L6210
        lda     $01
        and     #$30
        sta     $02
        lda     $01
        sec
        sbc     #$01
        and     #$0F
        ora     $02
        sta     $01
L6210:  lda     $03
        and     #$F2
        cmp     #$80
        bne     L6229
        lda     $01
        and     #$30
        sta     $02
        lda     $01
        clc
        adc     #$01
        and     #$0F
        ora     $02
        sta     $01
L6229:  lda     $03
        and     #$01
        beq     L6235
        lda     L0000
        eor     #$01
        sta     L0000
L6235:  lda     $03
        and     #$F2
        cmp     #$42
        bne     L6243
        lda     L0000
        eor     #$80
        sta     L0000
L6243:  lda     $03
        and     #$F2
        cmp     #$12
        bne     L6251
        lda     L0000
        eor     #$40
        sta     L0000
L6251:  lda     $03
        and     #$F2
        cmp     #$82
        bne     L625F
        lda     L0000
        eor     #$20
        sta     L0000
L625F:  lda     $03
        and     #$F2
        cmp     #$22
        bne     L626D
        lda     L0000
        and     #$1F
        sta     L0000
L626D:  lda     $03
        cmp     #$04
        bne     L6279
        lda     L0000
        eor     #$14
        sta     L0000
L6279:  lda     $03
        and     #$F5
        sta     $04
        lda     $01
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        ora     #$A0
        sta     $020D
        lda     $01
        and     #$0F
        ora     #$A0
        sta     $0211
        lda     L0000
        rol     a
        rol     a
        and     #$01
        ora     #$A0
        sta     $0235
        lda     L0000
        rol     a
        rol     a
        rol     a
        and     #$01
        ora     #$A0
        sta     $0239
        lda     L0000
        rol     a
        rol     a
        rol     a
        rol     a
        and     #$01
        ora     #$A0
        sta     $023D
        lda     L0000
        and     #$01
        ora     #$A0
        sta     $0249
        rti

        rti

        sei
        cld
        ldx     #$40
        stx     $4017
        ldx     $FF
        txs
        ldx     #$00
        stx     $2000
        stx     $2001
        stx     $4010
        bit     $2002
L62DA:  bit     $2002
        bpl     L62DA
        lda     #$00
        tax
L62E2:  sta     L0000,x
        sta     $0100,x
        sta     $0200,x
        sta     $0300,x
        sta     $0400,x
        sta     $0500,x
        sta     $0600,x
        sta     $0700,x
        inx
        bne     L62E2
L62FC:  bit     $2002
        bpl     L62FC
        jmp     L8104

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
L7C00:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
L7E00:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
L8000:  
        
        
        
L8004:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
L8104:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
L8153:  
        
        
L8156:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
L81A9:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
L8200:  
        
L8202:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
L8279:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
LB37B:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
LB83F:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
LBA17:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
LC000:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
LC0C0:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
LC200:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
LC2C2:  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

        .byte   $74
        sta     ($C2,x)
        .byte   $82
        cmp     ($82,x)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     L0000,x
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        bmi     LE28B
        bmi     LE245
        
        bmi     LE248
        
        bmi     LE293
        bmi     LE24D
        
        bmi     LE250
        
        jmp     (L0048)

        
        
        
        
        
        jmp     (L0048)

        
        
        
        
        
        
        plp
        .byte   $7C
        plp
        .byte   $7C
        plp
        
        
        
        plp
        .byte   $7C
        plp
        .byte   $7C
        plp
        
        
        bpl     LE2BF
        bne     LE2C1
LE245:  .byte   $12
        .byte   $7C
        .byte   $10
LE248:  
        bpl     LE2C7
        bne     LE2C9
LE24D:  .byte   $12
        .byte   $7C
        .byte   $10
LE250:  
        
        dec     $CC
        clc
        bmi     LE2BD
        dec     L0000
        
        dec     $CC
        clc
        bmi     LE2C5
        dec     L0000
        bpl     LE28B
        bmi     LE2D5
        txa
        sty     $7A
        
        bpl     LE293
        bmi     LE2DD
        txa
        sty     $7A
        
        clc
        bpl     LE274
LE274:  
        
        
        
        
        clc
        bpl     LE27C
LE27C:  
        
        
        
        
        .byte   $0C
        clc
        bmi     LE2B5
        bmi     LE29F
        .byte   $0C
        
        .byte   $0C
        clc
LE28B:  bmi     LE2BD
        bmi     LE2A7
        .byte   $0C
        
        rts

        .byte   $30
LE293:  clc
        clc
        clc
        bmi     LE2F8
        
        rts

        bmi     LE2B4
        clc
        clc
        .byte   $30
LE29F:  rts

        
        bpl     LE2F7
        sec
        inc     $5438,x
LE2A7:  bpl     LE2A9
LE2A9:  bpl     LE2FF
        sec
        inc     $5438,x
        bpl     LE2B1
LE2B1:  
        bpl     LE2C4
LE2B4:  .byte   $7C
LE2B5:  bpl     LE2C7
        
        
        
        bpl     LE2CC
        .byte   $7C
LE2BD:  bpl     LE2CF
LE2BF:  
        
LE2C1:  
        
        
LE2C4:  
LE2C5:  bmi     LE2F7
LE2C7:  .byte   $20
        
LE2C9:  
        
        
LE2CC:  
        bmi     LE2FF
LE2CF:  jsr     L0000
        
        
        .byte   $7C
LE2D5:  
        
        
        
        
        
        
        .byte   $7C
LE2DD:  
        
        
        
        
        
        
        
        
        bmi     LE318
        
        
        
        
        
        
        bmi     LE320
        
        
        asl     $0C
        clc
        bmi     LE357
LE2F7:  .byte   $C0
LE2F8:  
        
        asl     $0C
        clc
        bmi     LE35F
LE2FF:  cpy     #$00
        .byte   $7C
        .byte   $C2
        dec     $CA
        .byte   $D2
        .byte   $E2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        dec     $CA
        .byte   $D2
        .byte   $E2
        .byte   $7C
        
        clc
        sec
        sei
        clc
        clc
        clc
        .byte   $7E
LE318:  
        clc
        sec
        sei
        clc
        clc
        clc
        .byte   $7E
LE320:  
        .byte   $7C
        dec     $06
        .byte   $1C
        sec
        rts

        inc     L7C00,x
        dec     $06
        .byte   $1C
        sec
        rts

        inc     L7C00,x
        stx     $06
        .byte   $1C
        asl     L0086
        .byte   $7C
        
        .byte   $7C
        stx     $06
        .byte   $1C
        asl     L0086
        .byte   $7C
        
        .byte   $0C
        .byte   $1C
        bit     LFE4C
        .byte   $0C
        .byte   $0C
        
        .byte   $0C
        .byte   $1C
        bit     LFE4C
        .byte   $0C
        .byte   $0C
        
        .byte   $FC
        cpy     #$C0
        .byte   $FC
        asl     L0086
LE357:  .byte   $7C
        
        .byte   $FC
        cpy     #$C0
        .byte   $FC
        asl     L0086
LE35F:  .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$FC
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$FC
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        inc     $0606,x
        .byte   $0C
        clc
        clc
        clc
        
        inc     $0606,x
        .byte   $0C
        clc
        clc
        clc
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        ror     L8202,x
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        ror     L8202,x
        .byte   $7C
        
        
        bmi     LE3D4
        
        bmi     LE3D7
        
        
        
        bmi     LE3DC
        
        bmi     LE3DF
        
        
        
        bmi     LE3E4
        
        bmi     LE3E7
        jsr     L0000
        bmi     LE3EC
        
        bmi     LE3EF
        jsr     L1800
        bmi     LE424
        inc     $3060,x
        clc
        
        clc
        bmi     LE42C
        inc     $3060,x
        clc
        
        
        
        .byte   $7C
LE3D4:  
        .byte   $7C
        
LE3D7:  
        
        
        
        .byte   $7C
LE3DC:  
        .byte   $7C
        
LE3DF:  
        
        bmi     LE3FB
        .byte   $0C
LE3E4:  inc     $180C,x
LE3E7:  bmi     LE3E9
LE3E9:  bmi     LE403
        .byte   $0C
LE3EC:  inc     $180C,x
LE3EF:  bmi     LE3F1
LE3F1:  sei
        cpy     $380C
        
        bmi     LE428
        
        sei
        .byte   $CC
LE3FB:  .byte   $0C
        sec
        
        bmi     LE430
        
        .byte   $7C
        .byte   $82
LE403:  tsx
        ldx     #$BA
        .byte   $82
        .byte   $7C
        
        .byte   $7C
        .byte   $82
        tsx
        ldx     #$BA
        .byte   $82
        .byte   $7C
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
LE424:  .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
LE428:  
        .byte   $FC
        .byte   $C2
        .byte   $C2
LE42C:  .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
LE430:  
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        inc     LC0C0,x
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        cpy     #$00
        inc     LC0C0,x
        sed
        cpy     #$C0
        cpy     #$00
        .byte   $7C
        .byte   $C2
        cpy     #$C6
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C6
        .byte   $C2
LE47E:  .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FE
        .byte   $C2
LE486:  .byte   $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        .byte   $C2
        
        ror     $1818,x
        clc
        clc
        clc
        ror     L7E00,x
        clc
        clc
        clc
        clc
        clc
        ror     $1E00,x
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        sty     a:$78
        asl     $0C0C,x
        .byte   $0C
        .byte   $0C
        sty     a:$78
        .byte   $C2
        cpy     $C8
        beq     LE47E
        cpy     $C2
        
        .byte   $C2
        cpy     $C8
        beq     LE486
        cpy     $C2
        
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        inc     LC000,x
        cpy     #$C0
        cpy     #$C0
        cpy     #$FE
        
        dec     $AA
        .byte   $92
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        dec     $AA
        .byte   $92
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $E2
        .byte   $D2
        dex
        dec     $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $E2
        .byte   $D2
        dex
        dec     $C2
        .byte   $C2
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        cpy     #$C0
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        cpy     #$C0
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        dex
        cpy     $7A
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        dex
        cpy     $7A
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $7C
        .byte   $C2
        cpy     #$7C
        .byte   $02
        .byte   $82
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$7C
        .byte   $02
        .byte   $82
        .byte   $7C
        
        ror     $1818,x
        clc
        clc
        clc
        clc
        
        ror     $1818,x
        clc
        clc
        clc
        clc
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        bpl     LE569
LE569:  .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        bpl     LE571
LE571:  .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        jmp     (LC200)

        .byte   $C2
        .byte   $C2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        jmp     (L8200)

        cpy     $68
        bmi     LE5BE
        jmp     L0086

        .byte   $82
        cpy     $68
        bmi     LE5C6
        jmp     L0086

        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        clc
        clc
        clc
        
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        clc
        clc
        clc
        
        inc     $180C,x
        bmi     LE606
        cpy     #$FE
        
        inc     $180C,x
        bmi     LE60E
        cpy     #$FE
        
        .byte   $3C
        bmi     LE5E4
        bmi     LE5E6
        bmi     LE5F4
        
        .byte   $3C
        bmi     LE5EC
        bmi     LE5EE
LE5BE:  bmi     LE5FC
        
        
        cpy     #$60
        bmi     LE5DE
LE5C6:  .byte   $0C
        asl     L0000
        
        cpy     #$60
        bmi     LE5E6
        .byte   $0C
        asl     L0000
        sei
        clc
        clc
        clc
        clc
        clc
        sei
        
        sei
        clc
        clc
        clc
        clc
LE5DE:  clc
        sei
        
        bpl     LE60B
        .byte   $44
LE5E4:  
        
LE5E6:  
        
        
        bpl     LE613
        .byte   $44
LE5EC:  
        
LE5EE:  
        
        
        
        
        
LE5F4:  
        
        
        inc     a:L0000,x
        
        
LE5FC:  
        
        
        inc     L1800,x
        php
        
        
        
LE606:  
        
        
        clc
        php
LE60B:  
        
        
LE60E:  
        
        
        sec
        .byte   $64
LE613:  .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        inc     LC0C0,x
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        cpy     #$00
        inc     LC0C0,x
        sed
        cpy     #$C0
        cpy     #$00
        .byte   $7C
        .byte   $C2
        cpy     #$C6
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C6
        .byte   $C2
LE67E:  .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FE
        .byte   $C2
LE686:  .byte   $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        .byte   $C2
        
        ror     $1818,x
        clc
        clc
        clc
        ror     L7E00,x
        clc
        clc
        clc
        clc
        clc
        ror     $1E00,x
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        sty     a:$78
        asl     $0C0C,x
        .byte   $0C
        .byte   $0C
        sty     a:$78
        .byte   $C2
        cpy     $C8
        beq     LE67E
        cpy     $C2
        
        .byte   $C2
        cpy     $C8
        beq     LE686
        cpy     $C2
        
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        inc     LC000,x
        cpy     #$C0
        cpy     #$C0
        cpy     #$FE
        
        dec     $AA
        .byte   $92
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        dec     $AA
        .byte   $92
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $E2
        .byte   $D2
        dex
        dec     $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $E2
        .byte   $D2
        dex
        dec     $C2
        .byte   $C2
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        cpy     #$C0
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        cpy     #$C0
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        dex
        cpy     $7A
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        dex
        cpy     $7A
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $7C
        .byte   $C2
        cpy     #$7C
        .byte   $02
        .byte   $82
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$7C
        .byte   $02
        .byte   $82
        .byte   $7C
        
        ror     $1818,x
        clc
        clc
        clc
        clc
        
        ror     $1818,x
        clc
        clc
        clc
        clc
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        bpl     LE769
LE769:  .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        bpl     LE771
LE771:  .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        jmp     (LC200)

        .byte   $C2
        .byte   $C2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        jmp     (L8200)

        cpy     $68
        bmi     LE7BE
        jmp     L0086

        .byte   $82
        cpy     $68
        bmi     LE7C6
        jmp     L0086

        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        clc
        clc
        clc
        
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        clc
        clc
        clc
        
        inc     $180C,x
        bmi     LE806
        cpy     #$FE
        
        inc     $180C,x
        bmi     LE80E
        cpy     #$FE
        
        bpl     LE7EB
        .byte   $7C
        dec     $92,x
        bpl     LE7C8
        
        bpl     LE7F3
        .byte   $7C
        dec     $92,x
LE7BE:  bpl     LE7D0
        
        
        cpy     #$60
        bmi     LE7DE
LE7C6:  .byte   $0C
        .byte   $06
LE7C8:  
        
        cpy     #$60
        bmi     LE7E6
        .byte   $0C
        .byte   $06
LE7D0:  
        bpl     LE7E3
        .byte   $92
        dec     $7C,x
        sec
        bpl     LE7D9
LE7D9:  bpl     LE7EB
        .byte   $92
        dec     $7C,x
LE7DE:  sec
        bpl     LE7E1
LE7E1:  .byte   $32
        .byte   $7E
LE7E3:  jmp     L0000

LE7E6:  
        
        
        .byte   $32
        .byte   $7E
LE7EB:  jmp     L0000

        
        
        
        
        .byte   $10
LE7F3:  plp
        .byte   $44
        .byte   $82
        inc     a:L0000,x
        
        bpl     LE824
        .byte   $44
        .byte   $82
        inc     a:L0000,x
        
        
        
        
        
LE806:  
        
        
        
        
        
        
        
LE80E:  
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        
        
        
        
        
        
        
        
        
        
        
        
LE824:  
        
        
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     L0000,x
        .byte   $7C
        .byte   $C2
        dec     $CA
        .byte   $D2
        .byte   $E2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        dec     $CA
        .byte   $D2
        .byte   $E2
        .byte   $7C
        
        clc
        sec
        sei
        clc
        clc
        clc
        ror     L1800,x
        sec
        sei
        clc
        clc
        clc
        ror     L7C00,x
        dec     $06
        .byte   $1C
        sec
        rts

        inc     L7C00,x
        dec     $06
        .byte   $1C
        sec
        rts

        inc     L7C00,x
        stx     $06
        .byte   $1C
        asl     L0086
        .byte   $7C
        
        .byte   $7C
        stx     $06
        .byte   $1C
        asl     L0086
        .byte   $7C
        
        .byte   $0C
        .byte   $1C
        bit     LFE4C
        .byte   $0C
        .byte   $0C
        
        .byte   $0C
        .byte   $1C
        bit     LFE4C
        .byte   $0C
        .byte   $0C
        
        .byte   $FC
        cpy     #$C0
        .byte   $FC
        asl     L0086
        .byte   $7C
        
        .byte   $FC
        cpy     #$C0
        .byte   $FC
        asl     L0086
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$FC
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$FC
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        inc     $0606,x
        .byte   $0C
        clc
        clc
        clc
        
        inc     $0606,x
        .byte   $0C
        clc
        clc
        clc
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        ror     L8202,x
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        ror     L8202,x
        .byte   $7C
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        inc     LC0C0,x
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        cpy     #$00
        inc     LC0C0,x
        sed
        cpy     #$C0
        cpy     #$3C
        ror     LFFFF,x
        .byte   $FF
        .byte   $FF
LEB06:  ror     a:$3C,x
        clc
        bit     $24
        .byte   $3C
        bit     $24
        
        .byte   $3C
        ror     LFFFF,x
        .byte   $FF
        .byte   $FF
        ror     a:$3C,x
        sec
        bit     $38
        bit     $24
        sec
        
        
        .byte   $1B
        .byte   $12
        .byte   $1B
        asl     a
        asl     a
        .byte   $1B
        
        .byte   $3F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $3F
        
        eor     $4D49
        eor     #$49
        adc     LFF00
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        
        clv
        bpl     LEB54
        bpl     LEB56
        bcc     LEB48
LEB48:  .byte   $FC
        inc     LFFFF,x
        .byte   $FF
        .byte   $FF
        inc     a:$FC,x
        .byte   $1B
        ora     ($19),y
LEB54:  ora     #$09
LEB56:  ora     $3F00,y
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $3F
        
        .byte   $93
        rol     a
        .byte   $3B
        rol     a
        rol     a
        rol     a
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        
        sec
        bcc     LEB84
        bcc     LEB06
        bcc     LEB78
LEB78:  .byte   $FC
        inc     LFFFF,x
        .byte   $FF
        .byte   $FF
        inc     a:$FC,x
        bpl     LEBBB
        .byte   $7C
LEB84:  dec     $92,x
        bpl     LEB98
        
        bpl     LEBC3
        .byte   $7C
        dec     $92,x
        bpl     LEBA0
        
        bpl     LEBA3
        .byte   $92
        dec     $7C,x
        sec
        .byte   $10
LEB98:  
        bpl     LEBAB
        .byte   $92
        dec     $7C,x
        sec
        .byte   $10
LEBA0:  
        clc
        .byte   $30
LEBA3:  rts

        inc     $3060,x
        clc
        
        clc
        .byte   $30
LEBAB:  rts

        inc     $3060,x
        clc
        
        bmi     LEBCB
        .byte   $0C
        inc     $180C,x
        bmi     LEBB9
LEBB9:  bmi     LEBD3
LEBBB:  .byte   $0C
        inc     $180C,x
        bmi     LEBC1
LEBC1:  .byte   $1C
        .byte   $0E
LEBC3:  .byte   $07
        asl     a:$1C
        
        
        .byte   $1C
        .byte   $1E
LEBCB:  .byte   $0F
        .byte   $0F
        asl     a:$1C,x
        eor     $AA,x
        .byte   $55
LEBD3:  tax
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        eor     $55,x
        eor     $55,x
        eor     $55,x
        eor     L0000,x
        .byte   $FF
        
        .byte   $FF
        
        .byte   $FF
        
        .byte   $FF
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     L0000,x
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     L0000,x
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        bmi     LF28B
        bmi     LF245
        
        bmi     LF248
        
        bmi     LF293
        bmi     LF24D
        
        bmi     LF250
        
        jmp     (L0048)

        
        
        
        
        
        jmp     (L0048)

        
        
        
        
        
        
        plp
        .byte   $7C
        plp
        .byte   $7C
        plp
        
        
        
        plp
        .byte   $7C
        plp
        .byte   $7C
        plp
        
        
        bpl     LF2BF
        bne     LF2C1
LF245:  .byte   $12
        .byte   $7C
        .byte   $10
LF248:  
        bpl     LF2C7
        bne     LF2C9
LF24D:  .byte   $12
        .byte   $7C
        .byte   $10
LF250:  
        
        dec     $CC
        clc
        bmi     LF2BD
        dec     L0000
        
        dec     $CC
        clc
        bmi     LF2C5
        dec     L0000
        bpl     LF28B
        bmi     LF2D5
        txa
        sty     $7A
        
        bpl     LF293
        bmi     LF2DD
        txa
        sty     $7A
        
        clc
        bpl     LF274
LF274:  
        
        
        
        
        clc
        bpl     LF27C
LF27C:  
        
        
        
        
        .byte   $0C
        clc
        bmi     LF2B5
        bmi     LF29F
        .byte   $0C
        
        .byte   $0C
        clc
LF28B:  bmi     LF2BD
        bmi     LF2A7
        .byte   $0C
        
        rts

        .byte   $30
LF293:  clc
        clc
        clc
        bmi     LF2F8
        
        rts

        bmi     LF2B4
        clc
        clc
        .byte   $30
LF29F:  rts

        
        bpl     LF2F7
        sec
        inc     $5438,x
LF2A7:  bpl     LF2A9
LF2A9:  bpl     LF2FF
        sec
        inc     $5438,x
        bpl     LF2B1
LF2B1:  
        bpl     LF2C4
LF2B4:  .byte   $7C
LF2B5:  bpl     LF2C7
        
        
        
        bpl     LF2CC
        .byte   $7C
LF2BD:  bpl     LF2CF
LF2BF:  
        
LF2C1:  
        
        
LF2C4:  
LF2C5:  bmi     LF2F7
LF2C7:  .byte   $20
        
LF2C9:  
        
        
LF2CC:  
        bmi     LF2FF
LF2CF:  jsr     L0000
        
        
        .byte   $7C
LF2D5:  
        
        
        
        
        
        
        .byte   $7C
LF2DD:  
        
        
        
        
        
        
        
        
        bmi     LF318
        
        
        
        
        
        
        bmi     LF320
        
        
        asl     $0C
        clc
        bmi     LF357
LF2F7:  .byte   $C0
LF2F8:  
        
        asl     $0C
        clc
        bmi     LF35F
LF2FF:  cpy     #$00
        .byte   $7C
        .byte   $C2
        dec     $CA
        .byte   $D2
        .byte   $E2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        dec     $CA
        .byte   $D2
        .byte   $E2
        .byte   $7C
        
        clc
        sec
        sei
        clc
        clc
        clc
        .byte   $7E
LF318:  
        clc
        sec
        sei
        clc
        clc
        clc
        .byte   $7E
LF320:  
        .byte   $7C
        dec     $06
        .byte   $1C
        sec
        rts

        inc     L7C00,x
        dec     $06
        .byte   $1C
        sec
        rts

        inc     L7C00,x
        stx     $06
        .byte   $1C
        asl     L0086
        .byte   $7C
        
        .byte   $7C
        stx     $06
        .byte   $1C
        asl     L0086
        .byte   $7C
        
        .byte   $0C
        .byte   $1C
        bit     LFE4C
        .byte   $0C
        .byte   $0C
        
        .byte   $0C
        .byte   $1C
        bit     LFE4C
        .byte   $0C
        .byte   $0C
        
        .byte   $FC
        cpy     #$C0
        .byte   $FC
        asl     L0086
LF357:  .byte   $7C
        
        .byte   $FC
        cpy     #$C0
        .byte   $FC
        asl     L0086
LF35F:  .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$FC
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$FC
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        inc     $0606,x
        .byte   $0C
        clc
        clc
        clc
        
        inc     $0606,x
        .byte   $0C
        clc
        clc
        clc
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        ror     L8202,x
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        ror     L8202,x
        .byte   $7C
        
        
        bmi     LF3D4
        
        bmi     LF3D7
        
        
        
        bmi     LF3DC
        
        bmi     LF3DF
        
        
        
        bmi     LF3E4
        
        bmi     LF3E7
        jsr     L0000
        bmi     LF3EC
        
        bmi     LF3EF
        jsr     L1800
        bmi     LF424
        inc     $3060,x
        clc
        
        clc
        bmi     LF42C
        inc     $3060,x
        clc
        
        
        
        .byte   $7C
LF3D4:  
        .byte   $7C
        
LF3D7:  
        
        
        
        .byte   $7C
LF3DC:  
        .byte   $7C
        
LF3DF:  
        
        bmi     LF3FB
        .byte   $0C
LF3E4:  inc     $180C,x
LF3E7:  bmi     LF3E9
LF3E9:  bmi     LF403
        .byte   $0C
LF3EC:  inc     $180C,x
LF3EF:  bmi     LF3F1
LF3F1:  sei
        cpy     $380C
        
        bmi     LF428
        
        sei
        .byte   $CC
LF3FB:  .byte   $0C
        sec
        
        bmi     LF430
        
        .byte   $7C
        .byte   $82
LF403:  tsx
        ldx     #$BA
        .byte   $82
        .byte   $7C
        
        .byte   $7C
        .byte   $82
        tsx
        ldx     #$BA
        .byte   $82
        .byte   $7C
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
LF424:  .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
LF428:  
        .byte   $FC
        .byte   $C2
        .byte   $C2
LF42C:  .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
LF430:  
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        inc     LC0C0,x
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        cpy     #$00
        inc     LC0C0,x
        sed
        cpy     #$C0
        cpy     #$00
        .byte   $7C
        .byte   $C2
        cpy     #$C6
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C6
        .byte   $C2
LF47E:  .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FE
        .byte   $C2
LF486:  .byte   $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        .byte   $C2
        
        ror     $1818,x
        clc
        clc
        clc
        ror     L7E00,x
        clc
        clc
        clc
        clc
        clc
        ror     $1E00,x
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        sty     a:$78
        asl     $0C0C,x
        .byte   $0C
        .byte   $0C
        sty     a:$78
        .byte   $C2
        cpy     $C8
        beq     LF47E
        cpy     $C2
        
        .byte   $C2
        cpy     $C8
        beq     LF486
        cpy     $C2
        
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        inc     LC000,x
        cpy     #$C0
        cpy     #$C0
        cpy     #$FE
        
        dec     $AA
        .byte   $92
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        dec     $AA
        .byte   $92
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $E2
        .byte   $D2
        dex
        dec     $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $E2
        .byte   $D2
        dex
        dec     $C2
        .byte   $C2
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        cpy     #$C0
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        cpy     #$C0
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        dex
        cpy     $7A
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        dex
        cpy     $7A
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $7C
        .byte   $C2
        cpy     #$7C
        .byte   $02
        .byte   $82
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$7C
        .byte   $02
        .byte   $82
        .byte   $7C
        
        ror     $1818,x
        clc
        clc
        clc
        clc
        
        ror     $1818,x
        clc
        clc
        clc
        clc
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        bpl     LF569
LF569:  .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        bpl     LF571
LF571:  .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        jmp     (LC200)

        .byte   $C2
        .byte   $C2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        jmp     (L8200)

        cpy     $68
        bmi     LF5BE
        jmp     L0086

        .byte   $82
        cpy     $68
        bmi     LF5C6
        jmp     L0086

        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        clc
        clc
        clc
        
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        clc
        clc
        clc
        
        inc     $180C,x
        bmi     LF606
        cpy     #$FE
        
        inc     $180C,x
        bmi     LF60E
        cpy     #$FE
        
        .byte   $3C
        bmi     LF5E4
        bmi     LF5E6
        bmi     LF5F4
        
        .byte   $3C
        bmi     LF5EC
        bmi     LF5EE
LF5BE:  bmi     LF5FC
        
        
        cpy     #$60
        bmi     LF5DE
LF5C6:  .byte   $0C
        asl     L0000
        
        cpy     #$60
        bmi     LF5E6
        .byte   $0C
        asl     L0000
        sei
        clc
        clc
        clc
        clc
        clc
        sei
        
        sei
        clc
        clc
        clc
        clc
LF5DE:  clc
        sei
        
        bpl     LF60B
        .byte   $44
LF5E4:  
        
LF5E6:  
        
        
        bpl     LF613
        .byte   $44
LF5EC:  
        
LF5EE:  
        
        
        
        
        
LF5F4:  
        
        
        inc     a:L0000,x
        
        
LF5FC:  
        
        
        inc     L1800,x
        php
        
        
        
LF606:  
        
        
        clc
        php
LF60B:  
        
        
LF60E:  
        
        
        sec
        .byte   $64
LF613:  .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        inc     LC0C0,x
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        cpy     #$00
        inc     LC0C0,x
        sed
        cpy     #$C0
        cpy     #$00
        .byte   $7C
        .byte   $C2
        cpy     #$C6
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C6
        .byte   $C2
LF67E:  .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FE
        .byte   $C2
LF686:  .byte   $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        .byte   $C2
        
        ror     $1818,x
        clc
        clc
        clc
        ror     L7E00,x
        clc
        clc
        clc
        clc
        clc
        ror     $1E00,x
        .byte   $0C
        .byte   $0C
        .byte   $0C
        .byte   $0C
        sty     a:$78
        asl     $0C0C,x
        .byte   $0C
        .byte   $0C
        sty     a:$78
        .byte   $C2
        cpy     $C8
        beq     LF67E
        cpy     $C2
        
        .byte   $C2
        cpy     $C8
        beq     LF686
        cpy     $C2
        
        cpy     #$C0
        cpy     #$C0
        cpy     #$C0
        inc     LC000,x
        cpy     #$C0
        cpy     #$C0
        cpy     #$FE
        
        dec     $AA
        .byte   $92
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        dec     $AA
        .byte   $92
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $E2
        .byte   $D2
        dex
        dec     $C2
        .byte   $C2
        
        .byte   $C2
        .byte   $E2
        .byte   $D2
        dex
        dec     $C2
        .byte   $C2
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        cpy     #$C0
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        cpy     #$C0
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        dex
        cpy     $7A
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $C2
        dex
        cpy     $7A
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        
        .byte   $7C
        .byte   $C2
        cpy     #$7C
        .byte   $02
        .byte   $82
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$7C
        .byte   $02
        .byte   $82
        .byte   $7C
        
        ror     $1818,x
        clc
        clc
        clc
        clc
        
        ror     $1818,x
        clc
        clc
        clc
        clc
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        bpl     LF769
LF769:  .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        bpl     LF771
LF771:  .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        jmp     (LC200)

        .byte   $C2
        .byte   $C2
        .byte   $D2
        .byte   $D2
        .byte   $D2
        jmp     (L8200)

        cpy     $68
        bmi     LF7BE
        jmp     L0086

        .byte   $82
        cpy     $68
        bmi     LF7C6
        jmp     L0086

        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        clc
        clc
        clc
        
        .byte   $C2
        .byte   $C2
        .byte   $64
        sec
        clc
        clc
        clc
        
        inc     $180C,x
        bmi     LF806
        cpy     #$FE
        
        inc     $180C,x
        bmi     LF80E
        cpy     #$FE
        
        bpl     LF7EB
        .byte   $7C
        dec     $92,x
        bpl     LF7C8
        
        bpl     LF7F3
        .byte   $7C
        dec     $92,x
LF7BE:  bpl     LF7D0
        
        
        cpy     #$60
        bmi     LF7DE
LF7C6:  .byte   $0C
        .byte   $06
LF7C8:  
        
        cpy     #$60
        bmi     LF7E6
        .byte   $0C
        .byte   $06
LF7D0:  
        bpl     LF7E3
        .byte   $92
        dec     $7C,x
        sec
        bpl     LF7D9
LF7D9:  bpl     LF7EB
        .byte   $92
        dec     $7C,x
LF7DE:  sec
        bpl     LF7E1
LF7E1:  .byte   $32
        .byte   $7E
LF7E3:  jmp     L0000

LF7E6:  
        
        
        .byte   $32
        .byte   $7E
LF7EB:  jmp     L0000

        
        
        
        
        .byte   $10
LF7F3:  plp
        .byte   $44
        .byte   $82
        inc     a:L0000,x
        
        bpl     LF824
        .byte   $44
        .byte   $82
        inc     a:L0000,x
        
        
        
        
        
LF806:  
        
        
        
        
        
        
        
LF80E:  
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        
        
        
        
        
        
        
        
        
        
        
        
LF824:  
        
        
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     L0000,x
        .byte   $7C
        .byte   $C2
        dec     $CA
        .byte   $D2
        .byte   $E2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        dec     $CA
        .byte   $D2
        .byte   $E2
        .byte   $7C
        
        clc
        sec
        sei
        clc
        clc
        clc
        ror     L1800,x
        sec
        sei
        clc
        clc
        clc
        ror     L7C00,x
        dec     $06
        .byte   $1C
        sec
        rts

        inc     L7C00,x
        dec     $06
        .byte   $1C
        sec
        rts

        inc     L7C00,x
        stx     $06
        .byte   $1C
        asl     L0086
        .byte   $7C
        
        .byte   $7C
        stx     $06
        .byte   $1C
        asl     L0086
        .byte   $7C
        
        .byte   $0C
        .byte   $1C
        bit     LFE4C
        .byte   $0C
        .byte   $0C
        
        .byte   $0C
        .byte   $1C
        bit     LFE4C
        .byte   $0C
        .byte   $0C
        
        .byte   $FC
        cpy     #$C0
        .byte   $FC
        asl     L0086
        .byte   $7C
        
        .byte   $FC
        cpy     #$C0
        .byte   $FC
        asl     L0086
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$FC
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$FC
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        inc     $0606,x
        .byte   $0C
        clc
        clc
        clc
        
        inc     $0606,x
        .byte   $0C
        clc
        clc
        clc
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        .byte   $C2
        .byte   $C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        ror     L8202,x
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        .byte   $C2
        ror     L8202,x
        .byte   $7C
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        sec
        .byte   $64
        .byte   $C2
        .byte   $C2
        inc     LC2C2,x
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $7C
        .byte   $C2
        cpy     #$C0
        cpy     #$C2
        .byte   $7C
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        .byte   $FC
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $C2
        .byte   $FC
        
        inc     LC0C0,x
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        inc     LFE00,x
        cpy     #$C0
        sed
        cpy     #$C0
        cpy     #$00
        inc     LC0C0,x
        sed
        cpy     #$C0
        cpy     #$3C
        ror     LFFFF,x
        .byte   $FF
        .byte   $FF
LFB06:  ror     a:$3C,x
        clc
        bit     $24
        .byte   $3C
        bit     $24
        
        .byte   $3C
        ror     LFFFF,x
        .byte   $FF
        .byte   $FF
        ror     a:$3C,x
        sec
        bit     $38
        bit     $24
        sec
        
        
        .byte   $1B
        .byte   $12
        .byte   $1B
        asl     a
        asl     a
        .byte   $1B
        
        .byte   $3F
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $3F
        
        eor     $4D49
        eor     #$49
        adc     LFF00
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        
        clv
        bpl     LFB54
        bpl     LFB56
        bcc     LFB48
LFB48:  .byte   $FC
        inc     LFFFF,x
        .byte   $FF
        .byte   $FF
        inc     a:$FC,x
        .byte   $1B
        ora     ($19),y
LFB54:  ora     #$09
LFB56:  ora     $3F00,y
        .byte   $7F
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $7F
        .byte   $3F
        
        .byte   $93
        rol     a
        .byte   $3B
        rol     a
        rol     a
        rol     a
        
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        .byte   $FF
        
        sec
        bcc     LFB84
        bcc     LFB06
        bcc     LFB78
LFB78:  .byte   $FC
        inc     LFFFF,x
        .byte   $FF
        .byte   $FF
        inc     a:$FC,x
        bpl     LFBBB
        .byte   $7C
LFB84:  dec     $92,x
        bpl     LFB98
        
        bpl     LFBC3
        .byte   $7C
        dec     $92,x
        bpl     LFBA0
        
        bpl     LFBA3
        .byte   $92
        dec     $7C,x
        sec
        .byte   $10
LFB98:  
        bpl     LFBAB
        .byte   $92
        dec     $7C,x
        sec
        .byte   $10
LFBA0:  
        clc
        .byte   $30
LFBA3:  rts

        inc     $3060,x
        clc
        
        clc
        .byte   $30
LFBAB:  rts

        inc     $3060,x
        clc
        
        bmi     LFBCB
        .byte   $0C
        inc     $180C,x
        bmi     LFBB9
LFBB9:  bmi     LFBD3
LFBBB:  .byte   $0C
        inc     $180C,x
        bmi     LFBC1
LFBC1:  .byte   $1C
        .byte   $0E
LFBC3:  .byte   $07
        asl     a:$1C
        
        
        .byte   $1C
        .byte   $1E
LFBCB:  .byte   $0F
        .byte   $0F
        asl     a:$1C,x
        eor     $AA,x
        .byte   $55
LFBD3:  tax
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        .byte   $55
LFE00:  eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        .byte   $55
LFE4C:  tax
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        .byte   $55
LFF00:  eor     $55,x
        eor     $55,x
        eor     $55,x
        eor     $55,x
        
        .byte   $FF
        
        .byte   $FF
        
        .byte   $FF
        
        .byte   $FF
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     $55,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        tax
        eor     $AA,x
        eor     $AA,x
        eor     $AA,x
        eor     L0000,x
        
        
        
        
        
        
        
        
        
        
        
        
        
        
LFFFF:  
