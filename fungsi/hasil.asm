hasil:
	
	fld qword[karbhdrat]
	fstp qword[tmp]

	fld qword[result4]
    fld qword[tmp]
    fmul
    fstp qword[result5]
	
	fld qword[prtein]
	fstp qword[tmp]

	fld qword[result4]
    fld qword[tmp]
    fmul
    fstp qword[result6]
	
	fld qword[lmk]
	fstp qword[tmp]

	fld qword[result4]
    fld qword[tmp]
    fmul
    fstp qword[result7]
	
	mov eax, 4
	mov ebx, 1
	mov ecx, hn
	mov edx, hn_leng
	int 0x80
	
	mov eax, 4
	mov edx, leng
	mov ecx, isi_nama
	mov ebx, 1
	int 0x80
	
	mov eax, jenkel
    mov ebx, 1
    call printStr
    
	mov eax, [j]
	mov ebx, 1
	call printNum
	
	; mengubah 32 bit menjadi 64bit
    fld dword[no1]
    fstp qword[floatNum]
    
	push dword[floatNum+4]
	push dword[floatNum]
	push bba
	call printf
	add esp, 12

	fld dword[no2]
    fstp qword[floatNum]

	push dword[floatNum+4]
	push dword[floatNum]
	push tba
	call printf
	add esp, 12
	
	fld dword[no3]
    fstp qword[floatNum]
    
	push dword[floatNum+4]
	push dword[floatNum]
	push ua
	call printf
	add esp, 12
	
	push dword[result4+4]
    push dword[result4]
    push keb_kalori
    call printf
    add esp, 12
    
    push dword[result5+4]
    push dword[result5]
    push karbohidrat
    call printf
    add esp, 12
    
    push dword[result6+4]
    push dword[result6]
    push protein
    call printf
    add esp, 12
    
    push dword[result7+4]
    push dword[result7]
    push lemak
    call printf
    add esp, 12
    
    mov eax, 4
    mov ebx, 1
    mov ecx, penjelasan
    mov edx, pjl_leng
    int 0x80

ret
