; Hc/NtUserShowScrollBar
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserShowScrollBar:DWORD

.DATA
.CODE

HcUserShowScrollBar PROC
	mov r10, rcx
	mov eax, sciUserShowScrollBar
	syscall
	ret
HcUserShowScrollBar ENDP

ELSE
; 32bit

EXTERNDEF C sciUserShowScrollBar:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserShowScrollBar PROC
	mov eax, sciUserShowScrollBar
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
HcUserShowScrollBar ENDP

ENDIF

END