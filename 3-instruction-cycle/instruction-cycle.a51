; Autor: Marco Guilherme
; Ciclo de instrução: 1 µs
; Data: 07/01/2023
; MCU: AT89C51
; Frequência do clock: 12 MHz
; Alterna o nível lógico do port 2 entre alto e baixo para verificar quantos
; ciclos de máquina cada instrução precisa para ser executada

    org 0000h                                                                   ; Origem do programa no endereço 0x00

start:
    mov A, #01h
	mov P2, #00h
	mov P2, #0FFh
	mov A, #02h

    jmp start																	; Salta para o endereço marcado pela label start

    end                                                                         ; Fim do programa
