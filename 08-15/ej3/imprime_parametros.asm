global imprime_data
extern printf
section .data

;void imprime_parametros( int a, double f, char* s );

msg:    db "Parametro int: %d. Parametro double: %2.9f. Parametro string: %s.",10, 0;Voy a mandar a printf el msg 
        
section .text 
    
    imprime_data:
    ;int a = di (16 bits)
    ;double f = xmm0 (por que es float)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    ;char* s = rsi (por que el puntero es de 64)
    ;Estos quedan en esas posiciones de memoria por que es una funcion y el input esta ahí por convencion C
    
    
    ;printf("Parametro int: %d, %f, %s", a, f, s)
    ; msg -> rdi
    ; a: di -> si
    ; f -> xmm0
    ; s: rsi -> rdx
    
    mov rcx, msg
    mov rdx, rsi; Pongo en rdx s
    mov esi, edi; pongo en esi a
    ;mov xmm0, xmmm0 o sea, f ya estaba donde tenia que estar
    mov rdi, rcx; Pongo en rdi el msg que lo guarde en rcx (era un puntero). Ahora puedo pisar rcx tranquilo despues
    
    sub rsp, 8; Esto es para que la pila quede alineada a 16 cuando llame a la funcion printf de C.
    call printf; Por que si no, cuando ejecute printf lo haria con la pila desalineada en 16 y se romperia todo
    add rsp, 8; Recupero el lugar que use para alinear al pila
    ret