; Autor: Marco Guilherme
; Ciclo de instrução: 1 µs
; Data: 05/01/2023
; MCU: AT89C51
; Frequência do clock: 12 MHz
; Alterna o nível lógico do port 0 entre alto e baixo

    org 0000h                                                                   ; Origem do programa no endereço 0x00

start:
    mov P0, #00h                                                                ; Nível lógico baixo no port 0
    mov P0, #0FFh                                                               ; Nível lógico alto no port 0

    jmp start																	; Salta para o endereço marcado pela label start

    end                                                                         ; Fim do programa
