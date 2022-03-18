kr16char:
	mov ah, 0x00
	int 0x16 ;save key into ax: ah-scan code al-ascii
	ret


;super fucking janky lol
;just fucking nopes out if the first letter is the same lol
cmp16char:
	;ax-char1
	;bx-char2
	cmp al,bl
	
	

