bmr_l_bennedict:
	fld qword[weightBL]
	fstp qword[tmp]

	fld dword[no1]
    fld qword[tmp]
    fmul
    fstp qword[result]
	;mov ebx, result
	
	fld qword[heightBL]
	fstp qword[tmp]

	fld dword[no2]
    fld qword[tmp]
    fmul
    fstp qword[result1]
	;mov eax,result1
	
	fld qword[ageBL]
	fstp qword[tmp]
	
	fld dword[no3]
	fld qword[tmp]
	fmul
	fstp qword[result2]
	
	fld qword[result]
	fld qword[result1]
	fadd
    fstp qword[result3]
	
	fld qword[result3]
	fld qword[result2]
	fsub
    fstp qword[result4]
	
	fld qword[rmbl]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fadd
	fstp qword[result4]
	
    push dword[result4+4]
    push dword[result4]
    push mbr
    call printf
    add esp, 12
	
	mov eax, 4
    mov ebx, 1
    mov ecx, z
    mov edx, z_leng
    int 0x80
    
ret

