; Only one comment

%define NL 10
%define DQ 34
%define OUTFILE "Grace_kid.s"

global main
extern dprintf

section .rodata
output   db OUTFILE, 0
s db "; Only one comment%1$c%1$c%%define NL 10%1$c%%define DQ 34%1$c%%define OUTFILE %2$cGrace_kid.s%2$c%1$c%1$cglobal main%1$cextern dprintf%1$c%1$csection .rodata%1$coutput   db OUTFILE, 0%1$cs db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cmain:%1$c  push rbx%1$c  mov eax, 2%1$c  lea rdi, [rel output]%1$c  mov esi, 577%1$c  mov edx, 420%1$c  syscall%1$c  mov ebx, eax%1$c  mov edi, eax%1$c  lea rsi, [rel s]%1$c  mov edx, NL%1$c  mov ecx, DQ%1$c  lea r8,  [rel s]%1$c  xor eax, eax%1$c  call dprintf wrt ..plt%1$c  mov eax, 3%1$c  mov edi, ebx%1$c  syscall%1$c  pop rbx%1$c  xor eax, eax%1$c  ret%1$c", 0

section .text
main:
  push rbx
  mov eax, 2
  lea rdi, [rel output]
  mov esi, 577
  mov edx, 420
  syscall
  mov ebx, eax
  mov edi, eax
  lea rsi, [rel s]
  mov edx, NL
  mov ecx, DQ
  lea r8,  [rel s]
  xor eax, eax
  call dprintf wrt ..plt
  mov eax, 3
  mov edi, ebx
  syscall
  pop rbx
  xor eax, eax
  ret
