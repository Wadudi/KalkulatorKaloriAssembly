input:

	mov eax, bb
	mov ebx, 1
	call printStr
	
	push no1
    push format
    call scanf
    add esp, 8
    
    ;mov eax,[no1]
    ;cmp byte[no1], 65
    ;je exit
    
    mov eax, tb
	mov ebx, 1
	call printStr
	
	push no2
    push format
    call scanf
    add esp, 8
	;call scanNum
	;mov dword [no2], eax
    
    mov eax, um
	mov ebx, 1
	call printStr
	
	push no3
    push format
    call scanf
    add esp, 8
	;call scanNum
	;mov dword [no3], eax
    
   ret
