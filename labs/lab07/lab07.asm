%include 'in_out.asm'

SECTION .data
msg1: DB 'Сообщение No 1',0
msg2: DB 'Сообщение No 2',0
msg3: DB 'Сообщение No 3',0

SECTION .text

GLOBAL _start
_srart:
jmp _label2

_label1:
mov eax,msg1
sprintLF

_label2:
mov eax,msg2
sprintLF

_label3:
mov eax,msg3
sprintLF

_end:
call quit
