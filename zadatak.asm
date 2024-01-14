.386
.model flat,c
public funkcija
.stack 4096
.code
funkcija proc
	push ebp
	mov ebp, esp
	push eax
	push ebx
	push ecx
	push esi
	push edi
	pushfd
	
	mov ecx, [ebp+8]	;broj elemenata
	mov esi, [ebp+12]	;adresa niza
	mov ebx, [ebp+16]	;x
	mov edx, [ebp+20]	;y
	mov eax, [ebp+24]	;z

petlja:
	mov edi, [esi]
	cmp edi, [ebx]
	jle nastavi

	cmp edi,[edx]
	jge nastavi
	
	mov edi, [eax]
	mov [esi],edi


	nastavi:
	add esi, 4
	loop petlja
	popfd
	pop edi
	pop esi
	pop ecx
	pop ebx
	pop eax
	pop ebp
ret

			
funkcija endp
end 
