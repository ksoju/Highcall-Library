; Hc/NtGdiDdUnlock
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdUnlock:DWORD

.DATA
.CODE

HcGdiDdUnlock PROC
	mov r10, rcx
	mov eax, sciGdiDdUnlock
	syscall
	ret
HcGdiDdUnlock ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdUnlock:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdUnlock PROC
	mov eax, sciGdiDdUnlock
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
HcGdiDdUnlock ENDP

ENDIF

END