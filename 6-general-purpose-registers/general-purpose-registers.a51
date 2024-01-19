; Autor: Marco Guilherme
; Ciclo de instrução: 1 µs
; Data: 18/01/2023
; MCU: AT89C51
; Frequência do clock: 12 MHz
; Exemplo de como utilizar os registradores de uso geral do 8051.

    org 0000h                                                                   ; Origem do programa no endereço 0x00

start:
	mov R1, #0Fh
	mov A, R1
	mov R5, A
	inc R5
	inc R5
	inc R5

    ajmp $                                                                     	; Segura o programa nesta linha

    end                                                                         ; Fim do programa
