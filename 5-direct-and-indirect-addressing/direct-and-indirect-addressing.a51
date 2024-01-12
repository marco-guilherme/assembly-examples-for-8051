; Autor: Marco Guilherme
; Ciclo de instrução: 1 µs
; Data: 11/01/2023
; MCU: AT89C51
; Frequência do clock: 12 MHz
; Exemplo de como utilizar o endereçamento direto e indireto.

    org 0000h                                                                   ; Origem do programa no endereço 0x00

start:
	; Endereçamento direto:
    mov 20h, #0BBh                                                              ; Copia o valor 0xBB para o endereço de memória 0x20 (endereço de exemplo da Direct Memory ou DRAM)
	mov 23h, 20h																; Copia o conteúdo do endereço 0x20 para o endereço 0x23
	mov A, P2																	; Lê o port 2 no acumulador
	add A, 23h																	; Soma o conteúdo do acumulador com o conteúdo do endereço 0x23 e escreve o resultado de volta no acumulador (overflow)

    ; Endereçamento indireto:
	mov 28h, #0BBh
	mov R1, #28h                                                                ; O registrador R1 atuará como um ponteiro para o endereço 0x28
	mov A, @R1                                                                  ; Copia o conteúdo do endereço apontado por R1 para o acumulador

    ajmp $                                                                     	; Segura o programa nesta linha

    end                                                                         ; Fim do programa
