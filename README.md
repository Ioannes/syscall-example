Для сборки нужно только gcc, никакие библиотеки не используются.

Используется 32битное API Linux

https://github.com/torvalds/linux/blob/v4.3/arch/x86/entry/syscalls/syscall_32.tbl

Какие именно данные в какой именно регистр надо класть зависит от конкретного системного вызова.
