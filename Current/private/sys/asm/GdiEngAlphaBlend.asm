; Hc/NtGdiEngAlphaBlend
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiEngAlphaBlend:DWORD

.DATA
.CODE

HcGdiEngAlphaBlend PROC
	mov r10, rcx
	mov eax, sciGdiEngAlphaBlend
	syscall
	ret
HcGdiEngAlphaBlend ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiEngAlphaBlend:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiEngAlphaBlend PROC
	mov eax, sciGdiEngAlphaBlend
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
HcGdiEngAlphaBlend ENDP

ENDIF

END