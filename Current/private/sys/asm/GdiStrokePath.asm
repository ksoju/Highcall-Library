; Hc/NtGdiStrokePath
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiStrokePath:DWORD

.DATA
.CODE

HcGdiStrokePath PROC
	mov r10, rcx
	mov eax, sciGdiStrokePath
	syscall
	ret
HcGdiStrokePath ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiStrokePath:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiStrokePath PROC
	mov eax, sciGdiStrokePath
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcGdiStrokePath ENDP

ENDIF

END