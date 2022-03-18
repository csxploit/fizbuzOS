hltmsg: db "system halting", 0 
prompt: db "->", 0
prompt2: db "system halting3",0
wel: db "Welcome to a bad os", 0
mode16: db "You are currently in 16 bit mode", 0xa, 0xd, "Type help to get a list of commands", 0


;who needs 32 bit mode when you have this janky shit.
tax: db 0
tbx: db 0

ac: db 0
bc: db 0

zf: db 'm'

cf: db 0



usicont: db 0
c1: db 'test', 0

usivar: times 30 db 0 
