global imprime_data
extern printf
section .data

;void imprime_parametros( int a, double f, char* s );

msg:    db "Parametro int: %d. Parametro double: %f. Parametro string: %s", 0 ;Voy a mandar a printf el msg 
        
section .text 
    
    imprime_data:
    ;int a = edi (32 bits)
    ;double f = xmm0 (por que es float)
    ;char* s = rsi (por que el puntero es de 64)
    ;Estos quedan en esas posiciones de memoria por que es una funcion y el input esta ahí por convencion C
    
    
    ;printf("Parametro int: %d, %f, %s", a, f, s)
    ; msg -> rdi
    ; a -> esi
    ; f -> xmm0
    ; s -> rdx
    
    mov rcx, msg
    mov esi, edi; pongo en esi a
    ;mov xmm0, xmmm0 o sea, f ya estaba donde tenia que estar
    mov rdx, rsi; Pongo en rdx s
    mov rdi, rcx; Pongo en rdi el msg que lo guarde en rcx (era un puntero). Ahora puedo pisar rcx tranquilo despues
    
    call printf
    mov ebx, 0
    mov eax, 1
    int 0x80