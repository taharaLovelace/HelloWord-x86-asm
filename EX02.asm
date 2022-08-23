.MODEL SMALL

.DATA
    STRI DB '5','0','?????'
         DB '$'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV AH,0AH                  ;FUN??O PARA LER STRING
    MOV DX, OFFSET STRI         ;GUARDA O ENDERE?O DA STRING
    INT 21H
    
    MOV AH,02
    MOV DL,10                   ;PULAR LINHA
    INT 21H
    
    MOV AH,09                   ;FUN??O PARA IMPRIMIR STRING
    MOV DX, OFFSET STRI
    ADD DX,02                   ;ADICIONAR DOIS PARA EVITAR DE IMPRIMIR LIXO
    INT 21H
    
    MOV AH,4CH                  ;ENCERRA O PROGRAMA
    INT 21H
    
    main endp
    END MAIN