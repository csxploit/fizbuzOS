.text
term:
	;print welcome msg
	;mov ax, wel
	;call pn16str
	
	;print mode msg
	;mov ax, mode16
	;call pn16str
	
	;mov bx, usivar
	;mov [bc], bx ;save adress in bc
	
	;jmp .loop
	call cmp16str
	
	jmp hlt
.loop:
	;print "->"
	;mov ax, prompt
	;call p16str
	
	;call .userinp;user input handler
	
	;mov ax, bc
	;call pn16str
	
	jmp .loop ; jump to loop
	jmp hlt ; if it dare returns jmp to halt 
.userinp:
	call kr16char; get key pressed
	
	call .store ; store that shit
	
	call p16char; 
	
	cmp al, 0x0D
	jne .userinp
	
	call nl
	
	ret
.store:
	;string 1
    mov [bx], al ;mov string adress into bx
	ret
