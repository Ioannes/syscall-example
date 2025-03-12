    .global _start
    .text

message:
    .string "Hello, world!\n"

_start:
    # 32 bit syscall SYS_write
    mov $4, %eax        # Put int(4) to eax register for execute "Write syscall"
    mov $1, %ebx        # Put int(1) to ebx regisater for writing to stdout
    mov $message, %ecx  # Put Pointer aggress to ecx register
    mov $14, %edx       # Put data length to edx register
    int $0x80           # Call interrupt!!
    # in %eax register left written data lenght

    # Put in ext code written data tenght
    mov %eax, %ebx # Copy data between registers
    mov $1, %eax   # Exit syscall
    int $0x80      # Call!!
