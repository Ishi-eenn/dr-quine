; Outside comment

global main
extern printf

section .rodata
s db "; Outside comment%1$c%1$cglobal main%1$cextern printf%1$c%1$csection .rodata%1$cs db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cprint_source:%1$c  enter 0, 0%1$c  lea rdi, [rel s]%1$c  mov rsi, 10%1$c  mov rdx, 34%1$c  lea rcx, [rel s]%1$c  xor eax, eax%1$c  call printf wrt ..plt%1$c  leave%1$c  ret%1$c%1$cmain:%1$c  enter 0, 0%1$c  ; Inside comment%1$c  call print_source%1$c  leave%1$c  ret%1$c", 0

section .text
print_source:
  enter 0, 0
  lea rdi, [rel s]
  mov rsi, 10
  mov rdx, 34
  lea rcx, [rel s]
  xor eax, eax
  call printf wrt ..plt
  leave
  ret

main:
  enter 0, 0
  ; Inside comment
  call print_source
  leave
  ret
