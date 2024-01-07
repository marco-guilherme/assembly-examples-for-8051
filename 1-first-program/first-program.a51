; Autor: Marco Guilherme
; Ciclo de instrução: 1 µs
; Data: 25/12/2023
; MCU: AT89C51
; Frequência do clock: 12 MHz
; Copia algumas constantes para alguns registradores

    org 0000h                                                                   ; Origem do programa no endereço 0x00

start:
    mov A, #0FFh                                                                ; Copia a constante literal 0xFF para o registrador acumulador
    mov A, #00h                                                                 ; Zera o acumulador
    mov R0, #55h
    mov B, #0AAh

    jmp $                                                                       ; Segura o programa nesta linha

    end                                                                         ; Fim do programa
