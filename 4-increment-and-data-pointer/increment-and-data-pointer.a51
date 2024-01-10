; Autor: Marco Guilherme
; Ciclo de instrução: 1 µs
; Data: 09/01/2023
; MCU: AT89C51
; Frequência do clock: 12 MHz
; Exemplo de uso da instrução de incremento e de como carregar o registrador
; ponteiro de dados

    org 0000h                                                                   ; Origem do programa no endereço 0x00

start:
    mov A, #01h
    mov B, #00000110b
    mov A, #7d
    inc A                                                                       ; Incrementa o acumulador em 1 unidade
    mov DPTR, #9957h                                                            ; Move uma palavra de 16 bits para o registrador ponteiro de dados

    jmp $                                                                       ; Segura o programa nesta linha

    end                                                                         ; Fim do programa
