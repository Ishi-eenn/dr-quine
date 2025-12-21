; Only one comment

%define SYS_OPEN   2
%define SYS_CLOSE  3

%define O_WRONLY   1
%define O_CREAT    64
%define O_TRUNC    512
%define FLAGS      (O_WRONLY | O_CREAT | O_TRUNC)
%define MODE_644   420

global main
extern dprintf

section .rodata
output   db "Grace_kid.s", 0
code_str db "; Only one comment%1$c%1$c%%define SYS_OPEN   2%1$c%%define SYS_CLOSE  3%1$c%1$c%%define O_WRONLY   1%1$c%%define O_CREAT    64%1$c%%define O_TRUNC    512%1$c%%define FLAGS      (O_WRONLY | O_CREAT | O_TRUNC)%1$c%%define MODE_644   420%1$c%1$cglobal main%1$cextern dprintf%1$c%1$csection .rodata%1$coutput   db %2$cGrace_kid.s%2$c, 0%1$ccode_str db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cmain:%1$c  enter 0, 0%1$c  mov eax, SYS_OPEN%1$c  lea rdi, [rel output]%1$c  mov esi, FLAGS%1$c  mov edx, MODE_644%1$c  syscall%1$c  mov edi, eax%1$c  lea rsi, [rel code_str]%1$c  mov edx, 10%1$c  mov ecx, 34%1$c  lea r8,  [rel code_str]%1$c  xor eax, eax%1$c  call dprintf wrt ..plt%1$c  mov eax, SYS_CLOSE%1$c  syscall%1$c  leave%1$c  ret%1$c", 0

section .text
main:
  enter 0, 0
  mov eax, SYS_OPEN
  lea rdi, [rel output]
  mov esi, FLAGS
  mov edx, MODE_644
  syscall
  mov edi, eax
  lea rsi, [rel code_str]
  mov edx, 10
  mov ecx, 34
  lea r8,  [rel code_str]
  xor eax, eax
  call dprintf wrt ..plt
  mov eax, SYS_CLOSE
  syscall
  leave
  ret
