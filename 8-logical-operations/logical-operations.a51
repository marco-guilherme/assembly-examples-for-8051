; Autor: Marco Guilherme
; Ciclo de instrução: 1 µs
; Data: 26/02/2023
; MCU: AT89C51
; Frequência do clock: 12 MHz
; Exemplo de como realizar operações lógicas: AND, OR, NOT, XOR, XNOR, limpeza do acumulador, rotação para a esquerda e direita com e sem bit de carry e swap.

    org 0000h

start:
    mov A, #01010011b
	mov B, #00101001b

    ; AND
    anl A, B                                                                    ; A = A & B

    ; OR
	orl A, B                                                                    ; A = A | B

    ; NOT (complemento de 1)
    cpl A                                                                       ; A = ~A

    ; XOR (a saída só será 1 se houver uma quantidade ímpar de 1's nas entradas)
	XRL A, B                                                                    ; A = A ^ B

    mov A, #11101011b
	mov B, #00010101b

    ; XNOR (a saída só será 1 se houver uma quantidade par de 1's nas entradas)
	XRL A, B
	cpl A                                                                       ; ~(A ^ B)

    ; Limpa o acumulador
	clr A                                                                       ; A = 0x00
	
	orl A, #01h

    ; Rotação para a esquerda (não usa o bit de carry) -> multiplica por 2
    rl A                                                                        ; A = A << 1
	rl A
	rl A

    ; Rotação para a direita -> divide por 2
    rr A                                                                        ; A = A >> 1
	rr A
	rr A
	rr A

    mov A, #10101101b

    ; Rotação para a esquerda com o bit de carry
	rlc A

	; Rotação para a direta com o bit de carry
    rrc A

    ; Swap
    mov A, #0Fh
	swap A                                                                      ; Swap nos nibbles do acumulador
	swap A                                                                      ; Anula o swap

    ajmp $

    end
