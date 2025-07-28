.segment "HEADER"
  ; .byte "NES", $1A      ; iNES header identifier
  .byte $4E, $45, $53, $1A
  .byte 2               ; 2x 16KB PRG code
  .byte 1               ; 1x  8KB CHR data
  .byte $01, $00        ; mapper 0, vertical mirroring

.segment "VECTORS"
  ;; When an NMI happens (once per frame if enabled) the label nmi:
  ;; .addr nmi
  ;; When the processor first turns on or is reset, it will jump to the label reset:
  ;; .addr reset
  ;; External interrupt IRQ (unused)
  .addr 0

; "nes" linker config requires a STARTUP section, even if it's empty
.segment "STARTUP"

; Main code segment for the program
.segment "CODE"

main:

  ; lda #$80 
  ; lda $81 
  ; lda $82,x   
  ; lda $1234
  ; lda $1234,x
  ; lda $1234,y
  ; lda ($80,x)
  ; lda ($80),y
  ; asl
pinto:
  stx $1234
  stx $1235
  stx $1236
  stx $1237
  stx $1238
 


  ; asl #$80
  ; lsr $1234,x
  ; rol $80,x
  ; ror $1234,x
  ; bcc pinto
  jsr $1237
  
  ; rol 
  ; lsr
  ; ror
  ; stx
  ; ldx
  ; dec
  ; inc
