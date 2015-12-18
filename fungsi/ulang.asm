ulang_lagi:
	mov eax, 4
	mov ebx, 1
	mov ecx, ulang
	mov edx, ulang_leng
	int 0x80
	
	mov eax, 3
	mov ebx, 1
	mov ecx, ulg
	mov edx, 2
	int 0x80
	
	cmp byte[ulg], 121
	je nma
	cmp byte[ulg], 110
	je exit 

ret
