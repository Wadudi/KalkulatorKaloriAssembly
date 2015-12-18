cmp_aktv:
		mov esi, 1
		mov eax, 2
		mov ebx, 3
		mov ecx, 4
		mov edx, 5
		
		cmp esi, [n]
		je ac1
		cmp eax, [n]
		je ac2
		cmp ebx, [n]
		je ac3
		cmp ecx, [n]
		je ac4
		cmp edx, [n]
		je ac5
		
	call cmp_edi1
	call in_salah
	jmp f_laki_mifflin
	
isl4:
	call in_salah1 
	jmp f_laki_mifflin
	
isl5:
	call in_salah2 
	jmp f_laki_mifflin
		
isl6:
	call in_salah3
	jmp f_laki_mifflin
			
		ret
		
cmp_aktv1:
		mov esi, 1
		mov eax, 2
		mov ebx, 3
		mov ecx, 4
		mov edx, 5
		
		cmp esi, [n]
		je acb1
		cmp eax, [n]
		je acb2
		cmp ebx, [n]
		je acb3
		cmp ecx, [n]
		je acb4
		cmp edx, [n]
		je acb5
		
	call cmp_edi2
	call in_salah
	jmp f_laki_bennedict
	
isl7:
	call in_salah1 
	jmp f_laki_bennedict
	
isl8:
	call in_salah2 
	jmp f_laki_bennedict
		
isl9:
	call in_salah3
	jmp f_laki_bennedict
		ret
		
cmp_aktv2:
		mov esi, 1
		mov eax, 2
		mov ebx, 3
		mov ecx, 4
		mov edx, 5
		
		cmp esi, [n]
		je acmp1
		cmp eax, [n]
		je acmp2
		cmp ebx, [n]
		je acmp3
		cmp ecx, [n]
		je acmp4
		cmp edx, [n]
		je acmp5
		
	call cmp_edi3
	call in_salah
	jmp f_perempuan_mifflin
	
isl10:
	call in_salah1 
	jmp f_perempuan_mifflin
	
isl11:
	call in_salah2 
	jmp f_perempuan_mifflin
		
isl12:
	call in_salah3
	jmp f_perempuan_mifflin
	
		ret

cmp_aktv3:
		mov esi, 1
		mov eax, 2
		mov ebx, 3
		mov ecx, 4
		mov edx, 5
		
		cmp esi, [n]
		je acbp1
		cmp eax, [n]
		je acbp2
		cmp ebx, [n]
		je acbp3
		cmp ecx, [n]
		je acbp4
		cmp edx, [n]
		je acbp5
		
	call cmp_edi4
	call in_salah
	jmp f_perempuan_bennedict
	
isl13:
	call in_salah1 
	jmp f_perempuan_bennedict
	
isl14:
	call in_salah2 
	jmp f_perempuan_bennedict
		
isl15:
	call in_salah3
	jmp f_perempuan_bennedict
	
		ret
