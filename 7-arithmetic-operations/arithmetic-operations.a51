; Autor: Marco Guilherme
; Ciclo de instrução: 1 µs
; Data: 23/02/2023
; MCU: AT89C51
; Frequência do clock: 12 MHz
; Exemplo de como realizar operações ariméticas com os GPRs.

    org 0000h

start:
    mov A, #0Ah
    mov B, #03h
    mov 23h, #06h
    mov 20h, #0Fh

    ; Soma
    add A, 23h                                                                  ; O acumulador recebe o conteúdo dele mesmo mais o conteúdo do endereço 0x23 (A = A + @0x23)
    inc A                                                                       ; A = A + 1
    dec B                                                                       ; B = B + 1

    ; Subtração
    subb A, 20h                                                                 ; A = A - @0x20

    ; Multiplicação
    mov A, #0Ch
    mov B, #08h
    mul AB                                                                      ; Multiplica A por B e atribui o MSB em B e o LSB em A

    ; Divisão
    mov A, #45h
    mov B, #07h
    div AB                                                                      ; Divide A por B e atribui o quociente em A e o resto em B

    ajmp $

    end
