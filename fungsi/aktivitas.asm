p_aktivitas:
		
		mov eax,akt1
		mov ebx, 1
		call printStr
		
		mov eax,akt
		mov ebx, 1
		call printStr
		
		call scanNum
		mov dword [n], eax
		
		ret
