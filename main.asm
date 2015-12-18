; fungsi untuk clear screen
%include    'fungsi/clrScr.asm'

; fungsi untuk print string
%include    'fungsi/printString.asm'

; fungsi untuk scan number
%include    'fungsi/scanNum.asm'

; fungsi untuk print number
%include    'fungsi/printNum.asm'
%include 'fungsi/importfile.asm'
%include 'fungsi/inputan.asm'
%include 'fungsi/aktivitas.asm'
%include 'fungsi/acNum1.asm'
%include 'fungsi/acNum2.asm'
%include 'fungsi/acNum3.asm'
%include 'fungsi/acNum4.asm'
%include 'fungsi/hasil.asm'
%include 'fungsi/inputsalah.asm'
%include 'fungsi/cmp_aktivitas.asm'
%include 'fungsi/ulang.asm'

; menggunakan fungsi dari bahasa C
extern printf
extern scanf


section .data
		file db 'file.txt',0
		
		init    db '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',0xa
				db '~~~~~~~~~~ Program Kalkulator Kalori ~~~~~~~~',0xa
                db '~~ Menghitung Kebutuhan Kalori Sehari-hari ~~',0xa
                db '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',0xa,0
        ;lop		dd '-Ingin Mencoba Berapa Kali :',0 
              
        nama    db '-Masukkan Nama Anda : ', 0
        
        pjk     db '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',0xa
				db '~~~Jenis Kelamin : 1. Laki-Laki~~~', 0xa
                db '~~~		   2. Perempuan~~~', 0xa
                db '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',0xa, 0
                
        jk      db '-Pilih Jenis Kelamin (1/2) : ', 0
        satu 	db 0xa,"-- Jenis Kelamin : Laki-Laki --",0xa, 0
        dua 	db 0xa,"-- Jenis Kelamin : Perempuan --",0xa, 0
        bb 		db '-Masukkan Berat Badan (kg) : ',0
        tb		db '-Masukkan Tinggi Badan (cm) : ',0
        um		db '-Masukkan Umur Anda (tahun) : ',0       
		fo      db ' Formula : 1. Mifflin-St Jeor', 0xa
				db '	   2. Harris-Benedict', 0xa, 0
		formula	db '-Pilih Formula (1/2): ',0
		fm	 	db 0xa,'---- Formula Mifflin-St Jeor ----',0xa,0xa,0
		fb		db 0xa,'----Formula Harris-Bennedict----',0xa,0
		akt1	db "------------------------Aktivitas Sehari-hari--------------------------------",0xa	
				db "- 1. Sangat jarang berolahraga, sehari-hari bekerja dibelakang meja		-",0xa
				db "- 2. Jarang berolahraga , 1-3 hari dalam seminggu						-",0xa
				db "- 3. Cukup sering berolahraga, 3-5 hari dalam seminggu					-",0xa
				db "- 4. Sering berolahraga, 6-7 hari dalam seminggu						-",0xa
				db "- 5. Sangat sering/seharian berolahraga (marathon),sehari-hari bekerja fisik-",0xa
				db "-----------------------------------------------------------------------------",0xa,0
		akt		db 'Pilih Aktivitas (1/2/3/4/5) : ',0
		mbr 	db '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',0xa
				db '~~ Hasil BMR 	  : %.3f  ~~',0xa ,0
		z		db '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',0xa
				db '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',0xa,0
		z_leng equ $-z
		
				;db 'Ini Adalah Total Kalori yang Anda Butuhkan Untuk Menjaga Berat Badan Anda',0xa	
		
		;hasil
		
		
		
		 
		
		; format input dari scanf
		format      db      '%f', 0
		
		hn		db '~~ Nama anda 	  	: ',0
		hn_leng equ $-hn
		jenkel	db '~~ Jenis Kelamin 	: ',0
		bba		db 0xa,'~~ Berat Badan Anda  	: %.0f					~~',0xa, 0
		tba		db '~~ Tinggi Badan Anda 	: %.0f					~~',0xa, 0
		ua		db '~~ Umur Anda 	  	: %.0f					~~',0xa, 0
		;aktv	db 'Aktivitas Sehari-hari	: ',0xa,0
		keb_kalori db '~~ Kebutuhan Kalori Perhari Anda :   %.3f			~~', 0xa, 0
		karbohidrat db '~~ Karbohidrat (55%) 	: %.3f				~~', 0xa,0
		protein		db '~~ Protein (15%) 	: %.3f				~~', 0xa,0
		lemak		db '~~ Lemak (30%) 		: %.3f				~~', 0xa,0
		penjelasan  db '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~', 0xa, 0
					db '~~ Catatan: Hasil Yang ditampilkan adalah kebutuhan Kalori	~~', 0xa, 0 
					db '~~	 untuk menyeimbangkan berat badan anda sekarang		~~', 0xa, 0
					db '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~', 0xa, 0
		pjl_leng equ $-penjelasan
		
		ulang db 'Apakah Ingin Mencoba Perhitungan Lagi(y/n) :', 0
		ulang_leng equ $-ulang
		is		db 'Input Yang Anda Masukkan Salah (3x Perulangan)',0xa,0
		is1		db 'Input Yang Anda Masukkan Salah (2x Perulangan)',0xa,0
		is2		db 'Input Yang Anda Masukkan Salah (1x Perulangan)',0xa,0
		is3		db 'Program Keluar',0xa,0
		
		;nilai presentase
		karbhdrat		dq		0.55
		prtein			dq		0.15
		lmk				dq		0.30
		;nilai aktivitas
		aktivitas1		dq		1.2
		aktivitas2		dq		1.375
		aktivitas3		dq		1.55
		aktivitas4		dq		1.725
		aktivitas5		dq		1.9
		
		;nilai rumus mifflin
		weight		dq 		10.0
		height		dq 		6.25
		age			dq		5.0
		s			dq		161.0
		
		;nilai rumus bennedict
		rmbl		dq		66.47
		rmbp		dq		655.1
		weightBL	dq		13.75
		heightBL	dq		5.003
		ageBL		dq		6.75
		weightBP	dq		9.56
		heightBP	dq		1.84
		ageBP		dq		4.67
		
	leng equ 1000	
	
	;variabel untuk input salah
	vloop	dd 	4
	vloop1	dd	65
		
    ; untuk clear screen
    clr_scr     db      27, '[H', 27, '[2J', 0
    len_clr_scr equ     $-clr_scr

	
section .bss
	; variabel sementara
    no1  resd    4
    no2  resd    4
    no3  resd	 4
	tmp  resq 	 1
	;vloop resd	 4	
	
	;variabel perbandingan
    n 	resd 	1
    j	resd 	1
    
    fdout resd 1
    
    ; variabel untuk menyimpan data yang akan di print
    floatNum    resq    4
    
    ; variabel menyimpan perhitungan
    result  resd    4
    result1 resd	4
    result2 resd	4
    result3 resd 	4
    result4 resd	4
	result5 resd	4
	result6 resd	4
	result7 resd	4
	result8 resd	4
	
	isi_nama resq leng
	ulg		resb	2
	
section .text
global main

main:
	; clear screen
    call clrScr
	
    ; print inisiasi
    push init
    call printf
    add esp, 4

nma:	
	mov eax, nama
    mov ebx, 1
    call printStr
	
	;scan nama, simpan di variabel isi_nama
	mov eax, 3
    mov ebx, 1
    mov ecx, isi_nama
    mov edx, leng
    int 0x80
    
    ;print inisiasi jk  
    push pjk
    call printf
    add esp, 4
   
	mov edi, 0
	
	
pilih_jk:
	cmp edi,[vloop]
	je exit

	mov eax, jk
    mov ebx, 1
    call printStr	
    
    ; scan jk
    call scanNum
    mov dword [j], eax
    mov ebx, 1
    mov eax, 2
    
    ;cmp jk (laki-laki/perempuan)
    cmp ebx, [j]
    je laki
    cmp eax, [j]
    je perempuan
    
    ; cmp jika inputan salah
    call cmp_edi
	call in_salah
	jmp pilih_jk
	
isl1:
	call in_salah1 
	jmp pilih_jk
	
isl2:
	call in_salah2 
	jmp pilih_jk
		
isl3:
	call in_salah3
	jmp pilih_jk
	
;label perhitungan laki-laki	
laki:
	mov eax, satu
	mov ebx, 1
	call printStr
	
	;scan bb,tb,u,
	call input
	mov esi, 0
frmla:
    cmp esi,[vloop]
	je exit
    
    mov eax, fo
	mov ebx, 1
	call printStr
	
	mov eax, formula
	mov ebx, 1
	call printStr
	
	
    call scanNum
    mov dword [n], eax
	
	mov ebx, 1
    mov edx, 2
    
    ; cmp formula
    cmp ebx, [n]
    je f_laki_mifflin
    cmp edx, [n]
    je f_laki_bennedict
    
    call cmp_edi5
	call in_salahh
	jmp frmla
	
isl16:
	call in_salah11 
	jmp frmla
	
isl17:
	call in_salah22 
	jmp frmla
		
isl18:
	call in_salah33
	jmp frmla
    
    mov edi, 0
;label formula mifflin_l
f_laki_mifflin:
		cmp edi,[vloop]
		je exit
		
		mov eax,fm
		mov ebx, 1
		call printStr
		
		call p_aktivitas
		
		call cmp_aktv
		


;label aktivitas1		
ac1:
	call bmr_l_mifflin
	
	fld qword[aktivitas1]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit
;label aktvitas2	
ac2:
	call bmr_l_mifflin
	
	fld qword[aktivitas2]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit

;label aktvitas3	
ac3:
	call bmr_l_mifflin
	
	fld qword[aktivitas3]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit

;label aktvitas4	
ac4:
	call bmr_l_mifflin
	
	fld qword[aktivitas4]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit
	
;label aktvitas5
ac5:
	call bmr_l_mifflin
	
	fld qword[aktivitas5]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit

;label formula bennedict_l
f_laki_bennedict:
		cmp edi,[vloop]
		je exit
		
		mov eax,fb
		mov ebx, 1
		call printStr
		
		call p_aktivitas
		call cmp_aktv1

;label aktvitas1
acb1:
	call bmr_l_bennedict
	
	fld qword[aktivitas1]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit
	
;label aktvitas2
acb2:
	call bmr_l_bennedict
	
	fld qword[aktivitas2]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit

;label aktvitas3
acb3:
	call bmr_l_bennedict
	
	fld qword[aktivitas3]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit

;label aktvitas4
acb4:
	call bmr_l_bennedict
	
	fld qword[aktivitas4]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit

;label aktvitas5
acb5:	
	call bmr_l_bennedict
	
	fld qword[aktivitas5]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit
	
;label perempuan
perempuan:
	mov eax, dua
	mov ebx, 1
	call printStr
	
	call input
	
	mov esi, 0
frmlaa:
    cmp esi,[vloop]
	je exit
    
    mov eax, fo
	mov ebx, 1
	call printStr
	
	mov eax, formula
	mov ebx, 1
	call printStr
	
	
    call scanNum
    mov dword [n], eax
	
	mov ebx, 1
    mov ecx, 2
    
    ;cmp formula
    cmp ebx, [n]
    je f_perempuan_mifflin
    cmp ecx, [n]
    je f_perempuan_bennedict
	
	call cmp_edi6
	call in_salahh
	jmp frmlaa
	
isl19:
	call in_salah11 
	jmp frmlaa
	
isl20:
	call in_salah22 
	jmp frmlaa
		
isl21:
	call in_salah33
	jmp frmlaa
	
	mov edi,0
f_perempuan_mifflin:
		cmp edi,[vloop]
		je exit
		
		mov eax,fm
		mov ebx, 1
		call printStr
		
		call p_aktivitas
		
		call cmp_aktv2

acmp1:
	call bmr_p_mifflin
	
	fld qword[aktivitas1]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit
	
acmp2:
	call bmr_p_mifflin
	
	fld qword[aktivitas2]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit
	
acmp3:
	call bmr_p_mifflin
	
	fld qword[aktivitas3]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit
	
acmp4:
	call bmr_p_mifflin
	
	fld qword[aktivitas4]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit
	
acmp5:
	call bmr_p_mifflin
	
	fld qword[aktivitas5]
	fstp qword[tmp]
	
	fld qword[result4]
	fld qword[tmp]
	fmul
	fstp qword[result4]
	
	call hasil
	call ulang_lagi
	jmp exit
	
f_perempuan_bennedict:
		cmp edi,[vloop]
		je exit
		
		mov eax,fb
		mov ebx, 1
		call printStr
		
		call p_aktivitas
		call cmp_aktv3
		
acbp1:
		call bmr_p_bennedict
		
		fld qword[aktivitas1]
		fstp qword[tmp]
		
		fld qword[result4]
		fld qword[tmp]
		fmul
		fstp qword[result4] 
		
		call hasil
		call ulang_lagi
		jmp exit
		
acbp2:	
		call bmr_p_bennedict
		
		fld qword[aktivitas2]
		fstp qword[tmp]
		
		fld qword[result4]
		fld qword[tmp]
		fmul
		fstp qword[result4] 
		
		call hasil
		call ulang_lagi
		jmp exit
		
acbp3:
		call bmr_p_bennedict
		
		fld qword[aktivitas3]
		fstp qword[tmp]
		
		fld qword[result4]
		fld qword[tmp]
		fmul
		fstp qword[result4] 
		
		call hasil
		call ulang_lagi
		jmp exit
		
acbp4:
		call bmr_p_bennedict
		
		fld qword[aktivitas4]
		fstp qword[tmp]
		
		fld qword[result4]
		fld qword[tmp]
		fmul
		fstp qword[result4] 
		
		call hasil
		call ulang_lagi
		jmp exit
		
acbp5:
		call bmr_p_bennedict
		
		fld qword[aktivitas5]
		fstp qword[tmp]
		
		fld qword[result4]
		fld qword[tmp]
		fmul
		fstp qword[result4] 
		
		call hasil
		call ulang_lagi
		jmp exit


exit:
	mov eax,1
	mov ebx,0
	int 0x80

