    .global _start
    .text

message:
    .string "Hello, world!\n"

_start:
    # 32 bit syscall SYS_write
    mov $4, %eax        # Write syscall
    mov $1, %ebx        # write to stdout
    mov $message, %ecx  # Pointer to string
    mov $14, %edx       # Length of data
    int $0x80           # Call interrupt!!
    # in %eax register left written data lenght

    # Put in ext code written data tenght
    mov %eax, %ebx # Copy data between registers
    mov $1, %eax   # Exit syscall
    int $0x80      # Call!!
