; Hc/NtUserGetThreadDesktop
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetThreadDesktop:DWORD

.DATA
.CODE

HcUserGetThreadDesktop PROC
	mov r10, rcx
	mov eax, sciUserGetThreadDesktop
	syscall
	ret
HcUserGetThreadDesktop ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetThreadDesktop:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetThreadDesktop PROC
	mov eax, sciUserGetThreadDesktop
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
HcUserGetThreadDesktop ENDP

ENDIF

END