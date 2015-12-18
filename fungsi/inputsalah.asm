in_salah:
	
	mov eax, is
    mov ebx, 1
    call printStr
	
	add edi, 1
	
	ret
	
in_salahh:
	
	mov eax, is
    mov ebx, 1
    call printStr
	
	add esi, 1
	
	ret
	
in_salah1:
	
	mov eax, is1
    mov ebx, 1
    call printStr
	
	add edi, 1
	
	ret
	
in_salah2:
	mov eax, is2
    mov ebx, 1
    call printStr
	
	add edi, 1
	
	ret
	
in_salah3:
	mov eax, is3
    mov ebx, 1
    call printStr
	
	add edi, 1
	
	ret
	
in_salah11:
	
	mov eax, is1
    mov ebx, 1
    call printStr
	
	add esi, 1
	
	ret
	
in_salah22:
	mov eax, is2
    mov ebx, 1
    call printStr
	
	add esi, 1
	
	ret
	
in_salah33:
	mov eax, is3
    mov ebx, 1
    call printStr
	
	add esi, 1
	
	ret
	
cmp_edi:
	cmp edi, 1
    je isl1
    
    cmp edi, 2
    je isl2
    
    cmp edi, 3
    je isl3
	
	ret

cmp_edi1:
	cmp edi, 1
    je isl4
    
    cmp edi, 2
    je isl5
    
    cmp edi, 3
    je isl6
	
	ret

cmp_edi2:
	cmp edi, 1
    je isl7
    
    cmp edi, 2
    je isl8
    
    cmp edi, 3
    je isl9
	
	ret

cmp_edi3:
	cmp edi, 1
    je isl10
    
    cmp edi, 2
    je isl11
    
    cmp edi, 3
    je isl12
	
	ret
	
cmp_edi4:
	cmp edi, 1
    je isl13
    
    cmp edi, 2
    je isl14
    
    cmp edi, 3
    je isl15
	
	ret

cmp_edi5:
	cmp esi, 1
    je isl16
    
    cmp esi, 2
    je isl17
    
    cmp esi, 3
    je isl18
	
	ret

cmp_edi6:
	cmp esi, 1
    je isl19
    
    cmp esi, 2
    je isl20
    
    cmp esi, 3
    je isl21
	
	ret
