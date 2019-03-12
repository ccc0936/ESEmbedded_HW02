HW02

# 1.實驗題目
編寫簡易程式觀察使用push以及pop程式後暫存器變化。



# 2.實驗步驟

1.將資料夾 gnu-mcu-eclipse-qemu複製到ESEmbedded_HW02資料夾中

2.根據 ARM® v7-M Architecture Reference Manual敘述的push和pop的用法

Push Multiple Registers stores a subset, or possibly all, of the general-purpose registers R0-R12 and the LR to the
stack

Pop Multiple Registers loads a subset, or possibly all, of the general-purpose registers R0-R12 and the PC or the LR
from the stack.

3.設計程式main.s，從_start開始觀察執行push和pop指令後暫存器變化

main.s

    .syntax unified

    .word 0x20000100
    .word _start

    .global _start
    .type _start, %function
    _start:
	    nop
	    push {r0,r1,r2}
	    pop {r0,r1,r2}
	    push {r0,r1,r2}
	    push {r2,r0,r1}

4.將main.s編譯並以qemu模擬。
    $make    $make qemu
    
並於另一terminal連線。

--------------------

