; Hc/NtDCompositionTelemetrySetApplicationId
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciDCompositionTelemetrySetApplicationId:DWORD

.DATA
.CODE

HcDCompositionTelemetrySetApplicationId PROC
	mov r10, rcx
	mov eax, sciDCompositionTelemetrySetApplicationId
	syscall
	ret
HcDCompositionTelemetrySetApplicationId ENDP

ELSE
; 32bit

EXTERNDEF C sciDCompositionTelemetrySetApplicationId:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcDCompositionTelemetrySetApplicationId PROC
	mov eax, sciDCompositionTelemetrySetApplicationId
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
HcDCompositionTelemetrySetApplicationId ENDP

ENDIF

END