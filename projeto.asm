RS      equ     P1.3    ;Reg Select ligado em P1.3
    EN      equ     P1.2    ;Enable ligado em P1.2


org 0000h
	LJMP START

org 0030h
START:
	MOV 50H, #0
	MOV 40H, #'#' 
	MOV 41H, #'0'
	MOV 42H, #'*'
	MOV 43H, #'9'
	MOV 44H, #'8'
	MOV 45H, #'7'
	MOV 46H, #'6'
	MOV 47H, #'5'
	MOV 48H, #'4'
	MOV 49H, #'3'
	MOV 4AH, #'2'
	MOV 4BH, #'1'	
	ACALL MAIN 
 
printDerrota0:
	MOV A, #44
	ACALL posicionaCursor
	MOV A, #' '
	ACALL sendCharacter
	MOV A, #'P'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'R'
	ACALL sendCharacter
	MOV A, #'D'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'U'
	ACALL sendCharacter
	SJMP $

ponte0:
	ACALL printDerrota0

MAIN:
	ACALL lcd_init
	ACALL printTitulo
	ACALL printSeq
ROTINA:
	ACALL leituraTeclado
	JNB F0, ROTINA
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'8', printDerrota0
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT2:
	ACALL leituraTeclado
	JNB F0, ROT2
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'3', printDerrota0
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT3:
	ACALL leituraTeclado
	JNB F0, ROT3
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'5', printDerrota0
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT4:
	ACALL leituraTeclado
	JNB F0, ROT4
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'9', printDerrota
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT5:
	ACALL leituraTeclado
	JNB F0, ROT5
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'1', printDerrota
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	MOV A, #44
	ACALL posicionaCursor
	MOV A, #'N'
	ACALL sendCharacter
	MOV A, #'I'
	ACALL sendCharacter
	MOV A, #'V'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'L'
	ACALL sendCharacter
	MOV A, #' '
	ACALL sendCharacter
	MOV A, #'2'
	ACALL sendCharacter
	ACALL nivel2
	JMP $

printDerrota:
	MOV A, #44
	ACALL posicionaCursor
	MOV A, #' '
	ACALL sendCharacter
	MOV A, #'P'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'R'
	ACALL sendCharacter
	MOV A, #'D'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'U'
	ACALL sendCharacter
	SJMP $


ponte:
	ACALL printDerrota

nivel2:
	ACALL printSeq2
	loop:
	ACALL leituraTeclado
	JNB F0, loop
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'3', printDerrota
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT6:
	ACALL leituraTeclado
	JNB F0, ROT6
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'7', printDerrota
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT7:
	ACALL leituraTeclado
	JNB F0, ROT7
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'9', printDerrota
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT8:
	ACALL leituraTeclado
	JNB F0, ROT8
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'2', ponte
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT9:
	ACALL leituraTeclado
	JNB F0, ROT9
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'5', ponte
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT10:
	ACALL leituraTeclado
	JNB F0, ROT10
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'4', printDerrota2
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT11:
	ACALL leituraTeclado
	JNB F0, ROT11
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'1', printDerrota2
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT12:
	ACALL leituraTeclado
	JNB F0, ROT12
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'0', printDerrota2
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT13:
	ACALL leituraTeclado
	JNB F0, ROT13
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'6', printDerrota2
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	ROT14:
	ACALL leituraTeclado
	JNB F0, ROT14
	MOV A, #40h
	ADD A, R0
	MOV R0, A
	MOV A, @R0
	CJNE A, #'8', printDerrota2
	SUBB A, #30h
	MOV 50H, A
	CLR F0
	ACALL delay
	
	MOV A, #44
	ACALL posicionaCursor
	MOV A, #' '
	ACALL sendCharacter
	MOV A, #'V'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'N'
	ACALL sendCharacter
	MOV A, #'C'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'U'
	ACALL sendCharacter
	RET

printDerrota2:
	MOV A, #44
	ACALL posicionaCursor
	MOV A, #' '
	ACALL sendCharacter
	MOV A, #'P'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'R'
	ACALL sendCharacter
	MOV A, #'D'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'U'
	ACALL sendCharacter
	SJMP $

printTitulo:	
	MOV A, #1
	ACALL posicionaCursor
	MOV A, #'J'
	ACALL sendCharacter
	MOV A, #'O'
	ACALL sendCharacter
	MOV A, #'G'
	ACALL sendCharacter
	MOV A, #'O'
	ACALL sendCharacter
	MOV A, #' '
	ACALL sendCharacter
	MOV A, #'D'
	ACALL sendCharacter
	MOV A, #'A'
	ACALL sendCharacter
	MOV A, #' '
	ACALL sendCharacter
	MOV A, #'M'
	ACALL sendCharacter
	MOV A, #'E'
	ACALL sendCharacter
	MOV A, #'M'
	ACALL sendCharacter
	MOV A, #'O'
	ACALL sendCharacter
	MOV A, #'R'
	ACALL sendCharacter
	MOV A, #'I'
	ACALL sendCharacter
	MOV A, #'A'
	ACALL sendCharacter
	RET

printSeq:
	ACALL PRINT8
	ACALL delay
	ACALL PRINT3
	ACALL delay
	ACALL PRINT5
	ACALL delay
	ACALL PRINT9
	ACALL delay
	ACALL PRINT1
	ACALL delay
	MOV P2, #0FFH
	RET

printSeq2:
	ACALL PRINT3
	ACALL delay
	ACALL PRINT7
	ACALL delay
	ACALL PRINT9
	ACALL delay
	ACALL PRINT2
	ACALL delay
	ACALL PRINT5
	ACALL delay
	ACALL PRINT4
	ACALL delay
	ACALL PRINT1
	ACALL delay
	ACALL PRINT0
	ACALL delay
	ACALL PRINT6
	ACALL delay
	ACALL PRINT8
	ACALL delay
	MOV P2, #0FFH
	RET

leituraTeclado:
	MOV R0, #0			; clear R0 - the first key is key0

	; scan row0
	MOV P0, #0FFh	
	CLR P0.0			; clear row0
	CALL colScan		; call column-scan subroutine
	JB F0, finish		; | if F0 is set, jump to end of program 
						; | (because the pressed key was found and its number is in  R0)
	; scan row1
	SETB P0.0			; set row0
	CLR P0.1			; clear row1
	CALL colScan		; call column-scan subroutine
	JB F0, finish		; | if F0 is set, jump to end of program 
						; | (because the pressed key was found and its number is in  R0)
	; scan row2
	SETB P0.1			; set row1
	CLR P0.2			; clear row2
	CALL colScan		; call column-scan subroutine
	JB F0, finish		; | if F0 is set, jump to end of program 
						; | (because the pressed key was found and its number is in  R0)
	; scan row3
	SETB P0.2			; set row2
	CLR P0.3			; clear row3
	CALL colScan		; call column-scan subroutine
	JB F0, finish		; | if F0 is set, jump to end of program 
						; | (because the pressed key was found and its number is in  R0)
finish:
	RET

; column-scan subroutine
colScan:
	JNB P0.4, gotKey	; if col0 is cleared - key found
	INC R0				; otherwise move to next key
	JNB P0.5, gotKey	; if col1 is cleared - key found
	INC R0				; otherwise move to next key
	JNB P0.6, gotKey	; if col2 is cleared - key found
	INC R0				; otherwise move to next key
	RET					; return from subroutine - key not found
gotKey:
	SETB F0				; key found - set F0
	RET					; and return from subroutine




; initialise the display
; see instruction set for details
lcd_init:

	CLR RS		; clear RS - indicates that instructions are being sent to the module

; function set	
	CLR P1.7		; |
	CLR P1.6		; |
	SETB P1.5		; |
	CLR P1.4		; | high nibble set

	SETB EN		; |
	CLR EN		; | negative edge on E

	CALL delay		; wait for BF to clear	
					; function set sent for first time - tells module to go into 4-bit mode
; Why is function set high nibble sent twice? See 4-bit operation on pages 39 and 42 of HD44780.pdf.

	SETB EN		; |
	CLR EN		; | negative edge on E
					; same function set high nibble sent a second time

	SETB P1.7		; low nibble set (only P1.7 needed to be changed)

	SETB EN		; |
	CLR EN		; | negative edge on E
				; function set low nibble sent
	CALL delay		; wait for BF to clear


; entry mode set
; set to increment with no shift
	CLR P1.7		; |
	CLR P1.6		; |
	CLR P1.5		; |
	CLR P1.4		; | high nibble set

	SETB EN		; |
	CLR EN		; | negative edge on E

	SETB P1.6		; |
	SETB P1.5		; |low nibble set

	SETB EN		; |
	CLR EN		; | negative edge on E

	CALL delay		; wait for BF to clear


; display on/off control
; the display is turned on, the cursor is turned on and blinking is turned on
	CLR P1.7		; |
	CLR P1.6		; |
	CLR P1.5		; |
	CLR P1.4		; | high nibble set

	SETB EN		; |
	CLR EN		; | negative edge on E

	SETB P1.7		; |
	SETB P1.6		; |
	SETB P1.5		; |
	SETB P1.4		; | low nibble set

	SETB EN		; |
	CLR EN		; | negative edge on E

	CALL delay		; wait for BF to clear
	RET


sendCharacter:
	SETB RS  		; setb RS - indicates that data is being sent to module
	MOV C, ACC.7		; |
	MOV P1.7, C			; |
	MOV C, ACC.6		; |
	MOV P1.6, C			; |
	MOV C, ACC.5		; |
	MOV P1.5, C			; |
	MOV C, ACC.4		; |
	MOV P1.4, C			; | high nibble set

	SETB EN			; |
	CLR EN			; | negative edge on E

	MOV C, ACC.3		; |
	MOV P1.7, C			; |
	MOV C, ACC.2		; |
	MOV P1.6, C			; |
	MOV C, ACC.1		; |
	MOV P1.5, C			; |
	MOV C, ACC.0		; |
	MOV P1.4, C			; | low nibble set

	SETB EN			; |
	CLR EN			; | negative edge on E

	CALL delay			; wait for BF to clear
	CALL delay			; wait for BF to clear
	RET

;Posiciona o cursor na linha e coluna desejada.
;Escreva no Acumulador o valor de endere o da linha e coluna.
;|--------------------------------------------------------------------------------------|
;|linha 1 | 00 | 01 | 02 | 03 | 04 |05 | 06 | 07 | 08 | 09 |0A | 0B | 0C | 0D | 0E | 0F |
;|linha 2 | 40 | 41 | 42 | 43 | 44 |45 | 46 | 47 | 48 | 49 |4A | 4B | 4C | 4D | 4E | 4F |
;|--------------------------------------------------------------------------------------|
posicionaCursor:
	CLR RS	
	SETB P1.7		    ; |
	MOV C, ACC.6		; |
	MOV P1.6, C			; |
	MOV C, ACC.5		; |
	MOV P1.5, C			; |
	MOV C, ACC.4		; |
	MOV P1.4, C			; | high nibble set

	SETB EN			; |
	CLR EN			; | negative edge on E

	MOV C, ACC.3		; |
	MOV P1.7, C			; |
	MOV C, ACC.2		; |
	MOV P1.6, C			; |
	MOV C, ACC.1		; |
	MOV P1.5, C			; |
	MOV C, ACC.0		; |
	MOV P1.4, C			; | low nibble set

	SETB EN			; |
	CLR EN			; | negative edge on E

	CALL delay			; wait for BF to clear
	CALL delay			; wait for BF to clear
	RET


;Retorna o cursor para primeira posi  o sem limpar o display
retornaCursor:
	CLR RS	
	CLR P1.7		; |
	CLR P1.6		; |
	CLR P1.5		; |
	CLR P1.4		; | high nibble set

	SETB EN		; |
	CLR EN		; | negative edge on E

	CLR P1.7		; |
	CLR P1.6		; |
	SETB P1.5		; |
	SETB P1.4		; | low nibble set

	SETB EN		; |
	CLR EN		; | negative edge on E

	CALL delay		; wait for BF to clear
	RET


;Limpa o display
clearDisplay:
	CLR RS	
	CLR P1.7		; |
	CLR P1.6		; |
	CLR P1.5		; |
	CLR P1.4		; | high nibble set

	SETB EN		; |
	CLR EN		; | negative edge on E

	CLR P1.7		; |
	CLR P1.6		; |
	CLR P1.5		; |
	SETB P1.4		; | low nibble set

	SETB EN		; |
	CLR EN		; | negative edge on E

	CALL delay		; wait for BF to clear
	RET


delay:
	MOV R7, #50
	DJNZ R7, $
	RET




PRINT0:
	MOV P2, #0
	SETB P2.6
	SETB P2.7 
	RET
PRINT1:
	SETB P2.0
	CLR P2.1
	SETB P2.3
	CLR P2.2
	SETB P2.4
	SETB P2.5
	SETB P2.6
	SETB P2.7
	RET
PRINT2:
	CLR P2.0
	CLR P2.1
	SETB P2.2
	CLR P2.3
	CLR P2.4
	SETB P2.5
	CLR P2.6
	SETB P2.7
	RET
PRINT3:
	CLR P2.0
	CLR P2.1
	CLR P2.2
	CLR P2.3
	SETB P2.4
	SETB P2.5
	CLR P2.6
	SETB P2.7
	RET
PRINT4:
	SETB P2.0
	CLR P2.1
	CLR P2.2
	SETB P2.3
	SETB P2.4
	CLR P2.5
	CLR P2.6
	SETB P2.7
	RET
PRINT5:
	CLR P2.0
	SETB P2.1
	CLR P2.2
	CLR P2.3
	SETB P2.4
	CLR P2.5
	CLR P2.6
	SETB P2.7
	RET
PRINT6:
	CLR P2.0
	SETB P2.1
	CLR P2.2
	CLR P2.3
	CLR P2.4
	CLR P2.5
	CLR P2.6
	SETB P2.7
	RET
PRINT7:
	CLR P2.0
	CLR P2.1
	CLR P2.2
	SETB P2.3
	SETB P2.4
	SETB P2.5
	SETB P2.6
	SETB P2.7
	RET

PRINT8:
	MOV P2, #0
	SETB P2.7
	RET

PRINT9:
	MOV P2, #0
	SETB P2.4
	SETB P2.7
	RET