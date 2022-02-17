.section .data
.equ SYS_WRITE, 4
.equ STDOUT, 1
.equ SYS_CALL, 0x80
int80:
.ascii "hey, I am int 80 \n"
lsyscall:
.ascii "hey, I am syscall\n"

.equ LEN, 18

.section .bss
.section .text
.globl _start
_start:
  mov $LEN, %rdx
  mov $SYS_WRITE, %rax
  mov $STDOUT, %rbx
  mov $int80, %rcx
  int $SYS_CALL

  # with syscall
  mov $1, %rax
  mov $STDOUT, %rdi
  mov $lsyscall, %rsi
  mov $LEN, %rdx
  syscall 

  # exit 
  mov $1, %rax
  mov $0, %rbx
  int $SYS_CALL

  
