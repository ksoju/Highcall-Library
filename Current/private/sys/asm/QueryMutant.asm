; Hc/NtQueryMutant
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciQueryMutant:DWORD

.DATA
.CODE

HcQueryMutant PROC
	mov r10, rcx
	mov eax, sciQueryMutant
	syscall
	ret
HcQueryMutant ENDP

ELSE
; 32bit

EXTERNDEF C sciQueryMutant:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcQueryMutant PROC
	mov eax, sciQueryMutant
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
HcQueryMutant ENDP

ENDIF

END