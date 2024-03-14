	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"

	.text

	thumb_func_start PokeathlonCourseApplication_OvyInit
PokeathlonCourseApplication_OvyInit: ; 0x021E5900
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	mov r2, #0x72
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x5c
	lsl r2, r2, #0xc
	bl CreateHeap
	mov r1, #0xd7
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0x5c
	bl OverlayManager_CreateAndGetData
	mov r2, #0xd7
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0xa1
	mov r1, #0x5c
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl OverlayManager_GetArgs
	mov r2, #0x7e
	lsl r2, r2, #2
	add r5, sp, #4
	ldr r6, _021E5A28 ; =ov96_0221A7E4
	str r0, [r4, r2]
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	add r1, r4, r2
	add r0, r3, #0
	mov r2, #0x5c
	bl OverlayManager_New
	mov r1, #0xa
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r1, #0
	mov r5, #0
	sub r0, #0xa0
	str r5, [r4, r0]
	add r0, r1, #0
	sub r0, #0x88
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021E597E
	mov r5, #1
	bl sub_02037454
	ldr r1, _021E5A2C ; =0x000001EE
	strb r0, [r4, r1]
	mov r1, #4
	b _021E5986
_021E597E:
	mov r0, #1
	sub r1, #0x92
	strb r0, [r4, r1]
	mov r1, #3
_021E5986:
	ldr r0, _021E5A30 ; =0x0000072A
	strb r1, [r4, r0]
	bl ov96_021E8A24
	add r6, r0, #0
	bl ov96_021E8A2C
	add r1, r0, #0
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r3, r5, #0
	bl ov96_021E8770
	mov r1, #0xa2
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r0, _021E5A34 ; =ov96_0221A984
	add r1, r4, r1
	bl ov96_021E5C80
	ldr r1, _021E5A38 ; =0x000003CA
	mov r3, #0
	sub r0, r1, #6
	add r2, r4, r0
	add r0, r1, #0
	strb r3, [r4, r1]
	sub r0, #0x16
	str r2, [r4, r0]
	sub r1, #0xa
	add r0, r4, #0
	str r3, [r4, r1]
	bl ov96_021E5C90
	mov r0, #0x5c
	bl ov96_021E92E0
	ldr r1, _021E5A3C ; =0x00000614
	str r0, [r4, r1]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _021E59FE
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl sub_02002B50
	mov r0, #1
	bl sub_02002B8C
	b _021E5A10
_021E59FE:
	mov r0, #0
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #1
	bl sub_02002B50
	mov r0, #0
	bl sub_02002B8C
_021E5A10:
	add r0, r4, #0
	mov r1, #0
	bl ov96_021E5DFC
	add r0, r4, #0
	mov r1, #0
	bl ov96_021E5DE0
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021E5A28: .word ov96_0221A7E4
_021E5A2C: .word 0x000001EE
_021E5A30: .word 0x0000072A
_021E5A34: .word ov96_0221A984
_021E5A38: .word 0x000003CA
_021E5A3C: .word 0x00000614
	thumb_func_end PokeathlonCourseApplication_OvyInit

	thumb_func_start PokeathlonCourseApplication_OvyExec
PokeathlonCourseApplication_OvyExec: ; 0x021E5A40
	push {r3, r4, r5, lr}
	bl OverlayManager_GetData
	add r5, r0, #0
	mov r0, #0xed
	lsl r0, r0, #2
	add r4, r5, r0
	ldr r0, _021E5B78 ; =0x00000D2C
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021E5A86
	sub r1, r0, #4
	ldrh r1, [r5, r1]
	add r2, r1, #1
	sub r1, r0, #4
	strh r2, [r5, r1]
	ldrh r2, [r5, r1]
	ldr r1, _021E5B7C ; =0x00000708
	cmp r2, r1
	blo _021E5A86
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r5, r1]
	ldr r1, _021E5B80 ; =0x0000EA5F
	cmp r2, r1
	bge _021E5A80
	add r1, r0, #0
	sub r1, #8
	ldr r1, [r5, r1]
	sub r0, #8
	add r1, r1, #1
	str r1, [r5, r0]
_021E5A80:
	ldr r0, _021E5B84 ; =0x00000D28
	mov r1, #0
	strh r1, [r5, r0]
_021E5A86:
	ldr r0, [r4, #8]
	cmp r0, #4
	bhi _021E5B6E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5A98: ; jump table
	.short _021E5AA2 - _021E5A98 - 2 ; case 0
	.short _021E5AD8 - _021E5A98 - 2 ; case 1
	.short _021E5AE6 - _021E5A98 - 2 ; case 2
	.short _021E5AFC - _021E5A98 - 2 ; case 3
	.short _021E5B14 - _021E5A98 - 2 ; case 4
_021E5AA2:
	add r0, r5, #0
	bl ov96_021E5C2C
	cmp r0, #0
	beq _021E5AB0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5AB0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E5AC2
	ldr r1, [r4]
	ldrb r0, [r1, #7]
	strb r0, [r1, #6]
	mov r0, #0
	strb r0, [r1, #5]
	str r0, [r4, #0xc]
_021E5AC2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E5B6E
	cmp r0, #0x10
	bne _021E5AD2
	mov r0, #3
	str r0, [r4, #8]
	b _021E5B6E
_021E5AD2:
	mov r0, #1
	str r0, [r4, #8]
	b _021E5B6E
_021E5AD8:
	ldr r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02037AC0
	mov r0, #2
	str r0, [r4, #8]
_021E5AE6:
	ldr r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02037B38
	cmp r0, #0
	beq _021E5B6E
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	b _021E5B6E
_021E5AFC:
	ldr r0, [r4, #4]
	cmp r0, #0x10
	beq _021E5B06
	bl GF_AssertFail
_021E5B06:
	ldr r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02037AC0
	mov r0, #4
	str r0, [r4, #8]
_021E5B14:
	ldr r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02037B38
	cmp r0, #0
	bne _021E5B68
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E5B6E
	bl ov96_021E9A14
	mov r3, #0xad
	lsl r3, r3, #2
	add r1, r5, r3
	sub r3, #0x2c
	add r2, r0, #0
	ldr r3, [r5, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov96_021E8A20
	add r4, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov96_021E8A20
	mov r2, #0x28
_021E5B5A:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _021E5B5A
	b _021E5B6E
_021E5B68:
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
_021E5B6E:
	add r0, r5, #0
	bl ov96_021E67AC
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5B78: .word 0x00000D2C
_021E5B7C: .word 0x00000708
_021E5B80: .word 0x0000EA5F
_021E5B84: .word 0x00000D28
	thumb_func_end PokeathlonCourseApplication_OvyExec

	thumb_func_start PokeathlonCourseApplication_OvyExit
PokeathlonCourseApplication_OvyExit: ; 0x021E5B88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	mov r0, #0x5c
	bl GF_heap_c_dummy_return_true
	cmp r0, #0
	bne _021E5BA0
	bl GF_AssertFail
_021E5BA0:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _021E5BBC
	ldr r0, _021E5C14 ; =0x00000D64
	ldr r0, [r4, r0]
	bl FreeToHeap
	ldr r0, _021E5C18 ; =0x00000D68
	ldr r0, [r4, r0]
	bl FreeToHeap
_021E5BBC:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	bl sub_020319F0
	add r2, r0, #0
	ldr r0, _021E5C1C ; =0x00000D24
	ldr r1, _021E5C20 ; =0x0000EA5F
	ldr r0, [r4, r0]
	bl ov96_021E7F98
	mov r0, #0
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl sub_02002B50
	mov r0, #0
	bl sub_02002B8C
	ldr r0, _021E5C24 ; =0x00000614
	ldr r0, [r4, r0]
	bl ov96_021E9320
	ldr r0, _021E5C28 ; =0x000005DC
	ldr r0, [r4, r0]
	bl FreeToHeap
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021E8810
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x5c
	bl DestroyHeap
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5C14: .word 0x00000D64
_021E5C18: .word 0x00000D68
_021E5C1C: .word 0x00000D24
_021E5C20: .word 0x0000EA5F
_021E5C24: .word 0x00000614
_021E5C28: .word 0x000005DC
	thumb_func_end PokeathlonCourseApplication_OvyExit

	thumb_func_start ov96_021E5C2C
ov96_021E5C2C: ; 0x021E5C2C
	push {r3, lr}
	ldr r2, _021E5C4C ; =0x000003C9
	sub r3, r2, #5
	add r1, r0, r2
	add r2, r2, #1
	ldrb r2, [r0, r2]
	ldr r3, [r0, r3]
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	blx r2
	cmp r0, #0
	beq _021E5C48
	mov r0, #1
	pop {r3, pc}
_021E5C48:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021E5C4C: .word 0x000003C9
	thumb_func_end ov96_021E5C2C

	thumb_func_start ov96_021E5C50
ov96_021E5C50: ; 0x021E5C50
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x7e
	lsl r6, r6, #2
	add r4, r6, #0
	add r5, r0, #0
	mov r7, #0
	sub r4, #0x18
_021E5C5E:
	ldr r2, [r5, r4]
	add r0, r5, #0
	ldr r2, [r2]
	add r1, r7, #0
	blx r2
	cmp r0, #1
	bne _021E5C70
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E5C70:
	cmp r0, #0
	beq _021E5C7C
	ldr r0, [r5, r6]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E5C5E
_021E5C7C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E5C50

	thumb_func_start ov96_021E5C80
ov96_021E5C80: ; 0x021E5C80
	str r0, [r1]
	mov r0, #1
	strb r0, [r1, #4]
	mov r0, #0
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	bx lr
	thumb_func_end ov96_021E5C80

	thumb_func_start ov96_021E5C90
ov96_021E5C90: ; 0x021E5C90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl PlayerProfile_sizeof
	add r1, r0, #0
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r1, r1, #2
	bl AllocFromHeap
	ldr r1, _021E5D1C ; =0x000005DC
	mov r4, #0
	str r0, [r5, r1]
	add r6, r1, #0
_021E5CAE:
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl ov96_021E5D24
	bl PlayerProfile_Init
	add r4, r4, #1
	cmp r4, #4
	blt _021E5CAE
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _021E5CEC
	ldr r0, _021E5D1C ; =0x000005DC
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov96_021E5D24
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_PlayerData_GetProfileAddr
	add r1, r4, #0
	bl PlayerProfile_Copy
	pop {r3, r4, r5, r6, r7, pc}
_021E5CEC:
	sub r0, #0xa
	ldrb r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _021E5D18
	ldr r7, _021E5D20 ; =0x000001EE
_021E5CF8:
	ldr r0, _021E5D1C ; =0x000005DC
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl ov96_021E5D24
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02034818
	add r1, r4, #0
	bl PlayerProfile_Copy
	ldrb r0, [r5, r7]
	add r6, r6, #1
	cmp r6, r0
	blt _021E5CF8
_021E5D18:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5D1C: .word 0x000005DC
_021E5D20: .word 0x000001EE
	thumb_func_end ov96_021E5C90

	thumb_func_start ov96_021E5D24
ov96_021E5D24: ; 0x021E5D24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl PlayerProfile_sizeof
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E5D24

	thumb_func_start ov96_021E5D34
ov96_021E5D34: ; 0x021E5D34
	ldr r1, _021E5D3C ; =0x000001EE
	ldrb r0, [r0, r1]
	bx lr
	nop
_021E5D3C: .word 0x000001EE
	thumb_func_end ov96_021E5D34

	thumb_func_start ov96_021E5D40
ov96_021E5D40: ; 0x021E5D40
	mov r2, #0xfb
	lsl r2, r2, #2
	add r2, r0, r2
	mov r0, #0x7c
	mul r0, r1
	add r0, r2, r0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E5D40

	thumb_func_start ov96_021E5D50
ov96_021E5D50: ; 0x021E5D50
	mov r2, #0x3f
	lsl r2, r2, #4
	add r2, r0, r2
	mov r0, #0x7c
	mul r0, r1
	add r0, r2, r0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E5D50

	thumb_func_start ov96_021E5D60
ov96_021E5D60: ; 0x021E5D60
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E5D60

	thumb_func_start ov96_021E5D6C
ov96_021E5D6C: ; 0x021E5D6C
	ldr r1, _021E5D74 ; =0x0000072C
	add r0, r0, r1
	bx lr
	nop
_021E5D74: .word 0x0000072C
	thumb_func_end ov96_021E5D6C

	thumb_func_start ov96_021E5D78
ov96_021E5D78: ; 0x021E5D78
	ldr r2, _021E5D84 ; =0x0000072C
	add r2, r0, r2
	mov r0, #0x60
	mul r0, r1
	add r0, r2, r0
	bx lr
	.balign 4, 0
_021E5D84: .word 0x0000072C
	thumb_func_end ov96_021E5D78

	thumb_func_start ov96_021E5D88
ov96_021E5D88: ; 0x021E5D88
	ldr r1, _021E5D90 ; =0x00000BA4
	add r0, r0, r1
	bx lr
	nop
_021E5D90: .word 0x00000BA4
	thumb_func_end ov96_021E5D88

	thumb_func_start ov96_021E5D94
ov96_021E5D94: ; 0x021E5D94
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl AllocFromHeap
	mov r1, #0x79
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov96_021E5D94

	thumb_func_start ov96_021E5DAC
ov96_021E5DAC: ; 0x021E5DAC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FreeToHeap
	mov r0, #0x79
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov96_021E5DAC

	thumb_func_start ov96_021E5DC4
ov96_021E5DC4: ; 0x021E5DC4
	mov r1, #0x79
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov96_021E5DC4

	thumb_func_start PokeathlonOvy_GetHeapID
PokeathlonOvy_GetHeapID: ; 0x021E5DCC
	mov r1, #0xa1
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end PokeathlonOvy_GetHeapID

	thumb_func_start ov96_021E5DD4
ov96_021E5DD4: ; 0x021E5DD4
	ldr r1, _021E5DDC ; =0x000001ED
	ldrb r0, [r0, r1]
	bx lr
	nop
_021E5DDC: .word 0x000001ED
	thumb_func_end ov96_021E5DD4

	thumb_func_start ov96_021E5DE0
ov96_021E5DE0: ; 0x021E5DE0
	ldr r2, _021E5DE8 ; =0x000001ED
	strb r1, [r0, r2]
	bx lr
	nop
_021E5DE8: .word 0x000001ED
	thumb_func_end ov96_021E5DE0

	thumb_func_start ov96_021E5DEC
ov96_021E5DEC: ; 0x021E5DEC
	ldr r1, _021E5DF8 ; =0x000001ED
	ldrb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, r1]
	bx lr
	nop
_021E5DF8: .word 0x000001ED
	thumb_func_end ov96_021E5DEC

	thumb_func_start ov96_021E5DFC
ov96_021E5DFC: ; 0x021E5DFC
	mov r2, #0x7d
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov96_021E5DFC

	thumb_func_start ov96_021E5E04
ov96_021E5E04: ; 0x021E5E04
	push {r4, r5, r6, lr}
	ldr r2, _021E5E40 ; =0x0000072A
	add r4, r0, #0
	ldrb r2, [r4, r2]
	mov r0, #0
	cmp r2, #0
	ble _021E5E28
	mov r3, #0xf6
	ldr r5, _021E5E40 ; =0x0000072A
	add r2, r4, #0
	lsl r3, r3, #2
_021E5E1A:
	ldrb r6, [r1, r0]
	add r0, r0, #1
	str r6, [r2, r3]
	ldrb r6, [r4, r5]
	add r2, r2, #4
	cmp r0, r6
	blt _021E5E1A
_021E5E28:
	add r0, r4, #0
	bl ov96_021E5E7C
	mov r1, #0xfa
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x9f
	ldr r1, [r4, r1]
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
	nop
_021E5E40: .word 0x0000072A
	thumb_func_end ov96_021E5E04

	thumb_func_start ov96_021E5E44
ov96_021E5E44: ; 0x021E5E44
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E5E44

	thumb_func_start ov96_021E5E58
ov96_021E5E58: ; 0x021E5E58
	push {r3, lr}
	ldr r2, _021E5E78 ; =0x0000072A
	ldrb r2, [r0, r2]
	cmp r1, r2
	blo _021E5E6A
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
_021E5E6A:
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r3, pc}
	nop
_021E5E78: .word 0x0000072A
	thumb_func_end ov96_021E5E58

	thumb_func_start ov96_021E5E7C
ov96_021E5E7C: ; 0x021E5E7C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ov96_021E5EE8
	cmp r0, #1
	bne _021E5E8C
	mov r1, #1
	b _021E5E8E
_021E5E8C:
	mov r1, #0
_021E5E8E:
	mov r0, #0xf6
	lsl r0, r0, #2
	add r3, r4, r0
	cmp r1, #0
	beq _021E5E9C
	mov r0, #4
	b _021E5E9E
_021E5E9C:
	mov r0, #3
_021E5E9E:
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0
_021E5EA4:
	mov r4, #1
	mov r1, #0
	cmp r2, #0
	bls _021E5ECA
	ldr r5, _021E5EDC ; =ov96_0221A934
	lsl r6, r0, #2
	add r5, r5, r6
_021E5EB2:
	lsl r6, r1, #2
	ldr r7, [r3, r6]
	ldrb r6, [r5, r1]
	cmp r7, r6
	beq _021E5EC0
	mov r4, #0
	b _021E5ECA
_021E5EC0:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r2
	blo _021E5EB2
_021E5ECA:
	cmp r4, #0
	bne _021E5EDA
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xa
	blo _021E5EA4
	mov r0, #0xa
_021E5EDA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E5EDC: .word ov96_0221A934
	thumb_func_end ov96_021E5E7C

	thumb_func_start ov96_021E5EE0
ov96_021E5EE0: ; 0x021E5EE0
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov96_021E5EE0

	thumb_func_start ov96_021E5EE8
ov96_021E5EE8: ; 0x021E5EE8
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r0, [r0, #4]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E5EE8

	thumb_func_start ov96_021E5EF4
ov96_021E5EF4: ; 0x021E5EF4
	ldr r1, _021E5EFC ; =0x000001EF
	ldrb r0, [r0, r1]
	bx lr
	nop
_021E5EFC: .word 0x000001EF
	thumb_func_end ov96_021E5EF4

	thumb_func_start ov96_021E5F00
ov96_021E5F00: ; 0x021E5F00
	ldr r1, _021E5F0C ; =0x000001EF
	ldrb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, r1]
	bx lr
	nop
_021E5F0C: .word 0x000001EF
	thumb_func_end ov96_021E5F00

	thumb_func_start ov96_021E5F10
ov96_021E5F10: ; 0x021E5F10
	ldr r1, _021E5F18 ; =0x000001EF
	mov r2, #0
	strb r2, [r0, r1]
	bx lr
	.balign 4, 0
_021E5F18: .word 0x000001EF
	thumb_func_end ov96_021E5F10

	thumb_func_start ov96_021E5F1C
ov96_021E5F1C: ; 0x021E5F1C
	mov r1, #0xa2
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov96_021E5F1C

	thumb_func_start ov96_021E5F24
ov96_021E5F24: ; 0x021E5F24
	mov r1, #0xa2
	lsl r1, r1, #2
	ldr r3, _021E5F30 ; =ov96_021E8828
	ldr r0, [r0, r1]
	bx r3
	nop
_021E5F30: .word ov96_021E8828
	thumb_func_end ov96_021E5F24

	thumb_func_start ov96_021E5F34
ov96_021E5F34: ; 0x021E5F34
	ldr r2, _021E5F3C ; =0x000005DC
	ldr r3, _021E5F40 ; =ov96_021E5D24
	ldr r0, [r0, r2]
	bx r3
	.balign 4, 0
_021E5F3C: .word 0x000005DC
_021E5F40: .word ov96_021E5D24
	thumb_func_end ov96_021E5F34

	thumb_func_start ov96_021E5F44
ov96_021E5F44: ; 0x021E5F44
	ldr r2, _021E5F50 ; =0x00000974
	add r2, r0, r2
	mov r0, #0x74
	mul r0, r1
	add r0, r2, r0
	bx lr
	.balign 4, 0
_021E5F50: .word 0x00000974
	thumb_func_end ov96_021E5F44

	thumb_func_start ov96_021E5F54
ov96_021E5F54: ; 0x021E5F54
	mov r1, #0xa3
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end ov96_021E5F54

	thumb_func_start ov96_021E5F5C
ov96_021E5F5C: ; 0x021E5F5C
	mov r1, #0xa3
	lsl r1, r1, #2
	mov r2, #0x4a
	add r0, r0, r1
	ldr r3, _021E5F6C ; =MI_CpuFill8
	mov r1, #0
	lsl r2, r2, #2
	bx r3
	.balign 4, 0
_021E5F6C: .word MI_CpuFill8
	thumb_func_end ov96_021E5F5C

	thumb_func_start ov96_021E5F70
ov96_021E5F70: ; 0x021E5F70
	push {r3, r4}
	mov r4, #0xe9
	lsl r4, r4, #2
	str r1, [r0, r4]
	add r1, r4, #4
	str r2, [r0, r1]
	add r1, r4, #0
	add r1, #8
	str r3, [r0, r1]
	mov r1, #1
	add r4, #0xc
	str r1, [r0, r4]
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021E5F70

	thumb_func_start ov96_021E5F8C
ov96_021E5F8C: ; 0x021E5F8C
	mov r2, #0xe9
	lsl r2, r2, #2
	mov r3, #0
	str r3, [r0, r2]
	add r1, r2, #4
	str r3, [r0, r1]
	add r1, r2, #0
	add r1, #8
	str r3, [r0, r1]
	add r2, #0xc
	str r3, [r0, r2]
	bx lr
	thumb_func_end ov96_021E5F8C

	thumb_func_start ov96_021E5FA4
ov96_021E5FA4: ; 0x021E5FA4
	mov r1, #0xea
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov96_021E5FA4

	thumb_func_start ov96_021E5FAC
ov96_021E5FAC: ; 0x021E5FAC
	mov r0, #4
	bx lr
	thumb_func_end ov96_021E5FAC

	thumb_func_start ov96_021E5FB0
ov96_021E5FB0: ; 0x021E5FB0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x5e
	lsl r0, r0, #4
	strh r2, [r1, r0]
	bx lr
	thumb_func_end ov96_021E5FB0

	thumb_func_start ov96_021E5FBC
ov96_021E5FBC: ; 0x021E5FBC
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x5f
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	bx lr
	thumb_func_end ov96_021E5FBC

	thumb_func_start ov96_021E5FC8
ov96_021E5FC8: ; 0x021E5FC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	cmp r0, #1
	bne _021E5FDC
	bl GF_AssertFail
_021E5FDC:
	mov r0, #0xf
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r5, r0]
	sub r0, #0xc
	ldr r0, [r5, r0]
	strb r4, [r0, #7]
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E5FC8

	thumb_func_start ov96_021E5FEC
ov96_021E5FEC: ; 0x021E5FEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xed
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	ldrb r1, [r1, #7]
	cmp r1, r2
	beq _021E6018
	add r0, #0xc
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021E600A
	bl GF_AssertFail
_021E600A:
	mov r0, #0xf
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r5, r0]
	sub r0, #0xc
	ldr r0, [r5, r0]
	strb r4, [r0, #7]
_021E6018:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021E5FEC

	thumb_func_start ov96_021E601C
ov96_021E601C: ; 0x021E601C
	mov r2, #0x7e
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldr r2, [r2, #4]
	cmp r2, #1
	bne _021E602E
	mov r2, #0xee
	lsl r2, r2, #2
	str r1, [r0, r2]
_021E602E:
	bx lr
	thumb_func_end ov96_021E601C

	thumb_func_start ov96_021E6030
ov96_021E6030: ; 0x021E6030
	ldr r3, _021E6038 ; =Main_SetVBlankIntrCB
	add r1, r0, #0
	ldr r0, _021E603C ; =ov96_021E75BC
	bx r3
	.balign 4, 0
_021E6038: .word Main_SetVBlankIntrCB
_021E603C: .word ov96_021E75BC
	thumb_func_end ov96_021E6030

	thumb_func_start ov96_021E6040
ov96_021E6040: ; 0x021E6040
	ldr r1, _021E6048 ; =0x00000614
	ldr r0, [r0, r1]
	bx lr
	nop
_021E6048: .word 0x00000614
	thumb_func_end ov96_021E6040

	thumb_func_start ov96_021E604C
ov96_021E604C: ; 0x021E604C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r2, #0xa1
	ldr r1, [sp]
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	mov r0, #0xa9
	bl NARC_New
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, _021E60B8 ; =0x00000618
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
_021E606E:
	ldr r4, [sp]
	ldr r5, [sp, #4]
	mov r6, #0
_021E6074:
	mov r0, #0x3f
	ldr r1, _021E60BC ; =0x000003F2
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldrh r1, [r4, r1]
	bl ov96_021E679C
	add r1, r0, #0
	add r0, r7, #0
	add r2, r5, #0
	bl NARC_ReadWholeMember
	add r6, r6, #1
	add r4, #0x28
	add r5, #0x14
	cmp r6, #3
	blt _021E6074
	ldr r0, [sp]
	add r0, #0x7c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, #0x3c
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021E606E
	add r0, r7, #0
	bl NARC_Delete
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E60B8: .word 0x00000618
_021E60BC: .word 0x000003F2
	thumb_func_end ov96_021E604C

	thumb_func_start ov96_021E60C0
ov96_021E60C0: ; 0x021E60C0
	ldr r3, _021E60D4 ; =0x00000618
	add r3, r0, r3
	mov r0, #0x3c
	mul r0, r1
	add r1, r3, r0
	mov r0, #0x14
	mul r0, r2
	add r0, r1, r0
	bx lr
	nop
_021E60D4: .word 0x00000618
	thumb_func_end ov96_021E60C0

	thumb_func_start ov96_021E60D8
ov96_021E60D8: ; 0x021E60D8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #4
	blt _021E60E8
	bl GF_AssertFail
_021E60E8:
	cmp r4, #3
	blt _021E60F0
	bl GF_AssertFail
_021E60F0:
	mov r0, #0xfe
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #0x7c
	mul r0, r5
	add r1, r1, r0
	mov r0, #0x28
	mul r0, r4
	add r0, r1, r0
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021E60D8

	thumb_func_start ov96_021E6104
ov96_021E6104: ; 0x021E6104
	mov r0, #0x50
	bx lr
	thumb_func_end ov96_021E6104

	thumb_func_start ov96_021E6108
ov96_021E6108: ; 0x021E6108
	push {r3, lr}
	cmp r0, #0
	bne _021E6112
	mov r0, #0
	pop {r3, pc}
_021E6112:
	ldrb r0, [r0, #8]
	cmp r0, #1
	beq _021E6122
	cmp r0, #2
	beq _021E6126
	cmp r0, #3
	beq _021E612A
	b _021E612E
_021E6122:
	mov r0, #1
	pop {r3, pc}
_021E6126:
	mov r0, #2
	pop {r3, pc}
_021E612A:
	mov r0, #3
	pop {r3, pc}
_021E612E:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021E6108

	thumb_func_start ov96_021E6138
ov96_021E6138: ; 0x021E6138
	push {r3, lr}
	cmp r0, #0
	bne _021E6142
	mov r0, #0
	pop {r3, pc}
_021E6142:
	ldrb r0, [r0, #6]
	cmp r0, #1
	beq _021E6152
	cmp r0, #2
	beq _021E6156
	cmp r0, #3
	beq _021E615A
	b _021E615E
_021E6152:
	mov r0, #1
	pop {r3, pc}
_021E6156:
	mov r0, #2
	pop {r3, pc}
_021E615A:
	mov r0, #3
	pop {r3, pc}
_021E615E:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021E6138

	thumb_func_start ov96_021E6168
ov96_021E6168: ; 0x021E6168
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r0, #0
	add r6, r1, #0
	add r4, r3, #0
	cmp r5, #3
	blt _021E617A
	bl GF_AssertFail
_021E617A:
	add r0, r7, #0
	add r1, r6, #0
	bl ov96_021E5D50
	mov r1, #0x28
	add r3, r5, #0
	mul r3, r1
	add r1, r0, r3
	ldrb r2, [r1, #0x10]
	strb r2, [r4, #6]
	ldrh r0, [r0, r3]
	strh r0, [r4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	ldrb r0, [r1, #0x11]
	strb r0, [r4, #7]
	str r6, [r4, #8]
	ldr r0, [r1, #4]
	str r0, [r4, #0xc]
	ldrh r0, [r4]
	cmp r0, #0
	bne _021E61AA
	bl GF_AssertFail
_021E61AA:
	ldrh r0, [r4]
	cmp r0, #0
	bne _021E61B4
	mov r0, #1
	strh r0, [r4]
_021E61B4:
	ldrh r0, [r4]
	bl SpeciesToOverworldModelIndexOffset
	add r2, r0, #0
	add r0, sp, #0
	mov r1, #0x8d
	bl ReadWholeNarcMemberByIdPair
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _021E61D2
	mov r0, #1
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E61D2:
	mov r0, #0
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E6168

	thumb_func_start ov96_021E61D8
ov96_021E61D8: ; 0x021E61D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r2, #0
	add r7, r3, #0
	add r4, r1, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #1
	bl ov96_021EA214
	ldr r1, _021E6280 ; =0x00000708
	mov r3, #0xa1
	str r0, [r5, r1]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl ov96_021EA4D4
	mov r1, #0x71
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r3, #0xa1
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl ov96_021EA584
	ldr r1, _021E6284 ; =0x00000714
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x60
	lsl r0, r0, #0xc
	sub r1, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	add r1, sp, #0x10
	bl Sprite_SetMatrix
	ldr r0, _021E6288 ; =0x0000070E
	mov r1, #0
	strh r4, [r5, r0]
	str r1, [sp, #0xc]
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [sp, #4]
	ldrh r1, [r5, r0]
	add r0, r0, #6
	add r1, #0x48
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	ldr r0, [r5, r0]
	add r1, sp, #4
	bl Sprite_SetMatrix
	ldr r0, _021E628C ; =0x0000070D
	mov r1, #0
	strb r1, [r5, r0]
	add r4, #0x82
	lsl r1, r4, #0xc
	str r1, [sp, #0x14]
	add r0, r0, #3
	ldr r0, [r5, r0]
	add r1, sp, #0x10
	bl Sprite_SetMatrix
	ldr r0, _021E6280 ; =0x00000708
	add r0, r5, r0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6280: .word 0x00000708
_021E6284: .word 0x00000714
_021E6288: .word 0x0000070E
_021E628C: .word 0x0000070D
	thumb_func_end ov96_021E61D8

	thumb_func_start ov96_021E6290
ov96_021E6290: ; 0x021E6290
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, r3, #0
	bl ov96_021EB5E8
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov96_021E61D8
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021E6290

	thumb_func_start ov96_021E62AC
ov96_021E62AC: ; 0x021E62AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, _021E6340 ; =0x00000728
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r2, [sp, #8]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	str r3, [sp, #0xc]
	strb r0, [r7, r1]
	ldr r0, [sp, #0x34]
	mov r4, #0
	cmp r0, #0
	bls _021E631E
_021E62D2:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	lsl r6, r4, #2
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x30]
	mov r3, #0
	add r5, r7, r6
	bl ov96_021EA6E4
	ldr r1, _021E6344 ; =0x0000071C
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x38]
	ldrh r1, [r1, r6]
	add r0, r0, r6
	lsl r1, r1, #0xc
	str r1, [sp, #0x10]
	ldrh r1, [r0, #2]
	ldr r0, [sp, #4]
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, _021E6344 ; =0x0000071C
	add r1, sp, #0x10
	ldr r0, [r5, r0]
	bl Sprite_SetMatrix
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x34]
	cmp r4, r0
	blo _021E62D2
_021E631E:
	cmp r4, #3
	bhs _021E6336
	ldr r0, _021E6344 ; =0x0000071C
	mov r2, #0
_021E6326:
	lsl r1, r4, #2
	add r1, r7, r1
	str r2, [r1, r0]
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #3
	blo _021E6326
_021E6336:
	ldr r0, _021E6348 ; =0x00000729
	mov r1, #0
	strb r1, [r7, r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6340: .word 0x00000728
_021E6344: .word 0x0000071C
_021E6348: .word 0x00000729
	thumb_func_end ov96_021E62AC

	thumb_func_start ov96_021E634C
ov96_021E634C: ; 0x021E634C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov96_021EB5E8
	add r3, r0, #0
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov96_021E62AC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021E634C

	thumb_func_start ov96_021E637C
ov96_021E637C: ; 0x021E637C
	push {r3, r4, r5, lr}
	ldr r1, _021E643C ; =0x00000729
	add r5, r0, #0
	ldrb r2, [r5, r1]
	mov r4, #0
	cmp r2, #0
	beq _021E6394
	cmp r2, #1
	beq _021E63AA
	cmp r2, #2
	beq _021E63C4
	b _021E6438
_021E6394:
	ldr r0, _021E6440 ; =0x0000089A
	bl PlaySE
	add r0, r5, #0
	bl ov96_021E65D8
	ldr r0, _021E643C ; =0x00000729
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _021E6438
_021E63AA:
	bl ov96_021E661C
	cmp r0, #0
	beq _021E6438
	ldr r0, _021E643C ; =0x00000729
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #7
	add r1, r4, #0
	bl sub_020053A8
	b _021E6438
_021E63C4:
	sub r1, #0x1d
	ldrb r0, [r5, r1]
	cmp r0, #0
	bne _021E63E8
	ldr r0, _021E6444 ; =0x0000089D
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #1
	ldr r0, [r5, r0]
	bl Set2dSpriteVisibleFlag
	ldr r0, _021E6448 ; =0x00000708
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Set2dSpriteAnimSeqNo
	b _021E6412
_021E63E8:
	cmp r0, #0x15
	bne _021E63FE
	ldr r0, _021E6444 ; =0x0000089D
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #1
	ldr r0, [r5, r0]
	bl Set2dSpriteAnimSeqNo
	b _021E6412
_021E63FE:
	cmp r0, #0x2a
	bne _021E6412
	ldr r0, _021E6444 ; =0x0000089D
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #2
	ldr r0, [r5, r0]
	bl Set2dSpriteAnimSeqNo
_021E6412:
	ldr r0, _021E644C ; =0x0000070C
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0x3f
	bls _021E6438
	ldr r0, _021E6450 ; =0x00000892
	bl PlaySE
	ldr r0, _021E6448 ; =0x00000708
	mov r1, #0
	ldr r0, [r5, r0]
	bl Set2dSpriteVisibleFlag
	ldr r0, _021E644C ; =0x0000070C
	mov r1, #0
	strb r1, [r5, r0]
	mov r4, #1
_021E6438:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E643C: .word 0x00000729
_021E6440: .word 0x0000089A
_021E6444: .word 0x0000089D
_021E6448: .word 0x00000708
_021E644C: .word 0x0000070C
_021E6450: .word 0x00000892
	thumb_func_end ov96_021E637C

	thumb_func_start ov96_021E6454
ov96_021E6454: ; 0x021E6454
	push {r3, r4, r5, lr}
	add r1, #0x1d
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r4, r0, #0
	cmp r4, #0
	bgt _021E6474
	ldr r0, _021E64AC ; =0x00000714
	mov r1, #0
	ldr r0, [r5, r0]
	bl Set2dSpriteVisibleFlag
	pop {r3, r4, r5, pc}
_021E6474:
	cmp r4, #3
	bgt _021E64A0
	ldr r0, _021E64B0 ; =0x0000072B
	ldrb r0, [r5, r0]
	cmp r0, r4
	beq _021E648A
	ldr r0, _021E64B4 ; =0x00000897
	bl PlaySE
	ldr r0, _021E64B0 ; =0x0000072B
	strb r4, [r5, r0]
_021E648A:
	ldr r0, _021E64AC ; =0x00000714
	mov r1, #1
	ldr r0, [r5, r0]
	bl Set2dSpriteVisibleFlag
	ldr r0, _021E64AC ; =0x00000714
	add r1, r4, #1
	ldr r0, [r5, r0]
	bl Set2dSpriteAnimSeqNo
	pop {r3, r4, r5, pc}
_021E64A0:
	ldr r0, _021E64AC ; =0x00000714
	mov r1, #0
	ldr r0, [r5, r0]
	bl Set2dSpriteVisibleFlag
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E64AC: .word 0x00000714
_021E64B0: .word 0x0000072B
_021E64B4: .word 0x00000897
	thumb_func_end ov96_021E6454

	thumb_func_start ov96_021E64B8
ov96_021E64B8: ; 0x021E64B8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xd3
	mov r4, #0
	lsl r0, r0, #4
	str r4, [r7, r0]
	add r6, r4, #0
_021E64C6:
	lsl r0, r4, #4
	add r5, r7, r0
	ldr r0, _021E64F0 ; =0x00000D34
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E64D6
	bl GF_AssertFail
_021E64D6:
	ldr r0, _021E64F4 ; =0x00000D38
	str r6, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	mov r0, #0x35
	lsl r0, r0, #6
	str r6, [r5, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021E64C6
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E64F0: .word 0x00000D34
_021E64F4: .word 0x00000D38
	thumb_func_end ov96_021E64B8

	thumb_func_start ov96_021E64F8
ov96_021E64F8: ; 0x021E64F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	mov r3, #0xd3
	add r4, r0, #0
	lsl r3, r3, #4
	add r0, r2, #0
	ldr r2, [r4, r3]
	cmp r2, #3
	blo _021E6512
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6512:
	add r3, r3, #4
	lsl r2, r2, #0x18
	add r6, r4, r3
	lsr r3, r2, #0x14
	mov r2, #1
	str r2, [r6, r3]
	add r5, r6, r3
	mov r3, #0xa1
	str r1, [r5, #4]
	lsl r3, r3, #2
	ldr r2, [sp, #0x18]
	ldr r3, [r4, r3]
	add r1, r7, #0
	bl ov96_021EA7A4
	str r0, [r5, #8]
	ldr r0, _021E654C ; =ov96_021E81D8
	add r1, r5, #0
	mov r2, #1
	bl SysTask_CreateOnMainQueue
	str r0, [r5, #0xc]
	mov r0, #0xd3
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E654C: .word ov96_021E81D8
	thumb_func_end ov96_021E64F8

	thumb_func_start ov96_021E6550
ov96_021E6550: ; 0x021E6550
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r7, r0, #0
	add r6, r4, #0
_021E6558:
	lsl r0, r4, #4
	add r5, r7, r0
	ldr r0, _021E6584 ; =0x00000D34
	str r6, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	ldr r0, _021E6588 ; =0x00000D3C
	str r6, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl SysTask_Destroy
	mov r0, #0x35
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021E6558
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6584: .word 0x00000D34
_021E6588: .word 0x00000D3C
	thumb_func_end ov96_021E6550

	thumb_func_start ov96_021E658C
ov96_021E658C: ; 0x021E658C
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, _021E659C ; =0x00000D3C
	ldr r3, _021E65A0 ; =TryChange2dSpriteAnimSeqNo
	ldr r0, [r1, r0]
	add r1, r2, #0
	bx r3
	nop
_021E659C: .word 0x00000D3C
_021E65A0: .word TryChange2dSpriteAnimSeqNo
	thumb_func_end ov96_021E658C

	thumb_func_start ov96_021E65A4
ov96_021E65A4: ; 0x021E65A4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021E65D0 ; =0x00000D34
	add r6, r0, #0
	mov r4, #0
_021E65AC:
	lsl r0, r4, #4
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	bne _021E65BA
	bl GF_AssertFail
_021E65BA:
	ldr r0, _021E65D4 ; =0x00000D3C
	mov r1, #0
	ldr r0, [r5, r0]
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021E65AC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E65D0: .word 0x00000D34
_021E65D4: .word 0x00000D3C
	thumb_func_end ov96_021E65A4

	thumb_func_start ov96_021E65D8
ov96_021E65D8: ; 0x021E65D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021E6614 ; =0x00000728
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021E6610
	mov r4, #0
	cmp r0, #0
	bls _021E6610
	ldr r7, _021E6614 ; =0x00000728
_021E65EC:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _021E6618 ; =0x0000071C
	mov r1, #1
	ldr r0, [r6, r0]
	bl Set2dSpriteVisibleFlag
	ldr r0, _021E6618 ; =0x0000071C
	mov r1, #0
	ldr r0, [r6, r0]
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r0, [r5, r7]
	cmp r4, r0
	blo _021E65EC
_021E6610:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6614: .word 0x00000728
_021E6618: .word 0x0000071C
	thumb_func_end ov96_021E65D8

	thumb_func_start ov96_021E661C
ov96_021E661C: ; 0x021E661C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021E6668 ; =0x00000728
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _021E662C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E662C:
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl Sprite_IsCellAnimationFinished
	cmp r0, #0
	bne _021E6664
	ldr r0, _021E6668 ; =0x00000728
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _021E6660
	ldr r7, _021E666C ; =0x0000071C
	add r6, r7, #0
	add r6, #0xc
_021E6648:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r0, [r5, r6]
	cmp r4, r0
	blo _021E6648
_021E6660:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6664:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6668: .word 0x00000728
_021E666C: .word 0x0000071C
	thumb_func_end ov96_021E661C

	thumb_func_start ov96_021E6670
ov96_021E6670: ; 0x021E6670
	ldr r2, _021E6678 ; =0x00000718
	str r1, [r0, r2]
	bx lr
	nop
_021E6678: .word 0x00000718
	thumb_func_end ov96_021E6670

	thumb_func_start ov96_021E667C
ov96_021E667C: ; 0x021E667C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _021E6780 ; =0x0000070D
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #4
	bhi _021E677A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E6696: ; jump table
	.short _021E66A0 - _021E6696 - 2 ; case 0
	.short _021E66EA - _021E6696 - 2 ; case 1
	.short _021E6706 - _021E6696 - 2 ; case 2
	.short _021E6754 - _021E6696 - 2 ; case 3
	.short _021E6774 - _021E6696 - 2 ; case 4
_021E66A0:
	add r0, r1, #7
	ldr r0, [r4, r0]
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	ldr r0, _021E6784 ; =0x00000899
	bl PlaySE
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp]
	ldr r0, _021E6788 ; =0x0000070E
	ldrh r1, [r4, r0]
	sub r0, r0, #6
	add r1, #0x48
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldr r0, _021E678C ; =0x00000708
	mov r1, #3
	ldr r0, [r4, r0]
	bl Set2dSpriteAnimSeqNo
	ldr r0, _021E678C ; =0x00000708
	mov r1, #1
	ldr r0, [r4, r0]
	bl Set2dSpriteVisibleFlag
	ldr r0, _021E6780 ; =0x0000070D
	mov r1, #1
	strb r1, [r4, r0]
	b _021E677A
_021E66EA:
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x3c
	bls _021E677A
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #2
	strb r0, [r4, r1]
	b _021E677A
_021E6706:
	ldr r1, _021E6790 ; =0x00000D6C
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021E6710
	blx r1
_021E6710:
	add r0, r4, #0
	bl ov96_021E839C
	cmp r0, #0
	beq _021E6738
	ldr r0, _021E6794 ; =0x00000898
	bl PlaySE
	mov r0, #0x71
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	mov r0, #0x71
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Set2dSpriteVisibleFlag
_021E6738:
	ldr r0, _021E6798 ; =0x00000718
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl GfGfx_EngineATogglePlanes
	ldr r0, _021E6790 ; =0x00000D6C
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _021E6780 ; =0x0000070D
	mov r1, #3
	strb r1, [r4, r0]
	b _021E677A
_021E6754:
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x78
	bls _021E677A
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r0, #4
	strb r0, [r4, r1]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E6774:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E677A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021E6780: .word 0x0000070D
_021E6784: .word 0x00000899
_021E6788: .word 0x0000070E
_021E678C: .word 0x00000708
_021E6790: .word 0x00000D6C
_021E6794: .word 0x00000898
_021E6798: .word 0x00000718
	thumb_func_end ov96_021E667C

	thumb_func_start ov96_021E679C
ov96_021E679C: ; 0x021E679C
	lsl r2, r0, #1
	ldr r0, _021E67A8 ; =ov96_0221AAE8
	ldrh r0, [r0, r2]
	add r0, r1, r0
	bx lr
	nop
_021E67A8: .word ov96_0221AAE8
	thumb_func_end ov96_021E679C

	thumb_func_start ov96_021E67AC
ov96_021E67AC: ; 0x021E67AC
	push {r3, lr}
	mov r2, #0x7d
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _021E67C2
	sub r2, #0x14
	ldr r2, [r0, r2]
	mov r1, #0
	ldr r2, [r2, #4]
	blx r2
_021E67C2:
	pop {r3, pc}
	thumb_func_end ov96_021E67AC

	thumb_func_start ov96_021E67C4
ov96_021E67C4: ; 0x021E67C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #1
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E67FC
	ldr r1, _021E6810 ; =0x0000072A
	mov r2, #0x7e
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	sub r2, #0x10
	ldrb r1, [r4, r1]
	add r2, r4, r2
	bl ov96_021E811C
	bl ov96_021E99F4
	mov r3, #0x7a
	lsl r3, r3, #2
	add r1, r4, r3
	add r3, #0xa0
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x16
	bl ov96_021E87B4
	add r5, r0, #0
_021E67FC:
	cmp r5, #0
	beq _021E680A
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #1
	bl ov96_021E5FEC
_021E680A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E6810: .word 0x0000072A
	thumb_func_end ov96_021E67C4

	thumb_func_start ov96_021E6814
ov96_021E6814: ; 0x021E6814
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl OverlayManager_Run
	cmp r0, #0
	beq _021E686C
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl OverlayManager_Delete
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _021E6860
	add r1, r1, #4
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021E6852
	mov r1, #1
	strb r1, [r0, #0xe]
	add r0, r4, #0
	mov r1, #0x25
	bl ov96_021E5FC8
	b _021E686C
_021E6852:
	mov r1, #0
	strb r1, [r0, #0xe]
	add r0, r4, #0
	mov r1, #3
	bl ov96_021E5FC8
	b _021E686C
_021E6860:
	mov r1, #0
	strb r1, [r0, #0xe]
	add r0, r4, #0
	mov r1, #2
	bl ov96_021E5FC8
_021E686C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov96_021E6814

	thumb_func_start ov96_021E6870
ov96_021E6870: ; 0x021E6870
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrb r2, [r5]
	add r4, r0, #0
	cmp r2, #3
	bhi _021E694C
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E6888: ; jump table
	.short _021E6890 - _021E6888 - 2 ; case 0
	.short _021E68B2 - _021E6888 - 2 ; case 1
	.short _021E68C2 - _021E6888 - 2 ; case 2
	.short _021E692A - _021E6888 - 2 ; case 3
_021E6890:
	mov r0, #0x1e
	ldr r1, _021E6950 ; =ov96_0221A8BC
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0xd
	strb r1, [r4, r0]
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r0, _021E6954 ; =ov96_0221DA68
	add r1, r4, r1
	bl ov96_021E5C80
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021E694C
_021E68B2:
	bl ov96_021E5C50
	cmp r0, #0
	beq _021E694C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021E694C
_021E68C2:
	mov r0, #0xf3
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r1]
	cmp r3, #0
	bne _021E68D4
	add r0, r2, #1
	strb r0, [r5]
	b _021E694C
_021E68D4:
	add r2, r0, #0
	sub r2, #0x18
	ldr r3, [r4, r2]
	add r2, r0, #0
	sub r2, #8
	add r2, r4, r2
	cmp r3, r2
	bne _021E68F0
	add r2, r0, #0
	sub r2, #0x18
	str r1, [r4, r2]
	mov r1, #0
	sub r0, #0xc
	str r1, [r4, r0]
_021E68F0:
	ldr r3, _021E6958 ; =0x000003D1
	add r0, r4, #0
	sub r2, r3, #5
	add r1, r4, r3
	add r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021E694C
	add r0, r4, #0
	mov r1, #0
	bl ov96_021E5DFC
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x10
	str r2, [r4, r1]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021E694C
_021E692A:
	mov r2, #0x1e
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	mov r1, #0
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E6944
	bl GF_AssertFail
_021E6944:
	add r0, r4, #0
	mov r1, #3
	bl ov96_021E5FC8
_021E694C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6950: .word ov96_0221A8BC
_021E6954: .word ov96_0221DA68
_021E6958: .word 0x000003D1
	thumb_func_end ov96_021E6870

	thumb_func_start ov96_021E695C
ov96_021E695C: ; 0x021E695C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r4, r0]
	bl ov96_021E99F8
	mov r3, #2
	lsl r3, r3, #8
	add r1, r4, r3
	add r3, #0x88
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x17
	bl ov96_021E87EC
	cmp r0, #0
	beq _021E698A
	add r0, r4, #0
	mov r1, #0x26
	bl ov96_021E5FC8
_021E698A:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E695C

	thumb_func_start ov96_021E6990
ov96_021E6990: ; 0x021E6990
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	bl ov96_021E5D40
	add r4, r0, #0
	bl ov96_021E99FC
	add r6, r0, #0
	add r0, r5, #0
	bl ov96_021E5F1C
	add r3, r0, #0
	mov r0, #0x18
	add r1, r4, #0
	add r2, r6, #0
	bl ov96_021E87EC
	cmp r0, #0
	beq _021E69C0
	add r0, r5, #0
	mov r1, #0x26
	bl ov96_021E5FC8
_021E69C0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021E6990

	thumb_func_start ov96_021E69C4
ov96_021E69C4: ; 0x021E69C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #1
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E69EA
	bl ov96_021E9A04
	ldr r1, _021E69FC ; =0x000005DC
	mov r3, #0xa2
	lsl r3, r3, #2
	add r2, r0, #0
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #0x19
	bl ov96_021E87EC
	add r5, r0, #0
_021E69EA:
	cmp r5, #0
	beq _021E69F8
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #6
	bl ov96_021E5FEC
_021E69F8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E69FC: .word 0x000005DC
	thumb_func_end ov96_021E69C4

	thumb_func_start ov96_021E6A00
ov96_021E6A00: ; 0x021E6A00
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	bl sub_020319F0
	add r5, r0, #0
	mov r0, #9
	lsl r0, r0, #8
	add r3, r4, r0
	mov r2, #0xe
_021E6A1E:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6A1E
	ldr r0, [r5]
	str r0, [r3]
	bl ov96_021E9A10
	mov r3, #0xa2
	mov r1, #9
	lsl r3, r3, #2
	lsl r1, r1, #8
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1a
	add r1, r4, r1
	bl ov96_021E87EC
	cmp r0, #0
	beq _021E6A4E
	add r0, r4, #0
	mov r1, #0x26
	bl ov96_021E5FC8
_021E6A4E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021E6A00

	thumb_func_start ov96_021E6A54
ov96_021E6A54: ; 0x021E6A54
	push {r4, lr}
	ldr r1, _021E6A88 ; =0x00000D2C
	add r4, r0, #0
	mov r2, #1
	str r2, [r4, r1]
	bl ov96_021E5F5C
	mov r0, #0x1e
	ldr r1, _021E6A8C ; =ov96_0221A808
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0xd
	strb r1, [r4, r0]
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r0, _021E6A90 ; =ov96_0221DA50
	add r1, r4, r1
	bl ov96_021E5C80
	add r0, r4, #0
	mov r1, #8
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E6A88: .word 0x00000D2C
_021E6A8C: .word ov96_0221A808
_021E6A90: .word ov96_0221DA50
	thumb_func_end ov96_021E6A54

	thumb_func_start ov96_021E6A94
ov96_021E6A94: ; 0x021E6A94
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021E5C50
	cmp r0, #0
	beq _021E6AE0
	add r0, r4, #0
	bl ov96_021E5F54
	add r1, r0, #0
	mov r2, #0
	add r1, #0x24
	strb r2, [r1]
	mov r1, #1
	add r0, #0x4c
	strb r1, [r0]
	add r0, r4, #0
	bl ov96_021E5F1C
	mov r1, #1
	bl ov96_021E87B0
	add r0, r4, #0
	mov r1, #6
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #9
	bl ov96_021E5FC8
	mov r0, #0
	bl sub_02004AD8
	ldr r1, _021E6AE4 ; =0x0000046F
	mov r0, #0x19
	mov r2, #0
	bl sub_02004EC4
_021E6AE0:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E6AE4: .word 0x0000046F
	thumb_func_end ov96_021E6A94

	thumb_func_start ov96_021E6AE8
ov96_021E6AE8: ; 0x021E6AE8
	push {r3, r4, r5, lr}
	mov r1, #0xf3
	add r4, r0, #0
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r3, [r2]
	cmp r3, #0
	bne _021E6B02
	mov r1, #0xa
	bl ov96_021E5FC8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6B02:
	add r0, r1, #0
	sub r0, #0x18
	ldr r3, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	add r0, r4, r0
	cmp r3, r0
	bne _021E6B1E
	add r0, r1, #0
	sub r0, #0x18
	str r2, [r4, r0]
	mov r0, #0
	sub r1, #0xc
	str r0, [r4, r1]
_021E6B1E:
	ldr r3, _021E6BBC ; =0x000003D1
	add r0, r4, #0
	sub r2, r3, #5
	add r1, r4, r3
	add r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021E6B5A
	add r0, r4, #0
	mov r1, #0
	bl ov96_021E5DFC
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x10
	str r2, [r4, r1]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xa
	bl ov96_021E5FC8
	b _021E6BB6
_021E6B5A:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E6BA0
	bl ov96_021E9A14
	mov r3, #0xad
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, #0x2c
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	add r5, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	mov r2, #0x28
_021E6B92:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r5]
	add r5, r5, #1
	sub r2, r2, #1
	bne _021E6B92
	b _021E6BB6
_021E6BA0:
	bl ov96_021E9A14
	mov r3, #0xa3
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, r3, #4
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
_021E6BB6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E6BBC: .word 0x000003D1
	thumb_func_end ov96_021E6AE8

	thumb_func_start ov96_021E6BC0
ov96_021E6BC0: ; 0x021E6BC0
	push {r4, lr}
	mov r2, #0x1e
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	mov r1, #0
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E6BDE
	bl GF_AssertFail
_021E6BDE:
	add r0, r4, #0
	mov r1, #0xb
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E6BC0

	thumb_func_start ov96_021E6BEC
ov96_021E6BEC: ; 0x021E6BEC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	ldr r1, _021E6C18 ; =ov96_0221A8E4
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0xd
	strb r1, [r4, r0]
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r0, _021E6C1C ; =ov96_0221DA6C
	add r1, r4, r1
	bl ov96_021E5C80
	add r0, r4, #0
	mov r1, #0xc
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
	nop
_021E6C18: .word ov96_0221A8E4
_021E6C1C: .word ov96_0221DA6C
	thumb_func_end ov96_021E6BEC

	thumb_func_start ov96_021E6C20
ov96_021E6C20: ; 0x021E6C20
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021E5C50
	cmp r0, #0
	beq _021E6C3C
	add r0, r4, #0
	mov r1, #7
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #0xd
	bl ov96_021E5FC8
_021E6C3C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov96_021E6C20

	thumb_func_start ov96_021E6C40
ov96_021E6C40: ; 0x021E6C40
	push {r4, lr}
	mov r1, #0xf3
	add r4, r0, #0
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r3, [r2]
	cmp r3, #0
	bne _021E6C5A
	mov r1, #0xe
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
_021E6C5A:
	add r0, r1, #0
	sub r0, #0x18
	ldr r3, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	add r0, r4, r0
	cmp r3, r0
	bne _021E6C76
	add r0, r1, #0
	sub r0, #0x18
	str r2, [r4, r0]
	mov r0, #0
	sub r1, #0xc
	str r0, [r4, r1]
_021E6C76:
	ldr r3, _021E6CB4 ; =0x000003D1
	add r0, r4, #0
	sub r2, r3, #5
	add r1, r4, r3
	add r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021E6CB0
	add r0, r4, #0
	mov r1, #0
	bl ov96_021E5DFC
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x10
	str r2, [r4, r1]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xe
	bl ov96_021E5FC8
_021E6CB0:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E6CB4: .word 0x000003D1
	thumb_func_end ov96_021E6C40

	thumb_func_start ov96_021E6CB8
ov96_021E6CB8: ; 0x021E6CB8
	push {r4, lr}
	mov r2, #0x1e
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	mov r1, #0
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E6CD6
	bl GF_AssertFail
_021E6CD6:
	add r0, r4, #0
	mov r1, #0xf
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E6CB8

	thumb_func_start ov96_021E6CE4
ov96_021E6CE4: ; 0x021E6CE4
	push {r4, r5, r6, lr}
	mov r1, #0x1f
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldr r6, _021E6D40 ; =0x0000FFFF
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0xf6
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, _021E6D44 ; =0x00000728
	lsl r5, r1, #0x18
	mov r1, #0
	strb r1, [r4, r2]
	ldr r3, _021E6D48 ; =0x00000D2A
	add r2, r2, #3
	strh r6, [r4, r3]
	strb r1, [r4, r2]
	add r3, #0x42
	str r1, [r4, r3]
	bl ov96_021E5F5C
	ldr r0, _021E6D4C ; =ov96_0221DA28
	lsr r2, r5, #0x16
	ldr r1, [r0, r2]
	mov r0, #0x1e
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0xd
	strb r1, [r4, r0]
	ldr r0, _021E6D50 ; =_0221DA00
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r0, [r0, r2]
	add r1, r4, r1
	bl ov96_021E5C80
	add r0, r4, #0
	mov r1, #0x10
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E6D40: .word 0x0000FFFF
_021E6D44: .word 0x00000728
_021E6D48: .word 0x00000D2A
_021E6D4C: .word ov96_0221DA28
_021E6D50: .word _0221DA00
	thumb_func_end ov96_021E6CE4

	thumb_func_start ov96_021E6D54
ov96_021E6D54: ; 0x021E6D54
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021E5C50
	cmp r0, #0
	beq _021E6DD8
	add r0, r4, #0
	bl ov96_021E5F54
	add r1, r0, #0
	mov r2, #0
	add r1, #0x24
	strb r2, [r1]
	mov r1, #1
	add r0, #0x4c
	strb r1, [r0]
	add r0, r4, #0
	bl ov96_021E5F1C
	mov r1, #1
	bl ov96_021E87B0
	add r0, r4, #0
	mov r1, #8
	bl ov96_021E601C
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, _021E6DDC ; =0x0000072A
	ldrb r0, [r4, r0]
	sub r0, r0, #1
	cmp r1, r0
	bne _021E6DAA
	mov r0, #0
	bl sub_02004AD8
	ldr r1, _021E6DE0 ; =0x00000472
	mov r0, #0x18
	mov r2, #0
	bl sub_02004EC4
	b _021E6DBA
_021E6DAA:
	mov r0, #0
	bl sub_02004AD8
	ldr r1, _021E6DE4 ; =0x00000471
	mov r0, #0x18
	mov r2, #0
	bl sub_02004EC4
_021E6DBA:
	mov r0, #7
	mov r1, #1
	bl sub_020053A8
	add r0, r4, #0
	mov r1, #0x11
	bl ov96_021E5FC8
	mov r0, #0x5c
	bl GF_heap_c_dummy_return_true
	cmp r0, #0
	bne _021E6DD8
	bl GF_AssertFail
_021E6DD8:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E6DDC: .word 0x0000072A
_021E6DE0: .word 0x00000472
_021E6DE4: .word 0x00000471
	thumb_func_end ov96_021E6D54

	thumb_func_start ov96_021E6DE8
ov96_021E6DE8: ; 0x021E6DE8
	push {r4, lr}
	mov r1, #0x3b
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021E6E2C
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E6E22
	mov r2, #0xe9
	lsl r2, r2, #2
	mov r3, #0xa2
	ldr r1, [r4, r2]
	add r2, #8
	lsl r3, r3, #2
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	mov r0, #0x1c
	bl ov96_021E87EC
	cmp r0, #0
	beq _021E6E32
	add r0, r4, #0
	mov r1, #0x26
	bl ov96_021E5FC8
	b _021E6E32
_021E6E22:
	add r0, r4, #0
	mov r1, #0x26
	bl ov96_021E5FC8
	b _021E6E32
_021E6E2C:
	mov r1, #0x12
	bl ov96_021E5FC8
_021E6E32:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E6DE8

	thumb_func_start ov96_021E6E38
ov96_021E6E38: ; 0x021E6E38
	push {r3, r4, r5, lr}
	mov r1, #0xf3
	add r4, r0, #0
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r3, [r2]
	cmp r3, #0
	bne _021E6E52
	mov r1, #0x18
	bl ov96_021E5FC8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6E52:
	add r0, r1, #0
	sub r0, #0x18
	ldr r3, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	add r0, r4, r0
	cmp r3, r0
	bne _021E6E6E
	add r0, r1, #0
	sub r0, #0x18
	str r2, [r4, r0]
	mov r0, #0
	sub r1, #0xc
	str r0, [r4, r1]
_021E6E6E:
	ldr r3, _021E6F14 ; =0x000003D1
	add r0, r4, #0
	sub r2, r3, #5
	add r1, r4, r3
	add r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021E6EB2
	add r0, r4, #0
	mov r1, #0
	bl ov96_021E5DFC
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x10
	str r2, [r4, r1]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x10
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #0x13
	bl ov96_021E5FC8
	b _021E6F0E
_021E6EB2:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E6EF8
	bl ov96_021E9A14
	mov r3, #0xad
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, #0x2c
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	add r5, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	mov r2, #0x28
_021E6EEA:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r5]
	add r5, r5, #1
	sub r2, r2, #1
	bne _021E6EEA
	b _021E6F0E
_021E6EF8:
	bl ov96_021E9A14
	mov r3, #0xa3
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, r3, #4
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
_021E6F0E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E6F14: .word 0x000003D1
	thumb_func_end ov96_021E6E38

	thumb_func_start ov96_021E6F18
ov96_021E6F18: ; 0x021E6F18
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021E5F5C
	add r0, r4, #0
	mov r1, #0x14
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov96_021E6F18

	thumb_func_start ov96_021E6F2C
ov96_021E6F2C: ; 0x021E6F2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x1e
	add r7, r0, #0
	lsl r1, r1, #4
	ldr r2, [r7, r1]
	ldr r2, [r2, #0x10]
	cmp r2, #0
	beq _021E6FD0
	add r1, #0xac
	add r0, r7, r1
	bl ov96_021E8A20
	add r4, r0, #0
	add r0, r7, #0
	bl ov96_021E5F24
	lsl r0, r0, #2
	add r2, r7, r0
	mov r0, #0x5e
	lsl r0, r0, #4
	ldrh r1, [r2, r0]
	add r0, r0, #2
	strh r1, [r4]
	ldrh r0, [r2, r0]
	strh r0, [r4, #2]
	bl ov96_021E9A14
	mov r3, #0xa3
	lsl r3, r3, #2
	add r1, r7, r3
	sub r3, r3, #4
	add r2, r0, #0
	ldr r3, [r7, r3]
	mov r0, #0x1d
	bl ov96_021E87B4
	str r0, [sp, #4]
	cmp r0, #0
	beq _021E6FE6
	add r0, r7, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E6FE6
	add r0, r7, #0
	bl ov96_021E5FAC
	add r6, r0, #0
	add r0, r7, #0
	bl ov96_021E5D34
	str r0, [sp]
	cmp r0, #4
	bge _021E6FE6
	mov r0, #0x5e
	lsl r0, r0, #4
	add r1, r7, r0
	ldr r0, [sp]
	lsl r0, r0, #2
	add r4, r1, r0
	ldr r0, [sp]
	add r5, r0, #0
	mul r5, r6
_021E6FAC:
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov96_021E8A20
	add r0, r0, r5
	add r1, r4, #0
	add r2, r6, #0
	bl memcpy
	ldr r0, [sp]
	add r4, r4, #4
	add r0, r0, #1
	add r5, r5, r6
	str r0, [sp]
	cmp r0, #4
	blt _021E6FAC
	b _021E6FE6
_021E6FD0:
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E6FE2
	add r0, r7, #0
	bl ov96_021E75E4
	str r0, [sp, #4]
	b _021E6FE6
_021E6FE2:
	mov r0, #1
	str r0, [sp, #4]
_021E6FE6:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021E6FF4
	add r0, r7, #0
	mov r1, #0x26
	bl ov96_021E5FC8
_021E6FF4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E6F2C

	thumb_func_start ov96_021E6FFC
ov96_021E6FFC: ; 0x021E6FFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5F54
	add r4, r0, #0
	bl ov96_021E9A14
	add r6, r0, #0
	add r0, r5, #0
	bl ov96_021E5F1C
	add r4, #0x28
	add r3, r0, #0
	mov r0, #0x1e
	add r1, r4, #0
	add r2, r6, #0
	bl ov96_021E87B4
	cmp r0, #0
	beq _021E702C
	add r0, r5, #0
	mov r1, #0x26
	bl ov96_021E5FC8
_021E702C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021E6FFC

	thumb_func_start ov96_021E7030
ov96_021E7030: ; 0x021E7030
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xdf
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	mov r1, #0x5f
	lsl r1, r1, #4
	add r3, r4, r1
	mov r2, #0x12
_021E7046:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _021E7046
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _021E7064
	add r0, r4, #0
	mov r1, #0
	blx r2
_021E7064:
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021E7658
	add r0, r4, #0
	mov r1, #0x17
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov96_021E7030

	thumb_func_start ov96_021E7080
ov96_021E7080: ; 0x021E7080
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5c
	bl GF_heap_c_dummy_return_true
	cmp r0, #0
	bne _021E7092
	bl GF_AssertFail
_021E7092:
	mov r2, #0x1e
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	mov r1, #0
	blx r2
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E70AE
	bl GF_AssertFail
_021E70AE:
	ldr r1, _021E70EC ; =0x0000072A
	mov r0, #0x1f
	lsl r0, r0, #4
	ldrb r1, [r4, r1]
	ldr r2, [r4, r0]
	cmp r2, r1
	bge _021E70DA
	sub r0, #0x10
	ldr r0, [r4, r0]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E70D0
	add r0, r4, #0
	mov r1, #0x19
	bl ov96_021E5FC8
	b _021E70E6
_021E70D0:
	add r0, r4, #0
	mov r1, #0x18
	bl ov96_021E5FC8
	b _021E70E6
_021E70DA:
	add r1, r2, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x1d
	bl ov96_021E5FC8
_021E70E6:
	mov r0, #0
	pop {r4, pc}
	nop
_021E70EC: .word 0x0000072A
	thumb_func_end ov96_021E7080

	thumb_func_start ov96_021E70F0
ov96_021E70F0: ; 0x021E70F0
	push {r3, lr}
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	ldr r1, _021E7118 ; =0x0000072A
	ldrb r1, [r0, r1]
	cmp r2, r1
	blt _021E710E
	mov r1, #0x1d
	bl ov96_021E5FC8
	b _021E7114
_021E710E:
	mov r1, #0xb
	bl ov96_021E5FC8
_021E7114:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021E7118: .word 0x0000072A
	thumb_func_end ov96_021E70F0

	thumb_func_start ov96_021E711C
ov96_021E711C: ; 0x021E711C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	ldr r1, _021E7148 ; =ov96_0221A86C
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0xd
	strb r1, [r4, r0]
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r0, _021E714C ; =ov96_0221DC24
	add r1, r4, r1
	bl ov96_021E5C80
	add r0, r4, #0
	mov r1, #0x1a
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
	nop
_021E7148: .word ov96_0221A86C
_021E714C: .word ov96_0221DC24
	thumb_func_end ov96_021E711C

	thumb_func_start ov96_021E7150
ov96_021E7150: ; 0x021E7150
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021E5C50
	cmp r0, #0
	beq _021E718C
	add r0, r4, #0
	bl ov96_021E5F54
	add r1, r0, #0
	mov r2, #0
	add r1, #0x24
	strb r2, [r1]
	mov r1, #1
	add r0, #0x4c
	strb r1, [r0]
	add r0, r4, #0
	bl ov96_021E5F1C
	mov r1, #1
	bl ov96_021E87B0
	add r0, r4, #0
	mov r1, #0xb
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #0x1b
	bl ov96_021E5FC8
_021E718C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov96_021E7150

	thumb_func_start ov96_021E7190
ov96_021E7190: ; 0x021E7190
	push {r3, r4, r5, lr}
	mov r1, #0xf3
	add r4, r0, #0
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r3, [r2]
	cmp r3, #0
	bne _021E71AA
	mov r1, #0x1c
	bl ov96_021E5FC8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E71AA:
	add r0, r1, #0
	sub r0, #0x18
	ldr r3, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	add r0, r4, r0
	cmp r3, r0
	bne _021E71C6
	add r0, r1, #0
	sub r0, #0x18
	str r2, [r4, r0]
	mov r0, #0
	sub r1, #0xc
	str r0, [r4, r1]
_021E71C6:
	ldr r3, _021E7264 ; =0x000003D1
	add r0, r4, #0
	sub r2, r3, #5
	add r1, r4, r3
	add r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021E7202
	add r0, r4, #0
	mov r1, #0
	bl ov96_021E5DFC
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x10
	str r2, [r4, r1]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x1c
	bl ov96_021E5FC8
	b _021E725E
_021E7202:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E7248
	bl ov96_021E9A14
	mov r3, #0xad
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, #0x2c
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	add r5, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	mov r2, #0x28
_021E723A:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r5]
	add r5, r5, #1
	sub r2, r2, #1
	bne _021E723A
	b _021E725E
_021E7248:
	bl ov96_021E9A14
	mov r3, #0xa3
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, r3, #4
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
_021E725E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E7264: .word 0x000003D1
	thumb_func_end ov96_021E7190

	thumb_func_start ov96_021E7268
ov96_021E7268: ; 0x021E7268
	push {r4, lr}
	mov r2, #0x1e
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	mov r1, #0
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E7286
	bl GF_AssertFail
_021E7286:
	add r0, r4, #0
	mov r1, #0x18
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E7268

	thumb_func_start ov96_021E7294
ov96_021E7294: ; 0x021E7294
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021E5F5C
	mov r0, #0x1e
	ldr r1, _021E72C4 ; =ov96_0221A844
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0
	add r0, #0xd
	strb r1, [r4, r0]
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r0, _021E72C8 ; =ov96_0221DA5C
	add r1, r4, r1
	bl ov96_021E5C80
	add r0, r4, #0
	mov r1, #0x20
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, pc}
	nop
_021E72C4: .word ov96_0221A844
_021E72C8: .word ov96_0221DA5C
	thumb_func_end ov96_021E7294

	thumb_func_start ov96_021E72CC
ov96_021E72CC: ; 0x021E72CC
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021E5C50
	cmp r0, #0
	beq _021E7318
	add r0, r4, #0
	bl ov96_021E5F54
	add r1, r0, #0
	mov r2, #0
	add r1, #0x24
	strb r2, [r1]
	mov r1, #1
	add r0, #0x4c
	strb r1, [r0]
	add r0, r4, #0
	bl ov96_021E5F1C
	mov r1, #1
	bl ov96_021E87B0
	add r0, r4, #0
	mov r1, #0xc
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #0x21
	bl ov96_021E5FC8
	mov r0, #0
	bl sub_02004AD8
	ldr r1, _021E731C ; =0x00000474
	mov r0, #0x19
	mov r2, #0
	bl sub_02004EC4
_021E7318:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E731C: .word 0x00000474
	thumb_func_end ov96_021E72CC

	thumb_func_start ov96_021E7320
ov96_021E7320: ; 0x021E7320
	push {r3, r4, r5, lr}
	mov r1, #0xf3
	add r4, r0, #0
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r3, [r2]
	cmp r3, #0
	bne _021E733A
	mov r1, #0x22
	bl ov96_021E5FC8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E733A:
	add r0, r1, #0
	sub r0, #0x18
	ldr r3, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	add r0, r4, r0
	cmp r3, r0
	bne _021E7356
	add r0, r1, #0
	sub r0, #0x18
	str r2, [r4, r0]
	mov r0, #0
	sub r1, #0xc
	str r0, [r4, r1]
_021E7356:
	ldr r3, _021E73F4 ; =0x000003D1
	add r0, r4, #0
	sub r2, r3, #5
	add r1, r4, r3
	add r3, r3, #1
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021E7392
	add r0, r4, #0
	mov r1, #0
	bl ov96_021E5DFC
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x10
	str r2, [r4, r1]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x22
	bl ov96_021E5FC8
	b _021E73EE
_021E7392:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E73D8
	bl ov96_021E9A14
	mov r3, #0xad
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, #0x2c
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	add r5, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov96_021E8A20
	mov r2, #0x28
_021E73CA:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r5]
	add r5, r5, #1
	sub r2, r2, #1
	bne _021E73CA
	b _021E73EE
_021E73D8:
	bl ov96_021E9A14
	mov r3, #0xa3
	lsl r3, r3, #2
	add r1, r4, r3
	sub r3, r3, #4
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov96_021E87B4
_021E73EE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E73F4: .word 0x000003D1
	thumb_func_end ov96_021E7320

	thumb_func_start ov96_021E73F8
ov96_021E73F8: ; 0x021E73F8
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x1e
	add r5, r0, #0
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	mov r1, #0
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E7416
	bl GF_AssertFail
_021E7416:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_ApricornBox_Get
	add r7, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_PlayerData_GetProfileAddr
	str r0, [sp]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	bl sub_0203199C
	add r6, r0, #0
	bl sub_02031B10
	lsl r4, r0, #2
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl AllocFromHeapAtEnd
	ldr r1, _021E74A4 ; =0x00000D68
	add r2, r4, #0
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl memset
	mov r3, #0xa1
	lsl r3, r3, #2
	ldr r1, [sp]
	ldr r2, [r6, #0x70]
	ldr r3, [r5, r3]
	add r0, r7, #0
	bl sub_020320E0
	ldr r1, _021E74A8 ; =0x00000D64
	str r0, [r5, r1]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021E7496
	add r0, r5, #0
	mov r1, #0xe
	bl ov96_021E601C
	add r0, r5, #0
	mov r1, #0x23
	bl ov96_021E5FC8
	b _021E749E
_021E7496:
	add r0, r5, #0
	mov r1, #0x25
	bl ov96_021E5FC8
_021E749E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E74A4: .word 0x00000D68
_021E74A8: .word 0x00000D64
	thumb_func_end ov96_021E73F8

	thumb_func_start ov96_021E74AC
ov96_021E74AC: ; 0x021E74AC
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021E5F24
	bl ov96_021E9A18
	mov r3, #0xa2
	ldr r1, _021E74DC ; =0x00000B44
	lsl r3, r3, #2
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1f
	add r1, r4, r1
	bl ov96_021E87EC
	cmp r0, #0
	beq _021E74D6
	add r0, r4, #0
	mov r1, #0x26
	bl ov96_021E5FC8
_021E74D6:
	mov r0, #0
	pop {r4, pc}
	nop
_021E74DC: .word 0x00000B44
	thumb_func_end ov96_021E74AC

	thumb_func_start ov96_021E74E0
ov96_021E74E0: ; 0x021E74E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	bl ov96_021E5D78
	add r4, r0, #0
	bl ov96_021E9A1C
	add r6, r0, #0
	add r0, r5, #0
	bl ov96_021E5F1C
	add r3, r0, #0
	mov r0, #0x20
	add r1, r4, #0
	add r2, r6, #0
	bl ov96_021E87EC
	cmp r0, #0
	beq _021E7510
	add r0, r5, #0
	mov r1, #0x26
	bl ov96_021E5FC8
_021E7510:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021E74E0

	thumb_func_start ov96_021E7514
ov96_021E7514: ; 0x021E7514
	push {r4, lr}
	add r4, r0, #0
	bl sub_02031B10
	ldr r1, _021E7540 ; =0x00000D64
	mov r3, #0xa2
	lsl r3, r3, #2
	add r2, r0, #0
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #0x21
	bl ov96_021E87EC
	cmp r0, #0
	beq _021E753A
	add r0, r4, #0
	mov r1, #0x26
	bl ov96_021E5FC8
_021E753A:
	mov r0, #0
	pop {r4, pc}
	nop
_021E7540: .word 0x00000D64
	thumb_func_end ov96_021E7514

	thumb_func_start ov96_021E7544
ov96_021E7544: ; 0x021E7544
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_ApricornBox_Get
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5D34
	add r6, r0, #0
	bl sub_0203769C
	ldr r1, _021E758C ; =0x00000D68
	add r3, r0, #0
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_020321A0
	mov r0, #0x5c
	bl GF_heap_c_dummy_return_true
	cmp r0, #0
	bne _021E757E
	bl GF_AssertFail
_021E757E:
	add r0, r5, #0
	mov r1, #0x25
	bl ov96_021E5FC8
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E758C: .word 0x00000D68
	thumb_func_end ov96_021E7544

	thumb_func_start ov96_021E7590
ov96_021E7590: ; 0x021E7590
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5c
	bl GF_heap_c_dummy_return_true
	cmp r0, #0
	bne _021E75A2
	bl GF_AssertFail
_021E75A2:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _021E75B4
	add r0, r4, #0
	bl ov96_021E7718
_021E75B4:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov96_021E7590

	thumb_func_start ov96_021E75B8
ov96_021E75B8: ; 0x021E75B8
	mov r0, #0
	bx lr
	thumb_func_end ov96_021E75B8

	thumb_func_start ov96_021E75BC
ov96_021E75BC: ; 0x021E75BC
	push {r4, lr}
	add r4, r0, #0
	bl OamManager_ApplyAndResetBuffers
	add r0, r4, #0
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	ldr r3, _021E75DC ; =0x027E0000
	ldr r1, _021E75E0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E75DC: .word 0x027E0000
_021E75E0: .word 0x00003FF8
	thumb_func_end ov96_021E75BC

	thumb_func_start ov96_021E75E4
ov96_021E75E4: ; 0x021E75E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	bl ov96_021E5F54
	str r0, [sp]
	add r0, r7, #0
	bl ov96_021E5F24
	cmp r0, #0
	beq _021E7604
	bl GF_AssertFail
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7604:
	mov r0, #0x5e
	lsl r0, r0, #4
	add r5, r7, r0
	ldr r0, [sp]
	mov r4, #0
	str r0, [sp, #4]
	add r0, #0x28
	str r0, [sp, #4]
_021E7614:
	add r0, r7, #0
	bl ov96_021E5FAC
	add r6, r0, #0
	ldr r0, [sp, #4]
	bl ov96_021E8A20
	add r1, r4, #0
	mul r1, r6
	add r0, r0, r1
	add r1, r5, #0
	add r2, r6, #0
	bl memcpy
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E7614
	bl ov96_021E9A14
	add r4, r0, #0
	add r0, r7, #0
	bl ov96_021E5F1C
	ldr r1, [sp]
	add r3, r0, #0
	add r1, #0x28
	mov r0, #0x1e
	add r2, r4, #0
	str r1, [sp]
	bl ov96_021E87B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E75E4

	thumb_func_start ov96_021E7658
ov96_021E7658: ; 0x021E7658
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	mov r4, #0
	lsl r0, r0, #1
	add r6, r5, r0
_021E766E:
	ldr r0, _021E7708 ; =0x00000614
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov96_021E9370
	add r3, r0, #0
	lsl r0, r4, #3
	add r2, r6, r0
	ldrh r1, [r3, #0xa]
	ldr r0, _021E770C ; =0x000008B4
	strh r1, [r2, r0]
	ldr r1, [r3, #0xc]
	add r0, #0x20
	strh r1, [r2, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021E766E
	mov r4, #0
_021E7696:
	ldr r0, _021E7708 ; =0x00000614
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov96_021E94EC
	add r6, r0, #0
	ldr r0, [r6]
	cmp r0, r7
	beq _021E76B2
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021E7696
_021E76B2:
	cmp r4, #4
	bne _021E76BC
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021E76BC:
	ldrb r0, [r6, #9]
	cmp r0, #0
	bne _021E76D4
	ldr r0, [sp]
	mov r1, #1
	add r2, r5, r0
	ldr r0, _021E7710 ; =0x000008F4
	strb r1, [r2, r0]
	mov r1, #0
	add r0, r0, #4
	strb r1, [r2, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E76D4:
	ldr r0, [sp]
	mov r2, #0
	add r1, r5, r0
	ldr r0, _021E7710 ; =0x000008F4
	strb r2, [r1, r0]
	ldr r0, _021E7708 ; =0x00000614
	mov r1, #3
	ldr r0, [r5, r0]
	bl ov96_021E94EC
	ldrb r1, [r0, #9]
	ldrb r0, [r6, #9]
	cmp r1, r0
	bne _021E76FC
	ldr r0, [sp]
	mov r2, #1
	add r1, r5, r0
	ldr r0, _021E7714 ; =0x000008F8
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E76FC:
	ldr r0, [sp]
	mov r2, #0
	add r1, r5, r0
	ldr r0, _021E7714 ; =0x000008F8
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7708: .word 0x00000614
_021E770C: .word 0x000008B4
_021E7710: .word 0x000008F4
_021E7714: .word 0x000008F8
	thumb_func_end ov96_021E7658

	thumb_func_start ov96_021E7718
ov96_021E7718: ; 0x021E7718
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	add r6, r0, #0
	add r0, r5, #0
	bl ov96_021E5D6C
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_VarsFlags_Get
	str r0, [sp]
	mov r0, #0x1d
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E7772
	add r0, r5, #0
	bl ov96_021E7FA8
	ldr r0, [sp]
	mov r1, #0xf0
	bl Save_VarsFlags_CheckFlagInArray
	cmp r0, #0
	bne _021E7772
	add r0, r5, #0
	bl ov96_021E8084
	cmp r0, #0
	beq _021E7772
	ldr r0, [sp]
	mov r1, #0xf0
	bl Save_VarsFlags_SetFlagInArray
_021E7772:
	ldr r0, _021E7868 ; =0x000001D2
	ldrh r7, [r4, r0]
	add r0, #0x26
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0xc]
	cmp r0, #0xa
	bne _021E7784
	lsl r0, r7, #0x11
	lsr r7, r0, #0x10
_021E7784:
	add r0, r6, #0
	add r1, r7, #0
	bl SavePokeathlon_AddAthletePoints
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021E77A8
	add r0, r6, #0
	bl sub_020319E4
	add r1, r0, #0
	add r0, r5, #0
	bl ov96_021E7A2C
	b _021E780A
_021E77A8:
	add r0, r6, #0
	bl sub_0203197C
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02031990
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov96_021E7BA8
	mov r0, #0x1d
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E77FC
	add r0, r6, #0
	bl sub_020319A4
	add r1, r0, #0
	add r0, r5, #0
	bl ov96_021E786C
	ldr r0, [sp]
	mov r1, #0xef
	bl Save_VarsFlags_CheckFlagInArray
	cmp r0, #0
	bne _021E77FC
	add r0, r6, #0
	bl sub_020319A4
	bl ov96_021E8060
	cmp r0, #0
	beq _021E77FC
	ldr r0, [sp]
	mov r1, #0xef
	bl Save_VarsFlags_SetFlagInArray
_021E77FC:
	add r0, r6, #0
	bl sub_020319DC
	add r1, r0, #0
	add r0, r5, #0
	bl ov96_021E7938
_021E780A:
	add r0, r6, #0
	bl sub_020319F0
	add r1, r0, #0
	add r0, r5, #0
	bl ov96_021E7D6C
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021E7842
	ldr r0, [sp]
	mov r1, #0xf1
	bl Save_VarsFlags_CheckFlagInArray
	cmp r0, #0
	bne _021E7842
	add r0, r5, #0
	bl ov96_021E80C4
	cmp r0, #0
	beq _021E7842
	ldr r0, [sp]
	mov r1, #0xf1
	bl Save_VarsFlags_SetFlagInArray
_021E7842:
	ldr r1, _021E7868 ; =0x000001D2
	add r0, r1, #0
	add r0, #0x26
	ldrh r2, [r4, r1]
	ldr r0, [r5, r0]
	strh r2, [r0, #0xa]
	add r0, r1, #0
	add r0, #0x26
	ldr r0, [r5, r0]
	strh r7, [r0, #8]
	sub r0, r1, #2
	ldrh r0, [r4, r0]
	add r1, #0x26
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1e
	ldr r0, [r5, r1]
	strb r2, [r0, #0xd]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7868: .word 0x000001D2
	thumb_func_end ov96_021E7718

	thumb_func_start ov96_021E786C
ov96_021E786C: ; 0x021E786C
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x7e
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r0, r2]
	ldrb r2, [r0, #0xc]
	mov r0, #0x2c
	mul r0, r2
	add r4, r1, r0
	ldr r1, _021E7918 ; =0x000008FE
	ldr r0, [sp]
	ldrh r1, [r0, r1]
	ldrh r0, [r4, #6]
	cmp r1, r0
	bls _021E7914
	strh r1, [r4, #6]
	ldrh r1, [r4, #6]
	ldr r0, _021E791C ; =0x000003E7
	cmp r1, r0
	bls _021E7896
	strh r0, [r4, #6]
_021E7896:
	ldr r1, _021E791C ; =0x000003E7
	ldr r5, [sp]
	ldr r7, _021E7920 ; =0x000008B4
	mov r3, #0
	add r6, r4, #0
	add r0, r1, #0
_021E78A2:
	ldrh r2, [r5, r7]
	strh r2, [r6]
	cmp r2, r0
	bls _021E78AC
	strh r1, [r6]
_021E78AC:
	add r3, r3, #1
	add r5, r5, #2
	add r6, r6, #2
	cmp r3, #3
	blt _021E78A2
	ldr r0, [sp]
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r0, [sp]
	bl ov96_021E5D50
	add r1, r4, #0
	ldr r3, _021E7924 ; =0xFFFEFFFF
	mov r2, #0
	add r1, #8
_021E78CC:
	ldr r6, [r1]
	ldr r5, _021E7928 ; =0xFFFFFE00
	ldrh r7, [r0]
	and r5, r6
	ldr r6, _021E792C ; =0x000001FF
	add r2, r2, #1
	and r6, r7
	orr r6, r5
	ldr r5, _021E7930 ; =0xFFFFC1FF
	str r6, [r1]
	and r5, r6
	ldrh r6, [r0, #2]
	lsl r6, r6, #0x1b
	lsr r6, r6, #0x12
	orr r6, r5
	ldr r5, _021E7934 ; =0xFFFF3FFF
	str r6, [r1]
	and r5, r6
	ldrb r6, [r0, #0x11]
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x10
	orr r5, r6
	str r5, [r1]
	ldrb r6, [r0, #0x10]
	and r5, r3
	lsl r6, r6, #0x1f
	lsr r6, r6, #0xf
	orr r5, r6
	str r5, [r1]
	ldr r5, [r0, #4]
	add r0, #0x28
	str r5, [r4, #0xc]
	add r1, #0xc
	add r4, #0xc
	cmp r2, #3
	blt _021E78CC
_021E7914:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7918: .word 0x000008FE
_021E791C: .word 0x000003E7
_021E7920: .word 0x000008B4
_021E7924: .word 0xFFFEFFFF
_021E7928: .word 0xFFFFFE00
_021E792C: .word 0x000001FF
_021E7930: .word 0xFFFFC1FF
_021E7934: .word 0xFFFF3FFF
	thumb_func_end ov96_021E786C

	thumb_func_start ov96_021E7938
ov96_021E7938: ; 0x021E7938
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd0
	str r0, [sp]
	mov r0, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
_021E7944:
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r1, r0, r1
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x2c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r2, r0, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r7, r1, r2
	ldr r2, [r7, #0x28]
	ldr r1, _021E7A20 ; =0x0098967F
	cmp r2, r1
	bhs _021E796C
	add r1, r2, #1
	str r1, [r7, #0x28]
_021E796C:
	ldr r1, _021E7A24 ; =_0221A7D8
	mov r3, #0
	ldrb r0, [r1, r0]
	add r2, sp, #0x30
	str r0, [sp, #0xc]
_021E7976:
	lsl r0, r3, #3
	add r5, r7, r0
	ldrh r0, [r7, r0]
	lsl r1, r3, #5
	add r6, r2, r1
	strh r0, [r2, r1]
	mov r4, #0
_021E7984:
	lsl r1, r4, #1
	add r0, r5, r1
	ldrh r0, [r0, #2]
	add r1, r6, r1
	strh r0, [r1, #2]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021E7984
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #5
	blo _021E7976
	ldr r0, [sp]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r2, r0, #0x15
	ldr r0, [sp, #8]
	lsl r1, r0, #1
	ldr r0, [sp]
	add r0, r0, r2
	add r1, r1, r0
	ldr r0, _021E7A28 ; =0x000008D4
	ldrh r1, [r1, r0]
	add r0, sp, #0x10
	strh r1, [r0]
	ldr r0, [sp]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r1, #0x3f
	ldr r0, [sp]
	lsl r1, r1, #4
	add r1, r0, r1
	mov r0, #0x7c
	mul r0, r2
	add r0, r1, r0
	mov r1, #0
	add r3, sp, #0x10
	mov r2, #0x28
_021E79DC:
	add r5, r1, #0
	mul r5, r2
	add r4, r0, r5
	ldrh r4, [r4, #2]
	ldrh r5, [r0, r5]
	lsl r4, r4, #0xa
	add r4, r4, r5
	lsl r5, r1, #1
	add r1, r1, #1
	lsl r1, r1, #0x18
	add r5, r3, r5
	lsr r1, r1, #0x18
	strh r4, [r5, #2]
	cmp r1, #3
	blo _021E79DC
	ldr r0, [sp, #0xc]
	add r1, r3, #0
	add r2, sp, #0x30
	bl ov96_021E7C04
	ldr r0, [sp]
	add r1, r7, #0
	add r2, sp, #0x30
	bl ov96_021E7C94
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #3
	blo _021E7944
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7A20: .word 0x0098967F
_021E7A24: .word _0221A7D8
_021E7A28: .word 0x000008D4
	thumb_func_end ov96_021E7938

	thumb_func_start ov96_021E7A2C
ov96_021E7A2C: ; 0x021E7A2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xe0
	str r0, [sp]
	str r1, [sp, #4]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #8]
_021E7A42:
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r1, r0, r1
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0xa4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r2, r0, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r1, r1, r2
	str r1, [sp, #0x14]
	ldr r2, [r1, #0x28]
	ldr r1, _021E7B9C ; =0x0098967F
	cmp r2, r1
	bhs _021E7A6E
	ldr r1, [sp, #0x14]
	add r2, r2, #1
	str r2, [r1, #0x28]
_021E7A6E:
	ldr r1, _021E7BA0 ; =_0221A7D8
	add r4, sp, #0x40
	ldrb r0, [r1, r0]
	mov r1, #0
	mov r7, #0x18
	str r0, [sp, #0x18]
_021E7A7A:
	ldr r2, [sp, #0x14]
	lsl r3, r1, #3
	add r6, r2, r3
	ldrh r2, [r2, r3]
	lsl r5, r1, #5
	add r0, r4, r5
	strh r2, [r4, r5]
	mov r5, #0
_021E7A8A:
	lsl r3, r5, #1
	add r2, r6, r3
	ldrh r2, [r2, #2]
	add r3, r0, r3
	strh r2, [r3, #2]
	add r2, r5, #1
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	cmp r5, #3
	blo _021E7A8A
	add r3, r1, #0
	ldr r2, [sp, #0x14]
	mul r3, r7
	add r6, r2, r3
	ldr r2, [r6, #0x2c]
	mov r5, #0
	str r2, [r0, #8]
_021E7AAC:
	lsl r3, r5, #1
	add r2, r6, r3
	ldrh r2, [r2, #0x30]
	add r3, r0, r3
	strh r2, [r3, #0xc]
	add r2, r5, #1
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	cmp r5, #8
	blo _021E7AAC
	add r6, #0x40
	ldrb r2, [r6]
	strb r2, [r0, #0x1c]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #5
	blo _021E7A7A
	ldr r0, [sp, #8]
	mov r7, #0
	lsl r1, r0, #1
	ldr r0, [sp]
	add r5, sp, #0x20
	add r0, r0, r1
	str r0, [sp, #0xc]
	mov r1, #0x3f
	ldr r0, [sp]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [sp, #0x1c]
	mov r4, #0x28
_021E7AEA:
	ldr r0, [sp, #0x10]
	add r0, r0, r7
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	lsl r2, r1, #3
	add r2, r0, r2
	ldr r0, _021E7BA4 ; =0x000008D4
	ldrh r2, [r2, r0]
	add r0, sp, #0x20
	strh r2, [r0]
	mov r0, #0x7c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x1c]
	add r0, r0, r2
	mov r2, #0
_021E7B18:
	add r6, r2, #0
	mul r6, r4
	add r3, r0, r6
	ldrh r3, [r3, #2]
	ldrh r6, [r0, r6]
	lsl r3, r3, #0xa
	add r3, r3, r6
	lsl r6, r2, #1
	add r2, r2, #1
	lsl r2, r2, #0x18
	add r6, r5, r6
	lsr r2, r2, #0x18
	strh r3, [r6, #2]
	cmp r2, #3
	blo _021E7B18
	ldr r0, [sp]
	bl ov96_021E5F34
	add r6, r0, #0
	bl PlayerProfile_GetTrainerID
	str r0, [sp, #0x28]
	add r0, r6, #0
	bl PlayerProfile_GetNamePtr
	mov r1, #0
_021E7B4C:
	lsl r2, r1, #1
	ldrh r3, [r0, r2]
	add r1, r1, #1
	lsl r1, r1, #0x18
	add r2, r5, r2
	lsr r1, r1, #0x18
	strh r3, [r2, #0xc]
	cmp r1, #8
	blo _021E7B4C
	add r0, r6, #0
	bl PlayerProfile_GetLanguage
	add r1, sp, #0x20
	strb r0, [r1, #0x1c]
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	add r2, sp, #0x40
	bl ov96_021E7C04
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	blo _021E7AEA
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x40
	bl ov96_021E7CC8
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	bhs _021E7B96
	b _021E7A42
_021E7B96:
	add sp, #0xe0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7B9C: .word 0x0098967F
_021E7BA0: .word _0221A7D8
_021E7BA4: .word 0x000008D4
	thumb_func_end ov96_021E7A2C

	thumb_func_start ov96_021E7BA8
ov96_021E7BA8: ; 0x021E7BA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov r4, #0
_021E7BB4:
	lsl r0, r4, #2
	add r1, r7, r0
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021E7BF8 ; =_0221A7D8
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	lsl r0, r4, #1
	add r6, r7, r0
	mov r0, #0x2c
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp]
	ldrb r2, [r2, r5]
	ldrh r0, [r0, r1]
	ldr r1, _021E7BFC ; =0x000008D4
	ldrh r1, [r6, r1]
	bl ov96_021E7D18
	cmp r0, #0
	beq _021E7BEA
	ldr r0, _021E7C00 ; =0x000008B4
	lsl r1, r5, #1
	ldrh r2, [r6, r0]
	ldr r0, [sp, #4]
	strh r2, [r0, r1]
_021E7BEA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021E7BB4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7BF8: .word _0221A7D8
_021E7BFC: .word 0x000008D4
_021E7C00: .word 0x000008B4
	thumb_func_end ov96_021E7BA8

	thumb_func_start ov96_021E7C04
ov96_021E7C04: ; 0x021E7C04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r2, #0
	add r7, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	add r0, #0x80
	ldrh r0, [r0]
	ldrh r1, [r4]
	add r2, r7, #0
	bl ov96_021E7D18
	cmp r0, #0
	beq _021E7C90
	add r6, #0x80
	ldmia r4!, {r0, r1}
	add r5, r6, #0
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	mov r4, #4
_021E7C36:
	add r0, r5, #0
	sub r0, #0x20
	ldrh r0, [r0]
	ldrh r1, [r5]
	add r2, r7, #0
	bl ov96_021E7D18
	cmp r0, #0
	beq _021E7C90
	add r3, r5, #0
	sub r3, #0x20
	add r2, sp, #0
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, r5, #0
	add r3, r5, #0
	sub r2, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, r5, #0
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	sub r4, r4, #1
	sub r5, #0x20
	stmia r2!, {r0, r1}
	cmp r4, #0
	bgt _021E7C36
_021E7C90:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E7C04

	thumb_func_start ov96_021E7C94
ov96_021E7C94: ; 0x021E7C94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov96_021E5F24
	mov r2, #0
	add r1, r2, #0
_021E7CA2:
	ldrh r0, [r4]
	add r3, r1, #0
	add r6, r4, #0
	strh r0, [r5]
	add r7, r5, #0
_021E7CAC:
	ldrh r0, [r6, #2]
	add r3, r3, #1
	add r6, r6, #2
	strh r0, [r7, #2]
	add r7, r7, #2
	cmp r3, #3
	blt _021E7CAC
	add r2, r2, #1
	add r4, #0x20
	add r5, #8
	cmp r2, #5
	blt _021E7CA2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E7C94

	thumb_func_start ov96_021E7CC8
ov96_021E7CC8: ; 0x021E7CC8
	push {r4, r5, r6, r7}
	mov r0, #0
	add r3, r1, #0
_021E7CCE:
	ldrh r4, [r2]
	mov r5, #0
	add r6, r2, #0
	strh r4, [r1]
	add r7, r1, #0
_021E7CD8:
	ldrh r4, [r6, #2]
	add r5, r5, #1
	add r6, r6, #2
	strh r4, [r7, #2]
	add r7, r7, #2
	cmp r5, #3
	blt _021E7CD8
	ldr r4, [r2, #8]
	mov r5, #0
	str r4, [r3, #0x2c]
	add r6, r2, #0
	add r7, r3, #0
_021E7CF0:
	ldrh r4, [r6, #0xc]
	add r5, r5, #1
	add r6, r6, #2
	strh r4, [r7, #0x30]
	add r7, r7, #2
	cmp r5, #8
	blt _021E7CF0
	ldrb r5, [r2, #0x1c]
	add r4, r3, #0
	add r4, #0x40
	add r0, r0, #1
	strb r5, [r4]
	add r2, #0x20
	add r1, #8
	add r3, #0x18
	cmp r0, #5
	blt _021E7CCE
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E7CC8

	thumb_func_start ov96_021E7D18
ov96_021E7D18: ; 0x021E7D18
	push {r3, lr}
	ldr r3, _021E7D2C ; =0x0000FFFF
	cmp r0, r3
	bne _021E7D24
	mov r0, #1
	pop {r3, pc}
_021E7D24:
	bl ov96_021E7D30
	pop {r3, pc}
	nop
_021E7D2C: .word 0x0000FFFF
	thumb_func_end ov96_021E7D18

	thumb_func_start ov96_021E7D30
ov96_021E7D30: ; 0x021E7D30
	push {r4, lr}
	mov r4, #0
	cmp r2, #0
	bne _021E7D4A
	ldr r2, _021E7D68 ; =0x0000FFFF
	cmp r0, r2
	bne _021E7D42
	mov r4, #1
	b _021E7D64
_021E7D42:
	cmp r0, r1
	bge _021E7D64
	mov r4, #1
	b _021E7D64
_021E7D4A:
	cmp r2, #1
	bne _021E7D60
	ldr r2, _021E7D68 ; =0x0000FFFF
	cmp r0, r2
	bne _021E7D58
	mov r4, #1
	b _021E7D64
_021E7D58:
	cmp r0, r1
	ble _021E7D64
	mov r4, #1
	b _021E7D64
_021E7D60:
	bl GF_AssertFail
_021E7D64:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_021E7D68: .word 0x0000FFFF
	thumb_func_end ov96_021E7D30

	thumb_func_start ov96_021E7D6C
ov96_021E7D6C: ; 0x021E7D6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r1, [sp]
	ldr r1, _021E7F3C ; =0x0000072C
	add r5, r0, #0
	add r7, r5, r1
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, _021E7F40 ; =0x0098967F
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021E7DCE
	ldr r2, [sp]
	mov r0, #1
	add r2, #0x38
	bl ov96_021E7F98
	mov r0, #0x1d
	lsl r0, r0, #4
	ldrh r0, [r7, r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _021E7DBA
	ldr r2, [sp]
	ldr r1, _021E7F40 ; =0x0098967F
	mov r0, #1
	add r2, #0x3c
	bl ov96_021E7F98
	add r0, r5, #0
	bl ov96_021E7F48
	b _021E7E0A
_021E7DBA:
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E7E0A
	ldr r2, [sp]
	ldr r1, _021E7F40 ; =0x0098967F
	mov r0, #1
	add r2, #0x40
	bl ov96_021E7F98
	b _021E7E0A
_021E7DCE:
	ldr r2, [sp]
	mov r0, #1
	add r2, r2, #4
	bl ov96_021E7F98
	mov r0, #0x1d
	lsl r0, r0, #4
	ldrh r0, [r7, r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _021E7DF8
	ldr r2, [sp]
	ldr r1, _021E7F40 ; =0x0098967F
	mov r0, #1
	add r2, #8
	bl ov96_021E7F98
	add r0, r5, #0
	bl ov96_021E7F48
	b _021E7E0A
_021E7DF8:
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E7E0A
	ldr r2, [sp]
	ldr r1, _021E7F40 ; =0x0098967F
	mov r0, #1
	add r2, #0xc
	bl ov96_021E7F98
_021E7E0A:
	ldr r0, _021E7F44 ; =0x0000072A
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _021E7E68
	ldr r0, [sp]
	ldr r6, [sp]
	str r0, [sp, #0xc]
	add r0, #0x6c
	str r0, [sp, #0xc]
	add r6, #0x44
_021E7E20:
	mov r1, #0x72
	add r0, r7, r4
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021E7E46
	lsl r2, r4, #2
	add r3, r5, r2
	mov r2, #0xf6
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	ldr r1, _021E7F40 ; =0x0098967F
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	mov r0, #1
	add r2, r6, r2
	bl ov96_021E7F98
	b _021E7E5A
_021E7E46:
	mov r1, #0x73
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021E7E5A
	ldr r1, _021E7F40 ; =0x0098967F
	ldr r2, [sp, #0xc]
	mov r0, #1
	bl ov96_021E7F98
_021E7E5A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021E7F44 ; =0x0000072A
	ldrb r0, [r5, r0]
	cmp r4, r0
	blo _021E7E20
_021E7E68:
	ldr r0, [sp, #8]
	mov r1, #0x60
	mul r1, r0
	add r0, r7, r1
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r4, _021E7F40 ; =0x0098967F
	str r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r6, #0
	str r0, [sp, #0x14]
	add r0, #0x1c
	str r0, [sp, #0x14]
	ldr r0, [sp]
	str r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp]
	str r0, [sp, #0x1c]
	add r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r0, [sp, #0x20]
	add r0, #0x28
	str r0, [sp, #0x20]
	ldr r0, [sp]
	str r0, [sp, #0x24]
	add r0, #0x2c
	str r0, [sp, #0x24]
	ldr r0, [sp]
	str r0, [sp, #0x28]
	add r0, #0x30
	str r0, [sp, #0x28]
	ldr r0, [sp]
	str r0, [sp, #0x2c]
	add r0, #0x34
	str r0, [sp, #0x2c]
_021E7EB6:
	ldr r0, [sp, #4]
	lsl r1, r6, #5
	add r5, r0, r1
	ldr r0, [r0, r1]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x14]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x18]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0xc]
	ldr r2, [sp, #0x1c]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x20]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0x14]
	ldr r2, [sp, #0x24]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0x28]
	add r1, r4, #0
	bl ov96_021E7F98
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x2c]
	add r1, r4, #0
	bl ov96_021E7F98
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _021E7EB6
	mov r0, #6
	lsl r0, r0, #6
	ldr r2, [sp]
	ldr r0, [r7, r0]
	ldr r1, _021E7F40 ; =0x0098967F
	add r2, #0x10
	bl ov96_021E7F98
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [sp]
	ldr r0, [r7, r0]
	add r2, #0x14
	ldr r1, _021E7F40 ; =0x0098967F
	str r2, [sp]
	bl ov96_021E7F98
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7F3C: .word 0x0000072C
_021E7F40: .word 0x0098967F
_021E7F44: .word 0x0000072A
	thumb_func_end ov96_021E7D6C

	thumb_func_start ov96_021E7F48
ov96_021E7F48: ; 0x021E7F48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_02031B00
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0x3f
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0x7c
	mul r0, r2
	add r3, r1, r0
	mov r2, #0
	mov r5, #0x28
_021E7F74:
	add r6, r2, #0
	mul r6, r5
	add r1, r3, r6
	ldrh r6, [r3, r6]
	lsl r7, r2, #2
	add r0, r4, r7
	strh r6, [r4, r7]
	ldrh r6, [r1, #2]
	strb r6, [r0, #3]
	ldrb r1, [r1, #0x11]
	strb r1, [r0, #2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #3
	blo _021E7F74
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E7F48

	thumb_func_start ov96_021E7F98
ov96_021E7F98: ; 0x021E7F98
	ldr r3, [r2]
	add r0, r3, r0
	cmp r0, r1
	bls _021E7FA4
	str r1, [r2]
	bx lr
_021E7FA4:
	str r0, [r2]
	bx lr
	thumb_func_end ov96_021E7F98

	thumb_func_start ov96_021E7FA8
ov96_021E7FA8: ; 0x021E7FA8
	push {r3, lr}
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldrb r1, [r1, #0xc]
	cmp r1, #9
	bhi _021E8024
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E7FC2: ; jump table
	.short _021E7FD6 - _021E7FC2 - 2 ; case 0
	.short _021E7FDE - _021E7FC2 - 2 ; case 1
	.short _021E7FE6 - _021E7FC2 - 2 ; case 2
	.short _021E7FEE - _021E7FC2 - 2 ; case 3
	.short _021E7FF6 - _021E7FC2 - 2 ; case 4
	.short _021E7FFE - _021E7FC2 - 2 ; case 5
	.short _021E8006 - _021E7FC2 - 2 ; case 6
	.short _021E800E - _021E7FC2 - 2 ; case 7
	.short _021E8016 - _021E7FC2 - 2 ; case 8
	.short _021E801E - _021E7FC2 - 2 ; case 9
_021E7FD6:
	mov r1, #1
	bl ov96_021E8028
	pop {r3, pc}
_021E7FDE:
	mov r1, #2
	bl ov96_021E8028
	pop {r3, pc}
_021E7FE6:
	mov r1, #4
	bl ov96_021E8028
	pop {r3, pc}
_021E7FEE:
	mov r1, #8
	bl ov96_021E8028
	pop {r3, pc}
_021E7FF6:
	mov r1, #0x10
	bl ov96_021E8028
	pop {r3, pc}
_021E7FFE:
	mov r1, #0x11
	bl ov96_021E8028
	pop {r3, pc}
_021E8006:
	mov r1, #0x14
	bl ov96_021E8028
	pop {r3, pc}
_021E800E:
	mov r1, #6
	bl ov96_021E8028
	pop {r3, pc}
_021E8016:
	mov r1, #0xa
	bl ov96_021E8028
	pop {r3, pc}
_021E801E:
	mov r1, #9
	bl ov96_021E8028
_021E8024:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021E7FA8

	thumb_func_start ov96_021E8028
ov96_021E8028: ; 0x021E8028
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	add r7, r0, #0
	mov r4, #0
_021E803E:
	mov r2, #0x28
	mul r2, r4
	add r3, r5, r2
	mov r2, #0x81
	lsl r2, r2, #2
	ldrh r2, [r3, r2]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_020319F8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021E803E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8028

	thumb_func_start ov96_021E8060
ov96_021E8060: ; 0x021E8060
	mov r3, #0
	mov r2, #0x2c
_021E8064:
	add r1, r3, #0
	mul r1, r2
	add r1, r0, r1
	ldrh r1, [r1, #6]
	cmp r1, #0
	bne _021E8074
	mov r0, #0
	bx lr
_021E8074:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #5
	blo _021E8064
	mov r0, #1
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E8060

	thumb_func_start ov96_021E8084
ov96_021E8084: ; 0x021E8084
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	add r7, r0, #0
	mov r4, #0
_021E8098:
	mov r0, #0x28
	mul r0, r4
	add r1, r6, r0
	mov r0, #0x81
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	sub r5, r0, #1
	add r0, r7, #0
	bl sub_02031978
	ldrb r0, [r0, r5]
	cmp r0, #0x1f
	bne _021E80B6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E80B6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021E8098
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E8084

	thumb_func_start ov96_021E80C4
ov96_021E80C4: ; 0x021E80C4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	bl sub_020319DC
	ldr r6, _021E8110 ; =ov96_0221A894
	ldr r7, _021E8114 ; =_0221A7D8
	add r5, r0, #0
	mov r4, #0
_021E80DE:
	mov r0, #0x2c
	mul r0, r4
	ldrh r1, [r5, r0]
	ldr r0, _021E8118 ; =0x0000FFFF
	cmp r1, r0
	bne _021E80EE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E80EE:
	lsl r0, r4, #1
	ldrh r0, [r6, r0]
	ldrb r2, [r7, r4]
	bl ov96_021E7D30
	cmp r0, #0
	bne _021E8100
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E8100:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021E80DE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8110: .word ov96_0221A894
_021E8114: .word _0221A7D8
_021E8118: .word 0x0000FFFF
	thumb_func_end ov96_021E80C4

	thumb_func_start ov96_021E811C
ov96_021E811C: ; 0x021E811C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r1, #0xa
	strb r1, [r5]
	ldrb r6, [r0, #0xc]
	ldr r0, [r0, #4]
	mov r7, #0
	cmp r0, #1
	bne _021E8160
	cmp r6, #0xa
	bhi _021E815A
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8140: ; jump table
	.short _021E815A - _021E8140 - 2 ; case 0
	.short _021E815A - _021E8140 - 2 ; case 1
	.short _021E815A - _021E8140 - 2 ; case 2
	.short _021E815A - _021E8140 - 2 ; case 3
	.short _021E815A - _021E8140 - 2 ; case 4
	.short _021E8156 - _021E8140 - 2 ; case 5
	.short _021E8156 - _021E8140 - 2 ; case 6
	.short _021E8156 - _021E8140 - 2 ; case 7
	.short _021E8156 - _021E8140 - 2 ; case 8
	.short _021E8156 - _021E8140 - 2 ; case 9
	.short _021E8156 - _021E8140 - 2 ; case 10
_021E8156:
	mov r7, #1
	b _021E8182
_021E815A:
	bl GF_AssertFail
	b _021E8182
_021E8160:
	cmp r6, #4
	bhi _021E817E
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8170: ; jump table
	.short _021E817A - _021E8170 - 2 ; case 0
	.short _021E817A - _021E8170 - 2 ; case 1
	.short _021E817A - _021E8170 - 2 ; case 2
	.short _021E817A - _021E8170 - 2 ; case 3
	.short _021E817A - _021E8170 - 2 ; case 4
_021E817A:
	mov r7, #1
	b _021E8182
_021E817E:
	bl GF_AssertFail
_021E8182:
	cmp r7, #0
	beq _021E81CE
	cmp r6, #0xa
	bne _021E81B4
	bl LCRandom
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	cmp r4, #0
	bls _021E81CE
	ldr r1, _021E81D0 ; =ov96_0221A95C
	lsl r0, r0, #2
	add r1, r1, r0
_021E81A4:
	ldrb r0, [r1, r2]
	strb r0, [r5, r2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r4
	blo _021E81A4
	pop {r3, r4, r5, r6, r7, pc}
_021E81B4:
	mov r2, #0
	cmp r4, #0
	bls _021E81CE
	ldr r1, _021E81D4 ; =ov96_0221A934
	lsl r0, r6, #2
	add r1, r1, r0
_021E81C0:
	ldrb r0, [r1, r2]
	strb r0, [r5, r2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r4
	blo _021E81C0
_021E81CE:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E81D0: .word ov96_0221A95C
_021E81D4: .word ov96_0221A934
	thumb_func_end ov96_021E811C

	thumb_func_start ov96_021E81D8
ov96_021E81D8: ; 0x021E81D8
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r0, [r4, #4]
	add r1, sp, #4
	add r2, sp, #0
	bl ov96_021EAEC8
	ldr r0, [r4, #8]
	mov r1, #1
	bl Set2dSpriteVisibleFlag
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, sp, #8
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	bl Sprite_SetMatrix
	ldr r0, [r4, #4]
	bl ov96_021EB120
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _021E821E
	mov r1, #1
	bl Set2dSpriteVisibleFlag
	add sp, #0x14
	pop {r3, r4, pc}
_021E821E:
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov96_021E81D8

	thumb_func_start ov96_021E8228
ov96_021E8228: ; 0x021E8228
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x18]
	add r1, r3, #0
	bne _021E825E
	bl ov96_021E5F24
	cmp r4, r0
	beq _021E8244
	bl GF_AssertFail
_021E8244:
	cmp r6, #1
	beq _021E824C
	bl GF_AssertFail
_021E824C:
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	ldr r1, _021E830C ; =0x0000270F
	cmp r2, r1
	bhs _021E830A
	add r1, r2, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E825E:
	cmp r7, #3
	blo _021E8266
	bl GF_AssertFail
_021E8266:
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _021E829A
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	beq _021E8280
	bl GF_AssertFail
_021E8280:
	ldr r2, _021E8310 ; =0x0000072C
	lsl r1, r6, #0x18
	add r3, r5, r2
	mov r2, #0x60
	mul r2, r4
	add r3, r3, r2
	lsl r2, r7, #5
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r3, r2
	bl ov96_021E8340
	pop {r3, r4, r5, r6, r7, pc}
_021E829A:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E82EA
	add r0, r5, #0
	bl ov96_021E5D34
	cmp r4, r0
	blo _021E82C8
	ldr r2, _021E8310 ; =0x0000072C
	lsl r1, r6, #0x18
	add r3, r5, r2
	mov r2, #0x60
	mul r2, r4
	add r3, r3, r2
	lsl r2, r7, #5
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r3, r2
	bl ov96_021E8340
	pop {r3, r4, r5, r6, r7, pc}
_021E82C8:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r4, r0
	beq _021E82D6
	bl GF_AssertFail
_021E82D6:
	ldr r2, _021E8314 ; =0x00000B44
	lsl r1, r6, #0x18
	add r3, r5, r2
	lsl r2, r7, #5
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r3, r2
	bl ov96_021E8340
	pop {r3, r4, r5, r6, r7, pc}
_021E82EA:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r4, r0
	beq _021E82F8
	bl GF_AssertFail
_021E82F8:
	ldr r2, _021E8314 ; =0x00000B44
	lsl r1, r6, #0x18
	add r3, r5, r2
	lsl r2, r7, #5
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r3, r2
	bl ov96_021E8340
_021E830A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E830C: .word 0x0000270F
_021E8310: .word 0x0000072C
_021E8314: .word 0x00000B44
	thumb_func_end ov96_021E8228

	thumb_func_start ov96_021E8318
ov96_021E8318: ; 0x021E8318
	ldr r2, _021E8320 ; =0x00000D2A
	strh r1, [r0, r2]
	bx lr
	nop
_021E8320: .word 0x00000D2A
	thumb_func_end ov96_021E8318

	thumb_func_start ov96_021E8324
ov96_021E8324: ; 0x021E8324
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021E833C ; =0x00000D6C
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E8336
	bl GF_AssertFail
_021E8336:
	ldr r0, _021E833C ; =0x00000D6C
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E833C: .word 0x00000D6C
	thumb_func_end ov96_021E8324

	thumb_func_start ov96_021E8340
ov96_021E8340: ; 0x021E8340
	push {r3, lr}
	cmp r0, #8
	bhi _021E8382
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8352: ; jump table
	.short _021E8382 - _021E8352 - 2 ; case 0
	.short _021E8364 - _021E8352 - 2 ; case 1
	.short _021E8366 - _021E8352 - 2 ; case 2
	.short _021E836A - _021E8352 - 2 ; case 3
	.short _021E836E - _021E8352 - 2 ; case 4
	.short _021E8372 - _021E8352 - 2 ; case 5
	.short _021E8376 - _021E8352 - 2 ; case 6
	.short _021E837A - _021E8352 - 2 ; case 7
	.short _021E837E - _021E8352 - 2 ; case 8
_021E8364:
	b _021E8388
_021E8366:
	add r2, r2, #4
	b _021E8388
_021E836A:
	add r2, #8
	b _021E8388
_021E836E:
	add r2, #0xc
	b _021E8388
_021E8372:
	add r2, #0x10
	b _021E8388
_021E8376:
	add r2, #0x14
	b _021E8388
_021E837A:
	add r2, #0x18
	b _021E8388
_021E837E:
	add r2, #0x1c
	b _021E8388
_021E8382:
	bl GF_AssertFail
	pop {r3, pc}
_021E8388:
	ldr r0, [r2]
	add r1, r0, r1
	ldr r0, _021E8398 ; =0x0000270F
	str r1, [r2]
	cmp r1, r0
	bls _021E8396
	str r0, [r2]
_021E8396:
	pop {r3, pc}
	.balign 4, 0
_021E8398: .word 0x0000270F
	thumb_func_end ov96_021E8340

	thumb_func_start ov96_021E839C
ov96_021E839C: ; 0x021E839C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl Save_Pokeathlon_Get
	add r6, r0, #0
	ldr r0, _021E8418 ; =0x00000D2A
	ldrh r1, [r5, r0]
	ldr r0, _021E841C ; =0x0000FFFF
	cmp r1, r0
	bne _021E83C0
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E83C0:
	add r0, r5, #0
	bl ov96_021E5E44
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021E83DE
	add r0, r6, #0
	bl sub_020319E4
	mov r1, #0xa4
	b _021E83E6
_021E83DE:
	add r0, r6, #0
	bl sub_020319DC
	mov r1, #0x2c
_021E83E6:
	mul r1, r4
	add r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _021E841C ; =0x0000FFFF
	cmp r0, r1
	bne _021E83F6
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E83F6:
	ldr r1, _021E8420 ; =_0221A7D8
	ldrb r1, [r1, r4]
	cmp r1, #0
	ldr r1, _021E8418 ; =0x00000D2A
	bne _021E840A
	ldrh r1, [r5, r1]
	cmp r0, r1
	bhs _021E8414
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E840A:
	ldrh r1, [r5, r1]
	cmp r0, r1
	bls _021E8414
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E8414:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E8418: .word 0x00000D2A
_021E841C: .word 0x0000FFFF
_021E8420: .word _0221A7D8
	thumb_func_end ov96_021E839C

	thumb_func_start ov96_021E8424
ov96_021E8424: ; 0x021E8424
	push {r3, lr}
	cmp r0, #0
	beq _021E843A
	cmp r0, #0x64
	bhi _021E843A
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x17
	ldr r0, _021E8444 ; =ov96_0221AA20
	ldrh r0, [r0, r1]
	pop {r3, pc}
_021E843A:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_021E8444: .word ov96_0221AA20
	thumb_func_end ov96_021E8424

	thumb_func_start ov96_021E8448
ov96_021E8448: ; 0x021E8448
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	beq _021E847A
	cmp r5, #0x64
	bhi _021E847A
	bl PokeathlonOvy_GetHeapID
	add r1, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	bl NARC_New
	add r4, r0, #0
	sub r1, r5, #1
	add r2, sp, #0
	bl NARC_ReadWholeMember
	add r0, r4, #0
	bl NARC_Delete
	add r0, sp, #0
	add sp, #8
	ldrb r0, [r0, #7]
	pop {r3, r4, r5, pc}
_021E847A:
	bl GF_AssertFail
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E8448

	thumb_func_start ov96_021E8484
ov96_021E8484: ; 0x021E8484
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	add r4, r1, #0
	bl PokeathlonOvy_GetHeapID
	add r3, r0, #0
	ldr r2, _021E8608 ; =0x00000136
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	str r0, [sp, #0x14]
	mov r0, #4
	sub r0, r0, r4
	str r0, [sp, #4]
	mov r1, #0x7e
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r0, r4, #0
	ldrb r1, [r2, #0xc]
	ldrb r2, [r2, #0xf]
	add r3, sp, #0x2c
	bl ov96_021E860C
	ldr r0, [sp]
	bl PokeathlonOvy_GetHeapID
	add r1, r0, #0
	mov r0, #0xa9
	bl NARC_New
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl PokeathlonOvy_GetHeapID
	add r1, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	bl NARC_New
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	cmp r0, #4
	bge _021E84E6
	blt _021E84E8
_021E84E6:
	b _021E85F0
_021E84E8:
	add r0, sp, #0x2c
	str r0, [sp, #8]
_021E84EC:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov96_021E5D40
	add r5, r0, #0
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	str r0, [r5]
	cmp r0, #0
	bne _021E8504
	bl GF_AssertFail
_021E8504:
	ldr r1, [r5]
	ldr r0, [sp, #0xc]
	sub r1, r1, #1
	add r2, sp, #0x24
	bl NARC_ReadWholeMember
	add r1, sp, #0x24
	ldrb r1, [r1, #6]
	ldr r0, [sp, #0x14]
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov96_021E5F34
	add r6, r0, #0
	add r0, r4, #0
	bl String_cstr
	add r1, r0, #0
	add r0, r6, #0
	bl Save_Profile_PlayerName_Set
	add r0, r4, #0
	bl String_Delete
	mov r0, #0
	add r6, r5, #0
	str r0, [sp, #0x18]
	add r4, sp, #0x24
	add r6, #0x16
	add r7, sp, #0x24
_021E8546:
	ldrh r0, [r4]
	mov r1, #0x12
	strh r0, [r5, #4]
	mov r0, #0
	strh r0, [r5, #6]
	strb r0, [r5, #0x14]
	str r0, [r5, #8]
	ldrh r0, [r5, #4]
	bl GetMonBaseStat
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021E856A
	cmp r0, #0xfe
	beq _021E856E
	cmp r0, #0xff
	beq _021E8572
	b _021E8576
_021E856A:
	mov r0, #0
	b _021E8578
_021E856E:
	mov r0, #1
	b _021E8578
_021E8572:
	mov r0, #2
	b _021E8578
_021E8576:
	mov r0, #0
_021E8578:
	strb r0, [r5, #0x15]
	ldrh r0, [r5, #4]
	mov r1, #0
	bl ov96_021E679C
	add r1, r0, #0
	add r2, sp, #0x2c
	ldr r0, [sp, #0x10]
	add r2, #3
	bl NARC_ReadWholeMember
	ldrb r0, [r7, #0xb]
	strb r0, [r5, #0xc]
	ldrb r0, [r7, #0xc]
	strb r0, [r5, #0xd]
	ldrb r0, [r7, #0xd]
	strb r0, [r5, #0xe]
	ldrb r0, [r7, #0xe]
	strb r0, [r5, #0xf]
	ldrb r0, [r7, #0xf]
	strb r0, [r5, #0x10]
	ldr r0, [sp]
	bl PokeathlonOvy_GetHeapID
	add r1, r0, #0
	ldrh r0, [r4]
	bl GetSpeciesName
	str r0, [sp, #0x20]
	bl String_cstr
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0xb
	bl CopyU16StringArrayN
	ldr r0, [sp, #0x20]
	bl String_Delete
	ldr r0, [sp, #0x18]
	add r4, r4, #2
	add r0, r0, #1
	add r5, #0x28
	add r6, #0x28
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _021E8546
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	cmp r0, #4
	bge _021E85F0
	b _021E84EC
_021E85F0:
	ldr r0, [sp, #0xc]
	bl NARC_Delete
	ldr r0, [sp, #0x10]
	bl NARC_Delete
	ldr r0, [sp, #0x14]
	bl DestroyMsgData
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021E8608: .word 0x00000136
	thumb_func_end ov96_021E8484

	thumb_func_start ov96_021E860C
ov96_021E860C: ; 0x021E860C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0
	str r2, [sp]
	add r4, r3, #0
	add r2, r1, #0
_021E861C:
	strb r2, [r4, r1]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #3
	blo _021E861C
	cmp r0, #0xa
	bne _021E8678
	add r1, sp, #0xc
	mov r7, #0x19
	add r1, #1
_021E8632:
	add r0, r2, #1
	lsl r0, r0, #0x18
	strb r2, [r1, r2]
	lsr r2, r0, #0x18
	cmp r2, #0x19
	blo _021E8632
	mov r6, #0
	cmp r5, #0
	bls _021E86C4
_021E8644:
	bl LCRandom
	add r1, r7, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	add r1, sp, #0xc
	lsr r0, r0, #0x18
	add r1, #1
	ldrb r1, [r1, r0]
	strb r1, [r4, r6]
	add r1, #0x19
	strb r1, [r4, r6]
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	add r1, sp, #0xc
	add r1, #1
	ldrb r2, [r1, r7]
	strb r2, [r1, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, r5
	blo _021E8644
	b _021E86C4
_021E8678:
	mov r7, #5
	add r1, sp, #8
_021E867C:
	strb r2, [r1, r2]
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #5
	blo _021E867C
	mov r6, #0
	cmp r5, #0
	bls _021E86C4
	lsl r1, r0, #2
	add r0, r0, r1
	str r0, [sp, #4]
_021E8694:
	bl LCRandom
	add r1, r7, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	add r1, sp, #8
	ldrb r2, [r1, r0]
	ldr r1, [sp, #4]
	strb r2, [r4, r6]
	add r1, r2, r1
	strb r1, [r4, r6]
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	add r1, sp, #8
	ldrb r2, [r1, r7]
	strb r2, [r1, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, r5
	blo _021E8694
_021E86C4:
	ldr r0, [sp]
	cmp r0, #0
	beq _021E86E0
	mov r1, #0
	cmp r5, #0
	bls _021E86E0
_021E86D0:
	ldrb r0, [r4, r1]
	add r0, #0x32
	strb r0, [r4, r1]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blo _021E86D0
_021E86E0:
	mov r1, #0
	cmp r5, #0
	bls _021E86F6
_021E86E6:
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blo _021E86E6
_021E86F6:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E860C

	thumb_func_start ov96_021E86FC
ov96_021E86FC: ; 0x021E86FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	blo _021E870A
	bl GF_AssertFail
_021E870A:
	ldr r0, _021E8728 ; =0x00000D68
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E8716
	bl GF_AssertFail
_021E8716:
	bl sub_02031B10
	ldr r1, _021E8728 ; =0x00000D68
	ldr r2, [r5, r1]
	add r1, r0, #0
	mul r1, r4
	add r0, r2, r1
	pop {r3, r4, r5, pc}
	nop
_021E8728: .word 0x00000D68
	thumb_func_end ov96_021E86FC

	thumb_func_start ov96_021E872C
ov96_021E872C: ; 0x021E872C
	push {lr}
	sub sp, #0x24
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	lsl r0, r1, #0xc
	mov r1, #0
	str r0, [sp, #0x1c]
	lsl r0, r2, #0xc
	str r0, [sp, #0xc]
	lsl r0, r3, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0x20]
	str r1, [sp, #0x14]
	add r0, sp, #0x18
	add r1, sp, #0xc
	add r2, sp, #0
	bl VEC_Subtract
	add r0, sp, #0
	bl VEC_Mag
	ldr r1, [sp, #0x2c]
	str r0, [r1]
	ldr r1, [sp, #0x28]
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _021E8768
	add sp, #0x24
	mov r0, #1
	pop {pc}
_021E8768:
	mov r0, #0
	add sp, #0x24
	pop {pc}
	.balign 4, 0
	thumb_func_end ov96_021E872C

	thumb_func_start ov96_021E8770
ov96_021E8770: ; 0x021E8770
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x18]
	mov r1, #8
	str r2, [sp]
	add r5, r3, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0
	strh r5, [r4]
	strh r0, [r4, #2]
	str r0, [r4, #4]
	cmp r5, #1
	bne _021E879C
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0203410C
	b _021E87AA
_021E879C:
	ldr r2, [sp]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, #0
	bl ov96_021E883C
	str r0, [r4, #4]
_021E87AA:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8770

	thumb_func_start ov96_021E87B0
ov96_021E87B0: ; 0x021E87B0
	strh r1, [r0, #2]
	bx lr
	thumb_func_end ov96_021E87B0

	thumb_func_start ov96_021E87B4
ov96_021E87B4: ; 0x021E87B4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrh r0, [r4, #2]
	add r7, r1, #0
	add r5, r2, #0
	cmp r0, #0
	beq _021E87CC
	cmp r5, #0x26
	ble _021E87CC
	bl GF_AssertFail
_021E87CC:
	ldrh r0, [r4]
	cmp r0, #1
	bne _021E87DE
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02037030
	pop {r3, r4, r5, r6, r7, pc}
_021E87DE:
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r2, r7, #0
	add r3, r5, #0
	bl ov96_021E8914
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E87B4

	thumb_func_start ov96_021E87EC
ov96_021E87EC: ; 0x021E87EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r3, #0
	ldrh r3, [r6]
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	cmp r3, #1
	bne _021E8802
	bl sub_02036FD8
	pop {r3, r4, r5, r6, r7, pc}
_021E8802:
	ldr r0, [r6, #4]
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov96_021E8988
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E87EC

	thumb_func_start ov96_021E8810
ov96_021E8810: ; 0x021E8810
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	bne _021E8820
	ldr r0, [r4, #4]
	bl ov96_021E88FC
_021E8820:
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov96_021E8810

	thumb_func_start ov96_021E8828
ov96_021E8828: ; 0x021E8828
	push {r3, lr}
	ldrh r0, [r0]
	cmp r0, #1
	bne _021E8836
	bl sub_0203769C
	pop {r3, pc}
_021E8836:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8828

	thumb_func_start ov96_021E883C
ov96_021E883C: ; 0x021E883C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x1d
	add r5, r0, #0
	add r0, r3, #0
	lsl r1, r1, #4
	add r7, r2, #0
	bl AllocFromHeap
	mov r2, #0x1d
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	mov r1, #7
	lsl r1, r1, #6
	str r5, [r4, r1]
	add r0, r1, #4
	str r6, [r4, r0]
	add r1, #8
	str r7, [r4, r1]
	ldr r0, _021E887C ; =ov96_021E8884
	ldr r2, _021E8880 ; =0x00001388
	add r1, r4, #0
	bl SysTask_CreateOnVWaitQueue
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E887C: .word ov96_021E8884
_021E8880: .word 0x00001388
	thumb_func_end ov96_021E883C

	thumb_func_start ov96_021E8884
ov96_021E8884: ; 0x021E8884
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r0, #0
	str r0, [sp]
	add r6, r7, #0
_021E8890:
	ldr r0, [r6]
	cmp r0, #1
	bne _021E88EA
	ldr r1, [r6, #0x30]
	cmp r1, #0x26
	bgt _021E88BE
	mov r4, #7
	lsl r4, r4, #6
	ldr r4, [r7, r4]
	mov r3, #0x72
	str r4, [sp, #4]
	ldr r4, [r6, #4]
	mov r5, #0xc
	mul r5, r4
	ldr r4, [sp, #4]
	lsl r3, r3, #2
	add r2, r6, #0
	ldr r3, [r7, r3]
	ldr r4, [r4, r5]
	mov r0, #0
	add r2, #8
	blx r4
	b _021E88E0
_021E88BE:
	mov r4, #7
	lsl r4, r4, #6
	ldr r4, [r7, r4]
	mov r3, #0x72
	mov ip, r4
	ldr r4, [r6, #4]
	mov r5, #0xc
	mul r5, r4
	str r5, [sp, #8]
	lsl r3, r3, #2
	ldr r4, [sp, #8]
	mov r5, ip
	ldr r2, [r6, #0x34]
	ldr r3, [r7, r3]
	ldr r4, [r5, r4]
	mov r0, #0
	blx r4
_021E88E0:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x38
	bl memset
_021E88EA:
	ldr r0, [sp]
	add r6, #0x38
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _021E8890
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8884

	thumb_func_start ov96_021E88FC
ov96_021E88FC: ; 0x021E88FC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl SysTask_Destroy
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E88FC

	thumb_func_start ov96_021E8914
ov96_021E8914: ; 0x021E8914
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	str r2, [sp]
	add r7, r1, #0
	add r5, r3, #0
	add r0, r4, #0
	add r2, r6, #0
_021E8924:
	ldr r1, [r2]
	cmp r1, #0
	bne _021E8932
	mov r1, #0x38
	mul r1, r0
	add r4, r6, r1
	b _021E893A
_021E8932:
	add r0, r0, #1
	add r2, #0x38
	cmp r0, #8
	blt _021E8924
_021E893A:
	cmp r4, #0
	bne _021E8942
	bl GF_AssertFail
_021E8942:
	mov r0, #7
	lsl r0, r0, #6
	add r1, r7, #0
	ldr r2, [r6, r0]
	sub r1, #0x16
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E8962
	blx r0
	cmp r0, r5
	beq _021E8962
	bl GF_AssertFail
_021E8962:
	cmp r5, #0x26
	ble _021E896A
	bl GF_AssertFail
_021E896A:
	sub r7, #0x16
	str r7, [r4, #4]
	cmp r5, #0
	ble _021E897E
	add r0, r4, #0
	ldr r1, [sp]
	add r0, #8
	add r2, r5, #0
	bl memcpy
_021E897E:
	str r5, [r4, #0x30]
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8914

	thumb_func_start ov96_021E8988
ov96_021E8988: ; 0x021E8988
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r2, [sp, #4]
	mov r4, #0
	str r1, [sp]
	add r6, r3, #0
	add r1, r4, #0
	add r2, r5, #0
_021E899A:
	ldr r0, [r2]
	cmp r0, #0
	bne _021E89A8
	mov r0, #0x38
	mul r0, r1
	add r4, r5, r0
	b _021E89B0
_021E89A8:
	add r1, r1, #1
	add r2, #0x38
	cmp r1, #8
	blt _021E899A
_021E89B0:
	cmp r4, #0
	bne _021E89B8
	bl GF_AssertFail
_021E89B8:
	ldr r1, [sp]
	mov r0, #0xc
	sub r1, #0x16
	add r7, r1, #0
	mul r7, r0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r0, r0, r7
	ldr r0, [r0, #4]
	blx r0
	ldr r1, _021E8A1C ; =0x0000FFFF
	cmp r0, r1
	beq _021E89DC
	cmp r0, r6
	beq _021E89DC
	bl GF_AssertFail
_021E89DC:
	mov r1, #7
	lsl r1, r1, #6
	ldr r0, [r5, r1]
	add r0, r0, r7
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _021E8A06
	add r1, #8
	ldr r1, [r5, r1]
	mov r0, #0
	add r2, r6, #0
	blx r3
	add r5, r0, #0
	cmp r6, #0
	ble _021E8A02
	ldr r1, [sp, #4]
	add r2, r6, #0
	bl memcpy
_021E8A02:
	str r5, [r4, #0x34]
	b _021E8A0A
_021E8A06:
	ldr r0, [sp, #4]
	str r0, [r4, #0x34]
_021E8A0A:
	ldr r0, [sp]
	sub r0, #0x16
	str r0, [r4, #4]
	str r0, [sp]
	str r6, [r4, #0x30]
	mov r0, #1
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8A1C: .word 0x0000FFFF
	thumb_func_end ov96_021E8988

	thumb_func_start ov96_021E8A20
ov96_021E8A20: ; 0x021E8A20
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E8A20

	thumb_func_start ov96_021E8A24
ov96_021E8A24: ; 0x021E8A24
	ldr r0, _021E8A28 ; =ov96_0221AEC4
	bx lr
	.balign 4, 0
_021E8A28: .word ov96_0221AEC4
	thumb_func_end ov96_021E8A24

	thumb_func_start ov96_021E8A2C
ov96_021E8A2C: ; 0x021E8A2C
	mov r0, #0xc
	bx lr
	thumb_func_end ov96_021E8A2C

	thumb_func_start ov96_021E8A30
ov96_021E8A30: ; 0x021E8A30
	push {r4, lr}
	ldr r1, _021E8A40 ; =0x00000958
	add r4, r0, #0
	bl AllocFromHeap
	str r4, [r0]
	pop {r4, pc}
	nop
_021E8A40: .word 0x00000958
	thumb_func_end ov96_021E8A30

	thumb_func_start ov96_021E8A44
ov96_021E8A44: ; 0x021E8A44
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r5, r2, #0
	cmp r4, #0x10
	bls _021E8A54
	bl GF_AssertFail
_021E8A54:
	strh r4, [r6, #4]
	mov r0, #0
	strh r0, [r6, #6]
	str r0, [r6, #0xc]
	str r0, [r6, #8]
	mov r1, #0x2c
	ldr r0, [r6]
	mul r1, r4
	bl AllocFromHeap
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r6, r1]
	cmp r5, #0
	bne _021E8A86
	ldrh r0, [r6, #4]
	add r1, r6, #0
	ldr r2, [r6]
	add r1, #0x1c
	bl G2dRenderer_Init
	str r0, [r6, #0x14]
	str r0, [r6, #0x18]
	mov r0, #1
	b _021E8A8A
_021E8A86:
	str r5, [r6, #0x18]
	mov r0, #0
_021E8A8A:
	mov r7, #0x51
	str r0, [r6, #0x10]
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_021E8A94:
	ldrh r0, [r6, #4]
	ldr r2, [r6]
	add r1, r4, #0
	bl Create2DGfxResObjMan
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E8A94
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8A44

	thumb_func_start ov96_021E8AAC
ov96_021E8AAC: ; 0x021E8AAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ble _021E8AE4
	mov r7, #0x55
	lsl r7, r7, #2
_021E8ABC:
	mov r0, #0x2c
	add r6, r4, #0
	mul r6, r0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, r6]
	bl sub_0200AEB0
	ldr r0, [r5, r7]
	add r0, r0, r6
	ldr r0, [r0, #4]
	bl sub_0200B0A8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrh r0, [r5, #4]
	cmp r4, r0
	blt _021E8ABC
_021E8AE4:
	mov r6, #0x51
	mov r4, #0
	lsl r6, r6, #2
_021E8AEA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Destroy2DGfxResObjMan
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021E8AEA
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FreeToHeap
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021E8B14
	ldr r0, [r5, #0x14]
	bl SpriteList_Delete
_021E8B14:
	add r0, r5, #0
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E8AAC

	thumb_func_start ov96_021E8B1C
ov96_021E8B1C: ; 0x021E8B1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r1, #0x55
	ldr r0, [r5]
	lsl r1, r1, #2
	add r6, r2, #0
	add r4, r3, #0
	bl AllocFromHeapAtEnd
	strh r7, [r0]
	add r2, r0, #0
	mov ip, r0
	str r5, [r0, #0xc]
	add r2, #0x10
	mov r3, #8
_021E8B3C:
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _021E8B3C
	ldr r0, [r4]
	mov r4, #0
	str r0, [r2]
	mov r0, ip
	str r4, [r0, #8]
	ldr r1, [sp, #0x1c]
	mov r0, ip
	str r1, [r0, #4]
	mov r0, ip
	strh r4, [r0, #2]
	str r4, [r5, #0xc]
	cmp r7, #0
	ble _021E8B78
	mov r5, ip
_021E8B60:
	add r2, r5, #0
	add r3, r6, #0
	add r2, #0x54
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	add r4, r4, #1
	stmia r2!, {r0, r1}
	add r6, #0x10
	add r5, #0x10
	cmp r4, r7
	blt _021E8B60
_021E8B78:
	ldr r0, _021E8B84 ; =ov96_021E8FB4
	ldr r2, [sp, #0x18]
	mov r1, ip
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8B84: .word ov96_021E8FB4
	thumb_func_end ov96_021E8B1C

	thumb_func_start ov96_021E8B88
ov96_021E8B88: ; 0x021E8B88
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov96_021E8B88

	thumb_func_start ov96_021E8B8C
ov96_021E8B8C: ; 0x021E8B8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r1, #0
	cmp r4, r0
	blt _021E8B9C
	bl GF_AssertFail
_021E8B9C:
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0x2c
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8B8C

	thumb_func_start ov96_021E8BAC
ov96_021E8BAC: ; 0x021E8BAC
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov96_021E8BAC

	thumb_func_start ov96_021E8BB0
ov96_021E8BB0: ; 0x021E8BB0
	add r0, #0x14
	bx lr
	thumb_func_end ov96_021E8BB0

	thumb_func_start ov96_021E8BB4
ov96_021E8BB4: ; 0x021E8BB4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldrb r2, [r4, #7]
	bl ov96_021E91B8
	add r1, r0, #0
	mov r0, #0x51
	add r2, r5, #0
	bl AllocAndReadWholeNarcMemberByIdPair
	add r5, r0, #0
	bl NNS_G3dGetTex
	ldr r1, [r0, #0x38]
	add r0, r0, r1
	ldrb r1, [r4, #6]
	cmp r1, #0
	beq _021E8BE2
	add r0, #0x20
_021E8BE2:
	add r1, r6, #0
	mov r2, #0x20
	bl MI_CpuCopy8
	add r0, r5, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8BB4

	thumb_func_start ov96_021E8BF4
ov96_021E8BF4: ; 0x021E8BF4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r3, #0
	str r4, [sp]
	cmp r2, #3
	bne _021E8C08
	mov r4, #1
	str r4, [sp]
	b _021E8C14
_021E8C08:
	cmp r2, #1
	bne _021E8C12
	mov r0, #1
	str r0, [sp]
	b _021E8C14
_021E8C12:
	mov r4, #1
_021E8C14:
	mov r0, #0x2c
	add r5, r1, #0
	mul r5, r0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r0, [r0, r5]
	bl sub_0200AF00
	add r1, r0, #0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r0, r0, r5
	ldr r0, [r0, #4]
	bl sub_0200B0F8
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0x20
	bl DC_FlushRange
	ldr r0, [sp]
	cmp r0, #0
	beq _021E8C58
	add r0, r5, #0
	mov r1, #1
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0x20
	bl GX_LoadOBJPltt
_021E8C58:
	cmp r4, #0
	beq _021E8C6E
	add r0, r5, #0
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_021E8C6E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E8BF4

	thumb_func_start ov96_021E8C70
ov96_021E8C70: ; 0x021E8C70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r0, [sp, #0x64]
	add r4, r1, #0
	add r6, r3, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0x64]
	cmp r0, #0
	beq _021E8CA4
	add r0, r2, #0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021E8C98
	mov r0, #0xa
	str r0, [sp, #0x44]
	mov r0, #9
	mov r2, #0xb
	str r0, [sp, #0x40]
	b _021E8CC2
_021E8C98:
	mov r0, #7
	str r0, [sp, #0x44]
	mov r0, #6
	mov r2, #8
	str r0, [sp, #0x40]
	b _021E8CC2
_021E8CA4:
	add r0, r2, #0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021E8CB8
	mov r0, #4
	str r0, [sp, #0x44]
	mov r0, #3
	mov r2, #5
	str r0, [sp, #0x40]
	b _021E8CC2
_021E8CB8:
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #0
	mov r2, #2
	str r0, [sp, #0x40]
_021E8CC2:
	add r0, sp, #0x50
	ldrb r7, [r0, #0x10]
	mov r1, #0x95
	mov r3, #0
	str r7, [sp]
	str r6, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl AddCharResObjFromNarc
	str r0, [r4]
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #0x31
	str r0, [sp, #0xc]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0x1e
	mov r3, #0
	bl AddPlttResObjFromNarc
	str r0, [r4, #4]
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, [sp, #0x44]
	str r0, [sp, #8]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x95
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #8]
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, [sp, #0x40]
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x95
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl sub_0200ADA4
	ldr r0, [r4, #4]
	bl sub_0200AF94
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl sub_0200AF00
	str r0, [sp, #0x24]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x24]
	bl sub_0200B0F8
	str r0, [sp, #0x28]
	ldr r0, [r4]
	bl sub_0200A810
	str r0, [sp, #0x20]
	cmp r6, #3
	bne _021E8D6C
	mov r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	b _021E8D7A
_021E8D6C:
	cmp r6, #1
	bne _021E8D76
	mov r0, #1
	str r0, [sp, #0x1c]
	b _021E8D7A
_021E8D76:
	mov r0, #1
	str r0, [sp, #0x18]
_021E8D7A:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x10]
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	ldrb r2, [r2, #7]
	bl ov96_021E91B8
	add r1, r0, #0
	ldr r2, [r5]
	mov r0, #0x51
	bl AllocAndReadWholeNarcMemberByIdPair
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021E8DAA
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x3c]
	b _021E8DB4
_021E8DAA:
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x3c]
_021E8DB4:
	ldr r0, [sp, #0x34]
	bl NNS_G3dGetTex
	ldr r1, [r0, #0x14]
	str r0, [sp, #0x2c]
	add r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x3c]
	mov r4, #0
	lsl r1, r0, #5
	mov r0, #2
	lsl r0, r0, #0xa
	str r4, [sp, #0x38]
	sub r7, r0, r1
	add r6, r5, r1
_021E8DD2:
	ldr r0, [sp, #0x3c]
	mov r2, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x3c]
	add r0, r0, r4
	add r3, r2, #0
	bl sub_020145B4
	ldr r0, [sp, #0x64]
	cmp r0, #0
	bne _021E8E72
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021E8E2A
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021E8E2A
	mov r0, #0
_021E8E04:
	cmp r0, r7
	bge _021E8E16
	mov r1, #0x56
	add r2, r6, r0
	lsl r1, r1, #2
	ldrb r3, [r2, r1]
	add r2, r5, r0
	strb r3, [r2, r1]
	b _021E8E20
_021E8E16:
	mov r2, #0x56
	add r3, r5, r0
	lsl r2, r2, #2
	mov r1, #0
	strb r1, [r3, r2]
_021E8E20:
	mov r1, #2
	add r0, r0, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	blt _021E8E04
_021E8E2A:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r1, [sp, #0x14]
	add r0, r5, r0
	bl DC_FlushRange
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021E8E54
	ldr r0, [sp, #0x24]
	mov r1, #1
	bl NNS_G2dGetImageLocation
	add r1, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r2, [sp, #0x14]
	add r0, r5, r0
	add r1, r1, r4
	bl GX_LoadOBJ
_021E8E54:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021E8E72
	ldr r0, [sp, #0x24]
	mov r1, #2
	bl NNS_G2dGetImageLocation
	add r1, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r2, [sp, #0x14]
	add r0, r5, r0
	add r1, r1, r4
	bl GXS_LoadOBJ
_021E8E72:
	ldr r1, [sp, #0x20]
	mov r0, #0x56
	ldr r1, [r1, #0x14]
	lsl r0, r0, #2
	ldr r2, [sp, #0x14]
	add r0, r5, r0
	add r1, r1, r4
	bl MIi_CpuCopyFast
	ldr r0, [sp, #0x14]
	add r4, r4, r0
	ldr r0, [sp, #0x38]
	add r0, r0, #1
	str r0, [sp, #0x38]
	cmp r0, #8
	blt _021E8DD2
	ldr r0, [sp, #0x2c]
	ldr r1, [r0, #0x38]
	add r4, r0, r1
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _021E8EA2
	add r4, #0x20
_021E8EA2:
	add r0, r4, #0
	mov r1, #0x20
	bl DC_FlushRange
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021E8EC2
	ldr r0, [sp, #0x28]
	mov r1, #1
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x20
	bl GX_LoadOBJPltt
_021E8EC2:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021E8EDA
	ldr r0, [sp, #0x28]
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_021E8EDA:
	ldr r0, [sp, #0x34]
	bl FreeToHeap
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E8C70

	thumb_func_start ov96_021E8EE4
ov96_021E8EE4: ; 0x021E8EE4
	push {r3, r4, r5, lr}
	sub sp, #0x80
	add r4, r0, #0
	add r0, sp, #0x80
	add r5, r3, #0
	ldrb r3, [r0, #0x10]
	mov r0, #0
	mvn r0, r0
	str r3, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r2, r3, #0
	str r0, [sp, #0x14]
	add r0, r1, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r1, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r4, r1]
	add r1, r3, #0
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x5c
	bl CreateSpriteResourcesHeader
	cmp r5, #3
	bne _021E8F30
	mov r5, #1
_021E8F30:
	ldr r0, [r4, #0x18]
	mov r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	ldr r0, [r4]
	str r0, [sp, #0x58]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	str r5, [sp, #0x54]
	add r0, sp, #0x80
	str r1, [sp, #0x50]
	ldrb r1, [r0, #0x14]
	mov r0, #0x2c
	add r5, r1, #0
	mul r5, r0
	add r0, sp, #0x2c
	bl CreateSprite
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r2, r2, r5
	str r0, [r2, #0x10]
	ldr r0, [r4, r1]
	add r0, r0, r5
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _021E8F7E
	bl GF_AssertFail
_021E8F7E:
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	add r0, r0, r5
	ldr r0, [r0, #0x10]
	bl Set2dSpriteAnimActiveFlag
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, r0, r5
	ldr r0, [r0, #0x10]
	bl Set2dSpriteAnimSeqNo
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, r0, r5
	ldr r0, [r0, #0x10]
	bl Set2dSpriteVisibleFlag
	add sp, #0x80
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8EE4

	thumb_func_start ov96_021E8FB4
ov96_021E8FB4: ; 0x021E8FB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
_021E8FBA:
	add r0, r4, #0
	bl ov96_021E8FE0
	cmp r0, #0
	beq _021E8FD8
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
_021E8FD8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021E8FBA
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E8FB4

	thumb_func_start ov96_021E8FE0
ov96_021E8FE0: ; 0x021E8FE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021E8FF2
	cmp r0, #1
	beq _021E90BE
	b _021E90F4
_021E8FF2:
	ldrh r0, [r5, #2]
	ldr r1, [r5, #4]
	add r2, r5, #0
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r0, #0x2c
	add r4, r7, #0
	mul r4, r0
	ldr r0, [r5, #0xc]
	lsl r6, r7, #4
	str r7, [sp]
	ldr r1, [r5, #0x18]
	add r2, #0x54
	str r1, [sp, #4]
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r3, [r5, #0x1c]
	add r1, r1, r4
	add r2, r2, r6
	bl ov96_021E8C70
	mov r0, #0x55
	add r3, r5, r6
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, #0x54
	add r2, r0, r4
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x55
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r0, r0, r4
	bl ov96_021E9104
	mov r1, #0x55
	ldr r2, [r5, #0xc]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r1, r1, r4
	str r0, [r1, #0x24]
	ldr r2, [r5, #0xc]
	mov r1, #0
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _021E9068
	add r0, r5, r6
	add r0, #0x58
	ldrh r0, [r0]
	cmp r0, #0
	beq _021E9068
	mov r1, #1
_021E9068:
	mov r3, #0x55
	lsl r3, r3, #2
	mov r0, #0x2c
	ldr r2, [r2, r3]
	mul r0, r7
	add r2, r2, r0
	str r1, [r2, #0x28]
	ldr r1, [r5, #0xc]
	ldr r1, [r1, r3]
	add r0, r1, r0
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021E908A
	add r1, #0x24
	ldr r0, [r1, r4]
	add r0, #8
	str r0, [r1, r4]
_021E908A:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021E90A6
	mov r0, #0x55
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r6, r0, r4
	ldr r0, [r0, r4]
	bl sub_0200A740
	ldr r0, [r6, #4]
	bl sub_0200A740
_021E90A6:
	ldrh r0, [r5, #2]
	add r0, r0, #1
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	ldrh r0, [r5]
	cmp r1, r0
	blo _021E90F4
	mov r0, #0
	strh r0, [r5, #2]
	mov r0, #1
	str r0, [r5, #8]
	b _021E90F4
_021E90BE:
	ldrh r0, [r5, #2]
	ldr r1, [r5, #4]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x20]
	bl ov96_021E8EE4
	ldrh r0, [r5, #2]
	add r0, r0, #1
	strh r0, [r5, #2]
	ldr r1, [r5, #0xc]
	ldrh r0, [r1, #6]
	add r0, r0, #1
	strh r0, [r1, #6]
	ldrh r1, [r5, #2]
	ldrh r0, [r5]
	cmp r1, r0
	blo _021E90F4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E90F4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8FE0

	thumb_func_start ov96_021E90FC
ov96_021E90FC: ; 0x021E90FC
	ldr r0, [r0, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end ov96_021E90FC

	thumb_func_start ov96_021E9104
ov96_021E9104: ; 0x021E9104
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0200A810
	ldrh r1, [r4, #0x18]
	cmp r1, #0
	beq _021E911A
	mov r6, #8
	b _021E911C
_021E911A:
	mov r6, #4
_021E911C:
	mov r1, #0xff
	str r1, [sp, #8]
	ldr r0, [r0, #0x14]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	cmp r6, #0
	ble _021E916E
	add r7, r0, #0
_021E912E:
	mov r4, #0xff
	mov r5, #0
	cmp r6, #0
	ble _021E9150
_021E9136:
	add r1, r5, r7
	ldr r0, [sp]
	lsl r1, r1, #5
	bl ov96_021E9180
	cmp r0, #0xff
	beq _021E914A
	cmp r4, r0
	bls _021E914A
	add r4, r0, #0
_021E914A:
	add r5, r5, #1
	cmp r5, r6
	blt _021E9136
_021E9150:
	cmp r4, #0xff
	beq _021E9162
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	b _021E916E
_021E9162:
	ldr r0, [sp, #4]
	add r7, r7, r6
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, r6
	blt _021E912E
_021E916E:
	ldr r0, [sp, #8]
	cmp r0, #0xff
	bne _021E9178
	bl GF_AssertFail
_021E9178:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9104

	thumb_func_start ov96_021E9180
ov96_021E9180: ; 0x021E9180
	push {r4, r5}
	mov r4, #0
	mov r2, #0xff
	add r0, r0, r1
	add r3, r4, #0
_021E918A:
	add r5, r3, #0
_021E918C:
	ldrb r1, [r0]
	cmp r1, #0
	beq _021E9196
	add r2, r4, #0
	b _021E91A2
_021E9196:
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	add r0, r0, #1
	cmp r5, #4
	blo _021E918C
_021E91A2:
	cmp r5, #4
	bne _021E91B0
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #8
	blo _021E918A
_021E91B0:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E9180

	thumb_func_start ov96_021E91B8
ov96_021E91B8: ; 0x021E91B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r5, #0
	ble _021E91CA
	ldr r1, _021E91FC ; =0x000001ED
	cmp r5, r1
	ble _021E91CE
_021E91CA:
	mov r4, #1
	b _021E91F6
_021E91CE:
	bl SpeciesToOverworldModelIndexOffset
	ldr r1, _021E9200 ; =0x00000129
	add r4, r0, r1
	add r0, r5, #0
	bl OverworldModelLookupHasFemaleForm
	cmp r0, #0
	beq _021E91E8
	cmp r7, #1
	bne _021E91F6
	add r4, r4, #1
	b _021E91F6
_021E91E8:
	add r0, r5, #0
	bl OverworldModelLookupFormCount
	cmp r6, r0
	ble _021E91F4
	mov r6, #0
_021E91F4:
	add r4, r4, r6
_021E91F6:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E91FC: .word 0x000001ED
_021E9200: .word 0x00000129
	thumb_func_end ov96_021E91B8

	thumb_func_start ov96_021E9204
ov96_021E9204: ; 0x021E9204
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r2, #0
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	bl ov96_021E8BAC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl _fgr
	ldr r0, _021E928C ; =0x45800000
	bls _021E923A
	add r1, r5, #0
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021E9248
_021E923A:
	add r1, r5, #0
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021E9248:
	bl _ffix
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl _fgr
	ldr r0, _021E928C ; =0x45800000
	bls _021E926C
	add r1, r4, #0
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021E927A
_021E926C:
	add r1, r4, #0
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021E927A:
	bl _ffix
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0
	bl sub_020247F4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E928C: .word 0x45800000
	thumb_func_end ov96_021E9204

	thumb_func_start ov96_021E9290
ov96_021E9290: ; 0x021E9290
	push {r4, lr}
	add r4, r0, #0
	bne _021E929A
	bl GF_AssertFail
_021E929A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E92A4
	bl GF_AssertFail
_021E92A4:
	mov r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9290

	thumb_func_start ov96_021E92AC
ov96_021E92AC: ; 0x021E92AC
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end ov96_021E92AC

	thumb_func_start ov96_021E92B0
ov96_021E92B0: ; 0x021E92B0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	ldr r2, [sp, #0x10]
	add r1, r3, #0
	bl sub_020215C0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022588
	bl sub_020216C8
	bl sub_02022638
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E92B0

	thumb_func_start ov96_021E92D0
ov96_021E92D0: ; 0x021E92D0
	push {r3, lr}
	bl OamManager_Free
	bl sub_0202168C
	bl sub_02022608
	pop {r3, pc}
	thumb_func_end ov96_021E92D0

	thumb_func_start ov96_021E92E0
ov96_021E92E0: ; 0x021E92E0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x85
	lsl r1, r1, #2
	add r5, r0, #0
	bl AllocFromHeap
	mov r2, #0x85
	mov r1, #0
	lsl r2, r2, #2
	str r0, [sp]
	bl MI_CpuFill8
	ldr r4, [sp]
	mov r6, #0
	mov r7, #0x25
_021E92FE:
	add r0, r7, #0
	add r1, r5, #0
	bl String_New
	str r0, [r4, #0x34]
	mov r0, #0xb
	add r1, r5, #0
	bl String_New
	str r0, [r4, #0x38]
	add r6, r6, #1
	add r4, #0x18
	cmp r6, #0xc
	blt _021E92FE
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E92E0

	thumb_func_start ov96_021E9320
ov96_021E9320: ; 0x021E9320
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021E9328:
	ldr r0, [r5, #0x34]
	bl String_Delete
	ldr r0, [r5, #0x38]
	bl String_Delete
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0xc
	blt _021E9328
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021E9320

	thumb_func_start ov96_021E9344
ov96_021E9344: ; 0x021E9344
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #4
	blt _021E9352
	bl GF_AssertFail
_021E9352:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	cmp r1, r0
	blt _021E935E
	bl GF_AssertFail
_021E935E:
	ldr r1, [r4, #8]
	add r0, r1, #1
	str r0, [r4, #8]
	mov r0, #0x18
	add r4, #0x24
	mul r0, r1
	add r0, r4, r0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9344

	thumb_func_start ov96_021E9370
ov96_021E9370: ; 0x021E9370
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	blo _021E937E
	bl GF_AssertFail
_021E937E:
	ldr r0, [r5]
	cmp r4, r0
	blt _021E9388
	bl GF_AssertFail
_021E9388:
	mov r0, #0x18
	add r5, #0x24
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9370

	thumb_func_start ov96_021E9394
ov96_021E9394: ; 0x021E9394
	mov r3, #0
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	mov r1, #0x51
	str r3, [r0, #0x10]
	add r2, r3, #0
	lsl r1, r1, #2
_021E93A6:
	add r3, r3, #1
	str r2, [r0, r1]
	add r0, r0, #4
	cmp r3, #0xc
	blt _021E93A6
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E9394

	thumb_func_start ov96_021E93B4
ov96_021E93B4: ; 0x021E93B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	cmp r1, #0
	beq _021E93D2
	cmp r1, #1
	beq _021E93D8
	cmp r1, #2
	beq _021E93DE
	b _021E93E4
_021E93D2:
	mov r0, #1
	str r0, [sp, #4]
	b _021E93E8
_021E93D8:
	mov r0, #1
	str r0, [sp, #4]
	b _021E93E8
_021E93DE:
	mov r0, #2
	str r0, [sp, #4]
	b _021E93E8
_021E93E4:
	bl GF_AssertFail
_021E93E8:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r6, #0
	str r1, [r0, #0xc]
	ldr r4, [r0]
	cmp r4, #0
	ble _021E949E
	add r0, #0x24
	mov ip, r0
_021E93FA:
	add r3, r6, #1
	add r2, r3, #0
	mov r0, #0xc
	add r1, sp, #8
	mul r2, r0
	add r0, r1, r2
	mov r3, ip
	mov r7, #0
	str r3, [r0, #8]
	str r7, [r0, #4]
	str r7, [r1, r2]
	cmp r6, #0
	ble _021E9486
_021E9414:
	ldr r2, [sp, #4]
	ldr r1, [r1, #4]
	cmp r2, #1
	ldr r5, [r0, #8]
	bne _021E9450
	ldr r3, [r1, #8]
	ldr r4, [r5, #0xc]
	ldr r2, [r3, #0xc]
	cmp r2, r4
	bge _021E9436
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	b _021E9486
_021E9436:
	cmp r2, r4
	bne _021E9480
	ldr r2, [r3]
	ldr r3, [r5]
	cmp r2, r3
	ble _021E9480
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	b _021E9480
_021E9450:
	ldr r3, [r1, #8]
	ldr r4, [r5, #0xc]
	ldr r2, [r3, #0xc]
	cmp r2, r4
	ble _021E9468
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	b _021E9486
_021E9468:
	cmp r2, r4
	bne _021E9480
	ldr r2, [r3]
	ldr r3, [r5]
	cmp r2, r3
	ble _021E9480
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
_021E9480:
	add r7, r7, #1
	cmp r7, r6
	blt _021E9414
_021E9486:
	cmp r7, r6
	bne _021E948E
	str r0, [r1, #4]
	str r1, [r0]
_021E948E:
	mov r0, ip
	add r0, #0x18
	mov ip, r0
	ldr r0, [sp]
	add r6, r6, #1
	ldr r4, [r0]
	cmp r6, r4
	blt _021E93FA
_021E949E:
	mov r1, #0
	mvn r1, r1
	mov r3, #0
	add r0, sp, #8
	add r2, r1, #0
	add r5, r3, #0
	cmp r4, #0
	ble _021E94E8
	mov r7, #0x51
	ldr r4, [sp]
	lsl r7, r7, #2
_021E94B4:
	ldr r0, [r0, #4]
	ldr r6, [r0, #8]
	str r6, [r4, r7]
	ldr r6, [r0, #8]
	ldr r6, [r6, #0xc]
	cmp r1, r6
	beq _021E94D2
	add r1, r6, #0
	cmp r3, #0
	beq _021E94CE
	add r2, r5, #0
	mov r3, #0
	b _021E94D4
_021E94CE:
	add r2, r2, #1
	b _021E94D4
_021E94D2:
	mov r3, #1
_021E94D4:
	mov r6, #0x51
	lsl r6, r6, #2
	ldr r6, [r4, r6]
	add r5, r5, #1
	strb r2, [r6, #9]
	ldr r6, [sp]
	add r4, r4, #4
	ldr r6, [r6]
	cmp r5, r6
	blt _021E94B4
_021E94E8:
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E93B4

	thumb_func_start ov96_021E94EC
ov96_021E94EC: ; 0x021E94EC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	blo _021E94FA
	bl GF_AssertFail
_021E94FA:
	ldr r0, [r5]
	cmp r4, r0
	blt _021E9504
	bl GF_AssertFail
_021E9504:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E94EC

	thumb_func_start ov96_021E9510
ov96_021E9510: ; 0x021E9510
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021E9394
	mov r0, #4
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9510

	thumb_func_start ov96_021E9524
ov96_021E9524: ; 0x021E9524
	ldr r0, [r0]
	bx lr
	thumb_func_end ov96_021E9524

	thumb_func_start ov96_021E9528
ov96_021E9528: ; 0x021E9528
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov96_021E9528

	thumb_func_start ov96_021E952C
ov96_021E952C: ; 0x021E952C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021E953A
	bl GF_AssertFail
_021E953A:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021E956C
	ldr r0, [r4]
	mov r2, #0
	cmp r0, #0
	ble _021E9568
	mov r5, #0x51
	add r3, r4, #0
	lsl r5, r5, #2
_021E954E:
	ldr r1, [r3, r5]
	add r2, r2, #1
	ldr r0, [r1]
	ldrh r1, [r1, #0xa]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r6, [r0, #0x14]
	add r3, r3, #4
	add r1, r6, r1
	str r1, [r0, #0x14]
	ldr r0, [r4]
	cmp r2, r0
	blt _021E954E
_021E9568:
	mov r0, #1
	str r0, [r4, #0x10]
_021E956C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021E952C

	thumb_func_start ov96_021E9570
ov96_021E9570: ; 0x021E9570
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	str r1, [sp]
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [sp]
	cmp r0, #0xa
	blt _021E958E
	bl GF_AssertFail
_021E958E:
	ldr r1, [r4]
	mov r0, #0
	cmp r1, #0
	ble _021E95B6
	mov r7, #0x51
	add r1, r4, #0
	add r6, sp, #4
	lsl r7, r7, #2
_021E959E:
	ldr r2, [r1, r7]
	add r0, r0, #1
	ldr r3, [r2]
	ldrh r2, [r2, #0xa]
	lsl r5, r3, #2
	ldr r3, [r6, r5]
	add r1, r1, #4
	add r2, r3, r2
	str r2, [r6, r5]
	ldr r2, [r4]
	cmp r0, r2
	blt _021E959E
_021E95B6:
	ldr r1, [sp]
	mov r0, #0
	lsl r1, r1, #4
	add r4, r4, r1
	mov r1, #0x5d
	add r3, sp, #4
	lsl r1, r1, #2
_021E95C4:
	ldr r2, [r3]
	add r0, r0, #1
	str r2, [r4, r1]
	add r3, r3, #4
	add r4, r4, #4
	cmp r0, #4
	blt _021E95C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9570

	thumb_func_start ov96_021E95D8
ov96_021E95D8: ; 0x021E95D8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0xa
	blt _021E95E8
	bl GF_AssertFail
_021E95E8:
	lsl r0, r4, #4
	add r1, r5, r0
	lsl r0, r6, #2
	add r1, r1, r0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021E95D8

	thumb_func_start ov96_021E95F8
ov96_021E95F8: ; 0x021E95F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r2, #0
	add r5, r3, #0
	bl PokeathlonOvy_GetHeapID
	str r0, [sp, #8]
	ldr r2, _021E9668 ; =0x00000135
	ldr r3, [sp, #8]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	add r7, r0, #0
	add r0, r4, #0
	bl ov96_021E9344
	add r4, r0, #0
	str r6, [r4]
	ldr r0, [sp, #8]
	str r5, [r4, #0xc]
	bl MessageFormat_New
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	add r3, sp, #0x10
	ldrb r1, [r3, #0x10]
	ldrb r3, [r3, #0x14]
	add r2, r5, #0
	add r6, r0, #0
	bl BufferIntegerAsString
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	bl ReadMsgData_ExpandPlaceholders
	add r5, r0, #0
	add r0, r6, #0
	bl MessageFormat_Delete
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl String_Copy
	add r0, r5, #0
	bl String_Delete
	add r0, r7, #0
	bl DestroyMsgData
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E9668: .word 0x00000135
	thumb_func_end ov96_021E95F8

	thumb_func_start ov96_021E966C
ov96_021E966C: ; 0x021E966C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	bl PokeathlonOvy_GetHeapID
	str r0, [sp, #8]
	ldr r2, _021E96F4 ; =0x00000135
	ldr r3, [sp, #8]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	add r7, r0, #0
	add r0, r4, #0
	bl ov96_021E9344
	add r4, r0, #0
	str r5, [r4]
	ldr r0, [sp, #8]
	str r6, [r4, #0xc]
	bl MessageFormat_New
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x10
	add r3, sp, #0x30
	ldrb r1, [r1, #0x18]
	ldrb r3, [r3]
	ldr r2, [sp, #0x20]
	add r5, r0, #0
	bl BufferIntegerAsString
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r1, sp, #0x10
	add r3, sp, #0x34
	ldrb r1, [r1, #0x1c]
	ldrb r3, [r3]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	bl BufferIntegerAsString
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	bl ReadMsgData_ExpandPlaceholders
	add r6, r0, #0
	add r0, r5, #0
	bl MessageFormat_Delete
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl String_Copy
	add r0, r6, #0
	bl String_Delete
	add r0, r7, #0
	bl DestroyMsgData
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E96F4: .word 0x00000135
	thumb_func_end ov96_021E966C

	thumb_func_start ov96_021E96F8
ov96_021E96F8: ; 0x021E96F8
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	add r1, r2, #0
	bl ov96_021E5E04
	add r0, r4, #0
	mov r1, #1
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #1
	bl ov96_021E5FC8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E96F8

	thumb_func_start ov96_021E9718
ov96_021E9718: ; 0x021E9718
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E9780
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021E5D40
	add r1, r7, #0
	add r2, r6, #0
	bl memcpy
	add r0, r4, #0
	bl ov96_021E5F00
	add r0, r4, #0
	bl ov96_021E5D34
	add r5, r0, #0
	add r0, r4, #0
	bl ov96_021E5EF4
	cmp r5, r0
	bne _021E9780
	add r0, r4, #0
	bl ov96_021E5EF4
	cmp r0, #4
	bhs _021E9772
	add r0, r4, #0
	bl ov96_021E5EF4
	mov r1, #4
	sub r1, r1, r0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_021E8484
_021E9772:
	add r0, r4, #0
	bl ov96_021E5F10
	add r0, r4, #0
	mov r1, #4
	bl ov96_021E5FC8
_021E9780:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9718

	thumb_func_start ov96_021E9784
ov96_021E9784: ; 0x021E9784
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r3, #0
	add r5, r1, #0
	add r7, r2, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021E5D40
	add r1, r7, #0
	add r2, r5, #0
	bl memcpy
	add r0, r4, #0
	bl ov96_021E604C
	add r0, r4, #0
	mov r1, #3
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #5
	bl ov96_021E5FC8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9784

	thumb_func_start ov96_021E97B8
ov96_021E97B8: ; 0x021E97B8
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r0, r4, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov96_021E5F24
	cmp r0, #0
	beq _021E97DA
	add r0, r4, #0
	mov r1, #0
	bl ov96_021E5F34
	add r1, r6, #0
	add r2, r5, #0
	bl memcpy
_021E97DA:
	add r0, r4, #0
	mov r1, #4
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #6
	bl ov96_021E5FC8
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021E97B8

	thumb_func_start ov96_021E97EC
ov96_021E97EC: ; 0x021E97EC
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r0, r5, #0
	bl ov96_021E5F00
	add r0, r5, #0
	bl ov96_021E5D34
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5EF4
	cmp r4, r0
	bne _021E981E
	add r0, r5, #0
	bl ov96_021E5F10
	add r0, r5, #0
	mov r1, #5
	bl ov96_021E601C
	add r0, r5, #0
	mov r1, #7
	bl ov96_021E5FC8
_021E981E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E97EC

	thumb_func_start ov96_021E9820
ov96_021E9820: ; 0x021E9820
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r0, r3, #0
	add r6, r1, #0
	bl ov96_021E5F54
	add r1, r4, #0
	add r1, #0x24
	ldrb r1, [r1]
	cmp r1, #0
	beq _021E9844
	add r0, #0xf0
	add r1, r4, #0
	add r2, r6, #0
	bl memcpy
	pop {r4, r5, r6, pc}
_021E9844:
	mov r1, #0x28
	add r0, #0x50
	mul r1, r5
	add r0, r0, r1
	add r1, r4, #0
	add r2, r6, #0
	bl memcpy
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9820

	thumb_func_start ov96_021E9858
ov96_021E9858: ; 0x021E9858
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #0xa
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #0x12
	bl ov96_021E5FC8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9858

	thumb_func_start ov96_021E9870
ov96_021E9870: ; 0x021E9870
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl ov96_021E5F54
	add r7, r0, #0
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E98CE
	add r0, r5, #0
	bl ov96_021E5FAC
	add r7, #0x28
	add r4, r0, #0
	add r0, r7, #0
	bl ov96_021E8A20
	add r1, r6, #0
	mul r1, r4
	add r0, r0, r1
	ldr r1, [sp]
	add r2, r4, #0
	bl memcpy
	add r0, r5, #0
	bl ov96_021E5F00
	add r0, r5, #0
	bl ov96_021E5D34
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5EF4
	cmp r4, r0
	bne _021E98CE
	add r0, r5, #0
	bl ov96_021E5F10
	add r0, r5, #0
	mov r1, #0x15
	bl ov96_021E5FC8
_021E98CE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E9870

	thumb_func_start ov96_021E98D0
ov96_021E98D0: ; 0x021E98D0
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, r6, #0
	bl ov96_021E5F54
	add r0, #0xf0
	add r1, r4, #0
	add r2, r5, #0
	bl memcpy
	add r0, r6, #0
	mov r1, #0x16
	bl ov96_021E5FC8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021E98D0

	thumb_func_start ov96_021E98F4
ov96_021E98F4: ; 0x021E98F4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r3, [sp]
	add r0, r3, #0
	add r7, r2, #0
	bl ov96_021E5F54
	ldr r0, [sp]
	bl ov96_021E5F24
	cmp r0, #0
	bne _021E9990
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov96_021E5D78
	add r5, r0, #0
	mov r6, #0
_021E991A:
	lsl r4, r6, #5
	ldr r1, [r5, r4]
	ldr r0, [r7, r4]
	add r3, r7, r4
	add r0, r1, r0
	str r0, [r5, r4]
	add r2, r5, r4
	ldr r1, [r2, #4]
	ldr r0, [r3, #4]
	add r0, r1, r0
	str r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r0, [r3, #8]
	add r0, r1, r0
	str r0, [r2, #8]
	ldr r1, [r2, #0xc]
	ldr r0, [r3, #0xc]
	add r0, r1, r0
	str r0, [r2, #0xc]
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x10]
	add r0, r1, r0
	str r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r0, [r3, #0x14]
	add r0, r1, r0
	str r0, [r2, #0x14]
	ldr r1, [r2, #0x18]
	ldr r0, [r3, #0x18]
	add r0, r1, r0
	str r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	ldr r0, [r3, #0x1c]
	add r0, r1, r0
	str r0, [r2, #0x1c]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _021E991A
	ldr r0, [sp]
	bl ov96_021E5F00
	ldr r0, [sp]
	bl ov96_021E5D34
	add r4, r0, #0
	ldr r0, [sp]
	bl ov96_021E5EF4
	cmp r4, r0
	bne _021E9990
	ldr r0, [sp]
	bl ov96_021E5F10
	ldr r0, [sp]
	mov r1, #0x1e
	bl ov96_021E5FC8
_021E9990:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E98F4

	thumb_func_start ov96_021E9994
ov96_021E9994: ; 0x021E9994
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	bl ov96_021E5F54
	add r0, r4, #0
	bl ov96_021E5F24
	add r0, r4, #0
	mov r1, #0xd
	bl ov96_021E601C
	add r0, r4, #0
	mov r1, #0x1f
	bl ov96_021E5FC8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9994

	thumb_func_start ov96_021E99B8
ov96_021E99B8: ; 0x021E99B8
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r0, r5, #0
	bl ov96_021E5F54
	add r0, r5, #0
	bl ov96_021E5F00
	add r0, r5, #0
	bl ov96_021E5D34
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5EF4
	cmp r4, r0
	bne _021E99F0
	add r0, r5, #0
	bl ov96_021E5F10
	add r0, r5, #0
	mov r1, #0xf
	bl ov96_021E601C
	add r0, r5, #0
	mov r1, #0x24
	bl ov96_021E5FC8
_021E99F0:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021E99B8

	thumb_func_start ov96_021E99F4
ov96_021E99F4: ; 0x021E99F4
	mov r0, #4
	bx lr
	thumb_func_end ov96_021E99F4

	thumb_func_start ov96_021E99F8
ov96_021E99F8: ; 0x021E99F8
	mov r0, #0x7c
	bx lr
	thumb_func_end ov96_021E99F8

	thumb_func_start ov96_021E99FC
ov96_021E99FC: ; 0x021E99FC
	mov r0, #0x1f
	lsl r0, r0, #4
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E99FC

	thumb_func_start ov96_021E9A04
ov96_021E9A04: ; 0x021E9A04
	push {r3, lr}
	bl PlayerProfile_sizeof
	lsl r0, r0, #2
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9A04

	thumb_func_start ov96_021E9A10
ov96_021E9A10: ; 0x021E9A10
	mov r0, #0x74
	bx lr
	thumb_func_end ov96_021E9A10

	thumb_func_start ov96_021E9A14
ov96_021E9A14: ; 0x021E9A14
	mov r0, #0x26
	bx lr
	thumb_func_end ov96_021E9A14

	thumb_func_start ov96_021E9A18
ov96_021E9A18: ; 0x021E9A18
	mov r0, #0x60
	bx lr
	thumb_func_end ov96_021E9A18

	thumb_func_start ov96_021E9A1C
ov96_021E9A1C: ; 0x021E9A1C
	mov r0, #6
	lsl r0, r0, #6
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E9A1C

	thumb_func_start ov96_021E9A24
ov96_021E9A24: ; 0x021E9A24
	ldr r3, _021E9A28 ; =sub_02031B10
	bx r3
	.balign 4, 0
_021E9A28: .word sub_02031B10
	thumb_func_end ov96_021E9A24

	thumb_func_start ov96_021E9A2C
ov96_021E9A2C: ; 0x021E9A2C
	ldr r3, _021E9A34 ; =ov96_021E5FA4
	add r0, r1, #0
	bx r3
	nop
_021E9A34: .word ov96_021E5FA4
	thumb_func_end ov96_021E9A2C

	thumb_func_start ov96_021E9A38
ov96_021E9A38: ; 0x021E9A38
	ldr r3, _021E9A44 ; =ov96_021E5F44
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	nop
_021E9A44: .word ov96_021E5F44
	thumb_func_end ov96_021E9A38

	thumb_func_start ov96_021E9A48
ov96_021E9A48: ; 0x021E9A48
	ldr r3, _021E9A50 ; =ov96_021E5D78
	add r0, r1, #0
	mov r1, #0
	bx r3
	.balign 4, 0
_021E9A50: .word ov96_021E5D78
	thumb_func_end ov96_021E9A48

	thumb_func_start ov96_021E9A54
ov96_021E9A54: ; 0x021E9A54
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	bl ov96_021E5D88
	add r1, r4, #0
	mul r1, r5
	add r0, r0, r1
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021E9A54

	thumb_func_start ov96_021E9A68
ov96_021E9A68: ; 0x021E9A68
	add r2, r0, #0
	add r0, r1, #0
	lsl r1, r2, #0x18
	ldr r3, _021E9A74 ; =ov96_021E86FC
	lsr r1, r1, #0x18
	bx r3
	.balign 4, 0
_021E9A74: .word ov96_021E86FC
	thumb_func_end ov96_021E9A68

	thumb_func_start ov96_021E9A78
ov96_021E9A78: ; 0x021E9A78
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	add r5, r0, #0
	add r2, sp, #0
	add r0, r1, #0
_021E9A86:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #4
	blt _021E9A86
	mov r0, #1
	tst r0, r4
	beq _021E9AAA
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9AAA:
	mov r0, #4
	tst r0, r4
	beq _021E9AC4
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9AC4:
	mov r0, #2
	tst r0, r4
	beq _021E9ADE
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9ADE:
	mov r0, #8
	tst r0, r4
	beq _021E9AF8
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9AF8:
	mov r0, #0x10
	tst r0, r4
	beq _021E9B12
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9B12:
	mov r0, #0x20
	tst r0, r4
	beq _021E9B2C
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9B2C:
	mov r0, #0x40
	tst r0, r4
	beq _021E9B46
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9B46:
	mov r0, #0x80
	tst r0, r4
	beq _021E9B60
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9B60:
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r4
	beq _021E9B7C
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9B7C:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r4
	beq _021E9B98
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9B98:
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r4
	beq _021E9BB4
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9BB4:
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r4
	beq _021E9BD0
	add r0, sp, #0
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #3]
	add r1, r1, #1
	strb r1, [r0, #3]
_021E9BD0:
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0xb4
	bl AllocFromHeap
	add r7, r0, #0
	str r5, [r7]
	str r4, [r7, #4]
	str r6, [r7, #8]
	mov r5, #0
	add r4, sp, #0
	add r6, r7, #0
_021E9BEC:
	ldrb r0, [r4]
	ldr r2, [r7]
	add r1, r5, #0
	bl Create2DGfxResObjMan
	str r0, [r6, #0xc]
	add r5, r5, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r5, #4
	blt _021E9BEC
	add r0, r7, #0
	bl ov96_021E9D10
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021E9A78

	thumb_func_start ov96_021E9C0C
ov96_021E9C0C: ; 0x021E9C0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _021E9C1E
	ldr r0, [r5, #0x1c]
	bl sub_0200AEB0
_021E9C1E:
	ldr r1, [r5, #4]
	mov r0, #4
	tst r0, r1
	beq _021E9C2C
	ldr r0, [r5, #0x20]
	bl sub_0200AEB0
_021E9C2C:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _021E9C3A
	ldr r0, [r5, #0x24]
	bl sub_0200AEB0
_021E9C3A:
	ldr r1, [r5, #4]
	mov r0, #8
	tst r0, r1
	beq _021E9C48
	ldr r0, [r5, #0x28]
	bl sub_0200AEB0
_021E9C48:
	ldr r1, [r5, #4]
	mov r0, #0x10
	tst r0, r1
	beq _021E9C56
	ldr r0, [r5, #0x2c]
	bl sub_0200AEB0
_021E9C56:
	ldr r1, [r5, #4]
	mov r0, #0x20
	tst r0, r1
	beq _021E9C64
	ldr r0, [r5, #0x30]
	bl sub_0200AEB0
_021E9C64:
	ldr r1, [r5, #4]
	mov r0, #0x40
	tst r0, r1
	beq _021E9C72
	ldr r0, [r5, #0x34]
	bl sub_0200AEB0
_021E9C72:
	ldr r1, [r5, #4]
	mov r0, #0x80
	tst r0, r1
	beq _021E9C80
	ldr r0, [r5, #0x38]
	bl sub_0200AEB0
_021E9C80:
	mov r0, #1
	ldr r1, [r5, #4]
	lsl r0, r0, #8
	tst r0, r1
	beq _021E9C90
	ldr r0, [r5, #0x3c]
	bl sub_0200AEB0
_021E9C90:
	mov r0, #2
	ldr r1, [r5, #4]
	lsl r0, r0, #8
	tst r0, r1
	beq _021E9CA0
	ldr r0, [r5, #0x40]
	bl sub_0200AEB0
_021E9CA0:
	mov r0, #1
	ldr r1, [r5, #4]
	lsl r0, r0, #0xa
	tst r0, r1
	beq _021E9CB0
	ldr r0, [r5, #0x44]
	bl sub_0200AEB0
_021E9CB0:
	mov r0, #2
	ldr r1, [r5, #4]
	lsl r0, r0, #0xa
	tst r0, r1
	beq _021E9CC0
	ldr r0, [r5, #0x48]
	bl sub_0200AEB0
_021E9CC0:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0200B0A8
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021E9CD8
	bl sub_0200B0A8
_021E9CD8:
	mov r6, #0
	add r4, r5, #0
_021E9CDC:
	ldr r0, [r4, #0xc]
	bl Destroy2DGfxResObjMan
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021E9CDC
	add r0, r5, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9C0C

	thumb_func_start ov96_021E9CF4
ov96_021E9CF4: ; 0x021E9CF4
	cmp r0, #0
	bne _021E9CFC
	mov r0, #0
	bx lr
_021E9CFC:
	ldr r0, [r0, #4]
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021E9CF4

	thumb_func_start ov96_021E9D08
ov96_021E9D08: ; 0x021E9D08
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov96_021E9D08

	thumb_func_start ov96_021E9D10
ov96_021E9D10: ; 0x021E9D10
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #1
	tst r1, r0
	beq _021E9D6E
	mov r1, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, #3
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x1c]
	mov r0, #0x14
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x4c]
	mov r0, #0x14
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #1
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x1c]
	bl sub_0200ADA4
_021E9D6E:
	ldr r1, [r4, #4]
	mov r0, #4
	tst r0, r1
	beq _021E9DCE
	mov r0, #0x15
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r1, #0x99
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r2, #6
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x20]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #5
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x50]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #4
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	ldr r0, [r4, #0x20]
	bl sub_0200ADA4
_021E9DCE:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _021E9E2E
	mov r0, #0x16
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r1, #0x99
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r2, #9
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x24]
	mov r0, #0x16
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #8
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x54]
	mov r0, #0x16
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #7
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	ldr r0, [r4, #0x24]
	bl sub_0200ADA4
_021E9E2E:
	ldr r0, [r4, #4]
	mov r2, #0x10
	tst r0, r2
	beq _021E9E8C
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x2c]
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0xf
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x5c]
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0xe
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1]
	ldr r0, [r4, #0x2c]
	bl sub_0200ADA4
_021E9E8C:
	ldr r1, [r4, #4]
	mov r0, #0x20
	tst r0, r1
	beq _021E9EEC
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, #0x13
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x30]
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0x12
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x60]
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0x11
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	ldr r0, [r4, #0x30]
	bl sub_0200ADA4
_021E9EEC:
	ldr r1, [r4, #4]
	mov r0, #8
	tst r0, r1
	beq _021E9F4C
	mov r0, #0x19
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, #0xd
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x28]
	mov r0, #0x19
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0xc
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x58]
	mov r0, #0x19
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0xb
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	ldr r0, [r4, #0x28]
	bl sub_0200ADA4
_021E9F4C:
	ldr r1, [r4, #4]
	mov r0, #0x40
	tst r0, r1
	beq _021E9FAC
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, #0x16
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x34]
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0x15
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x64]
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0x14
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	ldr r0, [r4, #0x34]
	bl sub_0200ADA4
_021E9FAC:
	ldr r1, [r4, #4]
	mov r0, #0x80
	tst r0, r1
	beq _021EA00C
	mov r0, #0x1d
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, #0x19
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x38]
	mov r0, #0x1d
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0x18
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x68]
	mov r0, #0x1d
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0x17
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	ldr r0, [r4, #0x38]
	bl sub_0200ADA4
_021EA00C:
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	tst r0, r1
	beq _021EA06E
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, #0x1c
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x3c]
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0x1b
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x6c]
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0x1a
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	ldr r0, [r4, #0x3c]
	bl sub_0200ADA4
_021EA06E:
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	tst r0, r1
	beq _021EA0CE
	mov r2, #0x1f
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x40]
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0x1e
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x70]
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0x1d
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	ldr r0, [r4, #0x40]
	bl sub_0200ADA4
_021EA0CE:
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #0xa
	tst r0, r1
	beq _021EA130
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, #0x22
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x44]
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0x21
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x74]
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0x20
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	ldr r0, [r4, #0x44]
	bl sub_0200ADA4
_021EA130:
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xa
	tst r0, r1
	beq _021EA192
	mov r0, #0x20
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r2, #0x25
	mov r3, #0
	bl AddCharResObjFromNarc
	str r0, [r4, #0x48]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r2, #0x24
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x78]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	mov r2, #0x23
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	ldr r0, [r4, #0x48]
	bl sub_0200ADA4
_021EA192:
	ldr r1, [r4, #8]
	cmp r1, #2
	bne _021EA19A
	mov r1, #3
_021EA19A:
	mov r0, #0x17
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r2, #0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0x99
	add r3, r2, #0
	bl AddPlttResObjFromNarc
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0200AF94
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0]
	ldr r2, [r4, #4]
	mov r1, #8
	add r0, r2, #0
	tst r0, r1
	bne _021EA1E4
	add r0, r1, #0
	add r0, #0xf8
	tst r0, r2
	bne _021EA1E4
	lsl r0, r1, #7
	tst r0, r2
	beq _021EA20E
_021EA1E4:
	mov r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #0x99
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	mov r2, #0xa
	mov r3, #0
	bl AddPlttResObjFromNarc
	add r1, r4, #0
	add r1, #0xb0
	add r4, #0xb0
	str r0, [r1]
	ldr r0, [r4]
	bl sub_0200AF94
_021EA20E:
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021E9D10

	thumb_func_start ov96_021EA214
ov96_021EA214: ; 0x021EA214
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x14
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x15
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0xa0]
	str r4, [sp, #0x38]
	str r0, [sp, #0x64]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	str r7, [sp, #0x60]
	bl CreateSprite
	add r4, r0, #0
	bne _021EA2A4
	bl GF_AssertFail
_021EA2A4:
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA214

	thumb_func_start ov96_021EA2C4
ov96_021EA2C4: ; 0x021EA2C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x19
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1a
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x18
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl CreateSprite
	add r4, r0, #0
	bne _021EA354
	bl GF_AssertFail
_021EA354:
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA2C4

	thumb_func_start ov96_021EA374
ov96_021EA374: ; 0x021EA374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1c
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1d
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl CreateSprite
	add r4, r0, #0
	bne _021EA404
	bl GF_AssertFail
_021EA404:
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA374

	thumb_func_start ov96_021EA424
ov96_021EA424: ; 0x021EA424
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1a
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1b
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl CreateSprite
	add r4, r0, #0
	bne _021EA4B4
	bl GF_AssertFail
_021EA4B4:
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA424

	thumb_func_start ov96_021EA4D4
ov96_021EA4D4: ; 0x021EA4D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1b
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1c
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl CreateSprite
	add r4, r0, #0
	bne _021EA564
	bl GF_AssertFail
_021EA564:
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA4D4

	thumb_func_start ov96_021EA584
ov96_021EA584: ; 0x021EA584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1d
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1e
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl CreateSprite
	add r4, r0, #0
	bne _021EA614
	bl GF_AssertFail
_021EA614:
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA584

	thumb_func_start ov96_021EA634
ov96_021EA634: ; 0x021EA634
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1e
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x1f
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x18
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	bl CreateSprite
	add r4, r0, #0
	bne _021EA6C4
	bl GF_AssertFail
_021EA6C4:
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA634

	thumb_func_start ov96_021EA6E4
ov96_021EA6E4: ; 0x021EA6E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x90
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	str r3, [sp, #0x2c]
	cmp r4, #1
	bne _021EA6F8
	mov r6, #0x17
	b _021EA6FA
_021EA6F8:
	mov r6, #0x18
_021EA6FA:
	add r0, r5, #0
	mov r1, #0
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x38]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x1f
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x20
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	ldr r3, [sp, #0x2c]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x38]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x6c
	add r2, r6, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x6c
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xa8]
	str r7, [sp, #0x3c]
	str r0, [sp, #0x68]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r1, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	add r0, sp, #0x3c
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x3c
	str r4, [sp, #0x64]
	bl CreateSprite
	add r4, r0, #0
	bne _021EA784
	bl GF_AssertFail
_021EA784:
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x90
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA6E4

	thumb_func_start ov96_021EA7A4
ov96_021EA7A4: ; 0x021EA7A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0x20
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x21
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x68
	mov r2, #0x17
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r1, #0
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r4, [sp, #0x38]
	str r7, [sp, #0x64]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	mov r0, #2
	str r0, [sp, #0x5c]
	mov r0, #1
	str r0, [sp, #0x60]
	add r0, sp, #0x38
	bl CreateSprite
	add r4, r0, #0
	bne _021EA836
	bl GF_AssertFail
_021EA836:
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EA7A4

	thumb_func_start ov96_021EA854
ov96_021EA854: ; 0x021EA854
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xd3
	lsl r1, r1, #2
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl AllocFromHeap
	mov r2, #0xd3
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	str r5, [r4]
	ldr r0, [sp]
	str r6, [r4, #4]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x10]
	add r0, r5, #0
	str r7, [r4, #8]
	bl ov96_021E8A30
	ldr r2, [sp, #0x18]
	add r1, r6, #0
	str r0, [r4, #0x14]
	bl ov96_021E8A44
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EA854

	thumb_func_start ov96_021EA894
ov96_021EA894: ; 0x021EA894
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov96_021E8AAC
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EA894

	thumb_func_start ov96_021EA8A8
ov96_021EA8A8: ; 0x021EA8A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r6, #4]
	add r7, r3, #0
	str r2, [sp, #0xc]
	cmp r0, #0
	bgt _021EA8C4
	b _021EA9C8
_021EA8C4:
	add r4, r2, #0
	add r5, r6, #0
	str r7, [sp, #0x10]
_021EA8CA:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _021EA8D4
	mov r0, #0x20
	b _021EA8D6
_021EA8D4:
	mov r0, #0x10
_021EA8D6:
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _021EA8EC
	cmp r0, #2
	beq _021EA8F2
	cmp r0, #3
	beq _021EA8F8
	b _021EA8FE
_021EA8EC:
	mov r0, #3
	str r0, [r5, #0x2c]
	b _021EA906
_021EA8F2:
	mov r0, #4
	str r0, [r5, #0x2c]
	b _021EA906
_021EA8F8:
	mov r0, #5
	str r0, [r5, #0x2c]
	b _021EA906
_021EA8FE:
	bl GF_AssertFail
	mov r0, #3
	str r0, [r5, #0x2c]
_021EA906:
	ldr r0, [r6, #0x18]
	mov r1, #2
	bl ov96_021E9CF4
	cmp r0, #0
	beq _021EA956
	ldr r1, [r7, #4]
	ldr r2, [r7, #0x10]
	add r0, r6, #0
	mov r3, #0x16
	bl ov96_021EAA88
	str r0, [r5, #0x20]
	ldrh r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r5, #0x20]
	beq _021EA930
	mov r1, #1
	bl Set2dSpriteAnimSeqNo
	b _021EA936
_021EA930:
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
_021EA936:
	ldrh r1, [r4]
	ldr r0, _021EA9F8 ; =0x0000FFCE
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021EA952
	mov r0, #1
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x20]
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	b _021EA956
_021EA952:
	mov r0, #0
	str r0, [r5, #0x5c]
_021EA956:
	ldr r0, [r6, #0x18]
	mov r1, #4
	bl ov96_021E9CF4
	cmp r0, #0
	beq _021EA9AE
	ldr r1, [r7, #4]
	ldr r2, [r7, #0x10]
	add r0, r6, #0
	mov r3, #0x15
	bl ov96_021EAA88
	str r0, [r5, #0x24]
	ldr r0, [r4, #8]
	cmp r0, #4
	blt _021EA97A
	bl GF_AssertFail
_021EA97A:
	ldr r0, [r5, #0x24]
	ldr r1, [r4, #8]
	bl Set2dSpriteAnimSeqNo
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	beq _021EA994
	cmp r0, #2
	beq _021EA99A
	cmp r0, #3
	beq _021EA9A0
	b _021EA9A6
_021EA994:
	mov r0, #3
	str r0, [r5, #0x28]
	b _021EA9AE
_021EA99A:
	mov r0, #4
	str r0, [r5, #0x28]
	b _021EA9AE
_021EA9A0:
	mov r0, #5
	str r0, [r5, #0x28]
	b _021EA9AE
_021EA9A6:
	bl GF_AssertFail
	mov r0, #3
	str r0, [r5, #0x28]
_021EA9AE:
	mov r0, #0xc
	str r0, [r5, #0x58]
	ldr r0, [sp, #0x10]
	ldr r1, [r6, #4]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r4, #0x10
	add r0, r0, #1
	add r5, #0x44
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _021EA8CA
_021EA9C8:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bgt _021EA9D2
	mov r0, #1
	str r0, [sp, #0x14]
_021EA9D2:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	sub r0, r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	add r3, r7, #0
	bl ov96_021E8B1C
	ldr r0, _021EA9FC ; =ov96_021EAA24
	ldr r2, [sp, #0x14]
	add r1, r6, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021EA9F8: .word 0x0000FFCE
_021EA9FC: .word ov96_021EAA24
	thumb_func_end ov96_021EA8A8

	thumb_func_start ov96_021EAA00
ov96_021EAA00: ; 0x021EAA00
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov96_021EAA00

	thumb_func_start ov96_021EAA04
ov96_021EAA04: ; 0x021EAA04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r4, r0
	blt _021EAA14
	bl GF_AssertFail
_021EAA14:
	mov r0, #0x44
	add r5, #0x1c
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAA04

	thumb_func_start ov96_021EAA20
ov96_021EAA20: ; 0x021EAA20
	ldr r0, [r0]
	bx lr
	thumb_func_end ov96_021EAA20

	thumb_func_start ov96_021EAA24
ov96_021EAA24: ; 0x021EAA24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r1, #0x14]
	str r1, [sp, #4]
	bl ov96_021E8B88
	cmp r0, #0
	beq _021EAA82
	ldr r0, [sp, #4]
	mov r4, #0
	ldr r7, [r0, #8]
	ldr r0, [r0, #4]
	cmp r0, #0
	ble _021EAA76
	ldr r5, [sp, #4]
	add r6, r5, #0
	add r6, #0x1c
_021EAA48:
	ldr r0, [sp, #4]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021E8B8C
	str r0, [r5, #0x1c]
	add r0, r6, #0
	add r1, r7, #0
	bl ov96_021EABA8
	ldr r0, [r5, #0x1c]
	add r7, r7, #1
	bl ov96_021E90FC
	str r0, [r5, #0x44]
	ldr r0, [sp, #4]
	add r4, r4, #1
	ldr r0, [r0, #4]
	add r5, #0x44
	add r6, #0x44
	cmp r4, r0
	blt _021EAA48
_021EAA76:
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r0, [sp]
	bl SysTask_Destroy
_021EAA82:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAA24

	thumb_func_start ov96_021EAA88
ov96_021EAA88: ; 0x021EAA88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r6, r1, #0
	mov r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov96_021E9D08
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl ov96_021E9D08
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x18]
	mov r1, #2
	bl ov96_021E9D08
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x18]
	mov r1, #3
	bl ov96_021E9D08
	mov r1, #0
	str r7, [sp]
	mvn r1, r1
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x2c]
	str r6, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r2, [sp, #0x30]
	add r3, r7, #0
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x34]
	str r2, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, sp, #0x68
	add r1, r7, #0
	mov r2, #0x17
	bl CreateSpriteResourcesHeader
	cmp r4, #3
	bne _021EAAEE
	mov r4, #1
_021EAAEE:
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r0, [sp, #0x38]
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	ldr r0, [r5]
	str r0, [sp, #0x64]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, sp, #0x38
	strh r1, [r0, #0x20]
	add r0, sp, #0x38
	str r1, [sp, #0x5c]
	str r4, [sp, #0x60]
	bl CreateSprite
	add r4, r0, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EAA88

	thumb_func_start ov96_021EAB38
ov96_021EAB38: ; 0x021EAB38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov96_021E8BAC
	add r1, r4, #0
	bl Set2dSpriteVisibleFlag
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EAB64
	ldr r1, [r5, #0x40]
	cmp r1, #0
	beq _021EAB5E
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	b _021EAB64
_021EAB5E:
	add r1, r4, #0
	bl Set2dSpriteVisibleFlag
_021EAB64:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EAB70
	add r1, r4, #0
	bl Set2dSpriteVisibleFlag
_021EAB70:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAB38

	thumb_func_start ov96_021EAB74
ov96_021EAB74: ; 0x021EAB74
	push {r3, lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _021EAB92
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _021EAB8C
	add r0, r2, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	pop {r3, pc}
_021EAB8C:
	add r0, r2, #0
	bl Set2dSpriteVisibleFlag
_021EAB92:
	pop {r3, pc}
	thumb_func_end ov96_021EAB74

	thumb_func_start ov96_021EAB94
ov96_021EAB94: ; 0x021EAB94
	push {r4, lr}
	ldr r0, [r0]
	add r4, r1, #0
	bl ov96_021E8BAC
	add r1, r4, #0
	bl Set2dSpriteVisibleFlag
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAB94

	thumb_func_start ov96_021EABA8
ov96_021EABA8: ; 0x021EABA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov96_021E8BAC
	add r1, r4, #0
	bl Sprite_SetDrawPriority
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EABCA
	ldr r1, [r5, #0x3c]
	lsl r1, r1, #1
	add r1, r4, r1
	bl Sprite_SetDrawPriority
_021EABCA:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EABD8
	ldr r1, [r5, #0x3c]
	add r1, r4, r1
	bl Sprite_SetDrawPriority
_021EABD8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EABA8

	thumb_func_start ov96_021EABDC
ov96_021EABDC: ; 0x021EABDC
	str r1, [r0, #0x3c]
	bx lr
	thumb_func_end ov96_021EABDC

	thumb_func_start ov96_021EABE0
ov96_021EABE0: ; 0x021EABE0
	push {r4, lr}
	ldr r0, [r0]
	add r4, r1, #0
	bl ov96_021E8BAC
	add r1, r4, #0
	bl sub_0202487C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EABE0

	thumb_func_start ov96_021EABF4
ov96_021EABF4: ; 0x021EABF4
	push {r4, lr}
	ldr r0, [r0]
	add r4, r1, #0
	bl ov96_021E8BAC
	add r1, r4, #0
	bl sub_020247E4
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EABF4

	thumb_func_start ov96_021EAC08
ov96_021EAC08: ; 0x021EAC08
	str r1, [r0, #0x34]
	bx lr
	thumb_func_end ov96_021EAC08

	thumb_func_start ov96_021EAC0C
ov96_021EAC0C: ; 0x021EAC0C
	push {r4, lr}
	add r4, r1, #0
	str r4, [r0, #0x34]
	beq _021EAC5A
	ldr r0, [r0]
	bl ov96_021E8BAC
	cmp r4, #6
	bhi _021EAC50
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EAC2A: ; jump table
	.short _021EAC50 - _021EAC2A - 2 ; case 0
	.short _021EAC38 - _021EAC2A - 2 ; case 1
	.short _021EAC3C - _021EAC2A - 2 ; case 2
	.short _021EAC40 - _021EAC2A - 2 ; case 3
	.short _021EAC44 - _021EAC2A - 2 ; case 4
	.short _021EAC48 - _021EAC2A - 2 ; case 5
	.short _021EAC4C - _021EAC2A - 2 ; case 6
_021EAC38:
	mov r1, #0
	b _021EAC56
_021EAC3C:
	mov r1, #1
	b _021EAC56
_021EAC40:
	mov r1, #2
	b _021EAC56
_021EAC44:
	mov r1, #3
	b _021EAC56
_021EAC48:
	mov r1, #4
	b _021EAC56
_021EAC4C:
	mov r1, #8
	b _021EAC56
_021EAC50:
	bl GF_AssertFail
	pop {r4, pc}
_021EAC56:
	bl TryChange2dSpriteAnimSeqNo
_021EAC5A:
	pop {r4, pc}
	thumb_func_end ov96_021EAC0C

	thumb_func_start ov96_021EAC5C
ov96_021EAC5C: ; 0x021EAC5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov96_021E8BAC
	cmp r4, #8
	bgt _021EAC7E
	bge _021EACAE
	cmp r4, #4
	bgt _021EAD04
	cmp r4, #0
	blt _021EAD04
	beq _021EACAE
	cmp r4, #4
	beq _021EACAE
	pop {r3, r4, r5, pc}
_021EAC7E:
	cmp r4, #0x16
	bgt _021EACAA
	add r1, r4, #0
	sub r1, #0xc
	bmi _021EAD04
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EAC94: ; jump table
	.short _021EACAE - _021EAC94 - 2 ; case 0
	.short _021EACB2 - _021EAC94 - 2 ; case 1
	.short _021EACB2 - _021EAC94 - 2 ; case 2
	.short _021EACB2 - _021EAC94 - 2 ; case 3
	.short _021EACAE - _021EAC94 - 2 ; case 4
	.short _021EACB2 - _021EAC94 - 2 ; case 5
	.short _021EACB2 - _021EAC94 - 2 ; case 6
	.short _021EACB2 - _021EAC94 - 2 ; case 7
	.short _021EACAE - _021EAC94 - 2 ; case 8
	.short _021EACAE - _021EAC94 - 2 ; case 9
	.short _021EACAE - _021EAC94 - 2 ; case 10
_021EACAA:
	cmp r4, #0x1a
	bne _021EAD04
_021EACAE:
	str r4, [r5, #0x38]
	b _021EACB4
_021EACB2:
	pop {r3, r4, r5, pc}
_021EACB4:
	cmp r4, #0x14
	beq _021EACFC
	cmp r4, #0x15
	beq _021EACFC
	ldr r1, [r5, #0x34]
	cmp r1, #4
	bhi _021EACF6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EACCE: ; jump table
	.short _021EACF6 - _021EACCE - 2 ; case 0
	.short _021EACD8 - _021EACCE - 2 ; case 1
	.short _021EACDE - _021EACCE - 2 ; case 2
	.short _021EACE6 - _021EACCE - 2 ; case 3
	.short _021EACEE - _021EACCE - 2 ; case 4
_021EACD8:
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	b _021EAD00
_021EACDE:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	b _021EAD00
_021EACE6:
	add r1, r4, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	b _021EAD00
_021EACEE:
	add r1, r4, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	b _021EAD00
_021EACF6:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_021EACFC:
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
_021EAD00:
	bl TryChange2dSpriteAnimSeqNo
_021EAD04:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAC5C

	thumb_func_start ov96_021EAD08
ov96_021EAD08: ; 0x021EAD08
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	add r5, r1, #0
	bl ov96_021E8BAC
	cmp r5, #0
	beq _021EAD22
	cmp r5, #0x14
	beq _021EAD28
	cmp r5, #0x15
	beq _021EAD2E
	pop {r3, r4, r5, pc}
_021EAD22:
	mov r1, #0
	str r1, [r4, #0x38]
	b _021EAD32
_021EAD28:
	mov r1, #4
	str r1, [r4, #0x38]
	b _021EAD32
_021EAD2E:
	mov r1, #5
	str r1, [r4, #0x38]
_021EAD32:
	cmp r5, #0x14
	beq _021EAD6C
	cmp r5, #0x15
	beq _021EAD6C
	ldr r1, [r4, #0x34]
	cmp r1, #4
	bhi _021EAD66
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EAD4C: ; jump table
	.short _021EAD66 - _021EAD4C - 2 ; case 0
	.short _021EAD56 - _021EAD4C - 2 ; case 1
	.short _021EAD5A - _021EAD4C - 2 ; case 2
	.short _021EAD5E - _021EAD4C - 2 ; case 3
	.short _021EAD62 - _021EAD4C - 2 ; case 4
_021EAD56:
	mov r1, #0
	b _021EAD72
_021EAD5A:
	mov r1, #1
	b _021EAD72
_021EAD5E:
	mov r1, #2
	b _021EAD72
_021EAD62:
	mov r1, #3
	b _021EAD72
_021EAD66:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_021EAD6C:
	ldr r1, [r4, #0x38]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_021EAD72:
	bl TryChange2dSpriteAnimSeqNo
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EAD08

	thumb_func_start ov96_021EAD78
ov96_021EAD78: ; 0x021EAD78
	push {r3, lr}
	ldr r0, [r0]
	bl ov96_021E8BAC
	bl Sprite_IsCellAnimationFinished
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAD78

	thumb_func_start ov96_021EAD88
ov96_021EAD88: ; 0x021EAD88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r5]
	add r6, r2, #0
	add r7, r3, #0
	bl ov96_021E8BAC
	str r0, [sp]
	lsl r0, r4, #0xc
	str r0, [sp, #4]
	lsl r0, r6, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	add r0, r4, r0
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x18]
	add r0, r6, r0
	str r0, [r5, #0x24]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EADF0
	add r4, sp, #4
	ldmia r4!, {r0, r1}
	add r3, sp, #0x10
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #0x14]
	lsl r3, r1, #1
	ldr r1, [r5, #0xc]
	sub r1, r3, r1
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	add r1, r2, #0
	bl Sprite_SetMatrix
_021EADF0:
	cmp r7, #0
	beq _021EAE2A
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EAE2A
	add r4, sp, #4
	ldmia r4!, {r0, r1}
	add r3, sp, #0x10
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #0x14]
	lsl r3, r1, #1
	ldr r1, [r5, #0x10]
	sub r1, r3, r1
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	add r1, r2, #0
	bl Sprite_SetMatrix
_021EAE2A:
	ldr r0, [r5]
	bl ov96_021E92AC
	cmp r0, #0
	beq _021EAE3E
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
_021EAE3E:
	ldr r0, [sp]
	add r1, sp, #4
	bl Sprite_SetMatrix
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAD88

	thumb_func_start ov96_021EAE4C
ov96_021EAE4C: ; 0x021EAE4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r5]
	add r6, r2, #0
	bl ov96_021E8BAC
	add r7, r0, #0
	lsl r0, r4, #0xc
	str r0, [sp]
	lsl r0, r6, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	add r0, r4, r0
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x18]
	add r0, r6, r0
	str r0, [r5, #0x24]
	ldr r0, [r5]
	bl ov96_021E92AC
	cmp r0, #0
	beq _021EAE90
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #4]
_021EAE90:
	add r0, r7, #0
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EAE4C

	thumb_func_start ov96_021EAE9C
ov96_021EAE9C: ; 0x021EAE9C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov96_021EAA20
	bl ov96_021E8BAC
	bl Sprite_GetMatrixPtr
	ldr r2, [r0]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	str r1, [r5]
	ldr r1, [r0, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EAE9C

	thumb_func_start ov96_021EAEC8
ov96_021EAEC8: ; 0x021EAEC8
	ldr r3, [r0, #0x20]
	str r3, [r1]
	ldr r0, [r0, #0x24]
	str r0, [r2]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EAEC8

	thumb_func_start ov96_021EAED4
ov96_021EAED4: ; 0x021EAED4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r3, #0
	add r0, r0, r1
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x24]
	add r0, r0, r2
	str r0, [r5, #0x24]
	lsl r0, r1, #0xc
	str r0, [sp, #0xc]
	lsl r0, r2, #0xc
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5]
	bl ov96_021E8BAC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_021EAC0C
	add r0, r4, #0
	bl Sprite_GetMatrixPtr
	add r1, r0, #0
	add r0, sp, #0xc
	add r2, sp, #0
	bl VEC_Add
	add r0, r4, #0
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EAF38
	bl Sprite_GetMatrixPtr
	add r1, r0, #0
	add r0, sp, #0xc
	add r2, sp, #0
	bl VEC_Add
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl Sprite_SetMatrix
_021EAF38:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021EAF5A
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EAF5A
	bl Sprite_GetMatrixPtr
	add r1, r0, #0
	add r0, sp, #0xc
	add r2, sp, #0
	bl VEC_Add
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl Sprite_SetMatrix
_021EAF5A:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAED4

	thumb_func_start ov96_021EAF60
ov96_021EAF60: ; 0x021EAF60
	push {r3, lr}
	ldr r0, [r0, #0x14]
	bl ov96_021E8BF4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021EAF60

	thumb_func_start ov96_021EAF6C
ov96_021EAF6C: ; 0x021EAF6C
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov96_021EAF6C

	thumb_func_start ov96_021EAF70
ov96_021EAF70: ; 0x021EAF70
	str r1, [r0, #0x2c]
	str r2, [r0, #0x30]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EAF70

	thumb_func_start ov96_021EAF78
ov96_021EAF78: ; 0x021EAF78
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	add r5, r0, #0
	str r4, [sp]
	bl ov96_021EB03C
	ldr r1, [r5, #0x30]
	ldr r0, [sp, #0x14]
	str r1, [r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EAF78

	thumb_func_start ov96_021EAF8C
ov96_021EAF8C: ; 0x021EAF8C
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end ov96_021EAF8C

	thumb_func_start ov96_021EAF90
ov96_021EAF90: ; 0x021EAF90
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end ov96_021EAF90

	thumb_func_start ov96_021EAF94
ov96_021EAF94: ; 0x021EAF94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r5]
	add r6, r2, #0
	bl ov96_021E8BAC
	add r2, sp, #0x10
	add r3, sp, #4
	str r0, [sp]
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	lsl r0, r4, #0xc
	str r0, [sp, #0x10]
	lsl r0, r6, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EAFD2
	add r1, r7, #0
	bl Sprite_SetMatrix
_021EAFD2:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EAFDE
	add r1, sp, #0x10
	bl Sprite_SetMatrix
_021EAFDE:
	ldr r0, [r5, #0x10]
	add r1, r6, r0
	ldr r0, [r5, #0x18]
	lsl r0, r0, #1
	sub r0, r1, r0
	ldr r1, [r5, #0x14]
	str r4, [r5, #0x20]
	sub r2, r4, r1
	ldr r1, [r5, #0x18]
	add r1, r0, r1
	str r1, [r5, #0x24]
	lsl r1, r2, #0xc
	lsl r0, r0, #0xc
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	bl ov96_021E92AC
	cmp r0, #0
	beq _021EB010
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
_021EB010:
	ldr r0, [sp]
	add r1, sp, #4
	bl Sprite_SetMatrix
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EAF94

	thumb_func_start ov96_021EB01C
ov96_021EB01C: ; 0x021EB01C
	push {r4, r5, r6, lr}
	ldr r5, [r0, #0x14]
	ldr r4, [r0, #0x28]
	sub r1, r1, r5
	ldr r5, [r0, #0x18]
	lsl r5, r5, #1
	sub r6, r5, r4
	lsr r5, r6, #0x1f
	add r5, r6, r5
	asr r5, r5, #1
	add r4, r4, r5
	sub r2, r2, r4
	bl ov96_021EAD88
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB01C

	thumb_func_start ov96_021EB03C
ov96_021EB03C: ; 0x021EB03C
	push {r4, r5, r6, r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r1, [r4, #0x18]
	add r6, r3, #0
	ldr r3, [r4, #0x28]
	lsl r5, r1, #1
	add r0, r2, #0
	sub r2, r5, r3
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r1, r3, r1
	lsl r1, r1, #0xc
	sub r0, r0, r1
	ldr r1, [r4, #0x2c]
	sub r1, r5, r1
	lsl r1, r1, #0xc
	add r1, r0, r1
	ldr r0, [sp, #0x10]
	str r7, [r6]
	str r1, [r0]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov96_021EB03C

	thumb_func_start ov96_021EB06C
ov96_021EB06C: ; 0x021EB06C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	ldr r1, [r4, #4]
	add r0, r2, #0
	add r6, r3, #0
	cmp r1, #0
	bne _021EB082
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021EB082:
	ldr r1, [r4, #0x18]
	ldr r3, [r4, #0x28]
	lsl r5, r1, #1
	sub r2, r5, r3
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r1, r3, r1
	sub r0, r0, r1
	add r1, r0, r5
	ldr r0, [r4, #0x10]
	sub r1, r1, r0
	ldr r0, [sp, #0x18]
	str r7, [r6]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB06C

	thumb_func_start ov96_021EB0A4
ov96_021EB0A4: ; 0x021EB0A4
	push {r3, r4}
	ldr r4, [r0, #0x10]
	add r4, r2, r4
	ldr r2, [r0, #0x18]
	str r1, [r3]
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x18]
	lsl r2, r2, #1
	lsl r0, r0, #1
	sub r3, r0, r1
	lsr r0, r3, #0x1f
	add r0, r3, r0
	sub r2, r4, r2
	asr r0, r0, #1
	add r0, r2, r0
	add r1, r1, r0
	ldr r0, [sp, #8]
	str r1, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021EB0A4

	thumb_func_start ov96_021EB0CC
ov96_021EB0CC: ; 0x021EB0CC
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	lsl r0, r3, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r2, [sp, #0x10]
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	add r0, sp, #0
	add r1, sp, #0xc
	add r2, sp, #0x18
	bl VEC_Subtract
	add r0, sp, #0x18
	bl VEC_Mag
	ldr r1, [r4, #0x1c]
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _021EB104
	add sp, #0x24
	mov r0, #1
	pop {r3, r4, pc}
_021EB104:
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB0CC

	thumb_func_start ov96_021EB10C
ov96_021EB10C: ; 0x021EB10C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov96_021EAA20
	add r1, r5, #0
	add r2, r4, #0
	bl ov96_021E9204
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EB10C

	thumb_func_start ov96_021EB120
ov96_021EB120: ; 0x021EB120
	push {r3, lr}
	ldr r0, [r0]
	bl ov96_021E8BAC
	bl Get2dSpriteVisibleFlag
	cmp r0, #0
	beq _021EB134
	mov r0, #1
	pop {r3, pc}
_021EB134:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov96_021EB120

	thumb_func_start ov96_021EB138
ov96_021EB138: ; 0x021EB138
	ldr r3, _021EB140 ; =ov96_021E9290
	ldr r0, [r0, #0x14]
	bx r3
	nop
_021EB140: .word ov96_021E9290
	thumb_func_end ov96_021EB138

	thumb_func_start ov96_021EB144
ov96_021EB144: ; 0x021EB144
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EB17C
	cmp r1, #0
	bne _021EB158
	mov r6, #1
	b _021EB15A
_021EB158:
	add r6, r4, #0
_021EB15A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021EAA04
	bl ov96_021EAA20
	bl ov96_021E8BAC
	add r1, r6, #0
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _021EB15A
_021EB17C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB144

	thumb_func_start ov96_021EB180
ov96_021EB180: ; 0x021EB180
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x56
	lsl r1, r1, #2
	add r6, r0, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r2, #0x56
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl MIi_CpuClearFast
	str r6, [r4]
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0x14
	str r0, [r2]
	ldr r2, [r4, #0xc]
	add r0, r6, #0
	mul r1, r2
	bl AllocFromHeap
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r3, [r4, #0xc]
	mov r2, #0x14
	ldr r1, [r4, r1]
	mov r0, #0
	mul r2, r3
	bl MIi_CpuClear32
	ldr r2, [r4, #8]
	mov r1, #0xc
	ldr r0, [r4]
	mul r1, r2
	bl AllocFromHeap
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r3, [r4, #8]
	mov r2, #0xc
	ldr r1, [r4, r1]
	mov r0, #0
	mul r2, r3
	bl MIi_CpuClear32
	add r1, r4, #0
	ldr r0, [r4, #8]
	ldr r2, [r4]
	add r1, #0x18
	bl G2dRenderer_Init
	mov r7, #5
	str r0, [r4, #0x14]
	mov r5, #0
	add r6, r4, #0
	lsl r7, r7, #6
_021EB200:
	add r0, r4, r5
	ldrb r0, [r0, #0x10]
	ldr r2, [r4]
	add r1, r5, #0
	bl Create2DGfxResObjMan
	str r0, [r6, r7]
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #4
	blt _021EB200
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB180

	thumb_func_start ov96_021EB21C
ov96_021EB21C: ; 0x021EB21C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _021EB25E
	mov r7, #0x15
	lsl r7, r7, #4
_021EB22C:
	mov r0, #0x14
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r5, r7]
	add r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021EB240
	bl sub_0200AEB0
_021EB240:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r0, r0, r6
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021EB252
	bl sub_0200B0A8
_021EB252:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5, #0xc]
	cmp r4, r0
	blt _021EB22C
_021EB25E:
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_021EB264:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Destroy2DGfxResObjMan
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021EB264
	ldr r0, [r5, #0x14]
	bl SpriteList_Delete
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FreeToHeap
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl FreeToHeap
	add r0, r5, #0
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB21C

	thumb_func_start ov96_021EB29C
ov96_021EB29C: ; 0x021EB29C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r6, r2, #0
	cmp r4, r0
	blt _021EB2AE
	bl GF_AssertFail
_021EB2AE:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #0x14
	mul r0, r4
	str r6, [r1, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021EB29C

	thumb_func_start ov96_021EB2BC
ov96_021EB2BC: ; 0x021EB2BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0xc]
	add r1, r3, #0
	mov r2, #0
	add r5, r0, #0
	bl ov96_021EB5EC
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl AddCharResObjFromNarc
	str r0, [r4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EB2BC

	thumb_func_start ov96_021EB2F4
ov96_021EB2F4: ; 0x021EB2F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	add r1, r3, #0
	mov r2, #1
	add r5, r0, #0
	bl ov96_021EB5EC
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x18
	ldrb r0, [r0, #0x14]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl AddPlttResObjFromNarc
	str r0, [r4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB2F4

	thumb_func_start ov96_021EB334
ov96_021EB334: ; 0x021EB334
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0xc]
	add r1, r3, #0
	mov r2, #2
	add r5, r0, #0
	bl ov96_021EB5EC
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EB334

	thumb_func_start ov96_021EB36C
ov96_021EB36C: ; 0x021EB36C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0xc]
	add r1, r3, #0
	mov r2, #3
	add r5, r0, #0
	bl ov96_021EB5EC
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EB36C

	thumb_func_start ov96_021EB3A4
ov96_021EB3A4: ; 0x021EB3A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _021EB3E0
	mov r7, #0x15
	add r4, r6, #0
	lsl r7, r7, #4
_021EB3B6:
	ldr r0, [r5, r7]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021EB3C4
	bl sub_0200ADA4
_021EB3C4:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r0, r0, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021EB3D6
	bl sub_0200AF94
_021EB3D6:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _021EB3B6
_021EB3E0:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB3A4

	thumb_func_start ov96_021EB3E4
ov96_021EB3E4: ; 0x021EB3E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, sp, #8
	ldrb r6, [r6, #0x10]
	add r5, r0, #0
	add r4, r3, #0
	str r6, [sp]
	bl ov96_021EB408
	add r2, sp, #8
	ldrb r2, [r2, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021EB4F4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB3E4

	thumb_func_start ov96_021EB408
ov96_021EB408: ; 0x021EB408
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r5, r0, #0
	str r3, [sp, #0x2c]
	add r4, r1, #0
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r6, r2, #0
	cmp r1, r0
	blt _021EB420
	bl GF_AssertFail
_021EB420:
	ldr r0, [sp, #0x2c]
	mov r2, #5
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	lsl r2, r2, #6
	ldr r1, [r5, r2]
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x60
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, sp, #0x60
	str r0, [sp, #0x34]
	ldr r0, [r5]
	str r0, [sp, #0x5c]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, sp, #0x30
	strh r1, [r0, #0x20]
	add r0, sp, #0x30
	str r1, [sp, #0x54]
	str r6, [sp, #0x58]
	bl CreateSprite
	add r4, r0, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	mov r7, #0x55
	ldr r1, [r5, #4]
	lsl r7, r7, #2
	ldr r3, [r5, r7]
	mov r0, #0xc
	add r2, r1, #0
	mov r6, #0
	mul r2, r0
	strh r6, [r3, r2]
	ldr r1, [r5, #4]
	ldr r3, [r5, r7]
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	strh r6, [r1, #2]
	ldr r1, [r5, #4]
	ldr r3, [r5, r7]
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	str r4, [r1, #4]
	add r1, sp, #0x88
	ldrb r6, [r1, #0x10]
	ldr r1, [r5, #4]
	ldr r3, [r5, r7]
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	strh r6, [r1, #8]
	ldr r1, [r5, #4]
	ldr r2, [r5, r7]
	mul r0, r1
	add r1, r2, r0
	ldr r0, [sp, #0x2c]
	strh r0, [r1, #0xa]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	add r0, r4, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EB408

	thumb_func_start ov96_021EB4F4
ov96_021EB4F4: ; 0x021EB4F4
	push {r3, r4, r5, lr}
	ldr r4, [r0, #8]
	mov r3, #0
	cmp r4, #0
	ble _021EB524
	mov r5, #0x55
	lsl r5, r5, #2
	ldr r0, [r0, r5]
_021EB504:
	ldrh r5, [r0]
	cmp r5, #0
	bne _021EB51C
	ldrh r5, [r0, #0xa]
	cmp r5, r1
	bne _021EB51C
	ldrh r5, [r0, #8]
	cmp r5, r2
	bne _021EB51C
	mov r1, #1
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_021EB51C:
	add r3, r3, #1
	add r0, #0xc
	cmp r3, r4
	blt _021EB504
_021EB524:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EB4F4

	thumb_func_start ov96_021EB52C
ov96_021EB52C: ; 0x021EB52C
	push {r3, lr}
	ldrh r3, [r0]
	cmp r3, #0
	beq _021EB55C
	cmp r1, #0
	beq _021EB550
	mov r1, #1
	strh r1, [r0, #2]
	cmp r2, #0
	ldr r0, [r0, #4]
	beq _021EB548
	bl Set2dSpriteVisibleFlag
	pop {r3, pc}
_021EB548:
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	pop {r3, pc}
_021EB550:
	mov r1, #0
	strh r1, [r0, #2]
	ldr r0, [r0, #4]
	bl Set2dSpriteVisibleFlag
	pop {r3, pc}
_021EB55C:
	bl GF_AssertFail
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB52C

	thumb_func_start ov96_021EB564
ov96_021EB564: ; 0x021EB564
	ldr r3, _021EB56C ; =sub_020248F0
	ldr r0, [r0, #4]
	bx r3
	nop
_021EB56C: .word Set2dSpriteAnimSeqNo
	thumb_func_end ov96_021EB564

	thumb_func_start ov96_021EB570
ov96_021EB570: ; 0x021EB570
	ldr r3, _021EB578 ; =TryChange2dSpriteAnimSeqNo
	ldr r0, [r0, #4]
	bx r3
	nop
_021EB578: .word TryChange2dSpriteAnimSeqNo
	thumb_func_end ov96_021EB570

	thumb_func_start ov96_021EB57C
ov96_021EB57C: ; 0x021EB57C
	ldr r3, _021EB584 ; =Sprite_IsCellAnimationFinished
	ldr r0, [r0, #4]
	bx r3
	nop
_021EB584: .word Sprite_IsCellAnimationFinished
	thumb_func_end ov96_021EB57C

	thumb_func_start ov96_021EB588
ov96_021EB588: ; 0x021EB588
	ldr r3, _021EB590 ; =Sprite_SetMatrix
	ldr r0, [r0, #4]
	bx r3
	nop
_021EB590: .word Sprite_SetMatrix
	thumb_func_end ov96_021EB588

	thumb_func_start ov96_021EB594
ov96_021EB594: ; 0x021EB594
	ldr r3, _021EB59C ; =Sprite_GetMatrixPtr
	ldr r0, [r0, #4]
	bx r3
	nop
_021EB59C: .word Sprite_GetMatrixPtr
	thumb_func_end ov96_021EB594

	thumb_func_start ov96_021EB5A0
ov96_021EB5A0: ; 0x021EB5A0
	ldr r3, _021EB5A8 ; =sub_02024804
	ldr r0, [r0, #4]
	bx r3
	nop
_021EB5A8: .word sub_02024804
	thumb_func_end ov96_021EB5A0

	thumb_func_start ov96_021EB5AC
ov96_021EB5AC: ; 0x021EB5AC
	ldr r3, _021EB5B4 ; =sub_0202481C
	ldr r0, [r0, #4]
	bx r3
	nop
_021EB5B4: .word sub_0202481C
	thumb_func_end ov96_021EB5AC

	thumb_func_start ov96_021EB5B8
ov96_021EB5B8: ; 0x021EB5B8
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov96_021EB5B8

	thumb_func_start ov96_021EB5BC
ov96_021EB5BC: ; 0x021EB5BC
	ldr r3, _021EB5C4 ; =sub_0202457C
	ldr r0, [r0, #0x14]
	bx r3
	nop
_021EB5C4: .word sub_0202457C
	thumb_func_end ov96_021EB5BC

	thumb_func_start ov96_021EB5C8
ov96_021EB5C8: ; 0x021EB5C8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	ldr r2, [sp, #0x10]
	add r0, #0x18
	add r1, r3, #0
	bl G2dRenderer_SetSubSurfaceCoords
	add r5, #0x18
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl G2dRenderer_SetMainSurfaceCoords
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021EB5C8

	thumb_func_start ov96_021EB5E8
ov96_021EB5E8: ; 0x021EB5E8
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov96_021EB5E8

	thumb_func_start ov96_021EB5EC
ov96_021EB5EC: ; 0x021EB5EC
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, #4
	blo _021EB5FC
	bl GF_AssertFail
_021EB5FC:
	ldr r2, [r5, #0xc]
	mov r0, #0
	cmp r2, #0
	ble _021EB628
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r5, r1, #0
_021EB60C:
	ldr r3, [r5]
	cmp r4, r3
	bne _021EB620
	mov r2, #0x14
	mul r2, r0
	add r0, r1, r2
	add r1, r0, #4
	lsl r0, r6, #2
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_021EB620:
	add r0, r0, #1
	add r5, #0x14
	cmp r0, r2
	blt _021EB60C
_021EB628:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021EB5EC

	thumb_func_start ov96_021EB630
ov96_021EB630: ; 0x021EB630
	ldr r3, _021EB638 ; =Sprite_SetDrawPriority
	ldr r0, [r0, #4]
	bx r3
	nop
_021EB638: .word Sprite_SetDrawPriority
	thumb_func_end ov96_021EB630

	thumb_func_start ov96_021EB63C
ov96_021EB63C: ; 0x021EB63C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _021EB676
	add r4, r6, #0
	cmp r1, #0
	bne _021EB652
	mov r7, #1
	b _021EB654
_021EB652:
	add r7, r6, #0
_021EB654:
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrh r0, [r1, r4]
	cmp r0, #0
	beq _021EB66C
	add r0, r1, r4
	bl ov96_021EB5B8
	add r1, r7, #0
	bl Set2dSpriteAnimActiveFlag
_021EB66C:
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _021EB654
_021EB676:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EB63C

	thumb_func_start ov96_021EB678
ov96_021EB678: ; 0x021EB678
	ldr r3, _021EB67C ; =ov96_021ED1D0
	bx r3
	.balign 4, 0
_021EB67C: .word ov96_021ED1D0
	thumb_func_end ov96_021EB678

	thumb_func_start ov96_021EB680
ov96_021EB680: ; 0x021EB680
	ldr r3, _021EB684 ; =ov96_021ED47C
	bx r3
	.balign 4, 0
_021EB684: .word ov96_021ED47C
	thumb_func_end ov96_021EB680

	thumb_func_start ov96_021EB688
ov96_021EB688: ; 0x021EB688
	ldr r3, _021EB68C ; =ov96_021ED48C
	bx r3
	.balign 4, 0
_021EB68C: .word ov96_021ED48C
	thumb_func_end ov96_021EB688

	thumb_func_start ov96_021EB690
ov96_021EB690: ; 0x021EB690
	ldr r3, _021EB694 ; =ov96_021ED1D0
	bx r3
	.balign 4, 0
_021EB694: .word ov96_021ED1D0
	thumb_func_end ov96_021EB690

	thumb_func_start ov96_021EB698
ov96_021EB698: ; 0x021EB698
	ldr r3, _021EB69C ; =ov96_021ED47C
	bx r3
	.balign 4, 0
_021EB69C: .word ov96_021ED47C
	thumb_func_end ov96_021EB698

	thumb_func_start ov96_021EB6A0
ov96_021EB6A0: ; 0x021EB6A0
	ldr r3, _021EB6A4 ; =ov96_021ED48C
	bx r3
	.balign 4, 0
_021EB6A4: .word ov96_021ED48C
	thumb_func_end ov96_021EB6A0

	thumb_func_start ov96_021EB6A8
ov96_021EB6A8: ; 0x021EB6A8
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021EB6C4 ; =ov96_0221B030
	add r3, sp, #0
	mov r2, #5
_021EB6B2:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EB6B2
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021EB6C4: .word ov96_0221B030
	thumb_func_end ov96_021EB6A8

	thumb_func_start ov96_021EB6C8
ov96_021EB6C8: ; 0x021EB6C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021EB6E2
	cmp r0, #1
	beq _021EB712
	b _021EB724
_021EB6E2:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021EB6F2
	add r0, r5, #0
	bl ov96_021ED8DC
_021EB6F2:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6]
	mov r1, #3
	str r0, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EB728
_021EB712:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EB728
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E5FC8
	b _021EB728
_021EB724:
	bl GF_AssertFail
_021EB728:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB6C8

	thumb_func_start ov96_021EB730
ov96_021EB730: ; 0x021EB730
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	bl ov96_021E5DC4
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	mov r5, #0
	bl ov96_021E5EE8
	cmp r0, #1
	bne _021EB750
	ldr r0, [sp, #0xc]
	bl ov96_021EE324
	add r5, r0, #0
_021EB750:
	ldr r0, [r4, #0xc]
	bl ov96_021EE830
	ldr r0, [r4, #0xc]
	bl ov96_021EEA80
	cmp r0, #0
	bne _021EB764
	cmp r5, #0
	beq _021EB766
_021EB764:
	b _021EB9AE
_021EB766:
	ldr r0, [r4, #0xc]
	bl ov96_021EE97C
	add r1, r4, #0
	add r1, #0xb5
	mov r5, #0
	ldrb r1, [r1]
	add r6, r0, #0
	mvn r5, r5
	cmp r1, #8
	bls _021EB77E
	b _021EB98C
_021EB77E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB78A: ; jump table
	.short _021EB79C - _021EB78A - 2 ; case 0
	.short _021EB7B4 - _021EB78A - 2 ; case 1
	.short _021EB7CA - _021EB78A - 2 ; case 2
	.short _021EB7F6 - _021EB78A - 2 ; case 3
	.short _021EB816 - _021EB78A - 2 ; case 4
	.short _021EB82A - _021EB78A - 2 ; case 5
	.short _021EB882 - _021EB78A - 2 ; case 6
	.short _021EB918 - _021EB78A - 2 ; case 7
	.short _021EB94A - _021EB78A - 2 ; case 8
_021EB79C:
	add r2, r4, #0
	add r2, #0xb1
	ldrb r2, [r2]
	mov r5, #0
	add r1, r5, #0
	bl BufferPokeathlonCourseName
	add r0, r4, #0
	mov r1, #1
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB7B4:
	lsr r0, r5, #0x11
	bl sub_0200FC20
	ldr r0, _021EBA8C ; =0x000008DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB7CA:
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #4
	bhs _021EB7E4
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	b _021EB990
_021EB7E4:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #3
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB7F6:
	mov r0, #0x18
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	lsr r3, r5, #0x11
	bl BeginNormalPaletteFade
	add r0, r4, #0
	mov r1, #4
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB816:
	bl IsPaletteFadeFinished
	cmp r0, #0
	bne _021EB820
	b _021EB990
_021EB820:
	add r0, r4, #0
	mov r1, #5
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB82A:
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021E5D40
	ldr r0, [r0]
	cmp r0, #0
	ble _021EB852
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021ED838
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov96_021EE908
	b _021EB878
_021EB852:
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021ED838
	add r1, r4, #0
	add r1, #0xb2
	add r5, r0, #0
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021ED86C
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #7
	mov r3, #1
	bl ov96_021EDF3C
_021EB878:
	add r0, r4, #0
	mov r1, #6
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB882:
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021E5F34
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl BufferPlayersName
	mov r5, #0
_021EB89A:
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	lsl r2, r5, #0x18
	ldr r0, [sp, #0xc]
	lsr r2, r2, #0x18
	add r3, r5, #1
	bl ov96_021ED524
	add r5, r5, #1
	cmp r5, #3
	blt _021EB89A
	ldr r0, [r4]
	add r2, r4, #0
	str r0, [sp]
	add r2, #0xb2
	add r0, r4, #0
	ldrb r2, [r2]
	ldr r1, [sp, #0xc]
	add r0, #0x20
	mov r3, #2
	bl ov96_021ECB38
	add r0, r4, #0
	add r0, #0xb2
	ldrb r0, [r0]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x20]
	bl UnkImageStruct_SetSpriteAnimSeqNo
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldr r0, [sp, #0xc]
	bl ov96_021ED8A4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #5
	bhs _021EB8F2
	ldr r0, _021EBA8C ; =0x000008DC
	b _021EB8F4
_021EB8F2:
	ldr r0, _021EBA90 ; =0x000008DD
_021EB8F4:
	lsl r2, r1, #2
	ldr r1, _021EBA94 ; =ov96_0221B088
	lsl r0, r0, #0x10
	ldr r1, [r1, r2]
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl PlaySE_SetPitch
	add r0, r4, #0
	mov r5, #1
	add r0, #0xb0
	strb r5, [r0]
	add r0, r4, #0
	mov r1, #7
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB918:
	add r0, r4, #0
	add r0, #0xb0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EB990
	add r0, r4, #0
	add r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #4
	blo _021EB940
	add r0, r4, #0
	mov r1, #1
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0xb5
	mov r5, #2
	strb r1, [r0]
	b _021EB990
_021EB940:
	add r0, r4, #0
	mov r1, #5
	add r0, #0xb5
	strb r1, [r0]
	b _021EB990
_021EB94A:
	ldr r0, [sp, #0xc]
	bl ov96_021E5EE8
	cmp r0, #0
	beq _021EB95E
	ldr r0, [sp, #0xc]
	bl ov96_021EE54C
	cmp r0, #0
	beq _021EB990
_021EB95E:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	beq _021EB978
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, [r4, #8]
	bl SysTask_Destroy
_021EB978:
	ldr r0, [r4, #0xc]
	bl ov96_021EE944
	ldr r0, [sp, #0xc]
	mov r1, #2
	bl ov96_021E5FC8
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021EB98C:
	bl GF_AssertFail
_021EB990:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EB9AE
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl ov96_021EE8CC
	add r0, r4, #0
	add r0, #0xb7
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb7
	strb r1, [r0]
_021EB9AE:
	add r0, r4, #0
	add r0, #0xb0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EBA86
	add r0, r4, #0
	add r0, #0xb2
	ldrb r1, [r0]
	add r2, r4, #0
	add r2, #0x94
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	ldr r2, [r2]
	add r0, #0x94
	ldr r1, [r0]
	add r3, r2, #1
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x94
	add r0, #0x94
	str r3, [r2]
	cmp r1, #0
	bne _021EBA08
	mov r5, #0
_021EB9E4:
	lsl r1, r6, #0x18
	ldr r0, [r4, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r7, r0, #0
	mov r1, #2
	bl ov96_021EAC0C
	add r0, r7, #0
	mov r1, #0x10
	bl ov96_021EAC5C
	add r5, r5, #1
	add r6, r6, #1
	cmp r5, #3
	blt _021EB9E4
	b _021EBA86
_021EBA08:
	add r1, r4, #0
	add r1, #0x94
	ldr r2, [r1]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	cmp r2, #0x3c
	blt _021EBA86
	mov r5, #0
	str r5, [sp, #0x10]
_021EBA1C:
	lsl r1, r6, #0x18
	ldr r0, [r4, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r7, r0, #0
	mov r1, #1
	bl ov96_021EAC0C
	add r0, r7, #0
	mov r1, #0
	bl ov96_021EAC5C
	add r0, r7, #0
	bl ov96_021EAA20
	bl ov96_021E8BAC
	bl sub_02024CB8
	lsl r1, r5, #0xc
	str r1, [r0, #0x10]
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #1
	add r5, r5, #3
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _021EBA1C
	ldr r0, [r4]
	add r2, r4, #0
	str r0, [sp]
	add r2, #0xb2
	add r0, r4, #0
	ldrb r2, [r2]
	ldr r1, [sp, #0xc]
	add r0, #0x20
	mov r3, #1
	bl ov96_021ECB38
	add r0, r4, #0
	mov r2, #0
	add r0, #0xb0
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0xb2
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb2
	strb r1, [r0]
	add r4, #0x94
	str r2, [r4]
_021EBA86:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EBA8C: .word 0x000008DC
_021EBA90: .word 0x000008DD
_021EBA94: .word ov96_0221B088
	thumb_func_end ov96_021EB730

	thumb_func_start ov96_021EBA98
ov96_021EBA98: ; 0x021EBA98
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _021EBAAA
	cmp r1, #1
	beq _021EBADA
	b _021EBAE8
_021EBAAA:
	bl PokeathlonOvy_GetHeapID
	mov r1, #0x5a
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021EBAF4 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0
	mov r1, #0x5a
	bl GF_SndStartFadeOutBGM
	ldr r0, _021EBAF8 ; =0x000008DD
	bl PlaySE
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EBAEC
_021EBADA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EBAEC
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021EBAE8:
	bl GF_AssertFail
_021EBAEC:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021EBAF4: .word 0x00007FFF
_021EBAF8: .word 0x000008DD
	thumb_func_end ov96_021EBA98

	thumb_func_start ov96_021EBAFC
ov96_021EBAFC: ; 0x021EBAFC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021EBB16
	cmp r0, #1
	beq _021EBB46
	b _021EBB58
_021EBB16:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021EBB26
	add r0, r5, #0
	bl ov96_021EDA58
_021EBB26:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6]
	mov r1, #3
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EBB5C
_021EBB46:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EBB5C
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E5FC8
	b _021EBB5C
_021EBB58:
	bl GF_AssertFail
_021EBB5C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EBAFC

	thumb_func_start ov96_021EBB64
ov96_021EBB64: ; 0x021EBB64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r5, #0
	bl ov96_021ECBFC
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl ov96_021ED0C8
	add r0, r6, #0
	bl ov96_021E5EE8
	cmp r0, #1
	bne _021EBB96
	add r0, r6, #0
	bl ov96_021EE440
	add r5, r0, #0
_021EBB96:
	ldr r0, [r4, #0xc]
	bl ov96_021EE830
	ldr r0, [r4, #0xc]
	bl ov96_021EEA80
	cmp r0, #0
	bne _021EBBAA
	cmp r5, #0
	beq _021EBBAC
_021EBBAA:
	b _021EC1A4
_021EBBAC:
	ldr r0, [r4, #0xc]
	bl ov96_021EE97C
	add r1, r4, #0
	add r1, #0xb5
	mov r7, #0
	ldrb r1, [r1]
	add r5, r0, #0
	mvn r7, r7
	cmp r1, #0x16
	bls _021EBBC4
	b _021EC184
_021EBBC4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EBBD0: ; jump table
	.short _021EBBFE - _021EBBD0 - 2 ; case 0
	.short _021EBC0A - _021EBBD0 - 2 ; case 1
	.short _021EBC16 - _021EBBD0 - 2 ; case 2
	.short _021EBC40 - _021EBBD0 - 2 ; case 3
	.short _021EBC84 - _021EBBD0 - 2 ; case 4
	.short _021EBCA6 - _021EBBD0 - 2 ; case 5
	.short _021EBCF8 - _021EBBD0 - 2 ; case 6
	.short _021EBD04 - _021EBBD0 - 2 ; case 7
	.short _021EBD58 - _021EBBD0 - 2 ; case 8
	.short _021EBD78 - _021EBBD0 - 2 ; case 9
	.short _021EBD8C - _021EBBD0 - 2 ; case 10
	.short _021EBDDE - _021EBBD0 - 2 ; case 11
	.short _021EBDFA - _021EBBD0 - 2 ; case 12
	.short _021EBEA0 - _021EBBD0 - 2 ; case 13
	.short _021EBEE4 - _021EBBD0 - 2 ; case 14
	.short _021EBEF8 - _021EBBD0 - 2 ; case 15
	.short _021EBF34 - _021EBBD0 - 2 ; case 16
	.short _021EBF44 - _021EBBD0 - 2 ; case 17
	.short _021EC008 - _021EBBD0 - 2 ; case 18
	.short _021EC07E - _021EBBD0 - 2 ; case 19
	.short _021EC126 - _021EBBD0 - 2 ; case 20
	.short _021EC142 - _021EBBD0 - 2 ; case 21
	.short _021EBFD6 - _021EBBD0 - 2 ; case 22
_021EBBFE:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xb5
	mov r7, #3
	strb r1, [r0]
	b _021EC188
_021EBC0A:
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb5
	mov r7, #4
	strb r1, [r0]
	b _021EC188
_021EBC16:
	mov r5, #0
_021EBC18:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov96_021ED6F8
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	lsl r1, r5, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl ov96_021ECC38
	add r5, r5, #1
	cmp r5, #4
	blt _021EBC18
	add r0, r4, #0
	mov r1, #3
	add r0, #0xb5
	strb r1, [r0]
_021EBC40:
	add r0, r4, #0
	add r0, #0xb2
	ldrb r1, [r0]
	cmp r1, #4
	blo _021EBC5E
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb2
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #4
	add r0, #0xb5
	mov r7, #6
	strb r1, [r0]
	b _021EC188
_021EBC5E:
	add r0, r6, #0
	mov r7, #5
	bl ov96_021ED6F8
	add r1, r4, #0
	add r1, #0xb2
	add r2, r0, #0
	ldrb r1, [r1]
	add r0, r6, #0
	bl ov96_021ED578
	add r0, r4, #0
	add r0, #0xb2
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb2
	strb r1, [r0]
	b _021EC188
_021EBC84:
	add r0, r6, #0
	bl ov96_021ED5E0
	cmp r0, #0
	beq _021EBC9A
	add r0, r4, #0
	mov r1, #5
	add r0, #0xb5
	mov r7, #7
	strb r1, [r0]
	b _021EC188
_021EBC9A:
	add r0, r4, #0
	mov r1, #6
	add r0, #0xb5
	mov r7, #9
	strb r1, [r0]
	b _021EC188
_021EBCA6:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	bne _021EBD0E
	add r0, r6, #0
	bl ov96_021ED754
	add r1, r4, #0
	add r1, #0xb4
	ldrb r1, [r1]
	cmp r1, r0
	blo _021EBCE0
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb3
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0xb5
	mov r7, #0xa
	strb r1, [r0]
	b _021EC188
_021EBCE0:
	add r0, r4, #0
	bl ov96_021ED748
	add r2, r0, #0
	ldr r1, _021EBFF0 ; =ov96_021ED618
	add r0, r6, #0
	bl ov96_021EDDA4
	cmp r0, #0
	beq _021EBD0E
	mov r7, #8
	b _021EC188
_021EBCF8:
	add r0, r4, #0
	mov r1, #7
	add r0, #0xb5
	mov r7, #0xb
	strb r1, [r0]
	b _021EC188
_021EBD04:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	beq _021EBD10
_021EBD0E:
	b _021EC188
_021EBD10:
	add r0, r6, #0
	bl ov96_021ED78C
	add r1, r4, #0
	add r1, #0xb4
	ldrb r1, [r1]
	cmp r1, r0
	blo _021EBD40
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb3
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0xb5
	mov r7, #0xa
	strb r1, [r0]
	b _021EC188
_021EBD40:
	add r0, r4, #0
	bl ov96_021ED74C
	add r2, r0, #0
	ldr r1, _021EBFF4 ; =ov96_021ED660
	add r0, r6, #0
	bl ov96_021EDDA4
	cmp r0, #0
	beq _021EBE20
	mov r7, #0xc
	b _021EC188
_021EBD58:
	add r0, r6, #0
	bl ov96_021EDCB4
	cmp r0, #4
	beq _021EBD6E
	add r0, r4, #0
	mov r1, #9
	add r0, #0xb5
	mov r7, #0xe
	strb r1, [r0]
	b _021EC188
_021EBD6E:
	add r0, r4, #0
	mov r1, #0xb
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBD78:
	add r0, r6, #0
	bl ov96_021EDCB4
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0xb5
	add r7, #0xf
	strb r1, [r0]
	b _021EC188
_021EBD8C:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	bne _021EBE20
	add r0, r6, #0
	bl ov96_021ED7C4
	add r1, r4, #0
	add r1, #0xb4
	ldrb r1, [r1]
	cmp r1, r0
	blo _021EBDC6
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb3
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xb
	add r0, #0xb5
	mov r7, #0x15
	strb r1, [r0]
	b _021EC188
_021EBDC6:
	add r0, r4, #0
	bl ov96_021ED750
	add r2, r0, #0
	ldr r1, _021EBFF8 ; =ov96_021ED6A8
	add r0, r6, #0
	bl ov96_021EDDA4
	cmp r0, #0
	beq _021EBE20
	mov r7, #0x14
	b _021EC188
_021EBDDE:
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0xb5
	mov r7, #0x16
	strb r1, [r0]
	bl GF_GetCurrentPlayingBGM
	mov r1, #0x10
	bl StopBGM
	ldr r0, _021EBFFC ; =0x000006EE
	bl PlaySE
	b _021EC188
_021EBDFA:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl ov96_021ECC14
	cmp r0, #0
	beq _021EBE20
	add r1, r4, #0
	add r1, #0x94
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0x94
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x94
	str r2, [r1]
	cmp r0, #0x1e
	bgt _021EBE22
_021EBE20:
	b _021EC188
_021EBE22:
	add r0, r6, #0
	bl ov96_021E5EE8
	cmp r0, #0
	bne _021EBE30
	mov r0, #3
	b _021EBE32
_021EBE30:
	mov r0, #4
_021EBE32:
	add r1, r4, #0
	mov r3, #0
	add r1, #0x94
	str r3, [r1]
	add r1, r4, #0
	add r1, #0xb4
	lsl r0, r0, #0x18
	ldrb r1, [r1]
	lsr r0, r0, #0x18
	cmp r1, r0
	blo _021EBE58
	add r0, r4, #0
	add r0, #0xb4
	strb r3, [r0]
	add r0, r4, #0
	mov r1, #0xd
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBE58:
	add r0, r5, #0
	add r1, r1, #1
	mov r2, #1
	mov r7, #0x17
	bl ov96_021EDF3C
	mov r5, #0
_021EBE66:
	add r2, r4, #0
	add r2, #0xb4
	ldrb r2, [r2]
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov96_021ED728
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	lsl r1, r5, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl ov96_021ECC38
	add r5, r5, #1
	cmp r5, #4
	blt _021EBE66
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	b _021EC188
_021EBEA0:
	add r0, r6, #0
	add r1, sp, #0x14
	bl ov96_021ED7FC
	add r0, r4, #0
	add r0, #0x8c
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x9c
	add r2, sp, #0x14
	bl ov96_021ECC7C
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r1, r0, #0x18
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	cmp r1, r0
	bne _021EBEDA
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBEDA:
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBEE4:
	add r0, r4, #0
	add r0, #0x9c
	mov r7, #0x18
	bl ov96_021EE290
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBEF8:
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1]
	add r0, r4, #0
	lsl r1, r1, #4
	add r0, #0x8c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r7, #0x19
	bl ov96_021ECC4C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	mov r3, #0
	bl ov96_021EDF3C
	add r1, r4, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r6, #0
	bl ov96_021EDE64
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBF34:
	ldr r0, [r4, #4]
	ldr r1, [r4]
	bl ov96_021EC458
	add r0, r4, #0
	mov r1, #0x11
	add r0, #0xb5
	strb r1, [r0]
_021EBF44:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r7, #0x1a
	lsl r0, r0, #4
	lsr r0, r0, #0x1c
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ov96_021E5F34
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl BufferPlayersName
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021ECA70
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #1
	bl ov96_021ED158
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x20
	add r1, r6, #0
	mov r3, #2
	bl ov96_021ECB38
	ldr r0, [sp, #0xc]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x20]
	bl UnkImageStruct_SetSpriteAnimSeqNo
	ldr r0, _021EBFFC ; =0x000006EE
	mov r1, #0
	bl StopSE
	ldr r0, _021EC000 ; =0x000008E2
	bl PlaySE
	mov r0, #0x8e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, _021EC004 ; =0x00000476
	bl PlayBGM
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _021EBFCC
	add r0, r4, #0
	mov r1, #0x16
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBFCC:
	add r0, r4, #0
	mov r1, #0x12
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBFD6:
	add r2, r4, #0
	add r2, #0xb1
	ldrb r2, [r2]
	mov r1, #0
	mov r7, #0x1e
	bl BufferPokeathlonCourseName
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
	nop
_021EBFF0: .word ov96_021ED618
_021EBFF4: .word ov96_021ED660
_021EBFF8: .word ov96_021ED6A8
_021EBFFC: .word 0x000006EE
_021EC000: .word 0x000008E2
_021EC004: .word 0x00000476
_021EC008:
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1]
	add r0, r6, #0
	lsl r1, r1, #4
	lsr r1, r1, #0x1c
	mov r7, #0x1b
	bl ov96_021E5F34
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl BufferPlayersName
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #1
	bl UnkImageStruct_SetSpriteVisibleFlag
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	mov r1, #0
	bl ov96_021EDC38
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl BufferPokeathlonMedalName
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #5
	blo _021EC074
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	mov r7, #0x1c
	bl UnkImageStruct_SetSpriteVisibleFlag
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	mov r1, #1
	bl ov96_021EDC38
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl BufferPokeathlonMedalName
_021EC074:
	add r0, r4, #0
	mov r1, #0x13
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EC07E:
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov96_021E5EE8
	cmp r0, #0
	bne _021EC110
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	lsl r0, r0, #4
	lsr r0, r0, #0x1c
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov96_021E5F24
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _021EC110
	add r0, r1, #0
	beq _021EC0B0
	bl GF_AssertFail
_021EC0B0:
	add r0, r6, #0
	bl ov96_021E5D60
	bl Save_Pokeathlon_Get
	bl sub_020319A4
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1]
	str r0, [sp, #0x10]
	add r0, r4, #0
	lsl r1, r1, #4
	add r0, #0x8c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	ldr r2, [sp, #8]
	mov r1, #0x2c
	mul r1, r2
	ldr r2, [sp, #0x10]
	add r1, r2, r1
	ldrh r1, [r1, #6]
	cmp r1, r0
	bhs _021EC11C
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1]
	add r0, r6, #0
	lsl r1, r1, #4
	lsr r1, r1, #0x1c
	mov r7, #0x1d
	bl ov96_021E5F34
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl BufferPlayersName
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl BufferPokeathlonCourseName
	b _021EC11C
_021EC110:
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	mov r7, #0x1e
	bl BufferPokeathlonCourseName
_021EC11C:
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EC126:
	ldr r0, _021EC1AC ; =0x000008E2
	mov r1, #0x78
	mov r7, #0x1f
	bl StopSE
	add r0, r4, #0
	mov r1, #1
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EC142:
	add r0, r6, #0
	bl ov96_021E5EE8
	cmp r0, #0
	beq _021EC156
	add r0, r6, #0
	bl ov96_021EE580
	cmp r0, #0
	beq _021EC188
_021EC156:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	beq _021EC170
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, [r4, #8]
	bl SysTask_Destroy
_021EC170:
	ldr r0, [r4, #0xc]
	bl ov96_021EE944
	add r0, r6, #0
	mov r1, #2
	bl ov96_021E5FC8
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC184:
	bl GF_AssertFail
_021EC188:
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021EC1A4
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl ov96_021EE8CC
	add r0, r4, #0
	add r0, #0xb7
	ldrb r0, [r0]
	add r4, #0xb7
	add r0, r0, #1
	strb r0, [r4]
_021EC1A4:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC1AC: .word 0x000008E2
	thumb_func_end ov96_021EBB64

	thumb_func_start ov96_021EC1B0
ov96_021EC1B0: ; 0x021EC1B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl ov96_021E5DC4
	add r0, #0x90
	ldr r0, [r0]
	bl ov96_021ED0C8
	ldrb r0, [r4]
	cmp r0, #0
	beq _021EC1D0
	cmp r0, #1
	beq _021EC1FC
	b _021EC20A
_021EC1D0:
	add r0, r5, #0
	bl PokeathlonOvy_GetHeapID
	mov r1, #0x1e
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021EC214 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0
	mov r1, #0x1e
	bl GF_SndStartFadeOutBGM
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EC20E
_021EC1FC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EC20E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021EC20A:
	bl GF_AssertFail
_021EC20E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021EC214: .word 0x00007FFF
	thumb_func_end ov96_021EC1B0

	thumb_func_start ov96_021EC218
ov96_021EC218: ; 0x021EC218
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrh r0, [r5]
	ldr r4, [r5, #8]
	cmp r0, #0
	beq _021EC230
	cmp r0, #1
	beq _021EC248
	cmp r0, #2
	beq _021EC25A
	b _021EC290
_021EC230:
	add r0, r4, #0
	mov r1, #2
	bl ov96_021EAC0C
	add r0, r4, #0
	mov r1, #0x10
	bl ov96_021EAC5C
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	pop {r4, r5, r6, pc}
_021EC248:
	ldr r1, [r5, #4]
	add r0, r1, #1
	str r0, [r5, #4]
	cmp r1, #0x3c
	ble _021EC294
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	pop {r4, r5, r6, pc}
_021EC25A:
	add r0, r4, #0
	bl ov96_021EAD78
	cmp r0, #0
	bne _021EC294
	bl IsCryFinished
	cmp r0, #0
	bne _021EC294
	add r0, r4, #0
	mov r1, #1
	bl ov96_021EAC0C
	add r0, r4, #0
	mov r1, #0
	bl ov96_021EAC5C
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r1, [r0]
	add r0, r5, #0
	bl FreeToHeap
	add r0, r6, #0
	bl SysTask_Destroy
	pop {r4, r5, r6, pc}
_021EC290:
	bl GF_AssertFail
_021EC294:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EC218

	thumb_func_start ov96_021EC298
ov96_021EC298: ; 0x021EC298
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	mov r1, #0x10
	bl AllocFromHeapAtEnd
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0x88
	str r4, [r0]
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl ov96_021EAA04
	str r0, [r4, #8]
	add r0, r5, #0
	mov r2, #1
	add r0, #0x98
	str r2, [r0]
	add r0, r5, #0
	add r0, #0x98
	str r0, [r4, #0xc]
	ldr r0, _021EC2DC ; =ov96_021EC218
	add r1, r4, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	nop
_021EC2DC: .word ov96_021EC218
	thumb_func_end ov96_021EC298

	thumb_func_start ov96_021EC2E0
ov96_021EC2E0: ; 0x021EC2E0
	add r0, #0x98
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EC2E0

	thumb_func_start ov96_021EC2E8
ov96_021EC2E8: ; 0x021EC2E8
	push {r4, r5, lr}
	sub sp, #0x84
	ldr r5, _021EC3C4 ; =ov96_0221AF64
	add r3, sp, #0x74
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021EC3C8 ; =ov96_0221AFA0
	add r3, sp, #0x58
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	mov r1, #1
	mov r2, #0
	add r0, r4, #0
	add r3, r1, #0
	str r2, [sp]
	bl BG_FillCharDataRange
	ldr r5, _021EC3CC ; =ov96_0221AFF4
	add r3, sp, #0x3c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	mov r1, #1
	mov r2, #0
	add r0, r4, #0
	add r3, r1, #0
	str r2, [sp]
	bl BG_FillCharDataRange
	ldr r5, _021EC3D0 ; =ov96_0221AFBC
	add r3, sp, #0x20
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021EC3D4 ; =ov96_0221AFD8
	add r3, sp, #4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	add sp, #0x84
	pop {r4, r5, pc}
	nop
_021EC3C4: .word ov96_0221AF64
_021EC3C8: .word ov96_0221AFA0
_021EC3CC: .word ov96_0221AFF4
_021EC3D0: .word ov96_0221AFBC
_021EC3D4: .word ov96_0221AFD8
	thumb_func_end ov96_021EC2E8

	thumb_func_start ov96_021EC3D8
ov96_021EC3D8: ; 0x021EC3D8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	str r3, [sp, #4]
	add r4, r1, #0
	str r3, [sp, #8]
	mov r0, #0x9a
	mov r1, #3
	add r2, r5, #0
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9a
	mov r1, #1
	add r2, r5, #0
	mov r3, #5
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadCharData
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x9a
	mov r1, #6
	add r2, r5, #0
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9a
	mov r1, #4
	add r2, r5, #0
	mov r3, #5
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	mov r1, #0
	str r1, [sp]
	mov r0, #0x9a
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #4]
	bl GfGfxLoader_GXLoadPal
	mov r1, #0
	str r1, [sp]
	mov r0, #0x9a
	mov r2, #4
	add r3, r1, #0
	str r4, [sp, #4]
	bl GfGfxLoader_GXLoadPal
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EC3D8

	thumb_func_start ov96_021EC458
ov96_021EC458: ; 0x021EC458
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0x9a
	mov r1, #3
	add r2, r5, #0
	mov r3, #1
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9a
	mov r1, #7
	add r2, r5, #0
	mov r3, #1
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EC458

	thumb_func_start ov96_021EC490
ov96_021EC490: ; 0x021EC490
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r3, _021EC510 ; =ov96_0221AF88
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021EC514 ; =ov96_0221B010
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021EC518 ; =ov96_0221AF74
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r4]
	bl SpriteRenderer_Create
	str r0, [r4, #0x18]
	bl SpriteRenderer_CreateGfxHandler
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	add r1, sp, #0x14
	add r2, sp, #0
	mov r3, #0x20
	bl sub_0200CF70
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	mov r2, #0x80
	bl sub_0200CFF4
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r2, sp, #0x34
	bl SpriteRenderer_Init2DGfxResManagersFromCountsArray
	ldr r0, [r4, #0x18]
	bl SpriteRenderer_GetG2dRendererPtr
	mov r2, #0x83
	mov r1, #0
	lsl r2, r2, #0xe
	bl G2dRenderer_SetSubSurfaceCoords
	add sp, #0x4c
	pop {r3, r4, pc}
	.balign 4, 0
_021EC510: .word ov96_0221AF88
_021EC514: .word ov96_0221B010
_021EC518: .word ov96_0221AF74
	thumb_func_end ov96_021EC490

	thumb_func_start ov96_021EC51C
ov96_021EC51C: ; 0x021EC51C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021EC524:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021EC534
	bl sub_0200D9DC
	str r7, [r5, #0x20]
_021EC534:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x1a
	blo _021EC524
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	bl SpriteRenderer_UnloadResourcesAndRemoveGfxHandler
	ldr r0, [r6, #0x18]
	bl SpriteRenderer_Delete
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EC51C

	thumb_func_start ov96_021EC550
ov96_021EC550: ; 0x021EC550
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r4, #0
	add r7, r0, #0
	add r2, sp, #0
	add r0, r4, #0
	add r1, r4, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	mov r5, #0x20
	add r6, r7, #0
_021EC570:
	add r0, r4, #0
	add r0, #0x64
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, #0x64
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #1
	mov r1, #0x88
	str r0, [sp, #0x2c]
	str r0, [sp, #8]
	add r0, sp, #0
	strh r5, [r0]
	strh r1, [r0, #2]
	cmp r4, #4
	bne _021EC59C
	mov r1, #0x80
	strh r1, [r0]
	mov r1, #0x70
	strh r1, [r0, #2]
_021EC59C:
	mov r3, #0x83
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0
	lsl r3, r3, #0xe
	bl SpriteRenderer_LoadResourcesAndCreateSprite_CustomBottomScreenOffset
	mov r1, #1
	str r0, [r6, #0x20]
	bl UnkImageStruct_SetSpriteAnimActiveFlag
	add r4, r4, #1
	add r5, #0x40
	add r6, r6, #4
	cmp r4, #5
	blt _021EC570
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EC550

	thumb_func_start ov96_021EC5C0
ov96_021EC5C0: ; 0x021EC5C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	mov r0, #0
	add r2, sp, #0xc
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [sp, #8]
	str r0, [r2]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp]
_021EC5E4:
	mov r0, #0x69
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #0x65
	mov r1, #2
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r0, #1
	str r0, [sp, #0x38]
	ldr r0, [sp]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x14]
	add r1, sp, #0xc
	strh r0, [r1]
	mov r0, #0x48
	strh r0, [r1, #2]
	mov r0, #0
	strh r0, [r1, #6]
	ldr r0, [sp, #8]
	mov r3, #0x83
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #2
	add r4, r5, r0
	ldr r0, [r5, #0x18]
	add r2, sp, #0xc
	lsl r3, r3, #0xe
	bl SpriteRenderer_LoadResourcesAndCreateSprite_CustomBottomScreenOffset
	mov r1, #1
	str r0, [r4, #0x20]
	bl UnkImageStruct_SetSpriteAnimActiveFlag
	mov r2, #1
	mov r4, #0
	str r4, [sp, #0x18]
	str r2, [sp, #0x38]
	str r2, [sp, #0x14]
	add r0, sp, #0xc
	ldrsh r1, [r0, r4]
	sub r1, #0x10
	strh r1, [r0]
	strh r2, [r0, #6]
	ldr r0, [sp, #4]
	add r7, r0, #1
_021EC642:
	add r0, r7, r4
	lsl r0, r0, #2
	add r6, r5, r0
	mov r3, #0x83
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, sp, #0xc
	lsl r3, r3, #0xe
	bl SpriteRenderer_LoadResourcesAndCreateSprite_CustomBottomScreenOffset
	mov r1, #1
	str r0, [r6, #0x20]
	bl UnkImageStruct_SetSpriteAnimActiveFlag
	add r1, sp, #0xc
	mov r0, #0
	ldrsh r1, [r1, r0]
	add r0, sp, #0xc
	add r4, r4, #1
	add r1, #0x10
	strh r1, [r0]
	cmp r4, #3
	blt _021EC642
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x40
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021EC5E4
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EC5C0

	thumb_func_start ov96_021EC68C
ov96_021EC68C: ; 0x021EC68C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	mov r4, #0
	add r7, r0, #0
	add r2, sp, #4
	add r0, r4, #0
	add r1, r4, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	mov r0, #2
	mov r5, #0x30
	str r0, [sp]
_021EC6AE:
	add r0, r4, #0
	add r0, #0x6d
	str r0, [sp, #0x18]
	mov r0, #0x6a
	str r0, [sp, #0x1c]
	mov r0, #0x68
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, sp, #4
	strh r5, [r0]
	mov r1, #0x70
	strh r1, [r0, #2]
	mov r0, #0
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x15
	lsl r0, r0, #2
	add r6, r7, r0
	mov r3, #0x83
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #4
	lsl r3, r3, #0xe
	bl SpriteRenderer_LoadResourcesAndCreateSprite_CustomBottomScreenOffset
	ldr r1, [sp]
	str r0, [r6, #0x20]
	bl UnkImageStruct_SetSpritePalIndex
	ldr r0, [r6, #0x20]
	mov r1, #0
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #3
	add r5, #0x50
	str r0, [sp]
	cmp r4, #3
	blt _021EC6AE
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EC68C

	thumb_func_start ov96_021EC70C
ov96_021EC70C: ; 0x021EC70C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r7, #0
	add r5, r0, #0
	add r2, sp, #0
	add r0, r7, #0
	add r1, r7, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	mov r4, #0x60
_021EC72A:
	add r1, r7, #0
	add r1, #0x6b
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	mov r1, #0x67
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, #1
	str r1, [sp, #0x10]
	mov r1, #0
	str r1, [sp, #0x2c]
	mov r1, #2
	str r1, [sp, #8]
	add r1, sp, #0
	add r0, r7, #0
	strh r4, [r1]
	mov r2, #0x38
	strh r2, [r1, #2]
	add r1, r5, #0
	add r1, #0xb1
	ldrb r1, [r1]
	add r0, #0x18
	cmp r1, #5
	bhs _021EC760
	mov r2, #0x80
	add r1, sp, #0
	strh r2, [r1]
_021EC760:
	lsl r0, r0, #2
	add r6, r5, r0
	mov r3, #0x83
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, sp, #0
	lsl r3, r3, #0xe
	bl SpriteRenderer_LoadResourcesAndCreateSprite_CustomBottomScreenOffset
	str r0, [r6, #0x20]
	mov r1, #1
	bl UnkImageStruct_SetSpriteAnimActiveFlag
	ldr r0, [r6, #0x20]
	mov r1, #0
	bl UnkImageStruct_SetSpriteVisibleFlag
	add r7, r7, #1
	add r4, #0x40
	cmp r7, #2
	blt _021EC72A
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EC70C

	thumb_func_start ov96_021EC790
ov96_021EC790: ; 0x021EC790
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	bl ov96_021E5DC4
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl ov96_021E5D50
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl ov96_021E5D40
	mov r0, #0
	str r0, [sp, #0x14]
	add r6, r4, #0
	mov r5, #1
	add r7, sp, #0x1c
_021EC7B8:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r3, sp, #0x30
	bl ov96_021E6168
	ldr r0, [r4]
	add r1, sp, #0x30
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r6, #0x74]
	mov r2, #1
	mov r3, #0
	bl ov96_021EEBF8
	ldrb r0, [r7, #0x1a]
	mov r3, #2
	str r0, [sp]
	ldrh r0, [r7, #0x16]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #8]
	ldrh r1, [r7, #0x14]
	ldrb r2, [r7, #0x1b]
	add r0, sp, #0x20
	bl GetMonSpriteCharAndPlttNarcIdsEx
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #8]
	ldr r3, [r4]
	add r2, sp, #0x1c
	bl GfGfxLoader_GetPlttData
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x18]
	lsl r1, r5, #0x18
	ldr r0, [r4, #0x14]
	ldr r3, [r3, #0xc]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov96_021EAF60
	ldr r0, [sp, #0x18]
	bl FreeToHeap
	ldr r0, [sp, #0x14]
	add r6, r6, #4
	add r0, r0, #1
	add r5, r5, #3
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _021EC7B8
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EC790

	thumb_func_start ov96_021EC82C
ov96_021EC82C: ; 0x021EC82C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	bl ov96_021E5DC4
	ldr r6, [r0, #0x18]
	ldr r4, [r0, #0x1c]
	str r0, [sp, #0x10]
	mov r7, #0
_021EC83C:
	mov r0, #1
	add r5, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r5, #0x64
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #9
	str r5, [sp, #8]
	bl SpriteRenderer_LoadCharResObjFromNarcId
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #8
	str r5, [sp, #0xc]
	bl SpriteRenderer_LoadPlttResObjFromNarcId
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #5
	blo _021EC83C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0xa
	bl SpriteRenderer_LoadCellResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0xb
	bl SpriteRenderer_LoadAnimResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x69
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0xd
	bl SpriteRenderer_LoadCharResObjFromNarcId
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x69
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0xc
	bl SpriteRenderer_LoadPlttResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0x65
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0xe
	bl SpriteRenderer_LoadCellResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0x65
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0xf
	bl SpriteRenderer_LoadAnimResObjFromNarcId
	ldr r0, [sp, #0x10]
	bl ov96_021ECA18
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6a
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0x10
	bl SpriteRenderer_LoadCharResObjFromNarcId
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0xc
	bl SpriteRenderer_LoadPlttResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0x66
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0x11
	bl SpriteRenderer_LoadCellResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0x66
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0x12
	bl SpriteRenderer_LoadAnimResObjFromNarcId
	ldr r0, [sp, #0x10]
	mov r1, #0
	add r0, #0xb1
	ldrb r5, [r0]
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov96_021EDC38
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	add r3, #0x17
	bl SpriteRenderer_LoadPlttResObjFromNarcId
	add r0, r5, #0
	mov r1, #1
	bl ov96_021EDC38
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6c
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	add r3, #0x17
	bl SpriteRenderer_LoadPlttResObjFromNarcId
	add r0, r5, #0
	mov r1, #0
	bl ov96_021EDC38
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	add r3, #0x1c
	bl SpriteRenderer_LoadCharResObjFromNarcId
	add r0, r5, #0
	mov r1, #1
	bl ov96_021EDC38
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6c
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	add r3, #0x1c
	bl SpriteRenderer_LoadCharResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0x67
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0x21
	bl SpriteRenderer_LoadCellResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0x67
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9a
	mov r3, #0x22
	bl SpriteRenderer_LoadAnimResObjFromNarcId
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EC82C

	thumb_func_start ov96_021ECA18
ov96_021ECA18: ; 0x021ECA18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	mov r7, #1
	mov r4, #0
_021ECA24:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	str r7, [sp, #4]
	add r0, #0x6d
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #0x14
	bl SpriteRenderer_LoadCharResObjFromNarcId
	add r4, r4, #1
	cmp r4, #3
	blt _021ECA24
	mov r0, #1
	str r0, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #0x15
	bl SpriteRenderer_LoadCellResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0x68
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #0x16
	bl SpriteRenderer_LoadAnimResObjFromNarcId
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ECA18

	thumb_func_start ov96_021ECA70
ov96_021ECA70: ; 0x021ECA70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	bl ov96_021E5DC4
	add r6, r0, #0
	mov r7, #0
	mov r4, #1
	mov r5, #2
_021ECA84:
	lsl r1, r4, #0x18
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	str r0, [sp, #8]
	lsl r1, r5, #0x18
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0
	bl ov96_021EAB38
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl ov96_021EAB38
	add r7, r7, #1
	add r4, r4, #3
	add r5, r5, #3
	cmp r7, #4
	blt _021ECA84
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov96_021EC790
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ECA70

	thumb_func_start ov96_021ECAC4
ov96_021ECAC4: ; 0x021ECAC4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov96_021E5DC4
	add r7, r0, #0
	str r0, [sp]
	add r0, #0x20
	mov r4, #0
	add r5, r7, #0
	str r0, [sp]
_021ECAD8:
	add r0, r6, #0
	bl ov96_021E5D34
	cmp r4, #4
	bne _021ECAF6
	mov r0, #2
	bl ov96_021EEBC8
	add r1, r0, #0
	ldr r0, [r5, #0x20]
	ldr r3, [r7]
	mov r2, #0xb
	bl ov96_021EEA88
	b _021ECB2C
_021ECAF6:
	cmp r4, r0
	bge _021ECB0A
	lsl r2, r4, #0x18
	ldr r0, [sp]
	add r1, r6, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov96_021EEB74
	b _021ECB2C
_021ECB0A:
	add r0, r6, #0
	add r1, r4, #0
	bl ov96_021E5D40
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov96_021E8424
	bl ov96_021EEDCC
	add r1, r0, #0
	ldr r0, [r5, #0x20]
	ldr r3, [r7]
	mov r2, #0
	bl ov96_021EEA88
_021ECB2C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021ECAD8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ECAC4

	thumb_func_start ov96_021ECB38
ov96_021ECB38: ; 0x021ECB38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	add r1, r5, #0
	add r7, r3, #0
	bl ov96_021E5D40
	ldr r0, [r0]
	cmp r0, #0
	ble _021ECB56
	mov r6, #1
	b _021ECB58
_021ECB56:
	mov r6, #0
_021ECB58:
	cmp r7, #1
	beq _021ECB62
	cmp r7, #2
	beq _021ECB66
	b _021ECB72
_021ECB62:
	mov r4, #0
	b _021ECB76
_021ECB66:
	cmp r6, #0
	beq _021ECB6E
	mov r4, #0xb
	b _021ECB76
_021ECB6E:
	mov r4, #0x1b
	b _021ECB76
_021ECB72:
	bl GF_AssertFail
_021ECB76:
	cmp r6, #0
	beq _021ECBA6
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl ov96_021E5D40
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov96_021E8424
	bl ov96_021EEDCC
	add r1, r0, #0
	ldr r0, [sp]
	lsl r2, r5, #2
	ldr r0, [r0, r2]
	lsl r2, r4, #0x18
	ldr r3, [sp, #0x20]
	lsr r2, r2, #0x18
	bl ov96_021EEA88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021ECBA6:
	lsl r2, r5, #0x18
	ldr r0, [sp]
	ldr r1, [sp, #4]
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl ov96_021EEB74
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ECB38

	thumb_func_start ov96_021ECBB8
ov96_021ECBB8: ; 0x021ECBB8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x70
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x70
	str r0, [sp]
	bl MI_CpuFill8
	ldr r3, [sp]
	mov r1, #0
	mov r4, #5
_021ECBD2:
	lsl r0, r4, #2
	mov r2, #0
	add r5, r7, r0
	add r6, r3, #0
_021ECBDA:
	ldr r0, [r5]
	add r2, r2, #1
	add r5, r5, #4
	stmia r6!, {r0}
	cmp r2, #4
	blt _021ECBDA
	add r1, r1, #1
	add r3, #0x1c
	add r4, r4, #4
	cmp r1, #4
	blt _021ECBD2
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ECBB8

	thumb_func_start ov96_021ECBF4
ov96_021ECBF4: ; 0x021ECBF4
	ldr r3, _021ECBF8 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021ECBF8: .word FreeToHeap
	thumb_func_end ov96_021ECBF4

	thumb_func_start ov96_021ECBFC
ov96_021ECBFC: ; 0x021ECBFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021ECC02:
	add r0, r5, #0
	bl ov96_021ECD24
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #4
	blt _021ECC02
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021ECBFC

	thumb_func_start ov96_021ECC14
ov96_021ECC14: ; 0x021ECC14
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	mov r6, #1
	add r7, r4, #0
_021ECC1E:
	add r0, r5, #0
	bl ov96_021ECDC4
	cmp r0, #0
	bne _021ECC2A
	add r6, r7, #0
_021ECC2A:
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #4
	blt _021ECC1E
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ECC14

	thumb_func_start ov96_021ECC38
ov96_021ECC38: ; 0x021ECC38
	push {r3, lr}
	cmp r2, #0
	beq _021ECC4A
	mov r3, #0x1c
	mul r3, r1
	add r0, r0, r3
	add r1, r2, #0
	bl ov96_021ECDD4
_021ECC4A:
	pop {r3, pc}
	thumb_func_end ov96_021ECC38

	thumb_func_start ov96_021ECC4C
ov96_021ECC4C: ; 0x021ECC4C
	mov r2, #0x1c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x10]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021ECC4C

	thumb_func_start ov96_021ECC58
ov96_021ECC58: ; 0x021ECC58
	ldr r1, [r1]
	ldr r0, [r0]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, r1
	bne _021ECC6C
	mov r0, #0
	bx lr
_021ECC6C:
	cmp r0, r1
	bhs _021ECC74
	mov r0, #1
	bx lr
_021ECC74:
	mov r0, #0
	mvn r0, r0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021ECC58

	thumb_func_start ov96_021ECC7C
ov96_021ECC7C: ; 0x021ECC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r6, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r4, r6, #0
	add r5, r7, #0
_021ECC8C:
	ldr r1, [r5]
	ldr r0, _021ECD10 ; =0xF0FFFFFF
	and r1, r0
	lsl r0, r4, #0x1c
	lsr r0, r0, #4
	orr r0, r1
	str r0, [r5]
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	lsl r0, r0, #0x10
	ldr r2, [r5]
	ldr r1, _021ECD14 ; =0xFFFF0000
	lsr r0, r0, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _021ECD18 ; =0x0FFFFFFF
	str r1, [r5]
	and r0, r1
	ldr r1, [sp, #8]
	ldrb r1, [r1, r4]
	add r4, r4, #1
	lsl r1, r1, #0x1c
	orr r0, r1
	stmia r5!, {r0}
	cmp r4, #4
	blt _021ECC8C
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	ldr r3, _021ECD1C ; =ov96_021ECC58
	add r0, r7, #0
	add r2, r1, #0
	bl MATH_QSort
	ldr r3, _021ECD20 ; =0xFF00FFFF
	mov r2, #0
	add r1, r7, #0
_021ECCDC:
	ldr r0, [r1]
	add r4, r0, #0
	lsl r0, r6, #0x18
	and r4, r3
	lsr r0, r0, #8
	orr r0, r4
	str r0, [r1]
	cmp r2, #3
	beq _021ECD04
	add r5, r2, #1
	lsl r4, r5, #2
	ldr r0, [r1]
	ldr r4, [r7, r4]
	lsl r0, r0, #0x10
	lsl r4, r4, #0x10
	lsr r0, r0, #0x10
	lsr r4, r4, #0x10
	cmp r0, r4
	beq _021ECD04
	add r6, r5, #0
_021ECD04:
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #4
	blt _021ECCDC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021ECD10: .word 0xF0FFFFFF
_021ECD14: .word 0xFFFF0000
_021ECD18: .word 0x0FFFFFFF
_021ECD1C: .word ov96_021ECC58
_021ECD20: .word 0xFF00FFFF
	thumb_func_end ov96_021ECC7C

	thumb_func_start ov96_021ECD24
ov96_021ECD24: ; 0x021ECD24
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _021ECDBA
	ldr r0, [r6, #0x14]
	add r1, r0, #1
	ldr r0, _021ECDBC ; =0x000003E7
	cmp r1, r0
	bls _021ECD3A
	add r1, r0, #0
_021ECD3A:
	ldr r0, _021ECDC0 ; =0x000008E3
	str r1, [r6, #0x14]
	bl IsSEPlaying
	cmp r0, #0
	bne _021ECD4C
	ldr r0, _021ECDC0 ; =0x000008E3
	bl PlaySE
_021ECD4C:
	ldr r0, [r6, #0x14]
	mov r1, #3
	bl ov98_0221F120
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [r6, #0x14]
	mov r1, #2
	bl ov98_0221F120
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r6, #0x14]
	mov r1, #1
	bl ov98_0221F120
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r6, #4]
	add r1, r7, #1
	bl UnkImageStruct_SetSpriteAnimSeqNo
	ldr r0, [r6, #8]
	add r1, r5, #1
	bl UnkImageStruct_SetSpriteAnimSeqNo
	ldr r0, [r6, #0xc]
	add r1, r4, #1
	bl UnkImageStruct_SetSpriteAnimSeqNo
	ldr r0, [r6, #0x14]
	mov r1, #0x14
	bl _u32_div_f
	cmp r1, #0
	bne _021ECDAE
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_021ECD9A:
	mov r2, #0
	ldr r0, [r5]
	add r1, r7, #0
	mvn r2, r2
	bl UnkImageStruct_AddSpritePositionXY
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021ECD9A
_021ECDAE:
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	blo _021ECDBA
	mov r0, #0
	str r0, [r6, #0x18]
_021ECDBA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021ECDBC: .word 0x000003E7
_021ECDC0: .word 0x000008E3
	thumb_func_end ov96_021ECD24

	thumb_func_start ov96_021ECDC4
ov96_021ECDC4: ; 0x021ECDC4
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _021ECDCE
	mov r0, #1
	bx lr
_021ECDCE:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021ECDC4

	thumb_func_start ov96_021ECDD4
ov96_021ECDD4: ; 0x021ECDD4
	ldr r2, [r0, #0x10]
	add r2, r2, r1
	ldr r1, _021ECDE8 ; =0x000003E7
	cmp r2, r1
	bls _021ECDE0
	add r2, r1, #0
_021ECDE0:
	str r2, [r0, #0x10]
	mov r1, #1
	str r1, [r0, #0x18]
	bx lr
	.balign 4, 0
_021ECDE8: .word 0x000003E7
	thumb_func_end ov96_021ECDD4

	thumb_func_start ov96_021ECDEC
ov96_021ECDEC: ; 0x021ECDEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	cmp r5, #0
	bne _021ECDFE
	bl GF_AssertFail
_021ECDFE:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	cmp r1, #0
	beq _021ECE32
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	lsl r0, r1, #0xc
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021ECE4A
_021ECE32:
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	lsl r0, r1, #0xc
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021ECE4A:
	bl _ffix
	asr r1, r0, #1
	mov r0, #6
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [r5, #8]
	bl MTRandom
	mov r1, #1
	tst r0, r1
	beq _021ECE7A
	bl MTRandom
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x13
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021ECE8E
_021ECE7A:
	bl MTRandom
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x13
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021ECE8E:
	bl _ffix
	ldr r1, _021ECF3C ; =0x0000019A
	add r0, r0, r1
	asr r0, r0, #1
	str r0, [r5, #4]
	bl MTRandom
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021ECEBC
	bl MTRandom
	lsl r0, r0, #0x18
	lsr r0, r0, #0xc
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021ECED0
_021ECEBC:
	bl MTRandom
	lsl r0, r0, #0x18
	lsr r0, r0, #0xc
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021ECED0:
	bl _ffix
	str r0, [r5, #0xc]
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	add r1, r1, #1
	lsl r1, r1, #0x1c
	ldr r2, [r5, #0x14]
	ldr r0, _021ECF40 ; =0xFFF0FFFF
	lsr r1, r1, #0xc
	and r0, r2
	orr r1, r0
	mov r0, #1
	lsl r0, r0, #0x14
	orr r0, r1
	ldr r6, _021ECF44 ; =ov96_0221B0BC
	str r0, [r5, #0x14]
	add r3, sp, #0
	mov r2, #6
_021ECEFC:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021ECEFC
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r5, #0xc]
	asr r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0]
	bl MTRandom
	mov r1, #1
	tst r0, r1
	bne _021ECF20
	mov r1, #0xc
	add r0, sp, #0
	strh r1, [r0, #6]
_021ECF20:
	mov r3, #0x83
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	lsl r3, r3, #0xe
	bl SpriteRenderer_LoadResourcesAndCreateSprite_CustomBottomScreenOffset
	mov r1, #1
	str r0, [r5]
	bl UnkImageStruct_SetSpriteAnimActiveFlag
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021ECF3C: .word 0x0000019A
_021ECF40: .word 0xFFF0FFFF
_021ECF44: .word ov96_0221B0BC
	thumb_func_end ov96_021ECDEC

	thumb_func_start ov96_021ECF48
ov96_021ECF48: ; 0x021ECF48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, _021ECFEC ; =0x00000000
	bne _021ECF54
	bl GF_AssertFail
_021ECF54:
	ldr r0, [r5, #0x14]
	ldr r6, [r5, #4]
	lsl r1, r0, #0x10
	lsl r0, r0, #0xc
	lsr r1, r1, #0x10
	lsr r0, r0, #0x1c
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	mov r3, #0x83
	ldr r2, [r5, #0xc]
	orr r1, r0
	add r0, r2, r1
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r3, r3, #0xe
	add r2, r1, r0
	str r2, [r5, #0x10]
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	bl UnkImageStruct_SetSpritePrecisePositionXY
	ldr r0, [r5, #0x10]
	asr r0, r0, #0xc
	cmp r0, #0xe0
	ble _021ECFCA
	ldr r1, [r5, #0x14]
	lsl r0, r1, #0xa
	lsr r0, r0, #0x1f
	beq _021ECFC0
	ldr r0, _021ECFF0 ; =0xFFEFFFFF
	and r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5]
	bl sub_0200D9DC
	add r0, r6, #0
	str r0, [r5]
	b _021ECFCA
_021ECFC0:
	mov r0, #2
	lsl r0, r0, #0x14
	orr r0, r1
	str r0, [r5, #0x14]
	mov r4, #1
_021ECFCA:
	bl MTRandom
	ldr r2, [r5, #0x14]
	ldr r1, _021ECFF4 ; =0xFFFF0000
	and r1, r2
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #1
	and r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r5, #0x14]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021ECFEC: .word 0x00000000
_021ECFF0: .word 0xFFEFFFFF
_021ECFF4: .word 0xFFFF0000
	thumb_func_end ov96_021ECF48

	thumb_func_start ov96_021ECFF8
ov96_021ECFF8: ; 0x021ECFF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, _021ED050 ; =ov96_0221B0F0
	add r7, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #0
	mov r2, #6
_021ED008:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021ED008
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r5]
	bl UnkImageStruct_GetSpriteCurrentAnimSeqNo
	sub r0, #0xb
	add r1, sp, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0xc]
	asr r0, r0, #0xc
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	asr r0, r0, #0xc
	strh r0, [r1, #2]
	ldr r0, [r5]
	bl sub_0200D9DC
	mov r3, #0x83
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	lsl r3, r3, #0xe
	bl SpriteRenderer_LoadResourcesAndCreateSprite_CustomBottomScreenOffset
	mov r1, #1
	str r0, [r5]
	bl UnkImageStruct_SetSpriteAnimActiveFlag
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021ED050: .word ov96_0221B0F0
	thumb_func_end ov96_021ECFF8

	thumb_func_start ov96_021ED054
ov96_021ED054: ; 0x021ED054
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	cmp r5, #0
	bne _021ED064
	bl GF_AssertFail
_021ED064:
	cmp r6, #0
	bne _021ED06C
	bl GF_AssertFail
_021ED06C:
	mov r1, #6
	add r0, r7, #0
	lsl r1, r1, #6
	bl AllocFromHeap
	mov r2, #6
	mov r1, #0
	lsl r2, r2, #6
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x5b
	str r7, [r4]
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r0, #4
	str r6, [r4, r0]
	bl ov96_021ED6E8
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED054

	thumb_func_start ov96_021ED09C
ov96_021ED09C: ; 0x021ED09C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bne _021ED0A6
	bl GF_AssertFail
_021ED0A6:
	mov r4, #0
	add r5, r7, #0
	add r6, r4, #0
_021ED0AC:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021ED0B8
	bl sub_0200D9DC
	str r6, [r5, #4]
_021ED0B8:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0xf
	blt _021ED0AC
	add r0, r7, #0
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED09C

	thumb_func_start ov96_021ED0C8
ov96_021ED0C8: ; 0x021ED0C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _021ED0D2
	bl GF_AssertFail
_021ED0D2:
	mov r2, #0x5f
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	cmp r0, #0
	beq _021ED11E
	add r1, r2, #0
	sub r1, #8
	add r0, r2, #0
	ldr r1, [r5, r1]
	sub r0, #8
	add r3, r1, #1
	add r1, r2, #0
	ldr r0, [r5, r0]
	sub r1, #8
	str r3, [r5, r1]
	sub r1, r2, #4
	ldr r1, [r5, r1]
	cmp r0, r1
	bls _021ED11E
	bl MTRandom
	add r2, r0, #0
	mov r1, #1
	and r1, r2
	add r1, r1, #2
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov96_021ED17C
	bl ov96_021ED6E8
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r2, #0
	sub r0, r1, #4
	str r2, [r5, r0]
_021ED11E:
	add r6, r5, #0
	mov r7, #0
	add r6, #0x18
	add r4, r5, #4
_021ED126:
	ldr r0, [r6]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021ED14C
	add r0, r4, #0
	bl ov96_021ECF48
	cmp r0, #0
	beq _021ED14C
	mov r1, #0x5b
	mov r2, #0x17
	lsl r1, r1, #2
	lsl r2, r2, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r4, #0
	bl ov96_021ECFF8
_021ED14C:
	add r7, r7, #1
	add r6, #0x18
	add r4, #0x18
	cmp r7, #0xf
	blt _021ED126
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED0C8

	thumb_func_start ov96_021ED158
ov96_021ED158: ; 0x021ED158
	push {r3, lr}
	sub sp, #8
	mov r2, #0x5f
	lsl r2, r2, #2
	str r1, [r0, r2]
	mov r1, #0x20
	str r1, [sp]
	ldr r0, [r0]
	mov r1, #0xc
	str r0, [sp, #4]
	mov r0, #0x9a
	add r3, r0, #0
	mov r2, #1
	add r3, #0xc6
	bl GfGfxLoader_GXLoadPal
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov96_021ED158

	thumb_func_start ov96_021ED17C
ov96_021ED17C: ; 0x021ED17C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	ldr r7, _021ED1CC ; =0x00000000
	bne _021ED18C
	bl GF_AssertFail
_021ED18C:
	mov r0, #0
	add r4, r6, #0
	str r0, [sp, #4]
	add r4, #0x18
	add r5, r6, #4
_021ED196:
	ldr r0, [r4]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1f
	bne _021ED1B8
	mov r1, #0x5b
	mov r2, #0x17
	lsl r1, r1, #2
	lsl r2, r2, #4
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	add r0, r5, #0
	bl ov96_021ECDEC
	ldr r0, [sp]
	add r7, r7, #1
	cmp r7, r0
	bge _021ED1C6
_021ED1B8:
	ldr r0, [sp, #4]
	add r4, #0x18
	add r0, r0, #1
	add r5, #0x18
	str r0, [sp, #4]
	cmp r0, #0xf
	blt _021ED196
_021ED1C6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED1CC: .word 0x00000000
	thumb_func_end ov96_021ED17C

	thumb_func_start ov96_021ED1D0
ov96_021ED1D0: ; 0x021ED1D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x118
	str r0, [sp, #8]
	bl ov96_021E5DC4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	bl ov96_021E5DD4
	cmp r0, #3
	bls _021ED1E8
	b _021ED462
_021ED1E8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ED1F4: ; jump table
	.short _021ED1FC - _021ED1F4 - 2 ; case 0
	.short _021ED296 - _021ED1F4 - 2 ; case 1
	.short _021ED336 - _021ED1F4 - 2 ; case 2
	.short _021ED39A - _021ED1F4 - 2 ; case 3
_021ED1FC:
	mov r2, #6
	mov r0, #0x5c
	mov r1, #0x87
	lsl r2, r2, #0x10
	bl CreateHeap
	ldr r0, _021ED46C ; =FS_OVERLAY_ID(OVY_98)
	mov r1, #2
	bl HandleLoadOverlay
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021ED470 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021ED474 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021EB6A8
	ldr r0, [sp, #8]
	mov r1, #0xbc
	bl ov96_021E5D94
	mov r1, #0
	mov r2, #0xbc
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x87
	str r0, [r4]
	ldr r0, [sp, #8]
	bl ov96_021E5E7C
	add r1, r4, #0
	add r1, #0xb1
	strb r0, [r1]
	ldr r0, [r4]
	bl BgConfig_Alloc
	str r0, [r4, #4]
	ldr r0, [r4]
	bl ov96_021EE740
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov96_021EC490
	ldr r0, [r4]
	mov r1, #6
	mov r2, #1
	bl ov96_021E9A78
	str r0, [r4, #0x10]
	ldr r0, _021ED478 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r0, [sp, #8]
	bl ov96_021E5DEC
	b _021ED466
_021ED296:
	mov r0, #0
	add r2, sp, #0x14
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [r2]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x1c]
	bl sub_0200E2B0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0xc]
	ldr r0, [r0]
	ldr r3, [r3, #0x10]
	mov r1, #0xc
	mov r2, #3
	bl ov96_021EA854
	ldr r1, [sp, #0xc]
	mov r4, #0
	str r0, [r1, #0x14]
	add r6, sp, #0x58
	add r5, sp, #0x14
_021ED2D2:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r1, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	add r2, r7, #0
	add r3, r6, #0
	bl ov96_021E6168
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	add r2, r7, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	str r0, [r5, #0x14]
	add r4, r4, #1
	add r6, #0x10
	add r5, r5, #4
	cmp r4, #0xc
	blt _021ED2D2
	mov r0, #3
	mov r1, #0
	str r0, [sp, #0x18]
	mov r0, #1
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #0xc
	ldr r0, [r0, #0x14]
	add r2, sp, #0x58
	add r3, sp, #0x14
	bl ov96_021EA8A8
	ldr r0, [sp, #8]
	bl ov96_021E5DEC
	b _021ED466
_021ED336:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x14]
	bl ov96_021EAA00
	cmp r0, #0
	bne _021ED344
	b _021ED466
_021ED344:
	ldr r0, [sp, #8]
	bl ov96_021EC82C
	ldr r0, [sp, #0xc]
	bl ov96_021EC550
	ldr r0, [sp, #0xc]
	bl ov96_021EC5C0
	ldr r0, [sp, #0xc]
	bl ov96_021EC68C
	ldr r0, [sp, #0xc]
	bl ov96_021EC70C
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, [r0]
	add r1, #0x20
	bl ov96_021ECBB8
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0xc]
	add r1, #0x8c
	str r0, [r1]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, [r0]
	ldr r1, [r1, #0x18]
	ldr r2, [r2, #0x1c]
	bl ov96_021ED054
	ldr r1, [sp, #0xc]
	add r1, #0x90
	str r0, [r1]
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	bl ov96_021ECAC4
	ldr r0, [sp, #8]
	bl ov96_021E5DEC
	b _021ED466
_021ED39A:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	bl ov96_021E6030
	ldr r0, [sp, #8]
	mov r1, #1
	bl ov96_021E5DFC
	mov r5, #0
	add r6, r5, #0
_021ED3AE:
	ldr r0, [sp, #0xc]
	lsl r1, r5, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r4, r0, #0
	mov r1, #1
	bl ov96_021EAB38
	add r0, r4, #0
	bl ov96_021EAA20
	bl ov96_021E8BAC
	bl sub_02024CB8
	lsl r1, r6, #0xc
	str r1, [r0, #0x10]
	add r0, r4, #0
	mov r1, #1
	bl ov96_021EAC0C
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	lsl r1, r7, #6
	add r3, r2, #1
	mov r2, #0x30
	add r0, r4, #0
	add r1, #0x20
	mul r2, r3
	bl ov96_021EAF94
	add r5, r5, #1
	add r6, r6, #3
	cmp r5, #0xc
	blt _021ED3AE
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	bl ov96_021EC2E8
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #4]
	ldr r1, [r1]
	bl ov96_021EC3D8
	ldr r0, [sp, #8]
	bl ov96_021E5EE8
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl ov96_021E5D60
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0xc]
	ldr r1, [r1, #4]
	mov r2, #4
	add r3, r4, #0
	bl ov96_021EE75C
	mov r0, #2
	bl sub_0203A994
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r0, #0xb5
	str r0, [sp, #0xc]
	strb r1, [r0]
	add sp, #0x118
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021ED462:
	bl GF_AssertFail
_021ED466:
	mov r0, #0
	add sp, #0x118
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021ED46C: .word FS_OVERLAY_ID(OVY_98)
_021ED470: .word 0xFFFFE0FF
_021ED474: .word 0x04001000
_021ED478: .word gSystem + 0x60
	thumb_func_end ov96_021ED1D0

	thumb_func_start ov96_021ED47C
ov96_021ED47C: ; 0x021ED47C
	push {r3, lr}
	bl ov96_021E5DC4
	ldr r0, [r0, #0x1c]
	bl sub_0200D020
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov96_021ED47C

	thumb_func_start ov96_021ED48C
ov96_021ED48C: ; 0x021ED48C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl ov96_021ED09C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl ov96_021ECBF4
	ldr r0, [r4, #0xc]
	bl ov96_021EE808
	ldr r0, [r4, #4]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	bl FreeToHeap
	ldr r0, [r4, #0x14]
	bl ov96_021EA894
	ldr r0, [r4, #0x10]
	bl ov96_021E9C0C
	bl sub_0203A914
	add r0, r4, #0
	bl ov96_021EC51C
	add r0, r5, #0
	bl ov96_021E5DAC
	ldr r0, _021ED51C ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r0, _021ED520 ; =FS_OVERLAY_ID(OVY_98)
	bl UnloadOverlayByID
	mov r0, #0x87
	bl DestroyHeap
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021ED51C: .word gSystem + 0x60
_021ED520: .word FS_OVERLAY_ID(OVY_98)
	thumb_func_end ov96_021ED48C

	thumb_func_start ov96_021ED524
ov96_021ED524: ; 0x021ED524
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #8]
	bl ov96_021E5DC4
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov96_021E5D50
	add r6, r0, #0
	ldr r1, [r4]
	mov r0, #0xb
	bl String_New
	mov r1, #0x28
	mul r1, r5
	add r1, r6, r1
	add r1, #0x12
	add r7, r0, #0
	bl CopyU16ArrayToString
	ldr r0, [r4, #0xc]
	bl ov96_021EE97C
	mov r1, #1
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r7, #0
	mov r3, #2
	bl BufferString
	add r0, r7, #0
	bl String_Delete
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED524

	thumb_func_start ov96_021ED578
ov96_021ED578: ; 0x021ED578
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov96_021E5DC4
	ldr r0, [r0, #0xc]
	bl ov96_021EE97C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_021E5F34
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl BufferPlayersName
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #3
	mov r3, #1
	bl ov96_021EDF3C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED578

	thumb_func_start ov96_021ED5AC
ov96_021ED5AC: ; 0x021ED5AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov96_021E5DC4
	ldr r0, [r0, #0xc]
	bl ov96_021EE97C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021E5F34
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl BufferPlayersName
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov96_021ED524
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED5AC

	thumb_func_start ov96_021ED5E0
ov96_021ED5E0: ; 0x021ED5E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5F54
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED5FA
	bl GF_AssertFail
_021ED5FA:
	cmp r6, #0
	bne _021ED602
	bl GF_AssertFail
_021ED602:
	cmp r4, #0
	bne _021ED60A
	bl GF_AssertFail
_021ED60A:
	ldr r0, [r4, #4]
	lsl r0, r0, #5
	lsr r0, r0, #0x14
	bl MATH_CountPopulation
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED5E0

	thumb_func_start ov96_021ED618
ov96_021ED618: ; 0x021ED618
	push {r3, r4, r5, r6, r7, lr}
	lsl r3, r1, #1
	add r1, r1, r3
	add r6, r0, #0
	add r4, r2, r1
	bl ov96_021E5F54
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r5, r0, #0
	cmp r6, #0
	bne _021ED638
	bl GF_AssertFail
_021ED638:
	cmp r7, #0
	bne _021ED640
	bl GF_AssertFail
_021ED640:
	cmp r5, #0
	bne _021ED648
	bl GF_AssertFail
_021ED648:
	cmp r4, #0xc
	blt _021ED650
	bl GF_AssertFail
_021ED650:
	ldr r0, [r5, #4]
	lsl r0, r0, #5
	lsr r1, r0, #0x14
	mov r0, #1
	lsl r0, r4
	and r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED618

	thumb_func_start ov96_021ED660
ov96_021ED660: ; 0x021ED660
	push {r3, r4, r5, r6, r7, lr}
	lsl r3, r1, #1
	add r1, r1, r3
	add r6, r0, #0
	add r4, r2, r1
	bl ov96_021E5F54
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r5, r0, #0
	cmp r6, #0
	bne _021ED680
	bl GF_AssertFail
_021ED680:
	cmp r7, #0
	bne _021ED688
	bl GF_AssertFail
_021ED688:
	cmp r5, #0
	bne _021ED690
	bl GF_AssertFail
_021ED690:
	cmp r4, #0xc
	blt _021ED698
	bl GF_AssertFail
_021ED698:
	ldr r0, [r5, #8]
	lsl r0, r0, #4
	lsr r1, r0, #0x14
	mov r0, #1
	lsl r0, r4
	and r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED660

	thumb_func_start ov96_021ED6A8
ov96_021ED6A8: ; 0x021ED6A8
	push {r3, r4, r5, r6, r7, lr}
	lsl r3, r1, #1
	add r1, r1, r3
	add r6, r0, #0
	add r4, r2, r1
	bl ov96_021E5F54
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r5, r0, #0
	cmp r6, #0
	bne _021ED6C8
	bl GF_AssertFail
_021ED6C8:
	cmp r7, #0
	bne _021ED6D0
	bl GF_AssertFail
_021ED6D0:
	cmp r5, #0
	bne _021ED6D8
	bl GF_AssertFail
_021ED6D8:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x11
	lsr r1, r0, #0x14
	mov r0, #1
	lsl r0, r4
	and r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED6A8

	thumb_func_start ov96_021ED6E8
ov96_021ED6E8: ; 0x021ED6E8
	push {r3, lr}
	bl MTRandom
	mov r1, #7
	and r0, r1
	add r0, r0, #4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED6E8

	thumb_func_start ov96_021ED6F8
ov96_021ED6F8: ; 0x021ED6F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov96_021E5F54
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED714
	bl GF_AssertFail
_021ED714:
	cmp r7, #0
	bne _021ED71C
	bl GF_AssertFail
_021ED71C:
	cmp r4, #0
	bne _021ED724
	bl GF_AssertFail
_021ED724:
	ldrb r0, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED6F8

	thumb_func_start ov96_021ED728
ov96_021ED728: ; 0x021ED728
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	bl ov96_021E5E58
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl ov96_021E6040
	add r1, r4, #0
	add r2, r6, #0
	bl ov96_021E95D8
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021ED728

	thumb_func_start ov96_021ED748
ov96_021ED748: ; 0x021ED748
	mov r0, #0xa
	bx lr
	thumb_func_end ov96_021ED748

	thumb_func_start ov96_021ED74C
ov96_021ED74C: ; 0x021ED74C
	mov r0, #0x14
	bx lr
	thumb_func_end ov96_021ED74C

	thumb_func_start ov96_021ED750
ov96_021ED750: ; 0x021ED750
	mov r0, #0xa
	bx lr
	thumb_func_end ov96_021ED750

	thumb_func_start ov96_021ED754
ov96_021ED754: ; 0x021ED754
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5F54
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED76E
	bl GF_AssertFail
_021ED76E:
	cmp r6, #0
	bne _021ED776
	bl GF_AssertFail
_021ED776:
	cmp r4, #0
	bne _021ED77E
	bl GF_AssertFail
_021ED77E:
	ldr r0, [r4, #4]
	lsl r0, r0, #5
	lsr r0, r0, #0x14
	bl MATH_CountPopulation
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED754

	thumb_func_start ov96_021ED78C
ov96_021ED78C: ; 0x021ED78C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5F54
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED7A6
	bl GF_AssertFail
_021ED7A6:
	cmp r6, #0
	bne _021ED7AE
	bl GF_AssertFail
_021ED7AE:
	cmp r4, #0
	bne _021ED7B6
	bl GF_AssertFail
_021ED7B6:
	ldr r0, [r4, #8]
	lsl r0, r0, #4
	lsr r0, r0, #0x14
	bl MATH_CountPopulation
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED78C

	thumb_func_start ov96_021ED7C4
ov96_021ED7C4: ; 0x021ED7C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5F54
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED7DE
	bl GF_AssertFail
_021ED7DE:
	cmp r6, #0
	bne _021ED7E6
	bl GF_AssertFail
_021ED7E6:
	cmp r4, #0
	bne _021ED7EE
	bl GF_AssertFail
_021ED7EE:
	ldr r0, [r4, #4]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x14
	bl MATH_CountPopulation
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED7C4

	thumb_func_start ov96_021ED7FC
ov96_021ED7FC: ; 0x021ED7FC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ov96_021E5F54
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r6, #0
	bne _021ED818
	bl GF_AssertFail
_021ED818:
	cmp r7, #0
	bne _021ED820
	bl GF_AssertFail
_021ED820:
	cmp r4, #0
	bne _021ED828
	bl GF_AssertFail
_021ED828:
	mov r1, #0
_021ED82A:
	add r0, r4, r1
	ldrb r0, [r0, #0xd]
	strb r0, [r5, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _021ED82A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED7FC

	thumb_func_start ov96_021ED838
ov96_021ED838: ; 0x021ED838
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov96_021E5F54
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED854
	bl GF_AssertFail
_021ED854:
	cmp r7, #0
	bne _021ED85C
	bl GF_AssertFail
_021ED85C:
	cmp r4, #0
	bne _021ED864
	bl GF_AssertFail
_021ED864:
	lsl r0, r6, #3
	ldr r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED838

	thumb_func_start ov96_021ED86C
ov96_021ED86C: ; 0x021ED86C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov96_021E5F54
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED888
	bl GF_AssertFail
_021ED888:
	cmp r7, #0
	bne _021ED890
	bl GF_AssertFail
_021ED890:
	cmp r4, #0
	bne _021ED898
	bl GF_AssertFail
_021ED898:
	lsl r0, r6, #3
	add r0, r4, r0
	ldr r0, [r0, #4]
	lsl r0, r0, #8
	lsr r0, r0, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED86C

	thumb_func_start ov96_021ED8A4
ov96_021ED8A4: ; 0x021ED8A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov96_021E5F54
	add r7, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021ED8C0
	bl GF_AssertFail
_021ED8C0:
	cmp r7, #0
	bne _021ED8C8
	bl GF_AssertFail
_021ED8C8:
	cmp r4, #0
	bne _021ED8D0
	bl GF_AssertFail
_021ED8D0:
	lsl r0, r6, #3
	add r0, r4, r0
	ldr r0, [r0, #4]
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED8A4

	thumb_func_start ov96_021ED8DC
ov96_021ED8DC: ; 0x021ED8DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5F54
	add r0, #0x28
	bl ov96_021E8A20
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5EE8
	cmp r0, #0
	bne _021ED922
	mov r6, #0
_021ED8F8:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r6, r0
	bne _021ED90C
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021EE0AC
	b _021ED918
_021ED90C:
	lsl r2, r6, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021EE1D8
_021ED918:
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blt _021ED8F8
	pop {r4, r5, r6, pc}
_021ED922:
	mov r6, #0
_021ED924:
	add r0, r5, #0
	bl ov96_021E5D34
	cmp r0, r6
	ble _021ED93C
	lsl r2, r6, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021EE144
	b _021ED948
_021ED93C:
	lsl r2, r6, #0x18
	add r0, r4, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021EE1D8
_021ED948:
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blt _021ED924
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED8DC

	thumb_func_start ov96_021ED954
ov96_021ED954: ; 0x021ED954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r5, r1, #0
	mov r6, #0x4b
	bl PokeathlonOvy_GetHeapID
	add r1, r0, #0
	mov r0, #0xa9
	bl NARC_New
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021E5D50
	add r5, r0, #0
	mov r7, #0
	add r4, sp, #4
_021ED97A:
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	bl ov96_021E679C
	add r1, r0, #0
	ldr r0, [sp]
	add r2, sp, #4
	bl NARC_ReadWholeMember
	ldrb r0, [r4]
	add r7, r7, #1
	add r5, #0x28
	add r0, r0, #1
	sub r1, r6, r0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	sub r1, r1, r0
	ldrb r0, [r4, #2]
	add r0, r0, #1
	sub r1, r1, r0
	ldrb r0, [r4, #3]
	add r0, r0, #1
	sub r1, r1, r0
	ldrb r0, [r4, #4]
	add r0, r0, #1
	sub r6, r1, r0
	cmp r7, #3
	blt _021ED97A
	cmp r6, #0x4b
	ble _021ED9BA
	mov r6, #0x4b
	b _021ED9C0
_021ED9BA:
	cmp r6, #0
	bge _021ED9C0
	mov r6, #0
_021ED9C0:
	ldr r0, [sp]
	bl NARC_Delete
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021ED954

	thumb_func_start ov96_021ED9CC
ov96_021ED9CC: ; 0x021ED9CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	bl MTRandom
	mov r1, #3
	and r0, r1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
_021ED9E4:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021ED9EE:
	ldr r0, [sp, #8]
	mov r5, #0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021ED9F6:
	lsl r3, r5, #0x18
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	lsr r3, r3, #0x18
	bl ov96_021EDCEC
	cmp r0, #0
	beq _021EDA0E
	mov r0, #1
	str r0, [sp, #4]
	b _021EDA14
_021EDA0E:
	add r5, r5, #1
	cmp r5, #3
	blt _021ED9F6
_021EDA14:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021EDA24
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021ED9EE
_021EDA24:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021EDA46
	ldr r0, [sp]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _021ED9E4
_021EDA46:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021EDA50
	mov r0, #4
	str r0, [sp]
_021EDA50:
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021ED9CC

	thumb_func_start ov96_021EDA58
ov96_021EDA58: ; 0x021EDA58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	bl ov96_021E5D6C
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov96_021E5F54
	add r0, #0x28
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, _021EDC28 ; =0xF8007FFF
	mov r5, #0
	and r1, r0
	asr r0, r0, #0xc
	and r0, r1
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, _021EDC2C ; =0xF000FFFF
	and r0, r1
	str r0, [r4, #8]
_021EDA88:
	lsl r1, r5, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov96_021ED954
	strb r0, [r4, r5]
	add r5, r5, #1
	cmp r5, #4
	blt _021EDA88
	ldr r0, [sp]
	bl ov96_021ED9CC
	ldr r2, [r4, #4]
	mov r1, #7
	bic r2, r1
	mov r1, #7
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0xc]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1d
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	str r1, [r4, #4]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
_021EDACC:
	ldr r0, [sp, #0x24]
	ldr r5, [sp, #8]
	lsl r0, r0, #0x18
	mov r6, #0
	lsr r7, r0, #0x18
_021EDAD6:
	ldr r0, [sp, #0x1c]
	cmp r0, #4
	beq _021EDAF2
	lsl r3, r6, #0x18
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl ov96_021EDCEC
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bge _021EDAF2
	str r0, [sp, #0x20]
_021EDAF2:
	ldr r1, [r5, #8]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bhs _021EDAFC
	str r1, [sp, #0xc]
_021EDAFC:
	add r6, r6, #1
	add r5, #0x20
	cmp r6, #3
	blt _021EDAD6
	ldr r0, [sp, #8]
	add r0, #0x60
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #4
	blt _021EDACC
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #0x14]
_021EDB1A:
	add r0, r4, #0
	str r0, [sp, #0x2c]
	add r0, #8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	mov r6, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_021EDB36:
	ldr r0, [sp, #0x14]
	add r0, r6, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [r5]
	cmp r0, #0
	bne _021EDB6A
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021EDB6A
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _021EDB6A
	ldr r2, [r4, #4]
	ldr r0, _021EDC28 ; =0xF8007FFF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #5
	mov r2, #1
	lsl r2, r7
	lsr r0, r0, #0x14
	add r0, r0, r2
	lsl r0, r0, #0x14
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r4, #4]
_021EDB6A:
	ldr r1, [r5, #8]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _021EDB90
	ldr r0, [sp, #0x2c]
	ldr r2, [r0]
	ldr r0, _021EDC2C ; =0xF000FFFF
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #4
	mov r2, #1
	lsl r2, r7
	lsr r0, r0, #0x14
	add r0, r0, r2
	lsl r0, r0, #0x14
	lsr r0, r0, #4
	orr r1, r0
	ldr r0, [sp, #0x2c]
	str r1, [r0]
_021EDB90:
	ldr r0, [sp, #0x1c]
	cmp r0, #4
	beq _021EDBD2
	lsl r3, r6, #0x18
	ldr r0, [sp]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsr r3, r3, #0x18
	bl ov96_021EDCEC
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x18]
	cmp r0, r1
	ble _021EDBB0
	bl GF_AssertFail
_021EDBB0:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bne _021EDBD2
	ldr r2, [r4, #4]
	ldr r0, _021EDC30 ; =0xFFFF8007
	add r1, r2, #0
	and r1, r0
	lsl r0, r2, #0x11
	mov r2, #1
	lsl r2, r7
	lsr r0, r0, #0x14
	add r0, r0, r2
	lsl r0, r0, #0x14
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r4, #4]
_021EDBD2:
	add r6, r6, #1
	add r5, #0x20
	cmp r6, #3
	blt _021EDB36
	ldr r0, [sp, #0x14]
	add r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _021EDB1A
	ldr r1, [r4, #8]
	ldr r0, _021EDC34 ; =0xFFFF0000
	and r1, r0
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r4, #8]
	bl MTRandom
	add r2, r0, #0
	mov r1, #3
	and r2, r1
	mov r3, #0
	mov r0, #0x1e
_021EDC0E:
	add r1, r4, r2
	strb r3, [r1, #0xd]
	add r1, r2, #1
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r3, r3, #1
	add r2, r2, r1
	cmp r3, #4
	blt _021EDC0E
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EDC28: .word 0xF8007FFF
_021EDC2C: .word 0xF000FFFF
_021EDC30: .word 0xFFFF8007
_021EDC34: .word 0xFFFF0000
	thumb_func_end ov96_021EDA58

	thumb_func_start ov96_021EDC38
ov96_021EDC38: ; 0x021EDC38
	cmp r0, #0xa
	bhi _021EDCB0
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EDC48: ; jump table
	.short _021EDCB0 - _021EDC48 - 2 ; case 0
	.short _021EDCB0 - _021EDC48 - 2 ; case 1
	.short _021EDCB0 - _021EDC48 - 2 ; case 2
	.short _021EDCB0 - _021EDC48 - 2 ; case 3
	.short _021EDCB0 - _021EDC48 - 2 ; case 4
	.short _021EDC62 - _021EDC48 - 2 ; case 5
	.short _021EDC72 - _021EDC48 - 2 ; case 6
	.short _021EDC82 - _021EDC48 - 2 ; case 7
	.short _021EDC92 - _021EDC48 - 2 ; case 8
	.short _021EDCA2 - _021EDC48 - 2 ; case 9
	.short _021EDC5E - _021EDC48 - 2 ; case 10
_021EDC5E:
	mov r0, #0
	bx lr
_021EDC62:
	cmp r1, #0
	beq _021EDC6A
	mov r0, #4
	b _021EDC6C
_021EDC6A:
	mov r0, #0
_021EDC6C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EDC72:
	cmp r1, #0
	beq _021EDC7A
	mov r0, #2
	b _021EDC7C
_021EDC7A:
	mov r0, #4
_021EDC7C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EDC82:
	cmp r1, #0
	beq _021EDC8A
	mov r0, #1
	b _021EDC8C
_021EDC8A:
	mov r0, #2
_021EDC8C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EDC92:
	cmp r1, #0
	beq _021EDC9A
	mov r0, #3
	b _021EDC9C
_021EDC9A:
	mov r0, #1
_021EDC9C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EDCA2:
	cmp r1, #0
	beq _021EDCAA
	mov r0, #0
	b _021EDCAC
_021EDCAA:
	mov r0, #3
_021EDCAC:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021EDCB0:
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EDC38

	thumb_func_start ov96_021EDCB4
ov96_021EDCB4: ; 0x021EDCB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5F54
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021EDCCE
	bl GF_AssertFail
_021EDCCE:
	cmp r6, #0
	bne _021EDCD6
	bl GF_AssertFail
_021EDCD6:
	cmp r4, #0
	bne _021EDCDE
	bl GF_AssertFail
_021EDCDE:
	ldr r0, [r4, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EDCB4

	thumb_func_start ov96_021EDCEC
ov96_021EDCEC: ; 0x021EDCEC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	bl ov96_021E5D6C
	add r6, r0, #0
	cmp r4, #4
	blo _021EDD02
	bl GF_AssertFail
_021EDD02:
	cmp r5, #3
	blo _021EDD0A
	bl GF_AssertFail
_021EDD0A:
	cmp r7, #3
	bhi _021EDD58
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EDD1A: ; jump table
	.short _021EDD22 - _021EDD1A - 2 ; case 0
	.short _021EDD30 - _021EDD1A - 2 ; case 1
	.short _021EDD3E - _021EDD1A - 2 ; case 2
	.short _021EDD4A - _021EDD1A - 2 ; case 3
_021EDD22:
	mov r0, #0x60
	mul r0, r4
	add r1, r6, r0
	lsl r0, r5, #5
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EDD30:
	mov r0, #0x60
	mul r0, r4
	add r1, r6, r0
	lsl r0, r5, #5
	add r0, r1, r0
	ldr r0, [r0, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021EDD3E:
	mov r0, #0x60
	mul r0, r4
	lsl r1, r5, #5
	add r0, r6, r0
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021EDD4A:
	mov r0, #0x60
	mul r0, r4
	add r1, r6, r0
	lsl r0, r5, #5
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_021EDD58:
	bl GF_AssertFail
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EDCEC

	thumb_func_start ov96_021EDD64
ov96_021EDD64: ; 0x021EDD64
	add r1, r0, #0
	add r1, #0xb3
	ldrb r1, [r1]
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0xb3
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xb3
	ldrb r1, [r1]
	cmp r1, #3
	blo _021EDD92
	add r1, r0, #0
	mov r2, #0
	add r1, #0xb3
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xb2
	ldrb r1, [r1]
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0xb2
	strb r2, [r1]
_021EDD92:
	add r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #4
	bne _021EDD9E
	mov r0, #1
	bx lr
_021EDD9E:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EDD64

	thumb_func_start ov96_021EDDA4
ov96_021EDDA4: ; 0x021EDDA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov96_021E5DC4
	add r4, r0, #0
_021EDDB2:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0xb2
	add r2, #0xb3
	ldrb r1, [r1]
	ldrb r2, [r2]
	add r0, r5, #0
	blx r6
	cmp r0, #0
	bne _021EDDD0
	add r0, r4, #0
	bl ov96_021EDD64
	cmp r0, #0
	beq _021EDDB2
_021EDDD0:
	add r0, r4, #0
	add r0, #0xb2
	ldrb r1, [r0]
	cmp r1, #4
	bhs _021EDE5E
	add r0, r4, #0
	add r0, #0xb3
	ldrb r2, [r0]
	lsl r0, r1, #1
	add r0, r1, r0
	add r6, r2, r0
	add r0, r4, #0
	add r0, #0xac
	ldrb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, r1]
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	add r2, r4, #0
	add r2, #0xb3
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0xb2
	ldrb r1, [r1]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov96_021ED5AC
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xb2
	add r0, #0x8c
	lsl r2, r7, #0x10
	ldrb r1, [r1]
	ldr r0, [r0]
	lsr r2, r2, #0x10
	bl ov96_021ECC38
	lsl r1, r6, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_021EC298
	lsl r1, r6, #0x18
	ldr r0, [r4, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	bl ov96_021EAA20
	bl ov96_021E8BB0
	add r5, r0, #0
	mov r0, #1
	bl sub_02006E3C
	ldrh r1, [r5, #2]
	ldrh r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl PlayCry
	add r0, r4, #0
	bl ov96_021EDD64
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EDE5E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EDDA4

	thumb_func_start ov96_021EDE64
ov96_021EDE64: ; 0x021EDE64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	bl ov96_021E5F24
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov96_021E5DC4
	str r0, [sp]
	add r0, r4, #0
	bl ov96_021E5D6C
	add r7, r0, #0
	ldr r0, [sp]
	add r0, #0x9c
	ldr r0, [r0]
	lsl r0, r0, #4
	lsr r1, r0, #0x1c
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _021EDEA2
	mov r1, #0x1d
	lsl r1, r1, #4
	ldrh r2, [r7, r1]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r7, r1]
_021EDEA2:
	ldr r5, _021EDF34 ; =0x000003E7
	mov r4, #0
_021EDEA6:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	cmp r5, r0
	blt _021EDEB6
	add r5, r0, #0
_021EDEB6:
	add r4, r4, #1
	cmp r4, #4
	blt _021EDEA6
	ldr r1, [sp, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	cmp r0, r5
	bne _021EDED8
	mov r1, #0x1d
	lsl r1, r1, #4
	ldrh r2, [r7, r1]
	mov r0, #2
	orr r0, r2
	strh r0, [r7, r1]
_021EDED8:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r0, r1, r0
	add r0, #0xac
	ldrb r1, [r0]
	mov r0, #6
	lsl r0, r0, #6
	str r1, [r7, r0]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, #0x8c
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	ldr r1, _021EDF38 ; =0x000001D2
	strh r0, [r7, r1]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #0x18
	add r0, #0x9c
	lsr r1, r1, #0x18
	str r0, [sp]
	bl ov96_021EE264
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021EDF1A
	bl GF_AssertFail
_021EDF1A:
	mov r2, #0x1d
	lsl r2, r2, #4
	ldrh r0, [r7, r2]
	mov r1, #0xc
	bic r0, r1
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1c
	orr r0, r1
	strh r0, [r7, r2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EDF34: .word 0x000003E7
_021EDF38: .word 0x000001D2
	thumb_func_end ov96_021EDE64

	thumb_func_start ov96_021EDF3C
ov96_021EDF3C: ; 0x021EDF3C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r1, r3, #0
	add r2, r5, #0
	add r3, r4, #0
	bl BufferIntegerAsString
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EDF3C

	thumb_func_start ov96_021EDF5C
ov96_021EDF5C: ; 0x021EDF5C
	ldr r3, _021EDF78 ; =ov96_0221B058
	mov r2, #0
_021EDF60:
	ldr r1, [r3]
	cmp r1, r0
	ble _021EDF6A
	add r0, r2, #0
	bx lr
_021EDF6A:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0xc
	blt _021EDF60
	add r0, r2, #0
	bx lr
	nop
_021EDF78: .word ov96_0221B058
	thumb_func_end ov96_021EDF5C

	thumb_func_start ov96_021EDF7C
ov96_021EDF7C: ; 0x021EDF7C
	lsl r0, r0, #2
	add r0, #0x20
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EDF7C

	thumb_func_start ov96_021EDF84
ov96_021EDF84: ; 0x021EDF84
	push {r4, r5}
	mov r4, #0
	add r3, r4, #0
	add r5, r1, #0
_021EDF8C:
	ldr r2, [r5, #0x44]
	add r3, r3, #1
	add r4, r4, r2
	add r5, r5, #4
	cmp r3, #0xa
	blt _021EDF8C
	ldr r2, [r1, #4]
	mov r5, #0
	str r2, [r0]
	ldr r2, [r1, #8]
	add r3, r1, #0
	str r2, [r0, #4]
	ldr r2, [r1, #0xc]
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	ldr r2, [r1, #0x6c]
	add r4, r0, #0
	str r2, [r0, #0x10]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x14]
	ldr r2, [r1, #0x14]
	str r2, [r0, #0x18]
	ldr r2, [r1, #0x18]
	str r2, [r0, #0x1c]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x20]
	ldr r2, [r1, #0x20]
	str r2, [r0, #0x24]
	ldr r2, [r1, #0x24]
	str r2, [r0, #0x28]
	ldr r2, [r1, #0x28]
	str r2, [r0, #0x2c]
	ldr r2, [r1, #0x2c]
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x30]
	str r2, [r0, #0x34]
	ldr r2, [r1, #0x38]
	str r2, [r0, #0x38]
	ldr r2, [r1, #0x3c]
	str r2, [r0, #0x3c]
	ldr r2, [r1, #0x40]
	str r2, [r0, #0x40]
_021EDFE0:
	ldr r2, [r3, #0x44]
	add r5, r5, #1
	str r2, [r4, #0x44]
	add r3, r3, #4
	add r4, r4, #4
	cmp r5, #0xa
	blt _021EDFE0
	ldr r2, [r1, #0x34]
	str r2, [r0, #0x6c]
	ldr r1, [r1, #0x70]
	str r1, [r0, #0x70]
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021EDF84

	thumb_func_start ov96_021EDFFC
ov96_021EDFFC: ; 0x021EDFFC
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021EE03C ; =ov96_0221B124
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
_021EE006:
	ldr r0, [r5]
	cmp r0, #0
	bne _021EE010
	bl GF_AssertFail
_021EE010:
	bl MTRandom
	mov r1, #3
	bl _u32_div_f
	strb r1, [r6, r4]
	ldr r0, [r7]
	cmp r0, #0
	beq _021EE02E
	ldr r1, [r5]
	bl _u32_div_f
	ldrb r1, [r6, r4]
	add r0, r1, r0
	strb r0, [r6, r4]
_021EE02E:
	add r4, r4, #1
	add r5, r5, #4
	add r7, r7, #4
	cmp r4, #0x1d
	blt _021EE006
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE03C: .word ov96_0221B124
	thumb_func_end ov96_021EDFFC

	thumb_func_start ov96_021EE040
ov96_021EE040: ; 0x021EE040
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, sp, #0
	mov r3, #0x1d
	mov r2, #0
_021EE04A:
	strb r2, [r4]
	add r4, r4, #1
	sub r3, r3, #1
	bne _021EE04A
	mov r2, #0
	add r4, r2, #0
	add r5, r2, #0
_021EE058:
	ldrb r3, [r0, r5]
	cmp r2, r3
	bhs _021EE060
	add r2, r3, #0
_021EE060:
	add r5, r5, #1
	cmp r5, #0x1d
	blt _021EE058
	mov r6, #0
	add r5, sp, #0
_021EE06A:
	ldrb r3, [r0, r6]
	cmp r2, r3
	bne _021EE076
	strb r6, [r5]
	add r5, r5, #1
	add r4, r4, #1
_021EE076:
	add r6, r6, #1
	cmp r6, #0x1d
	blt _021EE06A
	ldr r3, _021EE0A8 ; =ov96_0221AF54
	mov r5, #0
_021EE080:
	ldr r0, [r3]
	cmp r2, r0
	blo _021EE08E
	mov r0, #3
	sub r0, r0, r5
	strb r0, [r1]
	b _021EE096
_021EE08E:
	add r5, r5, #1
	add r3, r3, #4
	cmp r5, #4
	blt _021EE080
_021EE096:
	bl MTRandom
	add r1, r4, #0
	bl _u32_div_f
	add r0, sp, #0
	ldrb r0, [r0, r1]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE0A8: .word ov96_0221AF54
	thumb_func_end ov96_021EE040

	thumb_func_start ov96_021EE0AC
ov96_021EE0AC: ; 0x021EE0AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x94
	add r5, r0, #0
	mov r0, #0
	add r2, r1, #0
	add r4, sp, #0x20
	add r1, r0, #0
	mov r3, #7
_021EE0BC:
	stmia r4!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021EE0BC
	add r3, sp, #0
	str r0, [r4]
	add r3, #1
	mov r1, #0x1d
	mov r0, #0
_021EE0CE:
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _021EE0CE
	add r0, r2, #0
	bl ov96_021E5D60
	bl Save_Pokeathlon_Get
	bl sub_020319F0
	add r6, r0, #0
	add r0, sp, #0x20
	add r1, r6, #0
	bl ov96_021EDF84
	add r0, sp, #0
	add r0, #1
	add r1, sp, #0x20
	bl ov96_021EDFFC
	add r0, sp, #0
	add r0, #1
	add r1, sp, #0
	bl ov96_021EE040
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl ov96_021EDF7C
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r2, r4, #2
	add r0, r1, r0
	str r0, [r5]
	mov r0, #0xff
	ldr r1, [r5, #4]
	lsl r0, r0, #0x18
	and r0, r1
	add r1, sp, #0x20
	ldr r2, [r1, r2]
	ldr r1, _021EE140 ; =0x00FFFFFF
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	ldr r0, [r6, #0x70]
	bl ov96_021EDF5C
	ldr r2, [r5, #4]
	ldr r1, _021EE140 ; =0x00FFFFFF
	lsl r0, r0, #0x18
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	add sp, #0x94
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EE140: .word 0x00FFFFFF
	thumb_func_end ov96_021EE0AC

	thumb_func_start ov96_021EE144
ov96_021EE144: ; 0x021EE144
	push {r3, r4, r5, r6, lr}
	sub sp, #0x94
	add r5, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r6, sp, #0x20
	add r1, r0, #0
	mov r4, #7
_021EE154:
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r4, r4, #1
	bne _021EE154
	add r4, sp, #0
	str r0, [r6]
	add r4, #1
	mov r1, #0x1d
	mov r0, #0
_021EE166:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _021EE166
	add r0, r3, #0
	add r1, r2, #0
	bl ov96_021E5F44
	add r6, r0, #0
	add r0, sp, #0x20
	add r1, r6, #0
	bl ov96_021EDF84
	add r0, sp, #0
	add r0, #1
	add r1, sp, #0x20
	bl ov96_021EDFFC
	add r0, sp, #0
	add r0, #1
	add r1, sp, #0
	bl ov96_021EE040
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl ov96_021EDF7C
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r2, r4, #2
	add r0, r1, r0
	str r0, [r5]
	mov r0, #0xff
	ldr r1, [r5, #4]
	lsl r0, r0, #0x18
	and r0, r1
	add r1, sp, #0x20
	ldr r2, [r1, r2]
	ldr r1, _021EE1D4 ; =0x00FFFFFF
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	ldr r0, [r6, #0x70]
	bl ov96_021EDF5C
	ldr r2, [r5, #4]
	ldr r1, _021EE1D4 ; =0x00FFFFFF
	lsl r0, r0, #0x18
	and r1, r2
	orr r0, r1
	str r0, [r5, #4]
	add sp, #0x94
	pop {r3, r4, r5, r6, pc}
	nop
_021EE1D4: .word 0x00FFFFFF
	thumb_func_end ov96_021EE144

	thumb_func_start ov96_021EE1D8
ov96_021EE1D8: ; 0x021EE1D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	add r7, r1, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r7, #0
	mov r5, #0
	bl ov96_021E5D40
	str r0, [sp, #8]
	add r4, r5, #0
_021EE1F0:
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	bl ov96_021E60D8
	ldrb r6, [r0, #4]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	ldrb r0, [r0]
	add r4, r4, #1
	add r0, r1, r0
	add r0, r2, r0
	add r0, r3, r0
	add r0, r6, r0
	add r0, r0, #5
	add r5, r5, r0
	cmp r4, #3
	blt _021EE1F0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	sub r4, #8
	cmp r4, #0xc
	ble _021EE22A
	mov r4, #0xc
	b _021EE230
_021EE22A:
	cmp r4, #0
	bge _021EE230
	mov r4, #0
_021EE230:
	ldr r1, [sp, #8]
	add r0, r7, #0
	ldr r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021E8448
	ldr r1, [sp]
	str r0, [r1]
	add r0, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r1, r0
	ldr r0, [sp]
	str r1, [r0, #4]
	ldr r0, _021EE260 ; =0x00FFFFFF
	and r1, r0
	lsl r0, r4, #0x18
	orr r1, r0
	ldr r0, [sp]
	str r1, [r0, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE260: .word 0x00FFFFFF
	thumb_func_end ov96_021EE1D8

	thumb_func_start ov96_021EE264
ov96_021EE264: ; 0x021EE264
	push {r3, r4}
	mov r3, #0
	add r4, r0, #0
_021EE26A:
	ldr r2, [r4]
	lsl r2, r2, #4
	lsr r2, r2, #0x1c
	cmp r1, r2
	bne _021EE280
	lsl r1, r3, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	pop {r3, r4}
	bx lr
_021EE280:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #4
	blt _021EE26A
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021EE264

	thumb_func_start ov96_021EE290
ov96_021EE290: ; 0x021EE290
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r3, #0
	ldr r7, _021EE318 ; =0xFF00FFFF
	add r2, r3, #0
	add r6, r4, #0
_021EE29C:
	ldr r0, [r6]
	lsl r1, r0, #8
	lsr r1, r1, #0x18
	bne _021EE2BA
	add r1, r1, #1
	lsl r1, r1, #0x18
	and r0, r7
	lsr r1, r1, #8
	orr r0, r1
	str r0, [r6]
	lsr r0, r0, #0x1c
	cmp r0, r3
	bls _021EE2BA
	add r3, r0, #0
	add r5, r2, #0
_021EE2BA:
	add r2, r2, #1
	add r6, r6, #4
	cmp r2, #4
	blt _021EE29C
	lsl r1, r5, #2
	ldr r3, [r4, r1]
	ldr r2, _021EE318 ; =0xFF00FFFF
	add r0, r3, #0
	lsl r3, r3, #8
	lsr r3, r3, #0x18
	sub r3, r3, #1
	lsl r3, r3, #0x18
	and r0, r2
	lsr r3, r3, #8
	orr r0, r3
	str r0, [r4, r1]
	ldr r3, [r4, r1]
	lsl r0, r2, #0x10
	lsl r2, r3, #0x10
	lsr r2, r2, #0x10
	add r2, r2, #1
	lsl r2, r2, #0x10
	and r0, r3
	lsr r2, r2, #0x10
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	ldr r3, _021EE31C ; =ov96_021ECC58
	add r0, r4, #0
	add r2, r1, #0
	bl MATH_QSort
	ldr r1, [r4]
	ldr r0, _021EE320 ; =0xFFFF0000
	add r2, r1, #0
	and r2, r0
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE318: .word 0xFF00FFFF
_021EE31C: .word ov96_021ECC58
_021EE320: .word 0xFFFF0000
	thumb_func_end ov96_021EE290

	thumb_func_start ov96_021EE324
ov96_021EE324: ; 0x021EE324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	bl ov96_021E5DC4
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl ov96_021E5F54
	str r0, [sp, #0x10]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, #0xb7
	ldrb r6, [r0]
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	bne _021EE3FC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, #0x20
	strb r6, [r0]
	ldr r0, [sp, #0x10]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	mov r2, #0x24
_021EE37E:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _021EE37E
	add r0, r7, #0
	mov r4, #0
	bl ov96_021E5D34
	cmp r0, #0
	ble _021EE3C8
	ldr r5, [sp, #0x10]
	add r5, #0x50
_021EE39A:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r1, [r0]
	cmp r1, r6
	blo _021EE3AC
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _021EE3B0
_021EE3AC:
	mov r1, #1
	str r1, [sp, #4]
_021EE3B0:
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _021EE3BA
	mov r0, #0
	str r0, [sp]
_021EE3BA:
	add r0, r7, #0
	add r5, #0x28
	add r4, r4, #1
	bl ov96_021E5D34
	cmp r4, r0
	blt _021EE39A
_021EE3C8:
	ldr r0, [sp]
	cmp r0, #0
	beq _021EE3DE
	ldr r0, [sp, #0xc]
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r0, #0x21
	strb r1, [r0]
_021EE3DE:
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r0, #0x21
	ldrb r0, [r0]
	bic r0, r1
	ldr r1, [sp, #4]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #1
	and r1, r2
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r0, #0x21
	str r0, [sp, #0xc]
	strb r1, [r0]
_021EE3FC:
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	strb r6, [r4]
	ldr r0, [r0, #0xc]
	bl ov96_021EEA80
	strb r0, [r4, #1]
	ldr r0, [sp, #0x14]
	add r0, #0xb8
	str r0, [sp, #0x14]
	ldr r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [sp, #8]
	add r0, #0x21
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021EE438
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldrb r0, [r0]
	cmp r6, r0
	blo _021EE438
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EE438:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE324

	thumb_func_start ov96_021EE440
ov96_021EE440: ; 0x021EE440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	bl ov96_021E5DC4
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl ov96_021E5F54
	str r0, [sp, #0x10]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, #0xb7
	ldrb r6, [r0]
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	bne _021EE50A
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	strb r6, [r0, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	mov r2, #0x24
_021EE498:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _021EE498
	add r0, r7, #0
	mov r4, #0
	bl ov96_021E5D34
	cmp r0, #0
	ble _021EE4E2
	ldr r5, [sp, #0x10]
	add r5, #0x50
_021EE4B4:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r1, [r0]
	cmp r1, r6
	blo _021EE4C6
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _021EE4CA
_021EE4C6:
	mov r1, #1
	str r1, [sp, #4]
_021EE4CA:
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _021EE4D4
	mov r0, #0
	str r0, [sp]
_021EE4D4:
	add r0, r7, #0
	add r5, #0x28
	add r4, r4, #1
	bl ov96_021E5D34
	cmp r4, r0
	blt _021EE4B4
_021EE4E2:
	ldr r0, [sp]
	cmp r0, #0
	beq _021EE4F6
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	mov r0, #2
	lsl r0, r0, #0x1c
	orr r1, r0
	ldr r0, [sp, #0xc]
	str r1, [r0, #8]
_021EE4F6:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #8]
	ldr r0, _021EE548 ; =0xEFFFFFFF
	and r1, r0
	ldr r0, [sp, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #3
	orr r1, r0
	ldr r0, [sp, #0xc]
	str r1, [r0, #8]
_021EE50A:
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	strb r6, [r4]
	ldr r0, [r0, #0xc]
	bl ov96_021EEA80
	strb r0, [r4, #1]
	ldr r0, [sp, #0x14]
	add r0, #0xb8
	str r0, [sp, #0x14]
	ldr r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _021EE540
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xc]
	cmp r6, r0
	blo _021EE540
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EE540:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE548: .word 0xEFFFFFFF
	thumb_func_end ov96_021EE440

	thumb_func_start ov96_021EE54C
ov96_021EE54C: ; 0x021EE54C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5F54
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021EE566
	bl GF_AssertFail
_021EE566:
	cmp r6, #0
	bne _021EE56E
	bl GF_AssertFail
_021EE56E:
	cmp r4, #0
	bne _021EE576
	bl GF_AssertFail
_021EE576:
	add r4, #0x21
	ldrb r0, [r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021EE54C

	thumb_func_start ov96_021EE580
ov96_021EE580: ; 0x021EE580
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5F54
	add r6, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	cmp r5, #0
	bne _021EE59A
	bl GF_AssertFail
_021EE59A:
	cmp r6, #0
	bne _021EE5A2
	bl GF_AssertFail
_021EE5A2:
	cmp r4, #0
	bne _021EE5AA
	bl GF_AssertFail
_021EE5AA:
	ldr r0, [r4, #8]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE580

	thumb_func_start ov96_021EE5B4
ov96_021EE5B4: ; 0x021EE5B4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x30
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	str r6, [r4]
	mov r0, #0xdd
	add r1, r6, #0
	str r5, [r4, #8]
	bl NARC_New
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE5B4

	thumb_func_start ov96_021EE5E0
ov96_021EE5E0: ; 0x021EE5E0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0x10
_021EE5EA:
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _021EE5EA
	ldr r0, [r6, #0xc]
	bl NARC_Delete
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021EE5E0

	thumb_func_start ov96_021EE60C
ov96_021EE60C: ; 0x021EE60C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	ldr r4, _021EE640 ; =ov96_0221B19A
	str r1, [r7, #4]
	mov r6, #0
	add r5, #0x10
_021EE61A:
	ldr r0, [r7, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	bl ClearWindowTilemap
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #2
	blt _021EE61A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE640: .word ov96_0221B19A
	thumb_func_end ov96_021EE60C

	thumb_func_start ov96_021EE644
ov96_021EE644: ; 0x021EE644
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r2, #6
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0xb
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r3, r2, #0xc
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5]
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #4]
	add r1, #0xc
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5]
	add r4, #0x16
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #4]
	add r1, r4, #0
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EE644

	thumb_func_start ov96_021EE6A0
ov96_021EE6A0: ; 0x021EE6A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	ldr r2, _021EE6FC ; =0x00000135
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r3, [r5]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	add r6, r0, #0
	mov r0, #1
	ldr r1, [r5]
	lsl r0, r0, #8
	bl String_New
	add r7, r0, #0
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	add r3, r4, #0
	add r0, #0x10
	add r1, r6, #0
	add r2, r7, #0
	add r3, #0xa6
	bl ov96_021EE700
	mov r0, #0
	add r4, #0xbb
	add r5, #0x20
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov96_021EE700
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl DestroyMsgData
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE6FC: .word 0x00000135
	thumb_func_end ov96_021EE6A0

	thumb_func_start ov96_021EE700
ov96_021EE700: ; 0x021EE700
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	bl ReadMsgDataIntoString
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EE73C ; =0x00010200
	ldr r1, [sp, #0x20]
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021EE73C: .word 0x00010200
	thumb_func_end ov96_021EE700

	thumb_func_start ov96_021EE740
ov96_021EE740: ; 0x021EE740
	push {r3, r4, r5, lr}
	mov r1, #0x38
	add r5, r0, #0
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x38
	add r4, r0, #0
	bl MI_CpuFill8
	str r5, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE740

	thumb_func_start ov96_021EE75C
ov96_021EE75C: ; 0x021EE75C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r0, _021EE7F4 ; =0x00000004
	bne _021EE774
	ldr r0, [sp, #0x18]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
_021EE774:
	mov r1, #0
	str r4, [r5]
	mvn r1, r1
	str r1, [r5, #0x2c]
	ldr r2, [r5, #0x34]
	ldr r1, _021EE7F8 ; =0xF8FFFFFF
	lsl r0, r0, #0x18
	and r2, r1
	lsl r1, r6, #0x1d
	lsr r1, r1, #5
	orr r1, r2
	str r1, [r5, #0x34]
	str r7, [r5, #0x28]
	ldr r2, [r5, #0x34]
	ldr r1, _021EE7FC ; =0xFF00FFFF
	lsr r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x34]
	ldr r2, _021EE800 ; =0x00000135
	ldr r3, [r5, #0x14]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	str r0, [r5, #8]
	ldr r2, _021EE804 ; =0x00000137
	ldr r3, [r5, #0x14]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	bl MessageFormat_New
	str r0, [r5, #4]
	bl ResetAllTextPrinters
	ldr r1, [r5, #0x34]
	ldr r0, [r5]
	lsl r1, r1, #5
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x18
	ldr r2, [r5, #0x14]
	lsr r1, r1, #0x18
	bl ov96_021EE9D8
	mov r1, #0x1e
	ldr r2, [r5, #0x14]
	mov r0, #4
	lsl r1, r1, #4
	bl LoadFontPal0
	mov r2, #0
	str r2, [sp]
	ldr r1, [r5, #0x34]
	ldr r0, [r5]
	lsl r1, r1, #5
	lsr r1, r1, #0x1d
	mov r3, #1
	bl BG_FillCharDataRange
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE7F4: .word 0x00000004
_021EE7F8: .word 0xF8FFFFFF
_021EE7FC: .word 0xFF00FFFF
_021EE800: .word 0x00000135
_021EE804: .word 0x00000137
	thumb_func_end ov96_021EE75C

	thumb_func_start ov96_021EE808
ov96_021EE808: ; 0x021EE808
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl DestroyMsgData
	ldr r0, [r4, #0xc]
	bl DestroyMsgData
	ldr r0, [r4, #4]
	bl MessageFormat_Delete
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021EE828
	bl String_Delete
_021EE828:
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov96_021EE808

	thumb_func_start ov96_021EE830
ov96_021EE830: ; 0x021EE830
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r4, #0x2c]
	mvn r0, r0
	cmp r1, r0
	beq _021EE870
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021EE864
	ldr r1, [r4, #0x34]
	ldr r0, _021EE8C4 ; =0xFFFF0000
	and r1, r0
	mov r0, #0x14
	orr r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	bl String_Delete
	mov r0, #0
	str r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x2c]
_021EE864:
	mov r0, #1
	ldr r1, [r4, #0x34]
	lsl r0, r0, #0x1c
	orr r0, r1
	str r0, [r4, #0x34]
	b _021EE8BC
_021EE870:
	beq _021EE876
	bl GF_AssertFail
_021EE876:
	ldr r1, [r4, #0x34]
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	beq _021EE8B6
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021EE88C
	ldr r0, _021EE8C8 ; =0xEFFFFFFF
	and r0, r1
	str r0, [r4, #0x34]
	b _021EE8BC
_021EE88C:
	ldr r0, _021EE8C4 ; =0xFFFF0000
	and r1, r0
	sub r0, r2, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r4, #0x34]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _021EE8A4
	mov r2, #1
	b _021EE8A6
_021EE8A4:
	mov r2, #0
_021EE8A6:
	ldr r1, [r4, #0x34]
	ldr r0, _021EE8C8 ; =0xEFFFFFFF
	and r1, r0
	lsl r0, r2, #0x1f
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r4, #0x34]
	b _021EE8BC
_021EE8B6:
	ldr r0, _021EE8C8 ; =0xEFFFFFFF
	and r0, r1
	str r0, [r4, #0x34]
_021EE8BC:
	ldr r0, [r4, #0x34]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	pop {r4, pc}
	.balign 4, 0
_021EE8C4: .word 0xFFFF0000
_021EE8C8: .word 0xEFFFFFFF
	thumb_func_end ov96_021EE830

	thumb_func_start ov96_021EE8CC
ov96_021EE8CC: ; 0x021EE8CC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	add r2, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x34]
	add r1, r4, #0
	lsl r0, r0, #5
	lsr r0, r0, #0x1d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	add r1, #0x18
	str r0, [sp, #0x10]
	ldr r3, [r4, #0x34]
	ldr r0, [r4]
	lsl r3, r3, #8
	lsr r3, r3, #0x18
	bl ov96_021EEA08
	str r0, [r4, #0x2c]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE8CC

	thumb_func_start ov96_021EE908
ov96_021EE908: ; 0x021EE908
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0xc]
	add r2, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x34]
	add r1, r4, #0
	lsl r0, r0, #5
	lsr r0, r0, #0x1d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	add r1, #0x18
	str r0, [sp, #0x10]
	ldr r3, [r4, #0x34]
	ldr r0, [r4]
	lsl r3, r3, #8
	lsr r3, r3, #0x18
	bl ov96_021EEA08
	str r0, [r4, #0x2c]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EE908

	thumb_func_start ov96_021EE944
ov96_021EE944: ; 0x021EE944
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r4, #0x2c]
	mvn r0, r0
	cmp r1, r0
	beq _021EE95A
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_021EE95A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021EE97A
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	bl ClearFrameAndWindow2
	add r0, r4, #0
	add r0, #0x18
	bl ClearWindowTilemapAndCopyToVram
	add r4, #0x18
	add r0, r4, #0
	bl RemoveWindow
_021EE97A:
	pop {r4, pc}
	thumb_func_end ov96_021EE944

	thumb_func_start ov96_021EE97C
ov96_021EE97C: ; 0x021EE97C
	push {r4, lr}
	add r4, r0, #0
	bne _021EE986
	bl GF_AssertFail
_021EE986:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021EE990
	bl GF_AssertFail
_021EE990:
	ldr r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov96_021EE97C

	thumb_func_start ov96_021EE994
ov96_021EE994: ; 0x021EE994
	push {r4, lr}
	add r4, r0, #0
	bne _021EE99E
	bl GF_AssertFail
_021EE99E:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021EE9A8
	bl GF_AssertFail
_021EE9A8:
	add r0, r4, #0
	ldr r1, _021EE9B8 ; =0x000003D2
	add r0, #0x18
	bl WaitingIcon_New
	str r0, [r4, #0x30]
	pop {r4, pc}
	nop
_021EE9B8: .word 0x000003D2
	thumb_func_end ov96_021EE994

	thumb_func_start ov96_021EE9BC
ov96_021EE9BC: ; 0x021EE9BC
	push {r4, lr}
	add r4, r0, #0
	bne _021EE9C6
	bl GF_AssertFail
_021EE9C6:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _021EE9D0
	bl GF_AssertFail
_021EE9D0:
	ldr r0, [r4, #0x30]
	bl sub_0200F450
	pop {r4, pc}
	thumb_func_end ov96_021EE9BC

	thumb_func_start ov96_021EE9D8
ov96_021EE9D8: ; 0x021EE9D8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #7
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #6
	add r4, r2, #0
	bl LoadFontPal0
	mov r0, #0
	str r0, [sp]
	ldr r2, _021EEA04 ; =0x000003D2
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0xd
	str r4, [sp, #4]
	bl LoadUserFrameGfx2
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021EEA04: .word 0x000003D2
	thumb_func_end ov96_021EE9D8

	thumb_func_start ov96_021EEA08
ov96_021EEA08: ; 0x021EEA08
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r2, #0
	ldr r2, [r5]
	add r6, r3, #0
	cmp r2, #0
	bne _021EEA36
	mov r2, #0x13
	str r2, [sp]
	mov r2, #0x1b
	str r2, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r2, #0xf
	str r2, [sp, #0xc]
	mov r2, #1
	str r2, [sp, #0x10]
	add r2, sp, #0x18
	ldrb r2, [r2, #0x1c]
	mov r3, #2
	bl AddWindowParameterized
_021EEA36:
	add r0, r5, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x38]
	bl ReadMsgData_ExpandPlaceholders
	str r0, [r4]
	mov r3, #0
	str r3, [sp]
	ldr r0, _021EEA78 ; =0x0001020F
	str r6, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl AddTextPrinterParameterizedWithColor
	add r4, r0, #0
	ldr r2, _021EEA7C ; =0x000003D2
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xd
	bl DrawFrameAndWindow2
	add r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021EEA78: .word 0x0001020F
_021EEA7C: .word 0x000003D2
	thumb_func_end ov96_021EEA08

	thumb_func_start ov96_021EEA80
ov96_021EEA80: ; 0x021EEA80
	ldr r0, [r0, #0x34]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end ov96_021EEA80

	thumb_func_start ov96_021EEA88
ov96_021EEA88: ; 0x021EEA88
	push {r3, lr}
	ldr r0, [r0]
	bl ov96_021EEA94
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021EEA88

	thumb_func_start ov96_021EEA94
ov96_021EEA94: ; 0x021EEA94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	str r3, [sp, #0xc]
	mov r1, #0
	add r6, r0, #0
	add r4, r2, #0
	bl thunk_Set2dSpriteVisibleFlag
	ldr r1, [sp, #0xc]
	mov r0, #0x51
	bl NARC_New
	ldr r2, [sp, #0xc]
	add r1, r5, #0
	str r0, [sp, #0x14]
	bl NARC_AllocAndReadWholeMember
	str r0, [sp, #0x10]
	bl NNS_G3dGetTex
	add r5, r0, #0
	beq _021EEAE8
	add r0, #0x3c
	beq _021EEAE4
	add r1, r5, #0
	add r1, #0x3d
	ldrb r1, [r1]
	cmp r4, r1
	bhs _021EEAE4
	add r1, r5, #0
	add r1, #0x42
	ldrh r1, [r1]
	add r2, r0, r1
	ldrh r0, [r0, r1]
	add r2, r2, #4
	add r1, r0, #0
	mul r1, r4
	add r0, r2, r1
	b _021EEAEA
_021EEAE4:
	mov r0, #0
	b _021EEAEA
_021EEAE8:
	mov r0, #0
_021EEAEA:
	ldr r0, [r0]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r4, r0, #0xd
	ldr r0, [r5, #0x14]
	lsl r1, r1, #8
	add r7, r5, r0
	ldr r0, [sp, #0xc]
	bl AllocFromHeapAtEnd
	mov r1, #4
	str r1, [sp]
	str r1, [sp, #4]
	mov r2, #0
	str r0, [sp, #0x18]
	str r0, [sp, #8]
	add r0, r7, r4
	add r3, r2, #0
	bl sub_020145B4
	mov r2, #2
	ldr r1, [sp, #0x18]
	add r0, r6, #0
	lsl r2, r2, #8
	bl ov96_021EED64
	ldr r0, [sp, #0x18]
	bl FreeToHeap
	add r0, r6, #0
	bl Sprite_GetVramType
	ldr r4, [r5, #0x38]
	add r7, r0, #0
	add r0, r5, r4
	mov r1, #0x20
	bl DC_FlushRange
	add r0, r6, #0
	bl sub_02024B34
	add r1, r7, #0
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	cmp r7, #1
	bne _021EEB52
	add r0, r5, r4
	mov r2, #0x20
	bl GX_LoadOBJPltt
	b _021EEB5A
_021EEB52:
	add r0, r5, r4
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_021EEB5A:
	ldr r0, [sp, #0x10]
	bl FreeToHeap
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	add r0, r6, #0
	mov r1, #1
	bl thunk_Set2dSpriteVisibleFlag
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EEA94

	thumb_func_start ov96_021EEB74
ov96_021EEB74: ; 0x021EEB74
	push {r4, lr}
	lsl r4, r2, #2
	ldr r0, [r0, r4]
	ldr r0, [r0]
	bl ov96_021EEB84
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EEB74

	thumb_func_start ov96_021EEB84
ov96_021EEB84: ; 0x021EEB84
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	add r5, r3, #0
	bl ov96_021E5F34
	add r7, r0, #0
	add r0, r4, #0
	bl PokeathlonOvy_GetHeapID
	add r4, r0, #0
	add r0, r7, #0
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _021EEBB0
	mov r0, #0
	bl ov96_021EEBC8
	b _021EEBB6
_021EEBB0:
	mov r0, #1
	bl ov96_021EEBC8
_021EEBB6:
	lsl r2, r5, #0x18
	add r1, r0, #0
	add r0, r6, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl ov96_021EEA94
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EEB84

	thumb_func_start ov96_021EEBC8
ov96_021EEBC8: ; 0x021EEBC8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #6
	blo _021EEBD4
	bl GF_AssertFail
_021EEBD4:
	ldr r0, _021EEBE0 ; =ov96_0221B1BC
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	.balign 4, 0
_021EEBE0: .word ov96_0221B1BC
	thumb_func_end ov96_021EEBC8

	thumb_func_start ov96_021EEBE4
ov96_021EEBE4: ; 0x021EEBE4
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl ov96_021EEC0C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov96_021EEBE4

	thumb_func_start ov96_021EEBF8
ov96_021EEBF8: ; 0x021EEBF8
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl ov96_021EEC0C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov96_021EEBF8

	thumb_func_start ov96_021EEC0C
ov96_021EEC0C: ; 0x021EEC0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	add r6, r3, #0
	str r2, [sp, #0x14]
	cmp r1, #0
	bne _021EEC28
	mov r1, #0
	bl UnkImageStruct_SetSpriteVisibleFlag
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021EEC28:
	ldrb r0, [r4, #6]
	mov r3, #2
	str r0, [sp]
	ldrh r0, [r4, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldrb r2, [r4, #7]
	add r0, sp, #0x28
	bl GetMonSpriteCharAndPlttNarcIdsEx
	ldr r3, _021EECB4 ; =ov96_0221B1AC
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x32
	ldr r0, [sp, #0x50]
	lsl r1, r1, #6
	bl AllocFromHeapAtEnd
	add r7, r0, #0
	str r7, [sp]
	ldr r0, [r4, #0xc]
	add r1, sp, #0x18
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r4]
	ldr r2, [sp, #0x50]
	add r3, sp, #0x18
	str r0, [sp, #0x10]
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x12]
	bl sub_02014510
	mov r2, #0x32
	ldr r0, [r5]
	add r1, r7, #0
	lsl r2, r2, #6
	bl ov96_021EED64
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _021EECA0
	ldr r0, [sp, #0x50]
	str r6, [sp]
	str r0, [sp, #4]
	add r2, sp, #0x18
	ldrh r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov96_021EED70
_021EECA0:
	add r0, r5, #0
	mov r1, #1
	bl UnkImageStruct_SetSpriteVisibleFlag
	add r0, r7, #0
	bl FreeToHeap
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EECB4: .word ov96_0221B1AC
	thumb_func_end ov96_021EEC0C

	thumb_func_start ov96_021EECB8
ov96_021EECB8: ; 0x021EECB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	ldrh r0, [r4]
	ldrh r2, [r4, #2]
	mov r1, #0
	add r7, r3, #0
	bl GetMonIconNaixEx
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	mov r2, #0
	str r0, [sp]
	add r0, r7, #0
	add r3, sp, #4
	bl GfGfxLoader_GetCharDataFromOpenNarc
	add r7, r0, #0
	bne _021EECE6
	bl GF_AssertFail
_021EECE6:
	ldr r1, [sp, #4]
	mov r2, #2
	ldr r0, [r5]
	ldr r1, [r1, #0x14]
	ldr r3, [sp, #0x20]
	lsl r2, r2, #8
	bl ov96_021EED14
	add r0, r7, #0
	bl FreeToHeap
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	mov r2, #0
	bl GetMonIconPaletteEx
	add r1, r0, #0
	add r0, r5, #0
	add r1, r6, r1
	bl UnkImageStruct_SetSpritePalIndex
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021EECB8

	thumb_func_start ov96_021EED14
ov96_021EED14: ; 0x021EED14
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	bl Sprite_GetVramType
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02024B1C
	add r1, r4, #0
	bl NNS_G2dGetImageLocation
	add r6, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	bl DC_FlushRange
	cmp r4, #1
	beq _021EED44
	cmp r4, #2
	beq _021EED50
	b _021EED5C
_021EED44:
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, r5
	bl GX_LoadOBJ
	pop {r3, r4, r5, r6, r7, pc}
_021EED50:
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, r5
	bl GXS_LoadOBJ
	pop {r3, r4, r5, r6, r7, pc}
_021EED5C:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EED14

	thumb_func_start ov96_021EED64
ov96_021EED64: ; 0x021EED64
	push {r3, lr}
	mov r3, #0
	bl ov96_021EED14
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021EED64

	thumb_func_start ov96_021EED70
ov96_021EED70: ; 0x021EED70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	str r2, [sp, #8]
	add r4, r3, #0
	beq _021EED82
	mov r5, #1
	add r6, r5, #0
	b _021EED86
_021EED82:
	mov r5, #2
	mov r6, #5
_021EED86:
	ldr r0, [r0]
	bl sub_02024B34
	add r1, r5, #0
	bl NNS_G2dGetImagePaletteLocation
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl GfGfxLoader_GXLoadPal
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021EEDC0
	cmp r4, #0
	beq _021EEDB6
	ldr r0, _021EEDC4 ; =0x05000200
	b _021EEDB8
_021EEDB6:
	ldr r0, _021EEDC8 ; =0x05000600
_021EEDB8:
	add r0, r5, r0
	mov r1, #0x20
	bl TintPalette_GrayScale
_021EEDC0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EEDC4: .word 0x05000200
_021EEDC8: .word 0x05000600
	thumb_func_end ov96_021EED70

	thumb_func_start ov96_021EEDCC
ov96_021EEDCC: ; 0x021EEDCC
	push {r3, r4, r5, lr}
	ldr r5, _021EEDFC ; =ov96_0221B1D4
	ldr r1, _021EEE00 ; =0x0000270F
	ldr r2, _021EEE04 ; =0x0000FFFF
	mov r4, #0
_021EEDD6:
	cmp r4, r2
	bne _021EEDDE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EEDDE:
	ldr r3, [r5]
	cmp r0, r3
	bne _021EEDEC
	ldr r0, _021EEE08 ; =ov96_0221B1D8
	lsl r1, r4, #3
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_021EEDEC:
	add r4, r4, #1
	add r5, #8
	cmp r4, r1
	blt _021EEDD6
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EEDFC: .word ov96_0221B1D4
_021EEE00: .word 0x0000270F
_021EEE04: .word 0x0000FFFF
_021EEE08: .word ov96_0221B1D8
	thumb_func_end ov96_021EEDCC

	thumb_func_start ov96_021EEE0C
ov96_021EEE0C: ; 0x021EEE0C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5DD4
	cmp r0, #3
	bhi _021EEEAE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EEE2E: ; jump table
	.short _021EEE36 - _021EEE2E - 2 ; case 0
	.short _021EEE44 - _021EEE2E - 2 ; case 1
	.short _021EEE78 - _021EEE2E - 2 ; case 2
	.short _021EEE90 - _021EEE2E - 2 ; case 3
_021EEE36:
	add r0, r5, #0
	bl ov96_021EEFAC
	add r0, r5, #0
	bl ov96_021E5DEC
	b _021EEEB2
_021EEE44:
	mov r0, #1
	bl sub_0203A994
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	bl ov96_021E5DEC
	b _021EEEB2
_021EEE78:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EEEB2
	ldr r0, [r4, #8]
	ldr r1, _021EEEB8 ; =0x00000136
	bl ov96_021EE8CC
	add r0, r5, #0
	bl ov96_021E5DEC
	b _021EEEB2
_021EEE90:
	ldr r0, [r4, #8]
	bl ov96_021EE830
	cmp r0, #0
	bne _021EEEB2
	ldr r0, [r4, #8]
	bl ov96_021EE994
	add r0, r5, #0
	mov r1, #0x11
	bl ov96_021E601C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021EEEAE:
	bl GF_AssertFail
_021EEEB2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021EEEB8: .word 0x00000136
	thumb_func_end ov96_021EEE0C

	thumb_func_start ov96_021EEEBC
ov96_021EEEBC: ; 0x021EEEBC
	mov r0, #1
	bx lr
	thumb_func_end ov96_021EEEBC

	thumb_func_start ov96_021EEEC0
ov96_021EEEC0: ; 0x021EEEC0
	push {r3, lr}
	bl ov96_021EF05C
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021EEEC0

	thumb_func_start ov96_021EEECC
ov96_021EEECC: ; 0x021EEECC
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021EEEE8 ; =ov96_0221B9E8
	add r3, sp, #0
	mov r2, #5
_021EEED6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EEED6
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021EEEE8: .word ov96_0221B9E8
	thumb_func_end ov96_021EEECC

	thumb_func_start ov96_021EEEEC
ov96_021EEEEC: ; 0x021EEEEC
	push {r3, lr}
	ldr r0, [r0, #4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021EEF04 ; =0x027E0000
	ldr r1, _021EEF08 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021EEF04: .word 0x027E0000
_021EEF08: .word 0x00003FF8
	thumb_func_end ov96_021EEEEC

	thumb_func_start ov96_021EEF0C
ov96_021EEF0C: ; 0x021EEF0C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	ldr r6, _021EEF90 ; =ov96_0221B9BC
	add r3, sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r6, _021EEF94 ; =ov96_0221B9CC
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r3]
	add r0, r5, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	mov r1, #0x40
	add r2, r0, #0
	add r3, r4, #0
	bl BG_ClearCharDataRange
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #0
	add r1, r0, #0
	bl BG_SetMaskColor
	mov r0, #4
	mov r1, #0
	bl BG_SetMaskColor
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EEF90: .word ov96_0221B9BC
_021EEF94: .word ov96_0221B9CC
	thumb_func_end ov96_021EEF0C

	thumb_func_start ov96_021EEF98
ov96_021EEF98: ; 0x021EEF98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov96_021EEF98

	thumb_func_start ov96_021EEFAC
ov96_021EEFAC: ; 0x021EEFAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r2, #1
	add r5, r0, #0
	mov r1, #0x9f
	mov r0, #0x5c
	lsl r2, r2, #0x12
	bl CreateHeap
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021EF04C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021EF050 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021EEECC
	add r0, r5, #0
	mov r1, #0x10
	bl ov96_021E5D94
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x9f
	str r0, [r4]
	bl BgConfig_Alloc
	str r0, [r4, #4]
	ldr r1, [r4]
	bl ov96_021EEF0C
	ldr r0, [r4]
	bl ov96_021EE740
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov96_021E5EE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov96_021E5D60
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	mov r2, #0
	add r3, r6, #0
	bl ov96_021EE75C
	ldr r0, _021EF054 ; =ov96_021EEEEC
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	ldr r0, _021EF058 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EF04C: .word 0xFFFFE0FF
_021EF050: .word 0x04001000
_021EF054: .word ov96_021EEEEC
_021EF058: .word gSystem + 0x60
	thumb_func_end ov96_021EEFAC

	thumb_func_start ov96_021EF05C
ov96_021EF05C: ; 0x021EF05C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl sub_0203A914
	ldr r0, [r4, #8]
	bl ov96_021EE808
	add r0, r4, #0
	bl ov96_021EEF98
	add r0, r5, #0
	bl ov96_021E5DAC
	mov r0, #0x9f
	bl DestroyHeap
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EF05C

	thumb_func_start ov96_021EF094
ov96_021EF094: ; 0x021EF094
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _021EF0AC
	cmp r0, #1
	beq _021EF0DC
	b _021EF0F0
_021EF0AC:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0xf
	ble _021EF0F4
	ldr r0, [r4, #8]
	bl ov96_021EE9BC
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021EF0F4
_021EF0DC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EF0F4
	ldr r0, [r4, #8]
	bl ov96_021EE944
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021EF0F0:
	bl GF_AssertFail
_021EF0F4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF094

	thumb_func_start ov96_021EF0FC
ov96_021EF0FC: ; 0x021EF0FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5DD4
	cmp r0, #0
	beq _021EF116
	cmp r0, #1
	beq _021EF124
	b _021EF182
_021EF116:
	add r0, r5, #0
	bl ov96_021EF2C0
	add r0, r5, #0
	bl ov96_021E5DEC
	b _021EF186
_021EF124:
	add r0, r4, #0
	bl ov96_021EF818
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	bl ov96_021EF4D0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	ldr r1, [r4, #0xc]
	bl ov96_021EE5B4
	str r0, [r4, #0x34]
	ldr r1, [r4, #4]
	bl ov96_021EE60C
	add r0, r4, #0
	bl ov96_021EF54C
	ldr r0, [r4, #0x34]
	bl ov96_021EE644
	add r0, r4, #0
	bl ov96_021EFA28
	mov r0, #2
	bl sub_0203A994
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E5DFC
	add r0, r5, #0
	mov r1, #0
	bl ov96_021E5DE0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EF182:
	bl GF_AssertFail
_021EF186:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF0FC

	thumb_func_start ov96_021EF18C
ov96_021EF18C: ; 0x021EF18C
	push {r3, lr}
	bl ov96_021E5DC4
	ldr r0, [r0, #0x14]
	bl sub_0200D020
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov96_021EF18C

	thumb_func_start ov96_021EF19C
ov96_021EF19C: ; 0x021EF19C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl ov96_021E5DC4
	add r6, r0, #0
	ldr r0, [r6, #8]
	bl NARC_Delete
	bl sub_0203A914
	ldr r0, [r6, #0x34]
	bl ov96_021EE5E0
	ldr r0, [r6, #0x30]
	mov r1, #0xc
	bl ov98_0221EB84
	ldr r5, _021EF230 ; =ov96_0221BA18
	mov r4, #0
_021EF1C2:
	ldrb r1, [r5]
	ldr r0, [r6, #4]
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #7
	blt _021EF1C2
	ldr r0, [r6, #4]
	bl FreeToHeap
	mov r5, #0
	add r4, r6, #0
	add r7, r5, #0
_021EF1DE:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021EF1EA
	bl sub_0200D9DC
	str r7, [r4, #0x38]
_021EF1EA:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _021EF1DE
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	bl SpriteRenderer_UnloadResourcesAndRemoveGfxHandler
	ldr r0, [r6, #0x10]
	bl SpriteRenderer_Delete
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	ldr r0, [sp]
	bl ov96_021E5DAC
	ldr r0, _021EF234 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r0, _021EF238 ; =FS_OVERLAY_ID(OVY_98)
	bl UnloadOverlayByID
	mov r0, #0x88
	bl DestroyHeap
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF230: .word ov96_0221BA18
_021EF234: .word gSystem + 0x60
_021EF238: .word FS_OVERLAY_ID(OVY_98)
	thumb_func_end ov96_021EF19C

	thumb_func_start ov96_021EF23C
ov96_021EF23C: ; 0x021EF23C
	push {r4, lr}
	add r4, r0, #0
	bl thunk_OamManager_ApplyAndResetBuffers
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021EF258 ; =0x027E0000
	ldr r1, _021EF25C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021EF258: .word 0x027E0000
_021EF25C: .word 0x00003FF8
	thumb_func_end ov96_021EF23C

	thumb_func_start ov96_021EF260
ov96_021EF260: ; 0x021EF260
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021EF27C ; =ov96_0221BAC0
	add r3, sp, #0
	mov r2, #5
_021EF26A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EF26A
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021EF27C: .word ov96_0221BAC0
	thumb_func_end ov96_021EF260

	thumb_func_start ov96_021EF280
ov96_021EF280: ; 0x021EF280
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GF_GetCurrentPlayingBGM
	add r1, r5, #0
	add r2, sp, #0
	bl sub_02005B78
	add r1, sp, #0
	mov r0, #0
	ldrsh r1, [r1, r0]
	cmp r1, r4
	blt _021EF29E
	mov r0, #1
_021EF29E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021EF280

	thumb_func_start ov96_021EF2A0
ov96_021EF2A0: ; 0x021EF2A0
	push {r3, lr}
	bl ov96_021E5E44
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ov96_021EF2A0

	thumb_func_start ov96_021EF2AC
ov96_021EF2AC: ; 0x021EF2AC
	push {r3, lr}
	bl ov96_021E5D60
	bl Save_VarsFlags_Get
	mov r1, #0xef
	bl Save_VarsFlags_CheckFlagInArray
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF2AC

	thumb_func_start ov96_021EF2C0
ov96_021EF2C0: ; 0x021EF2C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov96_021E5DC4
	mov r2, #1
	mov r0, #0x5c
	mov r1, #0x88
	lsl r2, r2, #0x12
	bl CreateHeap
	ldr r0, _021EF390 ; =FS_OVERLAY_ID(OVY_98)
	mov r1, #2
	mov r6, #0x88
	bl HandleLoadOverlay
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021EF394 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021EF398 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021EF260
	add r0, r5, #0
	mov r1, #0x48
	bl ov96_021E5D94
	mov r1, #0
	mov r2, #0x48
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0xdd
	add r1, r6, #0
	bl NARC_New
	str r0, [r4, #8]
	add r0, r6, #0
	bl BgConfig_Alloc
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov96_021EF2A0
	add r1, r4, #0
	add r1, #0x20
	strb r0, [r1]
	add r0, r5, #0
	bl ov96_021E5EE0
	add r1, r4, #0
	add r1, #0x22
	strb r0, [r1]
	add r0, r5, #0
	bl ov96_021E5EE8
	cmp r0, #1
	bne _021EF358
	mov r0, #1
	b _021EF35A
_021EF358:
	mov r0, #0
_021EF35A:
	str r0, [r4, #0x24]
	str r5, [r4]
	mov r0, #0x88
	str r0, [r4, #0xc]
	ldr r0, _021EF39C ; =ov96_021EF23C
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	ldr r0, _021EF3A0 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r0, _021EF3A4 ; =0x00007FFF
	bl sub_0200FC20
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021EF386
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
_021EF386:
	add r0, r5, #0
	bl ov96_021EF2AC
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EF390: .word FS_OVERLAY_ID(OVY_98)
_021EF394: .word 0xFFFFE0FF
_021EF398: .word 0x04001000
_021EF39C: .word ov96_021EF23C
_021EF3A0: .word gSystem + 0x60
_021EF3A4: .word 0x00007FFF
	thumb_func_end ov96_021EF2C0

	thumb_func_start ov96_021EF3A8
ov96_021EF3A8: ; 0x021EF3A8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r1, #1
	ldr r2, [r4, #0xc]
	mov r0, #6
	lsl r1, r1, #0xe
	bl LoadFontPal0
	ldr r0, [r4, #0x34]
	bl ov96_021EE644
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #5
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	mov r3, #4
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021EF410
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r4, pc}
_021EF410:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #9
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF3A8

	thumb_func_start ov96_021EF430
ov96_021EF430: ; 0x021EF430
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xa
	blt _021EF440
	bl GF_AssertFail
_021EF440:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	str r0, [sp, #4]
	mov r2, #6
	ldr r0, [r5, #8]
	add r1, #0x20
	lsl r3, r2, #0xc
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	add r1, #0x2a
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	add r4, #0x34
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	add r1, r4, #0
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #4
	mov r1, #0
	bl BG_SetMaskColor
	mov r0, #0
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	bl OS_WaitVBlankIntr
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #4]
	mov r1, #7
	add r2, sp, #0x10
	bl SetBgAffine
	add r0, sp, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #7
	mov r2, #3
	bl Bg_SetTextDimAndAffineParams
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF430

	thumb_func_start ov96_021EF4D0
ov96_021EF4D0: ; 0x021EF4D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xdc
	ldr r4, _021EF53C ; =ov96_0221BA44
	add r3, sp, #8
	add r7, r0, #0
	str r1, [sp]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021EF540 ; =ov96_0221BB98
	add r3, sp, #0x18
	mov r2, #0x18
_021EF4F2:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EF4F2
	ldr r0, [r4]
	ldr r4, _021EF544 ; =ov96_0221BA10
	str r0, [r3]
	mov r0, #0
	ldr r5, _021EF548 ; =ov96_0221BA18
	str r0, [sp, #4]
	add r6, sp, #0x18
_021EF508:
	ldrb r1, [r5]
	ldrb r3, [r4]
	add r0, r7, #0
	add r2, r6, #0
	bl InitBgFromTemplate
	ldrb r1, [r5]
	add r0, r7, #0
	bl BgClearTilemapBufferAndCommit
	ldrb r0, [r5]
	ldr r3, [sp]
	mov r1, #0x40
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, r0, #1
	add r6, #0x1c
	add r5, r5, #1
	str r0, [sp, #4]
	cmp r0, #7
	blt _021EF508
	add sp, #0xdc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF53C: .word ov96_0221BA44
_021EF540: .word ov96_0221BB98
_021EF544: .word ov96_0221BA10
_021EF548: .word ov96_0221BA18
	thumb_func_end ov96_021EF4D0

	thumb_func_start ov96_021EF54C
ov96_021EF54C: ; 0x021EF54C
	push {r4, lr}
	sub sp, #0x10
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #5
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #6
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021EF5CA
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #5
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
_021EF5CA:
	add r0, r4, #0
	bl ov96_021EF3A8
	ldr r0, _021EF5EC ; =0x00000135
	ldr r3, _021EF5F0 ; =ov96_0221BB38
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	mov r2, #0xc
	bl ov98_0221EABC
	str r0, [r4, #0x30]
	add r0, r4, #0
	bl ov96_021EF610
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021EF5EC: .word 0x00000135
_021EF5F0: .word ov96_0221BB38
	thumb_func_end ov96_021EF54C

	thumb_func_start ov96_021EF5F4
ov96_021EF5F4: ; 0x021EF5F4
	push {r4, lr}
	ldr r0, [r0]
	add r4, r1, #0
	bl ov96_021E5D60
	bl Save_Pokeathlon_Get
	bl sub_020319DC
	mov r1, #0x2c
	mul r1, r4
	ldrh r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF5F4

	thumb_func_start ov96_021EF610
ov96_021EF610: ; 0x021EF610
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x20
	ldrb r6, [r0]
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _021EF636
	mov r1, #5
	ldr r0, [r5, #0x30]
	add r2, r1, #0
	bl ov98_0221EEEC
_021EF636:
	mov r1, #0
	ldr r0, [r5, #0x30]
	mov r2, #0xc5
	add r3, r1, #0
	bl ov98_0221EBD8
	ldr r0, [r5, #0x30]
	mov r1, #2
	mov r2, #0xd0
	mov r3, #0
	bl ov98_0221EBD8
	mov r3, #0
	str r3, [sp]
	add r2, r6, #0
	ldr r0, [r5, #0x30]
	mov r1, #1
	add r2, #0xc6
	bl ov98_0221EC08
	mov r3, #0
	str r3, [sp]
	lsl r2, r6, #1
	add r2, r6, r2
	ldr r0, [r5, #0x30]
	mov r1, #3
	add r2, #0xd1
	bl ov98_0221EC08
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #5
	mov r2, #0xef
	add r3, r4, #0
	bl ov98_0221ECD0
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021EF69A
	mov r3, #0
	str r3, [sp]
	mov r1, #4
	str r1, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r2, #0xf0
	bl ov98_0221EBEC
_021EF69A:
	ldr r0, [r5, #0x34]
	bl ov96_021EE6A0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021EF766
	add r1, r5, #0
	add r1, #0x20
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov96_021EF5F4
	add r4, r0, #0
	ldr r0, _021EF76C ; =0x0000FFFF
	cmp r4, r0
	bne _021EF6BC
	mov r4, #0
_021EF6BC:
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EF70E
	ldr r0, [r5, #0x30]
	bl ov98_0221EEFC
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x1e
	bl _s32_div_f
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #3
	bl BufferIntegerAsString
	add r0, r4, #0
	mov r1, #0x1e
	bl _s32_div_f
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	add r2, r0, #0
	mov r0, #0
	mov r1, #1
	str r0, [sp]
	add r0, r7, #0
	add r3, r1, #0
	str r1, [sp, #4]
	bl BufferIntegerAsString
	b _021EF74E
_021EF70E:
	cmp r0, #6
	ldr r0, [r5, #0x30]
	bne _021EF744
	lsr r1, r4, #0xa
	mov r2, #2
	mov r3, #0
	bl ov98_0221EDA4
	lsr r3, r4, #0x1f
	lsl r2, r4, #0x16
	sub r2, r2, r3
	mov r1, #0x16
	ror r2, r1
	add r2, r3, r2
	add r3, r2, #0
	mov r1, #0xa
	mul r3, r1
	asr r1, r3, #9
	lsr r1, r1, #0x16
	add r1, r3, r1
	mov r2, #1
	ldr r0, [r5, #0x30]
	asr r1, r1, #0xa
	add r3, r2, #0
	bl ov98_0221EDA4
	b _021EF74E
_021EF744:
	add r1, r4, #0
	mov r2, #3
	mov r3, #0
	bl ov98_0221EDA4
_021EF74E:
	ldr r0, [r5, #0x30]
	mov r1, #6
	mov r2, #0xb0
	mov r3, #0
	bl ov98_0221EBD8
	add r6, #0xb1
	ldr r0, [r5, #0x30]
	mov r1, #7
	add r2, r6, #0
	bl ov98_0221ED3C
_021EF766:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF76C: .word 0x0000FFFF
	thumb_func_end ov96_021EF610

	thumb_func_start ov96_021EF770
ov96_021EF770: ; 0x021EF770
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x20
	ldrb r1, [r0]
	mov r2, #0xf4
	mov r3, #0
	lsl r0, r1, #1
	add r4, r1, r0
	ldr r0, [r5, #0x30]
	mov r1, #8
	add r4, #0xd2
	bl ov98_0221EBD8
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #9
	mov r2, #0xf2
	bl ov98_0221EBEC
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #0xa
	mov r2, #0xf3
	bl ov98_0221EBEC
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x30]
	mov r1, #0xb
	add r2, r4, #0
	bl ov98_0221EC08
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF770

	thumb_func_start ov96_021EF7C4
ov96_021EF7C4: ; 0x021EF7C4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x20
	ldrb r1, [r0]
	mov r2, #0xf5
	mov r3, #0
	lsl r0, r1, #1
	add r4, r1, r0
	ldr r0, [r5, #0x30]
	mov r1, #8
	add r4, #0xd3
	bl ov98_0221EBD8
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #9
	mov r2, #0xf1
	bl ov98_0221EBEC
	mov r3, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #0xa
	mov r2, #0xf3
	bl ov98_0221EBEC
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x30]
	mov r1, #0xb
	add r2, r4, #0
	bl ov98_0221EC08
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF7C4

	thumb_func_start ov96_021EF818
ov96_021EF818: ; 0x021EF818
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r3, _021EF8B4 ; =ov96_0221BA68
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021EF8B8 ; =ov96_0221BAA0
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021EF8BC ; =ov96_0221BA54
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0xc]
	bl SpriteRenderer_Create
	str r0, [r4, #0x10]
	bl SpriteRenderer_CreateGfxHandler
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	add r1, sp, #0x14
	add r2, sp, #0
	mov r3, #0x20
	bl sub_0200CF70
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	mov r2, #4
	bl sub_0200CFF4
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, sp, #0x34
	bl SpriteRenderer_Init2DGfxResManagersFromCountsArray
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #0x10]
	bl SpriteRenderer_GetG2dRendererPtr
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	add r0, r4, #0
	bl ov96_021EF8C0
	add r0, r4, #0
	bl ov96_021EF99C
	add sp, #0x4c
	pop {r3, r4, pc}
	.balign 4, 0
_021EF8B4: .word ov96_0221BA68
_021EF8B8: .word ov96_0221BAA0
_021EF8BC: .word ov96_0221BA54
	thumb_func_end ov96_021EF818

	thumb_func_start ov96_021EF8C0
ov96_021EF8C0: ; 0x021EF8C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #0x14]
	ldr r6, [r5, #0x10]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl SpriteRenderer_LoadPlttResObjFromOpenNarc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl SpriteRenderer_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #2
	bl SpriteRenderer_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #3
	bl SpriteRenderer_LoadAnimResObjFromOpenNarc
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF8C0

	thumb_func_start ov96_021EF924
ov96_021EF924: ; 0x021EF924
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0200DCA0
	cmp r0, #0
	bne _021EF958
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	blo _021EF952
	add r0, r4, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
_021EF952:
	add r0, r4, #0
	bl ov96_021EFA04
_021EF958:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EF924

	thumb_func_start ov96_021EF95C
ov96_021EF95C: ; 0x021EF95C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021EF988 ; =ov96_0221BA80
	add r5, r0, #0
	lsl r0, r1, #4
	mov r6, #0
	add r4, r2, r0
	mov r7, #2
_021EF96A:
	mov r1, #0
	ldrsh r1, [r4, r1]
	mov r3, #2
	ldrsh r2, [r4, r7]
	ldr r0, [r5, #0x38]
	lsl r3, r3, #0x14
	bl UnkImageStruct_SetSpritePositionXY_CustomScreenYOffset
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _021EF96A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF988: .word ov96_0221BA80
	thumb_func_end ov96_021EF95C

	thumb_func_start ov96_021EF98C
ov96_021EF98C: ; 0x021EF98C
	add r1, r0, #0
	ldr r3, _021EF998 ; =ov96_021EFA04
	mov r2, #0
	add r1, #0x21
	strb r2, [r1]
	bx r3
	.balign 4, 0
_021EF998: .word ov96_021EFA04
	thumb_func_end ov96_021EF98C

	thumb_func_start ov96_021EF99C
ov96_021EF99C: ; 0x021EF99C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r5, _021EF9FC ; =ov96_0221DA80
	mov r0, #0
	ldr r4, _021EFA00 ; =ov96_0221BA80
	ldr r6, [sp]
	str r0, [sp, #4]
	add r7, r5, #0
_021EF9AE:
	ldr r0, [sp]
	ldr r1, [sp]
	mov r2, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r0, #0x10]
	ldr r1, [r1, #0x14]
	mov r3, #2
	strh r2, [r5]
	mov r2, #2
	ldrsh r2, [r4, r2]
	lsl r3, r3, #0x14
	strh r2, [r5, #2]
	add r2, r7, #0
	bl SpriteRenderer_LoadResourcesAndCreateSprite_CustomBottomScreenOffset
	mov r1, #1
	str r0, [r6, #0x38]
	bl UnkImageStruct_SetSpriteAnimActiveFlag
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r0, r0, #1
	add r5, #0x34
	add r7, #0x34
	add r6, r6, #4
	str r0, [sp, #4]
	cmp r0, #4
	blt _021EF9AE
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0x40]
	bl UnkImageStruct_SetSpriteAnimActiveFlag
	ldr r0, [sp]
	bl ov96_021EFA04
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF9FC: .word ov96_0221DA80
_021EFA00: .word ov96_0221BA80
	thumb_func_end ov96_021EF99C

	thumb_func_start ov96_021EFA04
ov96_021EFA04: ; 0x021EFA04
	push {r4, lr}
	add r2, r0, #0
	add r1, r2, #0
	add r1, #0x20
	ldrb r1, [r1]
	ldr r0, [r2, #0x40]
	add r2, #0x21
	lsl r4, r1, #3
	ldrb r1, [r2]
	ldr r3, _021EFA24 ; =ov96_0221BAE8
	lsl r2, r1, #2
	add r1, r3, r4
	ldr r1, [r2, r1]
	bl UnkImageStruct_SetSpriteAnimSeqNo
	pop {r4, pc}
	.balign 4, 0
_021EFA24: .word ov96_0221BAE8
	thumb_func_end ov96_021EFA04

	thumb_func_start ov96_021EFA28
ov96_021EFA28: ; 0x021EFA28
	push {r3, lr}
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	pop {r3, pc}
	thumb_func_end ov96_021EFA28

	thumb_func_start ov96_021EFA3C
ov96_021EFA3C: ; 0x021EFA3C
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	mov r4, #0
	cmp r0, #0
	bne _021EFA4C
	mov r4, #0x20
_021EFA4C:
	ldr r1, _021EFAC8 ; =0x00000125
	mov r0, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	bl OS_WaitVBlankIntr
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #7
	add r2, sp, #0xc
	mov r3, #0x80
	bl SetBgAffine
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #6
	add r2, sp, #0xc
	mov r3, #0x80
	bl SetBgAffine
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #7
	mov r2, #5
	add r3, r4, #0
	bl Bg_SetTextDimAndAffineParams
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #6
	mov r2, #5
	add r3, r4, #0
	bl Bg_SetTextDimAndAffineParams
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0
	str r0, [r5, #0x1c]
	mov r0, #1
	str r0, [r5, #0x2c]
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
_021EFAC8: .word 0x00000125
	thumb_func_end ov96_021EFA3C

	thumb_func_start ov96_021EFACC
ov96_021EFACC: ; 0x021EFACC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	mov r1, #0xe
	add r0, r0, #1
	str r0, [r4, #0x1c]
	lsl r0, r0, #0xc
	bl _s32_div_f
	mov r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	bl OS_WaitVBlankIntr
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, #7
	add r2, sp, #4
	mov r3, #0x80
	bl SetBgAffine
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, #6
	add r2, sp, #4
	mov r3, #0x80
	bl SetBgAffine
	ldr r0, [r4, #0x1c]
	cmp r0, #0xe
	blt _021EFB1A
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x2c]
_021EFB1A:
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EFACC

	thumb_func_start ov96_021EFB20
ov96_021EFB20: ; 0x021EFB20
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldr r3, _021EFB4C ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	str r5, [r4, #0x18]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021EFB4C: .word 0x00007FFF
	thumb_func_end ov96_021EFB20

	thumb_func_start ov96_021EFB50
ov96_021EFB50: ; 0x021EFB50
	ldr r3, _021EFB54 ; =IsPaletteFadeFinished
	bx r3
	.balign 4, 0
_021EFB54: .word IsPaletteFadeFinished
	thumb_func_end ov96_021EFB50

	thumb_func_start ov96_021EFB58
ov96_021EFB58: ; 0x021EFB58
	push {r3, r4, r5, lr}
	sub sp, #0x20
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #6
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add r0, r5, #0
	bl ov96_021EF3A8
	add r0, r5, #0
	mov r1, #0
	bl ov96_021EF95C
	ldr r0, [r5, #0x38]
	mov r1, #1
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [r5, #0x40]
	mov r1, #1
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [r5, #0x44]
	mov r1, #1
	bl UnkImageStruct_SetSpriteVisibleFlag
	mov r0, #5
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #4
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #1
	add r1, r0, #0
	bl ToggleBgLayer
	add r0, r5, #0
	bl ov96_021EF610
	ldr r0, [r5, #0x28]
	mov r4, #0
	cmp r0, #0
	bne _021EFBD4
	sub r4, #0x20
_021EFBD4:
	mov r1, #1
	lsl r1, r1, #0xc
	mov r0, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	bl OS_WaitVBlankIntr
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #4]
	mov r1, #7
	add r2, sp, #0x10
	bl SetBgAffine
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #7
	mov r2, #3
	add r3, r4, #0
	bl Bg_SetTextDimAndAffineParams
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021EFB58

	thumb_func_start ov96_021EFC10
ov96_021EFC10: ; 0x021EFC10
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x20
	ldrb r1, [r1]
	bl ov96_021EF430
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #7
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add r0, r4, #0
	mov r1, #1
	bl ov96_021EF95C
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl UnkImageStruct_SetSpriteVisibleFlag
	mov r0, #5
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #4
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #1
	mov r1, #0
	bl ToggleBgLayer
	add r0, r4, #0
	bl ov96_021EF770
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EFC10

	thumb_func_start ov96_021EFC8C
ov96_021EFC8C: ; 0x021EFC8C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x20
	ldrb r1, [r1]
	bl ov96_021EF430
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #7
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add r0, r4, #0
	mov r1, #1
	bl ov96_021EF95C
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl UnkImageStruct_SetSpriteVisibleFlag
	mov r0, #5
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #4
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #1
	mov r1, #0
	bl ToggleBgLayer
	add r0, r4, #0
	bl ov96_021EF7C4
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021EFC8C

	thumb_func_start ov96_021EFD08
ov96_021EFD08: ; 0x021EFD08
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #4]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	bl ov96_021EF98C
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _021EFD5A
	cmp r0, #2
	beq _021EFD78
	cmp r0, #3
	beq _021EFD80
	b _021EFD88
_021EFD5A:
	add r0, r4, #0
	bl ov96_021EFB58
	mov r0, #4
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	ldr r3, _021EFD98 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	b _021EFD8C
_021EFD78:
	add r0, r4, #0
	bl ov96_021EFC10
	b _021EFD8C
_021EFD80:
	add r0, r4, #0
	bl ov96_021EFC8C
	b _021EFD8C
_021EFD88:
	bl GF_AssertFail
_021EFD8C:
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl ov96_021E5FC8
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021EFD98: .word 0x00007FFF
	thumb_func_end ov96_021EFD08

	thumb_func_start ov96_021EFD9C
ov96_021EFD9C: ; 0x021EFD9C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	bl ov96_021E5DC4
	add r5, r0, #0
	bl ov96_021EF924
	ldrb r0, [r4]
	cmp r0, #5
	bhi _021EFEA8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EFDC0: ; jump table
	.short _021EFDCC - _021EFDC0 - 2 ; case 0
	.short _021EFDDC - _021EFDC0 - 2 ; case 1
	.short _021EFE04 - _021EFDC0 - 2 ; case 2
	.short _021EFE1E - _021EFDC0 - 2 ; case 3
	.short _021EFE70 - _021EFDC0 - 2 ; case 4
	.short _021EFE94 - _021EFDC0 - 2 ; case 5
_021EFDCC:
	mov r0, #0x47
	lsl r0, r0, #4
	bl PlayBGM
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFEAC
_021EFDDC:
	mov r0, #0
	add r1, r0, #0
	bl ov96_021EF280
	cmp r0, #0
	beq _021EFEAC
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r3, _021EFEB4 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFEAC
_021EFE04:
	mov r0, #0
	mov r1, #1
	bl ov96_021EF280
	cmp r0, #0
	beq _021EFEAC
	add r0, r5, #0
	bl ov96_021EFA3C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFEAC
_021EFE1E:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021EFE2C
	add r0, r5, #0
	bl ov96_021EFACC
	b _021EFEAC
_021EFE2C:
	mov r0, #0
	mov r1, #3
	bl ov96_021EF280
	cmp r0, #0
	beq _021EFEAC
	mov r0, #0xc
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r3, _021EFEB4 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5, #0x40]
	mov r1, #1
	bl UnkImageStruct_SetSpriteAnimActiveFlag
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021EFE60
	mov r1, #1
	b _021EFE62
_021EFE60:
	mov r1, #0
_021EFE62:
	ldr r0, [r5, #0x44]
	bl UnkImageStruct_SetSpriteVisibleFlag
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFEAC
_021EFE70:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EFEAC
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021EFE8A
	mov r0, #0
	str r0, [r5, #0x1c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFEAC
_021EFE8A:
	add r0, r6, #0
	mov r1, #1
	bl ov96_021E5FC8
	b _021EFEAC
_021EFE94:
	ldr r0, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r5, #0x1c]
	cmp r0, #0xb4
	blt _021EFEAC
	add r0, r6, #0
	mov r1, #4
	bl ov96_021E5FC8
	b _021EFEAC
_021EFEA8:
	bl GF_AssertFail
_021EFEAC:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021EFEB4: .word 0x00007FFF
	thumb_func_end ov96_021EFD9C

	thumb_func_start ov96_021EFEB8
ov96_021EFEB8: ; 0x021EFEB8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	bl ov96_021EF924
	ldrb r0, [r4]
	cmp r0, #0
	beq _021EFED2
	cmp r0, #1
	beq _021EFF18
	b _021EFF2A
_021EFED2:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EFF2E
	ldr r0, _021EFF34 ; =ov96_0221BA20
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021EFF2E
	cmp r0, #0
	beq _021EFEF2
	cmp r0, #1
	beq _021EFF02
	b _021EFF0C
_021EFEF2:
	ldr r0, _021EFF38 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #2
	bl ov96_021EFB20
	b _021EFF10
_021EFF02:
	add r0, r5, #0
	mov r1, #4
	bl ov96_021E5FC8
	b _021EFF10
_021EFF0C:
	bl GF_AssertFail
_021EFF10:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFF2E
_021EFF18:
	add r0, r5, #0
	bl ov96_021EFB50
	cmp r0, #0
	beq _021EFF2E
	add r0, r5, #0
	bl ov96_021EFD08
	b _021EFF2E
_021EFF2A:
	bl GF_AssertFail
_021EFF2E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021EFF34: .word ov96_0221BA20
_021EFF38: .word 0x000005DC
	thumb_func_end ov96_021EFEB8

	thumb_func_start ov96_021EFF3C
ov96_021EFF3C: ; 0x021EFF3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	add r6, r0, #0
	bl ov96_021EF924
	ldrb r0, [r4]
	cmp r0, #0
	beq _021EFF5E
	cmp r0, #1
	beq _021EFF7A
	cmp r0, #2
	beq _021EFFBC
	b _021EFFCE
_021EFF5E:
	mov r0, #4
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r6, #0xc]
	ldr r3, _021EFFD8 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_021EFF7A:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EFFD2
	ldr r0, _021EFFDC ; =ov96_0221BA2C
	bl TouchscreenHitbox_FindRectAtTouchNew
	cmp r0, #0
	bne _021EFFA2
	ldr r0, _021EFFE0 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #3
	bl ov96_021EFB20
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFFD2
_021EFFA2:
	cmp r0, #1
	bne _021EFFD2
	ldr r0, _021EFFE0 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	bl ov96_021EFB20
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EFFD2
_021EFFBC:
	add r0, r5, #0
	bl ov96_021EFB50
	cmp r0, #0
	beq _021EFFD2
	add r0, r5, #0
	bl ov96_021EFD08
	b _021EFFD2
_021EFFCE:
	bl GF_AssertFail
_021EFFD2:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EFFD8: .word 0x00007FFF
_021EFFDC: .word ov96_0221BA2C
_021EFFE0: .word 0x000005DC
	thumb_func_end ov96_021EFF3C

	thumb_func_start ov96_021EFFE4
ov96_021EFFE4: ; 0x021EFFE4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	add r6, r0, #0
	bl ov96_021EF924
	ldrb r0, [r4]
	cmp r0, #0
	beq _021F0006
	cmp r0, #1
	beq _021F0022
	cmp r0, #2
	beq _021F0064
	b _021F0076
_021F0006:
	mov r0, #4
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r6, #0xc]
	ldr r3, _021F0080 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_021F0022:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F007A
	ldr r0, _021F0084 ; =ov96_0221BA38
	bl TouchscreenHitbox_FindRectAtTouchNew
	cmp r0, #0
	bne _021F004A
	ldr r0, _021F0088 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #2
	bl ov96_021EFB20
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F007A
_021F004A:
	cmp r0, #1
	bne _021F007A
	ldr r0, _021F0088 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	bl ov96_021EFB20
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F007A
_021F0064:
	add r0, r5, #0
	bl ov96_021EFB50
	cmp r0, #0
	beq _021F007A
	add r0, r5, #0
	bl ov96_021EFD08
	b _021F007A
_021F0076:
	bl GF_AssertFail
_021F007A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021F0080: .word 0x00007FFF
_021F0084: .word ov96_0221BA38
_021F0088: .word 0x000005DC
	thumb_func_end ov96_021EFFE4

	thumb_func_start ov96_021F008C
ov96_021F008C: ; 0x021F008C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	bl ov96_021EF924
	ldrb r0, [r5]
	cmp r0, #0
	beq _021F00AA
	cmp r0, #1
	beq _021F00EA
	b _021F00F8
_021F00AA:
	add r0, r6, #0
	bl ov96_021E5EE0
	cmp r0, #0
	bne _021F00BC
	ldr r0, _021F0100 ; =0x000008E4
	bl PlaySE
	b _021F00C2
_021F00BC:
	ldr r0, _021F0104 ; =0x000008D6
	bl PlaySE
_021F00C2:
	mov r0, #0
	mov r1, #0x18
	bl GF_SndStartFadeOutBGM
	mov r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldr r3, _021F0108 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021F00F8
_021F00EA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F00F8
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021F00F8:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021F0100: .word 0x000008E4
_021F0104: .word 0x000008D6
_021F0108: .word 0x00007FFF
	thumb_func_end ov96_021F008C

	thumb_func_start ov96_021F010C
ov96_021F010C: ; 0x021F010C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1f8
	add r7, r0, #0
	bl ov96_021E5DC4
	add r6, r0, #0
	add r0, r7, #0
	bl ov96_021E5DD4
	cmp r0, #5
	bls _021F0124
	b _021F08C4
_021F0124:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F0130: ; jump table
	.short _021F013C - _021F0130 - 2 ; case 0
	.short _021F0216 - _021F0130 - 2 ; case 1
	.short _021F027A - _021F0130 - 2 ; case 2
	.short _021F04B0 - _021F0130 - 2 ; case 3
	.short _021F0588 - _021F0130 - 2 ; case 4
	.short _021F08BE - _021F0130 - 2 ; case 5
_021F013C:
	mov r2, #5
	mov r0, #0x5c
	mov r1, #0x8c
	lsl r2, r2, #0x10
	bl CreateHeap
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021F0484 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021F0488 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021F0A5C
	ldr r1, _021F048C ; =0x000007F4
	add r0, r7, #0
	bl ov96_021E5D94
	ldr r2, _021F048C ; =0x000007F4
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x8c
	mov r1, #0x28
	bl AllocFromHeap
	mov r1, #0x7f
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	mov r2, #0x28
	bl MI_CpuFill8
	mov r0, #0x8c
	bl BgConfig_Alloc
	str r0, [r4]
	add r0, r7, #0
	mov r1, #8
	bl ov96_021E6670
	mov r0, #0x68
	str r0, [sp, #0xe4]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0xe8]
	lsr r0, r0, #4
	mov r2, #0x8c
	str r0, [sp, #0xec]
	str r2, [sp, #0xf0]
	mov r0, #0x10
	str r0, [sp]
	ldr r3, _021F0490 ; =0x00300010
	add r0, sp, #0xe4
	mov r1, #0x16
	bl ov96_021E92B0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x8c
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r1, #0x8c
	str r1, [r4, #0x14]
	mov r0, #4
	bl FontID_Alloc
	ldr r0, [r4]
	bl ov96_021F0BD4
	add r0, r4, #0
	bl ov96_021F2EC8
	ldr r0, _021F0494 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r7, #0
	bl ov96_021E5DEC
	b _021F08C4
_021F0216:
	ldr r0, [r6, #0x14]
	ldr r1, [r6]
	add r2, r7, #0
	bl ov96_021F3BF0
	ldr r1, _021F0498 ; =0x00000774
	str r0, [r6, r1]
	add r0, r7, #0
	bl ov96_021E5D34
	add r4, r0, #0
	add r0, r7, #0
	bl ov96_021E5EE8
	add r2, r0, #0
	mov r1, #4
	ldr r0, [r6, #0x14]
	sub r1, r1, r4
	bl ov96_021F3390
	mov r1, #0x77
	lsl r1, r1, #4
	str r0, [r6, r1]
	ldr r0, [r6, #0x14]
	ldr r1, _021F049C ; =0x00000AA7
	mov r2, #1
	bl ov96_021E9A78
	ldr r1, _021F04A0 ; =0x00000768
	str r0, [r6, r1]
	ldr r0, [r6, #0x14]
	bl ov96_021F30A4
	ldr r1, _021F04A4 ; =0x0000072C
	str r0, [r6, r1]
	add r0, r1, #0
	ldr r2, [r6, r1]
	add r0, #0xa0
	add r1, #0x48
	str r2, [r6, r0]
	ldr r0, [r6, r1]
	bl ov96_021F3E58
	add r0, r7, #0
	bl ov96_021E64B8
	add r0, r7, #0
	bl ov96_021E5DEC
	b _021F08C4
_021F027A:
	ldr r4, _021F04A8 ; =ov96_0221BC70
	add r3, sp, #0xd8
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r6, #0x14]
	bl ov96_021EB180
	mov r1, #0
	str r0, [r6, #0x18]
	mov r0, #2
	lsl r0, r0, #0x14
	str r0, [sp]
	ldr r0, [r6, #0x18]
	add r2, r1, #0
	add r3, r1, #0
	bl ov96_021EB5C8
	ldr r0, [r6, #0x18]
	bl ov96_021EB5E8
	str r0, [sp]
	ldr r3, _021F04A0 ; =0x00000768
	ldr r0, [r6, #0x14]
	ldr r3, [r6, r3]
	mov r1, #0xc
	mov r2, #5
	bl ov96_021EA854
	ldr r1, _021F04AC ; =0x0000076C
	mov r2, #0x65
	str r0, [r6, r1]
	ldr r0, [r6, #0x18]
	mov r1, #0
	bl ov96_021EB29C
	ldr r0, [r6, #0x18]
	mov r1, #1
	mov r2, #0x68
	bl ov96_021EB29C
	ldr r0, [r6, #0x18]
	mov r1, #2
	mov r2, #0x66
	bl ov96_021EB29C
	ldr r0, [r6, #0x18]
	mov r1, #3
	mov r2, #0x67
	bl ov96_021EB29C
	ldr r0, [r6, #0x18]
	mov r1, #4
	mov r2, #0x69
	bl ov96_021EB29C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #3
	mov r3, #0x65
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0
	mov r3, #0x65
	bl ov96_021EB2F4
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB334
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #1
	mov r3, #0x65
	bl ov96_021EB36C
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1c
	mov r3, #0x68
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x19
	mov r3, #0x68
	bl ov96_021EB2F4
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1b
	mov r3, #0x68
	bl ov96_021EB334
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1a
	mov r3, #0x68
	bl ov96_021EB36C
	mov r0, #2
	str r0, [sp]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x20
	mov r3, #0x69
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1d
	mov r3, #0x69
	bl ov96_021EB2F4
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1f
	mov r3, #0x69
	bl ov96_021EB334
	ldr r0, [r6, #0x18]
	mov r1, #0xa7
	mov r2, #0x1e
	mov r3, #0x69
	bl ov96_021EB36C
	ldr r1, _021F0498 ; =0x00000774
	ldr r0, [r6, #0x18]
	ldr r1, [r6, r1]
	bl ov96_021F3E60
	ldr r0, [r6, #0x18]
	bl ov96_021EB3A4
	mov r4, #0
	mov r5, #2
_021F03B4:
	str r5, [sp]
	ldr r0, [r6, #0x18]
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x65
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #8
	blt _021F03B4
	mov r4, #0
	mov r5, #4
_021F03CC:
	str r5, [sp]
	mov r1, #1
	ldr r0, [r6, #0x18]
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #7
	str r0, [sp]
	mov r1, #1
	ldr r0, [r6, #0x18]
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F03CC
	ldr r0, _021F04A4 ; =0x0000072C
	ldr r1, [r6, #0x18]
	ldr r0, [r6, r0]
	bl ov96_021F30C4
	mov r4, #0
_021F03FC:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r0, r5
	add r2, r6, r0
	mov r0, #0x90
	mul r0, r1
	add r5, r2, r0
	ldr r0, [r6, #0x18]
	mov r1, #0x68
	mov r2, #4
	bl ov96_021EB4F4
	str r0, [r5, #0x24]
	bl ov96_021EB5B8
	mov r1, #2
	bl Sprite_SetDrawPriority
	ldr r0, [r6, #0x18]
	mov r1, #0x68
	mov r2, #7
	bl ov96_021EB4F4
	str r0, [r5, #0x28]
	bl ov96_021EB5B8
	mov r1, #4
	bl Sprite_SetDrawPriority
	add r4, r4, #1
	cmp r4, #0xc
	blt _021F03FC
	ldr r2, _021F04A0 ; =0x00000768
	ldr r3, [r6, #0x18]
	ldr r2, [r6, r2]
	add r0, r7, #0
	mov r1, #0
	bl ov96_021E6290
	ldr r0, [r0]
	mov r1, #1
	str r0, [r6, #0x1c]
	bl Sprite_SetDrawPriority
	ldr r1, _021F0498 ; =0x00000774
	ldr r0, [r6, #0x18]
	ldr r1, [r6, r1]
	bl ov96_021F3EC0
	ldr r1, _021F0498 ; =0x00000774
	ldr r0, [r6, #0x18]
	ldr r1, [r6, r1]
	bl ov96_021F3F80
	add r0, r7, #0
	bl ov96_021E5DEC
	b _021F08C4
	nop
_021F0484: .word 0xFFFFE0FF
_021F0488: .word 0x04001000
_021F048C: .word 0x000007F4
_021F0490: .word 0x00300010
_021F0494: .word gSystem + 0x60
_021F0498: .word 0x00000774
_021F049C: .word 0x00000AA7
_021F04A0: .word 0x00000768
_021F04A4: .word 0x0000072C
_021F04A8: .word ov96_0221BC70
_021F04AC: .word 0x0000076C
_021F04B0:
	add r0, sp, #0x138
	str r0, [sp, #0x28]
	add r0, sp, #0xf4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov r4, #0
	str r0, [sp, #0x20]
	add r0, r6, #0
	str r0, [sp, #0x4c]
	add r0, #0x20
	str r0, [sp, #0x4c]
_021F04C6:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x48]
	ldr r3, [sp, #0x28]
	add r0, r7, #0
	add r2, r5, #0
	bl ov96_021E6168
	ldr r1, [sp, #0x48]
	add r0, r7, #0
	add r2, r5, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	ldr r1, [sp, #0x24]
	str r0, [r1, #0x14]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r5, #0
	mul r2, r0
	ldr r0, [sp, #0x4c]
	add r5, r0, r2
	mov r0, #0x90
	mul r0, r1
	str r0, [sp, #0x50]
	ldr r2, [sp, #0x50]
	ldr r0, [sp, #0x20]
	add r2, r5, r2
	ldr r1, [r6, #0x14]
	add r2, #0x48
	bl ov96_021E8BB4
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x50]
	add r0, r5, r0
	add r1, r5, r1
	add r0, #0x48
	add r1, #0x68
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [sp, #0x50]
	mov r1, #0x10
	add r0, r5, r0
	add r0, #0x68
	bl TintPalette_GrayScale
	ldr r0, [sp, #0x28]
	add r4, r4, #1
	add r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	cmp r4, #0xc
	blt _021F04C6
	mov r0, #1
	mov r1, #0
	str r1, [sp, #0xf4]
	str r0, [sp, #0xf8]
	str r1, [sp, #0xfc]
	str r0, [sp, #0x100]
	str r0, [sp, #0x104]
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F08CC ; =0x0000076C
	mov r1, #0xc
	ldr r0, [r6, r0]
	add r2, sp, #0x138
	add r3, sp, #0xf4
	bl ov96_021EA8A8
	add r0, r7, #0
	bl ov96_021E5DEC
	b _021F08C4
_021F0588:
	ldr r0, _021F08CC ; =0x0000076C
	ldr r0, [r6, r0]
	bl ov96_021EAA00
	cmp r0, #0
	bne _021F0596
	b _021F08C4
_021F0596:
	add r0, r7, #0
	bl ov96_021E5F24
	str r0, [sp, #0x40]
	ldr r0, [r6]
	bl ov96_021E6030
	add r0, r7, #0
	mov r1, #1
	bl ov96_021E5DFC
	add r0, sp, #0xb4
	mov r1, #0xaa
	mov r2, #0xb
	bl ReadWholeNarcMemberByIdPair
	mov r0, #0
	str r0, [sp, #0x44]
	add r0, r6, #0
	str r0, [sp, #0x58]
	add r0, #0x20
	str r0, [sp, #0x58]
_021F05C2:
	ldr r0, _021F08CC ; =0x0000076C
	ldr r1, [sp, #0x44]
	ldr r0, [r6, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	mov r1, #1
	add r4, r0, #0
	bl ov96_021EAB38
	ldr r0, [sp, #0x44]
	mov r1, #3
	bl _s32_div_f
	add r5, r0, #0
	ldr r0, [sp, #0x44]
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	add r0, r7, #0
	add r1, r5, #0
	bl ov96_021E60C0
	bl ov96_021E6138
	lsl r1, r0, #3
	add r0, sp, #0xb4
	add r2, r0, r1
	add r1, r2, #0
	sub r1, #8
	sub r2, r2, #4
	ldr r1, [r1]
	ldr r2, [r2]
	add r0, r4, #0
	bl ov96_021EAF70
	ldr r0, _021F08CC ; =0x0000076C
	ldr r1, [sp, #0x44]
	ldr r0, [r6, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r4, r0, #0
	bl ov96_021EAA20
	str r0, [sp, #0x54]
	mov r1, #0
	add r0, sp, #0xa8
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #0x44]
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x44]
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	mov r0, #0x1b
	add r2, r1, #0
	lsl r0, r0, #4
	mul r2, r0
	ldr r0, [sp, #0x58]
	mov r1, #0x90
	add r0, r0, r2
	ldr r2, [sp, #0x14]
	mul r1, r2
	add r5, r0, r1
	str r4, [r0, r1]
	mov r0, #1
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x54]
	bl ov96_021E90FC
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x54]
	bl ov96_021E8BB0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021F068E
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x5c]
	mov r1, #0x40
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0xac]
	b _021F06A8
_021F068E:
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x5c]
	mov r1, #0x20
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0xac]
_021F06A8:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	add r2, r1, #0
	mov r0, #0xc
	mul r2, r0
	ldr r0, _021F08D0 ; =ov96_0221BDD4
	ldr r1, [sp, #0x18]
	add r0, r0, r2
	ldr r2, [sp, #0x18]
	add r1, r0, r1
	ldrh r0, [r0, r2]
	str r0, [sp, #0x3c]
	ldrh r0, [r1, #2]
	add r1, r5, #0
	add r1, #0x40
	str r0, [sp, #0x38]
	mov r0, #2
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #2
	bl ov96_021EAC0C
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	bl ov96_021EAF94
	bl ov96_021E6104
	add r1, r0, #0
	add r0, r4, #0
	bl ov96_021EAF6C
	add r0, sp, #0x64
	str r0, [sp]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	add r3, sp, #0x68
	bl ov96_021EB0A4
	ldr r0, [sp, #0x68]
	lsl r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x64]
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x68]
	lsl r0, r0, #0xc
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x64]
	lsl r0, r0, #0xc
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x68]
	lsl r0, r0, #0xc
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x64]
	lsl r0, r0, #0xc
	str r0, [r5, #0x20]
	add r0, r7, #0
	bl ov96_021E5F24
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bne _021F0738
	add r0, r4, #0
	mov r1, #5
	bl ov96_021EABA8
	b _021F0740
_021F0738:
	add r0, r4, #0
	mov r1, #6
	bl ov96_021EABA8
_021F0740:
	add r0, r4, #0
	add r1, sp, #0xa8
	bl ov96_021EABF4
	add r0, r7, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021F0766
	add r0, r7, #0
	bl ov96_021E5F54
	add r0, #0x28
	bl ov96_021E8A20
	add r1, r0, #0
	add r0, r6, #0
	bl ov96_021F0F04
_021F0766:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bne _021F079E
	ldr r0, [sp, #0x18]
	add r1, sp, #0xcc
	add r0, r1, r0
	add r2, r1, #0
	ldr r3, [sp, #0x68]
	ldr r1, [sp, #0x18]
	strh r3, [r2, r1]
	ldr r1, [sp, #0x64]
	strh r1, [r0, #2]
	ldr r0, [r6, #0x18]
	bl ov96_021EB5E8
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r2, _021F08D4 ; =0x00000768
	add r0, r7, #0
	ldr r2, [r6, r2]
	add r1, r4, #0
	bl ov96_021E64F8
	mov r1, #3
	bl Sprite_SetDrawPriority
_021F079E:
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	cmp r0, #0xc
	bge _021F07AA
	b _021F05C2
_021F07AA:
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, sp, #0xcc
	str r0, [sp, #8]
	ldr r2, _021F08D4 ; =0x00000768
	ldr r3, [r6, #0x18]
	ldr r2, [r6, r2]
	add r0, r7, #0
	mov r1, #0
	bl ov96_021E634C
	add r0, sp, #0x6c
	mov r1, #0xaa
	mov r2, #1
	bl ReadWholeNarcMemberByIdPair
	mov r0, #0
	str r0, [sp, #0x34]
	add r0, r6, #0
	str r0, [sp, #0x30]
	add r0, #0x20
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x2c]
_021F07DE:
	ldr r0, [sp, #0x34]
	mov r1, #0x72
	add r2, r6, r0
	lsl r1, r1, #4
	mov r0, #0xc
	strb r0, [r2, r1]
	ldr r0, [sp, #0x34]
	ldr r5, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r4, #0
	str r0, [sp, #0x60]
_021F07F6:
	lsl r3, r4, #0x18
	ldr r2, [sp, #0x60]
	add r0, r7, #0
	add r1, sp, #0x6c
	lsr r3, r3, #0x18
	str r5, [sp]
	bl ov96_021F2B24
	add r0, r5, #0
	add r0, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x2c]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0x77
	add r2, #0x8a
	lsl r0, r0, #4
	add r1, r4, r1
	lsl r1, r1, #0x18
	add r3, r5, #0
	ldrh r2, [r2]
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	add r3, #0x8e
	bl ov96_021F33E0
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #3
	blt _021F07F6
	mov r1, #0x1b
	ldr r0, [sp, #0x30]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, r0, #3
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #4
	blt _021F07DE
	mov r1, #0x73
	lsl r1, r1, #4
	mov r2, #0
	strh r2, [r6, r1]
	add r0, r1, #2
	strh r2, [r6, r0]
	add r0, r1, #0
	mov r2, #0xc
	add r0, #0xa4
	str r2, [r6, r0]
	sub r0, r1, #4
	ldrh r1, [r6, r1]
	ldr r0, [r6, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021F31F0
	mov r0, #4
	str r0, [sp]
	ldr r0, _021F08D8 ; =0x04000050
	mov r1, #0
	mov r2, #1
	mov r3, #0xc
	bl G2x_SetBlendAlpha_
	ldr r0, _021F08DC ; =0x0000074B
	mov r1, #0xc
	strb r1, [r6, r0]
	add r0, r6, #0
	bl ov96_021F0D60
	ldr r0, _021F08E0 ; =0x00000774
	ldr r0, [r6, r0]
	bl ov96_021F424C
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	bl sub_0203A994
	add r0, r7, #0
	bl ov96_021E5DEC
	b _021F08C4
_021F08BE:
	add sp, #0x1f8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F08C4:
	mov r0, #0
	add sp, #0x1f8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F08CC: .word 0x0000076C
_021F08D0: .word ov96_0221BDD4
_021F08D4: .word 0x00000768
_021F08D8: .word 0x04000050
_021F08DC: .word 0x0000074B
_021F08E0: .word 0x00000774
	thumb_func_end ov96_021F010C

	thumb_func_start ov96_021F08E4
ov96_021F08E4: ; 0x021F08E4
	push {r3, lr}
	bl ov96_021E5DC4
	ldr r0, [r0, #0x18]
	bl ov96_021EB5BC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov96_021F08E4

	thumb_func_start ov96_021F08F4
ov96_021F08F4: ; 0x021F08F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov96_021E5DC4
	add r0, r5, #0
	bl ov96_021E6040
	add r6, r0, #0
	bl ov96_021E9510
	mov r4, #0
	add r7, r4, #0
_021F090E:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov96_021E5FBC
	add r3, r0, #0
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _021F0958 ; =0x00000125
	add r1, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	bl ov96_021E95F8
	add r4, r4, #1
	cmp r4, #4
	blt _021F090E
	add r0, r6, #0
	mov r1, #1
	bl ov96_021E93B4
	add r0, r6, #0
	mov r1, #2
	bl ov96_0221A56C
	add r0, r6, #0
	bl ov96_021E952C
	add r0, r6, #0
	mov r1, #2
	bl ov96_021E9570
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0958: .word 0x00000125
	thumb_func_end ov96_021F08F4

	thumb_func_start ov96_021F095C
ov96_021F095C: ; 0x021F095C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	bl sub_0203A914
	add r0, r5, #0
	bl ov96_021E6550
	ldr r0, _021F0A40 ; =0x0000072C
	ldr r0, [r4, r0]
	bl ov96_021F30BC
	ldr r0, _021F0A44 ; =0x00000734
	ldr r0, [r4, r0]
	bl FreeToHeap
	ldr r0, [r4]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #3
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #6
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #7
	bl FreeBgTilemapBuffer
	add r0, r4, #4
	bl RemoveWindow
	ldr r0, [r4]
	bl FreeToHeap
	ldr r0, [r4, #0x18]
	bl ov96_021EB21C
	ldr r0, _021F0A48 ; =0x0000076C
	ldr r0, [r4, r0]
	bl ov96_021EA894
	ldr r0, _021F0A4C ; =0x00000768
	ldr r0, [r4, r0]
	bl ov96_021E9C0C
	bl OamManager_Free
	bl sub_0202168C
	bl sub_02022608
	mov r0, #0x77
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov96_021F3424
	ldr r0, _021F0A50 ; =0x00000774
	ldr r0, [r4, r0]
	bl ov96_021F3C38
	mov r0, #4
	bl FontID_Release
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	mov r0, #0x7f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl FreeToHeap
	add r0, r5, #0
	bl ov96_021E5DAC
	ldr r0, _021F0A54 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r0, _021F0A58 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x8c
	bl DestroyHeap
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F0A40: .word 0x0000072C
_021F0A44: .word 0x00000734
_021F0A48: .word 0x0000076C
_021F0A4C: .word 0x00000768
_021F0A50: .word 0x00000774
_021F0A54: .word gSystem + 0x60
_021F0A58: .word 0x04000050
	thumb_func_end ov96_021F095C

	thumb_func_start ov96_021F0A5C
ov96_021F0A5C: ; 0x021F0A5C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021F0A78 ; =ov96_0221BDAC
	add r3, sp, #0
	mov r2, #5
_021F0A66:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F0A66
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021F0A78: .word ov96_0221BDAC
	thumb_func_end ov96_021F0A5C

	thumb_func_start ov96_021F0A7C
ov96_021F0A7C: ; 0x021F0A7C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	ldrb r1, [r4]
	cmp r1, #0
	beq _021F0A98
	cmp r1, #1
	beq _021F0AA8
	cmp r1, #2
	beq _021F0AC8
	b _021F0AD8
_021F0A98:
	add r0, r5, #0
	mov r1, #0x15
	bl ov96_021E601C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F0AD8
_021F0AA8:
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #0x14]
	mov r1, #3
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F0AD8
_021F0AC8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F0AD8
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E5FC8
_021F0AD8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021F0A7C

	thumb_func_start ov96_021F0AE0
ov96_021F0AE0: ; 0x021F0AE0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021F0AFE
	cmp r0, #1
	beq _021F0B10
	cmp r0, #2
	beq _021F0B28
	b _021F0B52
_021F0AFE:
	add r0, r5, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _021F0B52
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F0B52
_021F0B10:
	add r0, r5, #0
	bl ov96_021F1170
	add r0, r5, #0
	bl ov96_021F107C
	cmp r0, #0
	beq _021F0B52
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F0B52
_021F0B28:
	add r0, r5, #0
	bl ov96_021E667C
	cmp r0, #0
	beq _021F0B52
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E5FC8
_021F0B52:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov96_021F0AE0

	thumb_func_start ov96_021F0B58
ov96_021F0B58: ; 0x021F0B58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r0, [sp]
	bl ov96_021E5DC4
	str r0, [sp, #4]
	ldrb r0, [r4]
	cmp r0, #0
	bne _021F0B7E
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F0B78
	mov r0, #1
	strb r0, [r4]
_021F0B78:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F0B7E:
	ldr r0, [sp]
	bl ov96_021E5F24
	cmp r0, #0
	beq _021F0B8E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F0B8E:
	mov r0, #0
	str r0, [sp, #8]
_021F0B92:
	ldr r0, [sp, #8]
	mov r6, #0
	lsl r0, r0, #0x18
	ldr r5, [sp, #4]
	add r4, r6, #0
	lsr r7, r0, #0x18
_021F0B9E:
	add r0, r5, #0
	add r0, #0x62
	ldrh r0, [r0]
	add r1, r7, #0
	add r6, r6, r0
	lsl r2, r6, #0x10
	ldr r0, [sp]
	lsr r2, r2, #0x10
	bl ov96_021E5FB0
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #3
	blt _021F0B9E
	mov r0, #0x1b
	ldr r1, [sp, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021F0B92
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F0B58

	thumb_func_start ov96_021F0BD4
ov96_021F0BD4: ; 0x021F0BD4
	push {r3, r4, r5, lr}
	sub sp, #0xf0
	ldr r5, _021F0D3C ; =ov96_0221BC7C
	add r3, sp, #0xe0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021F0D40 ; =ov96_0221BCE8
	add r3, sp, #0xc4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D44 ; =ov96_0221BD04
	add r3, sp, #0xa8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D48 ; =ov96_0221BD3C
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D4C ; =ov96_0221BD58
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D50 ; =ov96_0221BD74
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D54 ; =ov96_0221BD90
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D58 ; =ov96_0221BCCC
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #7
	str r0, [r3]
	add r0, r4, #0
	mov r3, #1
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F0D5C ; =ov96_0221BD20
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0xf0
	pop {r3, r4, r5, pc}
	nop
_021F0D3C: .word ov96_0221BC7C
_021F0D40: .word ov96_0221BCE8
_021F0D44: .word ov96_0221BD04
_021F0D48: .word ov96_0221BD3C
_021F0D4C: .word ov96_0221BD58
_021F0D50: .word ov96_0221BD74
_021F0D54: .word ov96_0221BD90
_021F0D58: .word ov96_0221BCCC
_021F0D5C: .word ov96_0221BD20
	thumb_func_end ov96_021F0BD4

	thumb_func_start ov96_021F0D60
ov96_021F0D60: ; 0x021F0D60
	push {r4, r5, lr}
	sub sp, #0x14
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r5, r0, #0
	str r3, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r1, #5
	str r0, [sp, #0xc]
	ldr r2, [r5]
	mov r0, #0xa7
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r1, #9
	str r0, [sp, #0xc]
	ldr r2, [r5]
	mov r0, #0xa7
	mov r3, #2
	bl GfGfxLoader_LoadCharData
	mov r1, #0
	mov r0, #1
	str r1, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r1, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r5]
	mov r0, #0xa7
	mov r3, #5
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r1, #0x16
	str r0, [sp, #0xc]
	ldr r2, [r5]
	mov r0, #0xa7
	mov r3, #7
	bl GfGfxLoader_LoadCharData
	mov r0, #0x80
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r1, #0xf
	str r0, [sp, #0xc]
	ldr r2, [r5]
	mov r0, #0xa7
	mov r3, #6
	bl GfGfxLoader_LoadCharData
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r1, #6
	str r0, [sp, #0xc]
	ldr r2, [r5]
	mov r0, #0xa7
	bl GfGfxLoader_LoadScrnData
	ldr r0, [r5, #0x14]
	mov r1, #0xa
	str r0, [sp]
	mov r0, #0xa7
	mov r2, #0
	add r3, sp, #0x10
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #0x10]
	add r4, r0, #0
	add r2, r3, #0
	ldr r0, [r5]
	ldr r3, [r3, #8]
	mov r1, #2
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r5]
	mov r1, #2
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	ldr r0, [r5]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	bl FreeToHeap
	ldr r0, [r5, #0x14]
	ldr r3, _021F0EF4 ; =0x00000738
	str r0, [sp]
	mov r0, #0xa7
	mov r1, #7
	mov r2, #0
	add r3, r5, r3
	bl GfGfxLoader_GetScrnData
	ldr r1, _021F0EF8 ; =0x00000734
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r3, [r5, r0]
	ldr r0, [r5]
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #1
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, _021F0EF4 ; =0x00000738
	mov r1, #1
	ldr r3, [r5, r0]
	mov r0, #0
	str r0, [sp]
	add r2, r3, #0
	ldr r0, [r5]
	ldr r3, [r3, #8]
	add r2, #0xc
	bl BgCopyOrUncompressTilemapBufferRangeToVram
	ldr r0, _021F0EFC ; =0x00000774
	ldr r0, [r5, r0]
	bl ov96_021F3CBC
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xa7
	mov r1, #4
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r3, #0x20
	str r3, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #8
	str r0, [sp, #4]
	mov r0, #0xa7
	mov r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #0x15
	str r0, [sp, #4]
	mov r0, #0xa7
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #0xb
	str r0, [sp, #4]
	mov r0, #0xa7
	mov r2, #4
	mov r3, #0x40
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #0xe
	str r0, [sp, #4]
	mov r0, #0xa7
	mov r2, #4
	mov r3, #0x60
	bl GfGfxLoader_GXLoadPal
	mov r1, #2
	ldr r0, _021F0F00 ; =0x04000018
	lsl r1, r1, #0x16
	str r1, [r0]
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
_021F0EF4: .word 0x00000738
_021F0EF8: .word 0x00000734
_021F0EFC: .word 0x00000774
_021F0F00: .word 0x04000018
	thumb_func_end ov96_021F0D60

	thumb_func_start ov96_021F0F04
ov96_021F0F04: ; 0x021F0F04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	str r0, [sp, #4]
	add r4, r0, #0
	ldr r0, [sp]
	add r5, r1, #0
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
_021F0F1E:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r6, #0
	mul r2, r0
	ldr r0, [sp, #0x10]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	ldr r1, [r6, #0x28]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, [r6, #0x2c]
	asr r2, r0, #0xc
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r3, r0, #0xc
	cmp r2, #0
	bge _021F0F5E
	mov r2, #0
	b _021F0F64
_021F0F5E:
	cmp r2, #0xff
	ble _021F0F64
	mov r2, #0xff
_021F0F64:
	cmp r3, #0
	bge _021F0F6C
	mov r3, #0
	b _021F0F72
_021F0F6C:
	cmp r3, #0xff
	ble _021F0F72
	mov r3, #0xff
_021F0F72:
	ldr r0, [r6, #0x18]
	add r7, r5, r4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r6, #0
	add r0, #0x40
	ldrb r0, [r0]
	add r6, #0x44
	strb r2, [r5, r4]
	lsl r2, r4, #1
	sub r0, r0, #1
	strb r3, [r7, #0xc]
	add r3, r0, #0
	lsl r3, r2
	ldr r0, [sp, #0xc]
	lsl r1, r2
	add r0, r0, r3
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #8]
	ldrb r0, [r6]
	add r1, r0, #0
	lsl r1, r4
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F0F1E
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	str r0, [r5, #0x18]
	ldr r0, _021F1078 ; =0x00000726
	mov r7, #0
	ldrb r1, [r1, r0]
	add r3, r0, #0
	add r3, #0xc
	lsl r2, r1, #0x18
	ldr r1, [sp, #0xc]
	add r1, r1, r2
	str r1, [r5, #0x18]
	ldr r1, [sp, #8]
	ldr r2, [sp]
	add r1, r7, r1
	str r1, [r5, #0x1c]
	ldrh r2, [r2, r3]
	add r3, r0, #0
	add r3, #0x25
	lsl r2, r2, #0x18
	add r1, r1, r2
	ldr r2, [sp]
	str r1, [r5, #0x1c]
	ldrb r2, [r2, r3]
	lsl r2, r2, #0x1c
	add r1, r1, r2
	str r1, [r5, #0x1c]
	ldr r1, [sp]
	sub r2, r0, #2
	ldrb r2, [r1, r2]
	lsl r3, r2, #2
	add r3, r1, r3
	add r1, r0, #0
	sub r1, #0x46
	ldr r1, [r3, r1]
	add r3, r2, #1
	lsr r6, r3, #0x1f
	lsl r4, r3, #0x1e
	sub r4, r4, r6
	mov r3, #0x1e
	ror r4, r3
	add r6, r6, r4
	ldr r3, [sp]
	sub r4, r0, #2
	strb r6, [r3, r4]
	ldr r3, [sp, #4]
	add r4, r0, #3
	add r6, r7, r3
	ldr r3, [sp]
	str r6, [r5, #0x20]
	ldrb r3, [r3, r4]
	add r4, r0, #0
	add r4, #0x22
	lsl r3, r3, #0xc
	add r6, r6, r3
	ldr r3, [sp]
	str r6, [r5, #0x20]
	ldrb r3, [r3, r4]
	add r4, r0, #0
	lsl r1, r1, #0x18
	lsl r3, r3, #0xd
	add r6, r6, r3
	lsr r1, r1, #0x18
	ldr r3, [sp]
	str r6, [r5, #0x20]
	add r4, #0x24
	ldrb r3, [r3, r4]
	add r4, r0, #0
	add r4, #0x26
	lsl r3, r3, #0xe
	add r6, r6, r3
	ldr r3, [sp]
	str r6, [r5, #0x20]
	ldrb r3, [r3, r4]
	lsl r1, r1, #0x12
	lsl r3, r3, #0xf
	add r3, r6, r3
	add r3, r3, r1
	lsl r1, r2, #0x1a
	add r1, r3, r1
	ldr r2, [sp]
	str r1, [r5, #0x20]
	add r3, r0, #1
	ldrb r2, [r2, r3]
	mov r3, #0xc
	lsl r2, r2, #0x1c
	add r1, r1, r2
	str r1, [r5, #0x20]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x22
	strb r7, [r1, r2]
	add r2, r0, #0
	add r2, #0x25
	strb r3, [r1, r2]
	add r0, #0x26
	strb r7, [r1, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1078: .word 0x00000726
	thumb_func_end ov96_021F0F04

	thumb_func_start ov96_021F107C
ov96_021F107C: ; 0x021F107C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5F54
	add r7, r0, #0
	bl ov96_021E8A20
	add r6, r0, #0
	mov r0, #0
	add r7, #0xf0
	str r0, [r6]
	add r0, r7, #0
	bl ov96_021E8A20
	ldr r0, [r0, #0x20]
	mov r1, #1
	asr r0, r0, #0xc
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021F10E2
	ldr r0, [r4, #0x18]
	bl ov96_021EB63C
	ldr r0, _021F115C ; =0x0000076C
	mov r1, #1
	ldr r0, [r4, r0]
	bl ov96_021EB144
	add r0, r5, #0
	bl ov96_021E65A4
	ldr r0, _021F1160 ; =0x00000774
	ldr r0, [r4, r0]
	bl ov96_021F46B4
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov96_021E8318
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021F2EFC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F10E2:
	ldr r0, _021F1164 ; =0x0000072A
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _021F111A
	sub r0, r0, #3
	ldrb r0, [r4, r0]
	cmp r0, #1
	bhs _021F10F6
	mov r1, #0
	b _021F1104
_021F10F6:
	cmp r0, #3
	blo _021F1104
	cmp r0, #4
	bhs _021F1102
	mov r1, #2
	b _021F1104
_021F1102:
	mov r1, #3
_021F1104:
	ldr r0, _021F1168 ; =0x00000732
	ldrh r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov96_021F30F8
	ldr r1, _021F1168 ; =0x00000732
	strh r0, [r4, r1]
	mov r0, #0
	sub r1, #8
	strb r0, [r4, r1]
_021F111A:
	bl System_GetTouchNew
	cmp r0, #0
	beq _021F113C
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
_021F113C:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _021F1152
	ldr r0, _021F116C ; =gSystem + 0x40
	ldrh r1, [r0, #0x20]
	strb r1, [r6, #4]
	ldrh r0, [r0, #0x22]
	strb r0, [r6, #5]
	mov r0, #1
	str r0, [r6]
_021F1152:
	add r0, r5, #0
	bl ov96_021F1614
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F115C: .word 0x0000076C
_021F1160: .word 0x00000774
_021F1164: .word 0x0000072A
_021F1168: .word 0x00000732
_021F116C: .word gSystem + 0x40
	thumb_func_end ov96_021F107C

	thumb_func_start ov96_021F1170
ov96_021F1170: ; 0x021F1170
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #4]
	bl ov96_021E5F54
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl ov96_021E5DC4
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov96_021E5F24
	cmp r0, #0
	beq _021F1190
	b _021F160A
_021F1190:
	ldr r0, [sp, #0x14]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0x1c]
	ldr r0, _021F146C ; =0x000007EC
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021F11EA
	ldr r0, [sp, #4]
	mov r6, #0
	bl ov96_021E5D34
	add r7, r6, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _021F11D2
	ldr r5, [sp, #0x14]
	add r5, #0x50
_021F11B6:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021F11C8
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021F11C8:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r5, #0x28
	cmp r7, r0
	blt _021F11B6
_021F11D2:
	ldr r0, [sp, #0x10]
	cmp r6, r0
	bne _021F1216
	ldr r1, _021F1470 ; =0x00000726
	mov r2, #0
	add r0, r1, #0
	strb r2, [r4, r1]
	add r0, #0x24
	strb r2, [r4, r0]
	add r1, #0xc6
	str r2, [r4, r1]
	b _021F13DC
_021F11EA:
	add r1, r0, #0
	sub r1, #0xc4
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _021F122E
	add r1, r0, #0
	sub r1, #0xc4
	ldrb r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #0
	sub r1, #0xc4
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0xc4
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021F1212
	mov r1, #1
	str r1, [r4, r0]
	b _021F13DC
_021F1212:
	cmp r1, #0x3c
	beq _021F1218
_021F1216:
	b _021F13DC
_021F1218:
	add r1, r0, #0
	mov r2, #1
	sub r1, #0xc2
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0xc5
	ldrb r1, [r4, r1]
	sub r0, #0xc5
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021F13DC
_021F122E:
	add r1, r0, #0
	sub r1, #0xa2
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _021F1310
	add r1, r0, #0
	mov r2, #0x2c
	sub r1, #0xc6
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0xa3
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021F1302
	add r1, r0, #0
	sub r1, #0x9f
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021F12F4
	add r1, r0, #0
	sub r1, #0x9d
	ldrb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0x9e
	ldrb r1, [r4, r1]
	cmp r2, r1
	blo _021F1272
	add r0, r4, #0
	bl ov96_021F2A00
	ldr r0, _021F1474 ; =0x00000728
	mov r1, #0x5a
	strb r1, [r4, r0]
	b _021F13DC
_021F1272:
	add r1, r0, #0
	add r2, r4, r2
	sub r1, #0x9c
	ldrb r2, [r2, r1]
	add r1, r0, #0
	sub r1, #0xa1
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0x9d
	ldrb r1, [r4, r1]
	sub r0, #0x90
	add r1, r4, r1
	ldrb r0, [r1, r0]
	bl ov96_021F32C4
	ldr r1, _021F1478 ; =0x0000074C
	strb r0, [r4, r1]
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	mov r1, #3
	bl _s32_div_f
	mov r1, #0x6e
	lsl r0, r0, #0x18
	lsl r1, r1, #4
	lsr r7, r0, #0x18
	add r0, r1, #0
	add r0, #0x6f
	ldrb r0, [r4, r0]
	add r6, r4, r1
	lsl r5, r7, #2
	add r2, r4, r0
	add r0, r1, #0
	add r0, #0x7c
	ldrb r0, [r2, r0]
	ldr r3, [r6, r5]
	add r0, r3, r0
	str r0, [r6, r5]
	add r0, r1, #0
	add r0, #0x6f
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	add r0, #0x6f
	strb r2, [r4, r0]
	add r0, r1, #0
	mov r2, #6
	add r0, #0x6d
	add r1, #0x6b
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	mov r0, #1
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #3
	bl ov96_021E8228
	b _021F13DC
_021F12F4:
	add r1, r0, #0
	sub r1, #0x9f
	ldrb r1, [r4, r1]
	sub r0, #0x9f
	sub r1, r1, #1
	strb r1, [r4, r0]
	b _021F13DC
_021F1302:
	add r1, r0, #0
	sub r1, #0xa3
	ldrb r1, [r4, r1]
	sub r0, #0xa3
	sub r1, r1, #1
	strb r1, [r4, r0]
	b _021F13DC
_021F1310:
	sub r0, #0xc5
	ldrb r0, [r4, r0]
	cmp r0, #1
	bhs _021F131C
	mov r2, #8
	b _021F1326
_021F131C:
	cmp r0, #3
	bhs _021F1324
	mov r2, #6
	b _021F1326
_021F1324:
	mov r2, #4
_021F1326:
	ldr r0, _021F147C ; =0x00000725
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, r2
	blt _021F13DC
	mov r1, #0
	strb r1, [r4, r0]
	add r2, r0, #1
	ldrb r2, [r4, r2]
	add r3, r2, #1
	add r2, r0, #1
	strb r3, [r4, r2]
	ldrb r2, [r4, r2]
	cmp r2, #0x2b
	blo _021F13DC
	mov r3, #1
	add r2, r0, #6
	strb r3, [r4, r2]
	add r2, r0, #0
	add r2, #0x23
	strb r3, [r4, r2]
	add r2, r0, #0
	add r2, #0x25
	strb r3, [r4, r2]
	mov r2, #0x14
	add r0, #0x24
	strb r2, [r4, r0]
	mov r0, #0x72
	mov r3, #0xc
	lsl r0, r0, #4
_021F1366:
	add r2, r4, r1
	add r1, r1, #1
	strb r3, [r2, r0]
	cmp r1, #4
	blt _021F1366
	add r0, r4, #0
	mov r5, #0
	str r0, [sp, #0x20]
	add r0, #0x20
	str r0, [sp, #0x20]
	add r7, r5, #0
_021F137C:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r6, #0
	mul r2, r0
	ldr r0, [sp, #0x20]
	add r5, r5, #1
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	add r3, r6, #0
	add r3, #0x28
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	str r7, [r6, #0x34]
	add r0, r6, #0
	str r7, [r6, #0x38]
	add r0, #0x8c
	ldrh r1, [r0]
	add r0, r6, #0
	add r0, #0x8e
	strh r1, [r0]
	add r0, r6, #0
	add r0, #0x44
	strb r7, [r0]
	add r0, r6, #0
	add r0, #0x45
	strb r7, [r0]
	add r0, r6, #0
	add r0, #0x46
	add r6, #0x47
	strb r7, [r0]
	strb r7, [r6]
	cmp r5, #0xc
	blt _021F137C
_021F13DC:
	ldr r0, _021F1480 ; =0x00000727
	ldrb r1, [r4, r0]
	cmp r1, #6
	blo _021F13E8
	mov r1, #1
	b _021F13EA
_021F13E8:
	mov r1, #0
_021F13EA:
	add r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, [sp, #0x14]
	add r0, #0x50
	bl ov96_021E8A20
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	bl ov96_021E8A20
	add r3, r0, #0
	mov r2, #4
_021F1402:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _021F1402
	ldr r0, [r3]
	str r0, [r5]
	ldr r0, _021F1484 ; =0x0000074A
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021F1418
	b _021F15F0
_021F1418:
	ldr r0, [sp, #0x14]
	add r7, r4, #0
	add r0, #0x50
	mov r6, #0
	str r0, [sp, #0x14]
	add r5, r4, #0
	add r7, #0x20
_021F1426:
	ldr r0, [sp, #0x14]
	bl ov96_021E8A20
	str r0, [sp, #0x18]
	ldr r0, [r0]
	cmp r0, #0
	beq _021F148C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021F1450
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F1450
	mov r0, #0x6f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _021F1498
_021F1450:
	cmp r1, #0
	bne _021F1498
	ldr r0, _021F1488 ; =0x000006F4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021F1498
	mov r0, #0x6f
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	b _021F1498
	nop
_021F146C: .word 0x000007EC
_021F1470: .word 0x00000726
_021F1474: .word 0x00000728
_021F1478: .word 0x0000074C
_021F147C: .word 0x00000725
_021F1480: .word 0x00000727
_021F1484: .word 0x0000074A
_021F1488: .word 0x000006F4
_021F148C:
	mov r0, #0x6f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
_021F1498:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F14EE
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021F2A84
	cmp r0, #0
	bne _021F157E
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x18]
	ldrb r2, [r2, #4]
	lsl r1, r6, #0x18
	ldrb r3, [r3, #5]
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_021F20C4
	str r0, [sp, #0x24]
	cmp r0, #0xc
	beq _021F157E
	mov r1, #3
	bl _s32_div_f
	add r3, r1, #0
	mov r0, #0x90
	mul r3, r0
	mov r0, #0x72
	ldr r1, [sp, #0x24]
	add r2, r4, r6
	lsl r0, r0, #4
	strb r1, [r2, r0]
	add r1, r7, r3
	add r1, #0x46
	mov r0, #2
	strb r0, [r1]
	add r1, r7, r3
	add r1, #0x47
	mov r0, #3
	strb r0, [r1]
	b _021F157E
_021F14EE:
	ldr r0, _021F1610 ; =0x000006F4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F156A
	mov r0, #0x72
	add r1, r4, r6
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	str r1, [sp, #0xc]
	cmp r0, #0xc
	beq _021F157E
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x90
	mul r0, r1
	str r0, [sp, #0x28]
	add r0, r7, r0
	str r0, [sp, #8]
	add r0, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #8]
	ldrb r0, [r0, #4]
	ldrb r1, [r1, #5]
	add r2, #0x28
	mov r3, #0
	bl ov96_021F208C
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #8]
	ldr r2, [sp, #8]
	ldr r0, [r7, r0]
	ldr r1, [r1, #0x1c]
	ldr r2, [r2, #0x20]
	bl ov96_021F2F7C
	cmp r0, #0
	beq _021F1556
	mov r0, #0x72
	ldr r1, [sp, #0xc]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	mov r1, #1
	add r2, r4, r0
	mov r0, #0x7e
	lsl r0, r0, #4
	strb r1, [r2, r0]
	b _021F157E
_021F1556:
	mov r0, #0x72
	ldr r1, [sp, #0xc]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	mov r1, #0
	add r2, r4, r0
	mov r0, #0x7e
	lsl r0, r0, #4
	strb r1, [r2, r0]
	b _021F157E
_021F156A:
	mov r1, #0x72
	add r0, r4, r6
	lsl r1, r1, #4
	ldrb r1, [r0, r1]
	cmp r1, #0xc
	beq _021F157E
	mov r1, #0x72
	mov r2, #0xc
	lsl r1, r1, #4
	strb r2, [r0, r1]
_021F157E:
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r0, #0x28
	str r0, [sp, #0x14]
	mov r0, #0x1b
	lsl r0, r0, #4
	add r5, #0xc
	add r7, r7, r0
	cmp r6, #4
	bge _021F1594
	b _021F1426
_021F1594:
	mov r1, #0x77
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, #0x3e
	ldrh r1, [r4, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021F342C
	add r6, r0, #0
	cmp r6, #0xc
	beq _021F15F0
	mov r1, #3
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #4]
	bl ov96_021E5D34
	cmp r5, r0
	blo _021F15EC
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	add r2, r4, #0
	lsl r0, r0, #4
	add r2, #0x20
	mul r0, r5
	add r0, r2, r0
	mov r2, #0x90
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	add r0, r0, r3
	mov r2, #2
	add r1, #0x46
	strb r2, [r1]
	mov r1, #3
	add r0, #0x47
	strb r1, [r0]
	b _021F15F0
_021F15EC:
	bl GF_AssertFail
_021F15F0:
	ldr r0, [sp, #4]
	bl ov96_021F1CC0
	add r0, r4, #0
	bl ov96_021F21EC
	add r0, r4, #0
	bl ov96_021F2834
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl ov96_021F0F04
_021F160A:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021F1610: .word 0x000006F4
	thumb_func_end ov96_021F1170

	thumb_func_start ov96_021F1614
ov96_021F1614: ; 0x021F1614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x138
	str r0, [sp, #0xc]
	bl ov96_021E5DC4
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	bl ov96_021E5F54
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0xc]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x4c]
	mov r1, #0xf
	ldr r2, [r0, #0x1c]
	asr r0, r2, #0x1c
	and r0, r1
	str r0, [sp, #0x64]
	asr r0, r2, #0x18
	add r5, r0, #0
	ldr r0, [sp, #0x4c]
	and r5, r1
	ldr r0, [r0, #0x18]
	asr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x4c]
	ldr r2, [r0, #0x20]
	mov r0, #1
	asr r3, r2, #0xd
	and r3, r0
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	str r3, [sp, #0x60]
	asr r3, r2, #0xe
	and r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x5c]
	asr r3, r2, #0xf
	mov r0, #7
	and r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	asr r3, r2, #0x1a
	mov r0, #3
	and r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x58]
	asr r0, r2, #0x12
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	asr r0, r2, #0x1c
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _021F16B4
	ldr r0, [sp, #0xc]
	bl ov96_021E5F54
	bl ov96_021E8A20
	mov r1, #0
	strb r1, [r0, #8]
_021F16B4:
	mov r0, #0x73
	lsl r0, r0, #4
	ldrh r1, [r6, r0]
	lsl r2, r5, #0x18
	lsr r7, r2, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r7
	beq _021F16E4
	mov r5, #0
	strh r7, [r6, r0]
	add r3, r5, #0
	add r0, #0xc
_021F16CE:
	add r2, r6, r5
	add r5, r5, #1
	strb r3, [r2, r0]
	cmp r5, #0xc
	blt _021F16CE
	ldr r0, _021F19E8 ; =0x000007AC
	ldr r3, [sp, #0xc]
	add r0, r6, r0
	add r2, r7, #0
	bl ov96_021F2B68
_021F16E4:
	cmp r4, #0
	bne _021F170A
	ldr r0, _021F19EC ; =0x00000738
	mov r1, #1
	ldr r3, [r6, r0]
	ldr r0, [r6]
	add r2, r3, #0
	ldr r3, [r3, #8]
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r6]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _021F19F0 ; =0x000007A8
	mov r1, #0
	str r1, [r6, r0]
	b _021F1796
_021F170A:
	cmp r4, #0x2b
	bhs _021F1766
	ldr r0, _021F19F0 ; =0x000007A8
	ldr r1, [r6, r0]
	cmp r1, #0
	bne _021F175C
	ldr r1, [sp, #0x50]
	cmp r1, #1
	bhi _021F172E
	cmp r4, #0x20
	blo _021F172E
	sub r0, #0xd1
	bl PlaySE
	ldr r0, _021F19F0 ; =0x000007A8
	mov r1, #1
	str r1, [r6, r0]
	b _021F175C
_021F172E:
	ldr r0, [sp, #0x50]
	cmp r0, #1
	bls _021F1746
	cmp r4, #0x1c
	blo _021F1746
	ldr r0, _021F19F4 ; =0x000006D7
	bl PlaySE
	ldr r0, _021F19F0 ; =0x000007A8
	mov r1, #1
	str r1, [r6, r0]
	b _021F175C
_021F1746:
	ldr r0, [sp, #0x50]
	cmp r0, #3
	bls _021F175C
	cmp r4, #0x15
	blo _021F175C
	ldr r0, _021F19F4 ; =0x000006D7
	bl PlaySE
	ldr r0, _021F19F0 ; =0x000007A8
	mov r1, #1
	str r1, [r6, r0]
_021F175C:
	ldr r1, [r6]
	add r0, r4, #0
	bl ov96_021F295C
	b _021F1796
_021F1766:
	ldr r3, _021F19F8 ; =ov96_0221BC8C
	add r2, sp, #0x11c
	mov r1, #8
_021F176C:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _021F176C
	mov r1, #2
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	mov r1, #1
	add r2, sp, #0x11c
	mov r3, #0xe
	bl LoadRectToBgTilemapRect
	ldr r1, [r6]
	mov r0, #0x2a
	bl ov96_021F295C
_021F1796:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _021F17A2
	ldr r0, _021F19FC ; =0x000008CF
	bl PlaySE
_021F17A2:
	ldr r0, _021F1A00 ; =0x00000774
	ldr r1, [sp, #0x50]
	ldr r0, [r6, r0]
	bl ov96_021F4364
	add r0, sp, #0x12c
	ldr r3, _021F1A04 ; =ov96_0221BC9C
	str r0, [sp, #0x30]
	add r2, sp, #0xa4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021F1A08 ; =ov96_0221BCB4
	mov r5, #0
	add r2, sp, #0x8c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #0
	str r0, [sp, #0x68]
	add r0, #0x20
	str r5, [sp, #0x34]
	add r7, r6, #0
	str r0, [sp, #0x68]
_021F17DE:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x14]
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [sp, #0x24]
	mul r1, r0
	ldr r0, [sp, #0x68]
	ldr r2, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0x90
	mul r1, r2
	add r4, r0, r1
	ldr r0, [r0, r1]
	bl ov96_021EAA20
	bl ov96_021E8BAC
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x4c]
	ldr r1, [r0, #0x1c]
	ldr r0, [sp, #0x34]
	asr r1, r0
	mov r0, #3
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x4c]
	ldr r0, [r0, #0x20]
	add r1, r0, #0
	asr r1, r5
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _021F183C
	b _021F194A
_021F183C:
	mov r0, #0
	str r0, [sp, #0x38]
	ldr r0, _021F1A0C ; =0x00000778
	ldrh r0, [r7, r0]
	cmp r0, #0
	bne _021F1850
	ldr r0, _021F1A0C ; =0x00000778
	mov r1, #1
	strh r1, [r7, r0]
	b _021F191A
_021F1850:
	cmp r0, #1
	bne _021F1912
	add r2, sp, #0xa4
	add r3, sp, #0xf8
	mov ip, r3
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	add r2, sp, #0x8c
	add r3, sp, #0xe0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _021F1A10 ; =0x0000077A
	mov r2, ip
	ldrh r1, [r7, r1]
	ldr r0, _021F1A14 ; =0x45800000
	lsr r1, r1, #1
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x110]
	ldr r1, _021F1A10 ; =0x0000077A
	ldr r0, _021F1A14 ; =0x45800000
	ldrh r1, [r7, r1]
	lsr r1, r1, #1
	lsl r2, r1, #2
	add r1, sp, #0xf8
	ldr r1, [r1, r2]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x114]
	ldr r1, _021F1A10 ; =0x0000077A
	ldr r0, _021F1A14 ; =0x45800000
	ldrh r1, [r7, r1]
	lsr r1, r1, #1
	lsl r2, r1, #2
	add r1, sp, #0xf8
	ldr r1, [r1, r2]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x118]
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x4c]
	add r2, r0, r5
	add r0, sp, #0x84
	str r0, [sp]
	ldrb r1, [r1, r5]
	ldrb r2, [r2, #0xc]
	ldr r0, [r4]
	add r3, sp, #0x88
	bl ov96_021EB06C
	ldr r0, [sp, #0x84]
	cmp r0, #0xb0
	blt _021F18E8
	ldr r0, _021F1A10 ; =0x0000077A
	ldrh r0, [r7, r0]
	lsr r0, r0, #1
	lsl r1, r0, #2
	add r0, sp, #0xe0
	ldr r0, [r0, r1]
	str r0, [sp, #0x38]
_021F18E8:
	ldr r0, _021F1A10 ; =0x0000077A
	ldrh r0, [r7, r0]
	add r1, r0, #1
	ldr r0, _021F1A10 ; =0x0000077A
	strh r1, [r7, r0]
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EABE0
	ldr r0, [sp, #0x3c]
	add r1, sp, #0x110
	bl sub_020247F4
	ldr r0, _021F1A10 ; =0x0000077A
	ldrh r0, [r7, r0]
	cmp r0, #0xc
	blo _021F191A
	ldr r0, _021F1A0C ; =0x00000778
	mov r1, #2
	strh r1, [r7, r0]
	b _021F191A
_021F1912:
	ldr r0, [r4]
	mov r1, #0
	bl ov96_021EAB38
_021F191A:
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #0
	bl ov96_021EAB74
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x4c]
	add r2, r0, r5
	ldrb r3, [r2, #0xc]
	ldr r2, [sp, #0x38]
	ldrb r1, [r1, r5]
	add r2, r2, r3
	ldr r0, [r4]
	mov r3, #1
	bl ov96_021EB01C
	ldr r0, [sp, #0x30]
	mov r1, #1
	strb r1, [r0]
	b _021F1C52
_021F194A:
	ldr r0, _021F1A0C ; =0x00000778
	mov r1, #0
	strh r1, [r7, r0]
	add r0, r0, #2
	strh r1, [r7, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xd4]
	str r0, [sp, #0xd8]
	str r0, [sp, #0xdc]
	ldr r0, [r4]
	bl ov96_021EABE0
	ldr r0, [sp, #0x40]
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _021F1992
	mov r1, #1
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bne _021F199A
	mov r0, #0x89
	lsl r0, r0, #4
	bl IsSEPlaying
	cmp r0, #0
	bne _021F199A
	mov r0, #0x89
	lsl r0, r0, #4
	bl PlaySE
	b _021F199A
_021F1992:
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_021F199A:
	ldr r0, [sp, #0x3c]
	add r1, sp, #0xd4
	bl sub_020247F4
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EAB38
	ldr r0, [sp, #0x44]
	cmp r0, #2
	bne _021F19D4
	ldr r1, _021F1A18 ; =0x0000073C
	add r0, r6, r5
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021F19D4
	ldr r1, _021F1A18 ; =0x0000073C
	mov r2, #1
	strb r2, [r0, r1]
	add r0, r1, #0
	add r0, #0x30
	lsl r1, r5, #0x18
	add r3, r4, #0
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	add r3, #0x68
	bl ov96_021EAF60
	b _021F1A34
_021F19D4:
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne _021F1A34
	ldr r1, _021F1A18 ; =0x0000073C
	add r0, r6, r5
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _021F1A34
	ldr r1, _021F1A18 ; =0x0000073C
	b _021F1A1C
	.balign 4, 0
_021F19E8: .word 0x000007AC
_021F19EC: .word 0x00000738
_021F19F0: .word 0x000007A8
_021F19F4: .word 0x000006D7
_021F19F8: .word ov96_0221BC8C
_021F19FC: .word 0x000008CF
_021F1A00: .word 0x00000774
_021F1A04: .word ov96_0221BC9C
_021F1A08: .word ov96_0221BCB4
_021F1A0C: .word 0x00000778
_021F1A10: .word 0x0000077A
_021F1A14: .word 0x45800000
_021F1A18: .word 0x0000073C
_021F1A1C:
	mov r2, #0
	strb r2, [r0, r1]
	add r0, r1, #0
	add r0, #0x30
	lsl r1, r5, #0x18
	add r3, r4, #0
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	mov r2, #1
	add r3, #0x48
	bl ov96_021EAF60
_021F1A34:
	ldr r0, [sp, #0x30]
	mov r1, #0
	strb r1, [r0]
	ldr r0, [sp, #0x4c]
	add r1, r0, r5
	ldrb r0, [r0, r5]
	str r0, [sp, #0x18]
	ldrb r0, [r1, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	ldr r1, [r0, #0x18]
	ldr r0, [sp, #0x34]
	asr r1, r0
	mov r0, #3
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x18]
	mov r1, #0
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0xc
	str r0, [r4, #0x10]
	add r0, sp, #0xc8
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0xc8]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xcc]
	ldr r0, [r4, #4]
	bl ov96_021EB5B8
	add r1, sp, #0xc8
	bl Sprite_SetMatrix
	mov r1, #0
	add r0, sp, #0xbc
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #0xc]
	mov r1, #3
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xc0]
	add r0, r5, #0
	bl _s32_div_f
	str r1, [sp, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl ov96_021E60C0
	ldrb r0, [r0, #7]
	cmp r0, #1
	beq _021F1AC0
	cmp r0, #2
	beq _021F1ACC
	cmp r0, #3
	beq _021F1AD8
	b _021F1AE4
_021F1AC0:
	mov r0, #2
	ldr r1, [sp, #0xc0]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0xc0]
	b _021F1AE8
_021F1ACC:
	mov r0, #2
	ldr r1, [sp, #0xc0]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0xc0]
	b _021F1AE8
_021F1AD8:
	mov r0, #1
	ldr r1, [sp, #0xc0]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0xc0]
	b _021F1AE8
_021F1AE4:
	bl GF_AssertFail
_021F1AE8:
	ldr r0, [r4, #8]
	bl ov96_021EB5B8
	add r1, sp, #0xbc
	bl Sprite_SetMatrix
	ldr r0, _021F1CA4 ; =0x0000076C
	lsl r1, r5, #0x18
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x6c]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x20]
	bl ov96_021EAC0C
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	mov r3, #1
	bl ov96_021EB01C
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bne _021F1B48
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	bl ov96_021E60D8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021F1B48
	mov r0, #0
	mov r2, #0x7d
	str r0, [sp]
	lsl r2, r2, #4
	ldrsh r2, [r6, r2]
	ldr r0, [sp, #0x6c]
	ldr r3, [sp, #0x20]
	mov r1, #0
	bl ov96_021EAED4
_021F1B48:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _021F1B80
	ldr r0, _021F1CA4 ; =0x0000076C
	lsl r1, r5, #0x18
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	bl Set2dSpriteAnimActiveFlag
	lsl r3, r5, #0x18
	ldr r0, _021F1CA8 ; =0x000007AF
	mov r1, #1
	strb r1, [r6, r0]
	ldr r0, [sp, #0x20]
	ldr r1, _021F1CAC ; =0x000007AC
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x70]
	add r1, r6, r1
	lsr r3, r3, #0x18
	bl ov96_021F2E80
	b _021F1B88
_021F1B80:
	ldr r0, [sp, #0x3c]
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
_021F1B88:
	ldr r0, [sp, #0x64]
	cmp r0, r5
	bne _021F1BF6
	ldr r0, [sp, #0x28]
	cmp r0, #1
	blo _021F1BF2
	cmp r0, #4
	bhi _021F1BF2
	ldr r0, [r4, #4]
	bl ov96_021EB5B8
	str r0, [sp, #0x74]
	mov r1, #1
	ldr r0, [r4, #4]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x74]
	add r1, r1, #2
	bl Set2dSpriteAnimSeqNo
	ldr r0, [sp, #0x28]
	cmp r0, #2
	bhi _021F1BC2
	ldr r0, _021F1CB0 ; =0x0000088D
	bl PlaySE
	b _021F1BD4
_021F1BC2:
	cmp r0, #3
	bne _021F1BCE
	ldr r0, _021F1CB4 ; =0x0000088E
	bl PlaySE
	b _021F1BD4
_021F1BCE:
	ldr r0, _021F1CB8 ; =0x0000088F
	bl PlaySE
_021F1BD4:
	ldr r0, _021F1CBC ; =0x00000774
	ldr r1, [sp, #0x24]
	ldr r0, [r6, r0]
	lsl r1, r1, #0x18
	ldr r2, [sp, #0x28]
	lsr r1, r1, #0x18
	bl ov96_021F4390
	ldr r0, _021F1CAC ; =0x000007AC
	lsl r1, r5, #0x18
	add r0, r6, r0
	lsr r1, r1, #0x18
	bl ov96_021F2E2C
	b _021F1BF6
_021F1BF2:
	bl GF_AssertFail
_021F1BF6:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bne _021F1C52
	add r0, sp, #0x7c
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r3, sp, #0x80
	bl ov96_021EB06C
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne _021F1C44
	mov r0, #0x73
	lsl r0, r0, #4
	ldrh r0, [r6, r0]
	ldr r1, [sp, #0x80]
	ldr r2, [sp, #0x7c]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r0, r0, #0x18
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, sp, #0x78
	bl ov96_021F3180
	cmp r0, #0
	beq _021F1C44
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov96_021E658C
	b _021F1C52
_021F1C44:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov96_021E658C
_021F1C52:
	ldr r0, [sp, #0x34]
	add r5, r5, #1
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r5, #0xc
	bge _021F1C68
	b _021F17DE
_021F1C68:
	ldr r1, [sp, #0x4c]
	add r0, r6, #0
	bl ov96_021F2FEC
	ldr r1, _021F1CA8 ; =0x000007AF
	ldrb r0, [r6, r1]
	cmp r0, #0
	beq _021F1C86
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _021F1C86
	sub r0, r1, #3
	add r0, r6, r0
	bl ov96_021F2D98
_021F1C86:
	ldr r0, _021F1CBC ; =0x00000774
	ldr r1, [sp, #0x54]
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x58]
	bl ov96_021F4688
	ldr r0, _021F1CBC ; =0x00000774
	ldr r1, [sp, #0x5c]
	ldr r0, [r6, r0]
	add r2, sp, #0x12c
	bl ov96_021F45F4
	add sp, #0x138
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1CA4: .word 0x0000076C
_021F1CA8: .word 0x000007AF
_021F1CAC: .word 0x000007AC
_021F1CB0: .word 0x0000088D
_021F1CB4: .word 0x0000088E
_021F1CB8: .word 0x0000088F
_021F1CBC: .word 0x00000774
	thumb_func_end ov96_021F1614

	thumb_func_start ov96_021F1CC0
ov96_021F1CC0: ; 0x021F1CC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	str r0, [sp, #4]
	bl ov96_021E5DC4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, #0x20
	mov r6, #0
	str r0, [sp, #0x10]
_021F1CD4:
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r5, r1, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r0, #0
	mov r0, #0x1b
	lsl r0, r0, #4
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	mov r0, #0x90
	mul r0, r5
	add r4, r1, r0
	add r0, r4, #0
	add r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F1D20
	mov r0, #0x47
	ldrsb r0, [r4, r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x47
	strb r1, [r0]
	mov r0, #0x47
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _021F1D20
	add r1, r4, #0
	add r1, #0x46
	mov r0, #0
	strb r0, [r1]
_021F1D20:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021F1D94
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov96_021F2F7C
	cmp r0, #0
	beq _021F1D94
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0x18]
	add r1, #0x45
	strb r0, [r1]
	add r4, #0x44
	strb r0, [r4]
	mov r0, #1
	str r0, [sp]
	lsl r1, r7, #0x18
	lsl r2, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #5
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	lsl r1, r7, #0x18
	lsl r2, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov96_021E8228
	ldr r0, [sp, #0xc]
	add r4, r0, r6
	mov r0, #0x7e
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021F1D8C
	mov r0, #1
	str r0, [sp]
	lsl r1, r7, #0x18
	lsl r2, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #8
	bl ov96_021E8228
_021F1D8C:
	mov r0, #0x7e
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
_021F1D94:
	add r6, r6, #1
	cmp r6, #0xc
	blt _021F1CD4
	ldr r0, [sp, #0xc]
	mov r6, #0
	str r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
_021F1DA4:
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #0x14]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r7, r2, r0
	ldr r0, [r7, #0x18]
	cmp r0, #2
	bne _021F1E22
	mov r0, #1
	str r0, [sp, #8]
	mov r5, #0
_021F1DD4:
	cmp r6, r5
	beq _021F1E12
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #0x14]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r1, r2, r0
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _021F1E12
	add r0, r7, #0
	bl ov96_021F218C
	cmp r0, #0
	beq _021F1E12
	mov r0, #0
	str r0, [sp, #8]
	b _021F1E18
_021F1E12:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021F1DD4
_021F1E18:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021F1E22
	mov r0, #1
	str r0, [r7, #0x18]
_021F1E22:
	add r6, r6, #1
	cmp r6, #0xc
	blt _021F1DA4
	ldr r3, _021F2080 ; =ov96_0221BC64
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r5, #0
	str r0, [r2]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
_021F1E3E:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #0x18]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r4, r2, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021F1E6A
	b _021F206C
_021F1E6A:
	add r1, r4, #0
	add r1, #0x41
	mov r0, #0
	strb r0, [r1]
	str r0, [r4, #0x34]
	add r6, r4, #0
	str r0, [r4, #0x38]
	add r3, sp, #0x5c
	add r6, #0x28
	str r0, [r4, #0x3c]
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	add r0, r4, #0
	add r0, #0x1c
	add r2, sp, #0x74
	bl VEC_Subtract
	add r0, sp, #0x74
	bl VEC_Mag
	add r7, r0, #0
	cmp r7, #0
	bgt _021F1EA8
	add r0, r4, #0
	bl ov96_021F2AA4
	b _021F206C
_021F1EA8:
	add r0, sp, #0x74
	add r1, sp, #0x68
	bl VEC_Normalize
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F1EC0
	mov r6, #0x3f
	lsl r6, r6, #0x18
	b _021F1EDC
_021F1EC0:
	add r0, r4, #0
	add r0, #0x89
	ldrb r0, [r0]
	bl _ffltu
	bl _f2d
	ldr r3, _021F2084 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r6, r0, #0
_021F1EDC:
	add r0, r7, #0
	bl _fflt
	str r0, [sp, #0x1c]
	ldr r0, _021F2088 ; =0x45800000
	add r1, r6, #0
	bl _fmul
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	bl _fleq
	bhi _021F1F06
	add r3, r4, #0
	add r3, #0x1c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x5c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021F1F30
_021F1F06:
	mov r1, #0
	add r0, sp, #0x50
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, _021F2088 ; =0x45800000
	add r1, r6, #0
	bl _fmul
	bl _ffix
	add r1, sp, #0x68
	add r2, sp, #0x50
	add r3, sp, #0x74
	bl VEC_MultAdd
	add r1, sp, #0x5c
	add r0, sp, #0x74
	add r2, r1, #0
	bl VEC_Add
_021F1F30:
	cmp r7, #0
	beq _021F1FAC
	add r6, sp, #0x20
	ldmia r6!, {r0, r1}
	add r3, sp, #0x44
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, sp, #0x38
	str r0, [r3]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x68]
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x3c]
	add r0, r2, #0
	bl CalcAngleBetweenVecs
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r0, r1
	bls _021F1F66
	mov r1, #0xe
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _021F1F70
_021F1F66:
	add r1, r4, #0
	add r1, #0x40
	mov r0, #4
	strb r0, [r1]
	b _021F1FAC
_021F1F70:
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r0, r1
	bls _021F1F8A
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	bhs _021F1F8A
	add r1, r4, #0
	add r1, #0x40
	mov r0, #2
	strb r0, [r1]
	b _021F1FAC
_021F1F8A:
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _021F1FA4
	mov r1, #0xa
	lsl r1, r1, #0xc
	cmp r0, r1
	bhi _021F1FA4
	add r1, r4, #0
	add r1, #0x40
	mov r0, #3
	strb r0, [r1]
	b _021F1FAC
_021F1FA4:
	add r1, r4, #0
	add r1, #0x40
	mov r0, #1
	strb r0, [r1]
_021F1FAC:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _021F2058
	lsl r2, r5, #0x18
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	lsr r2, r2, #0x18
	add r3, sp, #0x74
	bl ov96_021F22FC
	cmp r0, #0
	bne _021F2044
	mov r1, #0
	add r0, sp, #0x2c
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F206C
	add r1, r4, #0
	add r1, #0x41
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x8a
	ldrh r0, [r0]
	bl _ffltu
	bl _f2d
	ldr r3, _021F2084 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x46
	ldrb r0, [r0]
	bl _ffltu
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	add r1, r0, #0
	ldr r0, _021F2088 ; =0x45800000
	bl _fmul
	bl _ffix
	add r3, r4, #0
	add r1, sp, #0x68
	add r2, sp, #0x2c
	add r3, #0x34
	bl VEC_MultAdd
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	cmp r0, #0
	beq _021F203E
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	add r4, #0x8e
	sub r0, r0, #1
	strh r0, [r4]
	b _021F206C
_021F203E:
	bl GF_AssertFail
	b _021F206C
_021F2044:
	add r0, r4, #0
	bl ov96_021F2AA4
	add r2, sp, #0x5c
	ldmia r2!, {r0, r1}
	add r4, #0x28
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	b _021F206C
_021F2058:
	add r1, r4, #0
	add r1, #0x8e
	mov r0, #0
	add r2, sp, #0x5c
	strh r0, [r1]
	ldmia r2!, {r0, r1}
	add r4, #0x28
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
_021F206C:
	add r5, r5, #1
	cmp r5, #0xc
	bge _021F2074
	b _021F1E3E
_021F2074:
	ldr r0, [sp, #0xc]
	bl ov96_021F234C
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2080: .word ov96_0221BC64
_021F2084: .word 0x40240000
_021F2088: .word 0x45800000
	thumb_func_end ov96_021F1CC0

	thumb_func_start ov96_021F208C
ov96_021F208C: ; 0x021F208C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	lsl r6, r4, #0xc
	lsl r4, r0, #0xc
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0
	add r1, r2, #0
	add r2, r0, #0
	add r7, r3, #0
	ldr r5, [sp, #0x20]
	str r6, [sp]
	str r4, [sp, #4]
	bl VEC_Subtract
	add r0, sp, #0
	bl VEC_Mag
	cmp r0, r7
	ble _021F20C0
	str r6, [r5]
	str r4, [r5, #4]
	mov r0, #0
	str r0, [r5, #8]
_021F20C0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F208C

	thumb_func_start ov96_021F20C4
ov96_021F20C4: ; 0x021F20C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	add r7, r0, #0
	bl ov96_021E6104
	mov r1, #0x1b
	mov r5, #0
	str r0, [sp, #0x14]
	lsl r6, r0, #0xc
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	add r7, #0x20
	mul r1, r0
	add r4, r5, #0
	add r7, r7, r1
_021F20E8:
	mov r0, #0x90
	mul r0, r4
	add r1, r7, r0
	ldr r0, [sp, #0x14]
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	asr r2, r0, #0xb
	lsr r2, r2, #0x14
	add r2, r0, r2
	asr r0, r2, #0xc
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov96_021E872C
	cmp r0, #0
	add r0, sp, #0x20
	beq _021F212C
	ldr r2, [sp, #0x18]
	lsl r1, r4, #2
	str r2, [r0, r1]
	mov r1, #1
	add r0, sp, #0x1c
	strb r1, [r0, r4]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _021F2136
_021F212C:
	lsl r2, r4, #2
	mov r1, #0
	str r1, [r0, r2]
	add r0, sp, #0x1c
	strb r1, [r0, r4]
_021F2136:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F20E8
	cmp r5, #0
	bne _021F214A
	add sp, #0x2c
	mov r0, #0xc
	pop {r4, r5, r6, r7, pc}
_021F214A:
	mov r2, #3
	mov r3, #0
	add r0, sp, #0x20
	add r1, sp, #0x1c
_021F2152:
	ldrb r4, [r1, r3]
	cmp r4, #0
	beq _021F2164
	lsl r4, r3, #2
	ldr r4, [r0, r4]
	cmp r4, r6
	bge _021F2164
	add r2, r3, #0
	add r6, r4, #0
_021F2164:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #3
	blo _021F2152
	cmp r2, #3
	bne _021F217C
	bl GF_AssertFail
	add sp, #0x2c
	mov r0, #0xc
	pop {r4, r5, r6, r7, pc}
_021F217C:
	ldr r0, [sp, #8]
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F20C4

	thumb_func_start ov96_021F218C
ov96_021F218C: ; 0x021F218C
	push {r3, r4, lr}
	sub sp, #0x34
	add r2, r0, #0
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r4, r1, #0
	ldr r0, [r2]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x2c]
	add r3, sp, #0x1c
	bl ov96_021EAF78
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	add r3, sp, #0x10
	bl ov96_021EAF78
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	add r2, sp, #0x28
	add r0, r1, r0
	lsl r4, r0, #0xc
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	add r1, sp, #0x10
	bl VEC_Subtract
	add r0, sp, #0x28
	bl VEC_Mag
	cmp r0, r4
	bgt _021F21E4
	add sp, #0x34
	mov r0, #1
	pop {r3, r4, pc}
_021F21E4:
	mov r0, #0
	add sp, #0x34
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F218C

	thumb_func_start ov96_021F21EC
ov96_021F21EC: ; 0x021F21EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
_021F21F6:
	ldr r0, [sp, #8]
	mov r1, #0xc0
	ldr r2, _021F22F8 ; =_0221DCA0
	mul r1, r0
	add r5, r2, r1
	mov r1, #3
	mov r4, #0
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r1, #3
	bl _s32_div_f
	ldr r0, [sp]
	add r2, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r2, r0
	ldr r0, [sp, #0xc]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021F22F8 ; =_0221DCA0
	lsl r0, r0, #4
	add r7, r1, r0
_021F2236:
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _021F2248
	lsl r1, r4, #4
	mov r0, #0
	add r2, r5, r1
	str r0, [r5, r1]
	str r0, [r2, #8]
	b _021F22DC
_021F2248:
	cmp r4, r0
	blo _021F22DC
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r6, #0
	mul r2, r0
	ldr r0, [sp, #0xc]
	add r2, r0, r2
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	cmp r0, #1
	bne _021F227E
	ldr r0, [r6, #0x18]
	cmp r0, #1
	beq _021F229A
_021F227E:
	lsl r2, r4, #4
	mov r0, #0
	str r0, [r5, r2]
	add r1, r5, r2
	mov r0, #0xc0
	add r3, r4, #0
	mul r3, r0
	mov r2, #0
	str r2, [r7, r3]
	str r2, [r1, #8]
	add r0, r7, r3
	add r1, r2, #0
	str r1, [r0, #8]
	b _021F22DC
_021F229A:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl ov96_021F218C
	cmp r0, #0
	beq _021F22C2
	lsl r1, r4, #4
	mov r0, #1
	str r0, [r5, r1]
	add r2, r5, r1
	mov r0, #0xc0
	add r1, r4, #0
	mul r1, r0
	mov r0, #1
	str r0, [r7, r1]
	ldr r0, [sp, #4]
	add r3, r7, r1
	str r6, [r2, #8]
	str r0, [r3, #8]
	b _021F22DC
_021F22C2:
	lsl r2, r4, #4
	mov r0, #0
	str r0, [r5, r2]
	add r1, r5, r2
	mov r0, #0xc0
	add r3, r4, #0
	mul r3, r0
	mov r2, #0
	str r2, [r7, r3]
	str r2, [r1, #8]
	add r0, r7, r3
	add r1, r2, #0
	str r1, [r0, #8]
_021F22DC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F2236
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #0xc
	blo _021F21F6
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F22F8: .word _0221DCA0
	thumb_func_end ov96_021F21EC

	thumb_func_start ov96_021F22FC
ov96_021F22FC: ; 0x021F22FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r3, #0
	mov r0, #0xc0
	add r6, r1, #0
	ldr r3, _021F2348 ; =_0221DCA0
	mul r0, r2
	mov r4, #0
	add r5, r3, r0
	add r6, #0x28
_021F2310:
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F2338
	ldr r0, [r1, #8]
	add r1, r6, #0
	add r0, #0x28
	add r2, sp, #0
	bl VEC_Subtract
	add r0, r7, #0
	add r1, sp, #0
	bl VEC_DotProduct
	cmp r0, #0
	ble _021F2338
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F2338:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F2310
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2348: .word _0221DCA0
	thumb_func_end ov96_021F22FC

	thumb_func_start ov96_021F234C
ov96_021F234C: ; 0x021F234C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x198
	mov r5, #0
	add r6, r0, #0
	str r0, [sp]
	str r5, [sp, #0x14]
	add r7, sp, #0x70
	add r6, #0x20
_021F236A:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r0, r4
	add r2, r6, r0
	mov r0, #0x90
	mul r0, r1
	add r1, r2, r0
	add r0, r1, #0
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F23A8
	ldr r0, [r1, #0x18]
	cmp r0, #1
	bne _021F23A8
	ldr r0, [sp, #0x14]
	add r2, r0, #0
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	strb r5, [r7, r0]
_021F23A8:
	mov r2, #0xc
	add r0, r1, #0
	add r3, r5, #0
	mul r3, r2
	add r2, sp, #0x7c
	add r0, #0x1c
	add r1, #0x28
	add r2, r2, r3
	bl VEC_Subtract
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	blo _021F236A
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021F23CE
	b _021F276E
_021F23CE:
	mov r2, #0x1b
	mov r0, #0
	add r1, sp, #0x10c
	lsl r2, r2, #6
	bl MIi_CpuClear32
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bhi _021F23E6
	b _021F25D4
_021F23E6:
	ldr r1, _021F26AC ; =FX_SinCosTable_ + 0x800
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xc]
_021F23EE:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x70
	ldrb r7, [r1, r0]
	ldr r0, _021F26B0 ; =0x000007CC
	mov r1, #0
	mov r2, #0x7b
	str r1, [sp, #0x60]
	add r0, sp
	lsl r2, r2, #4
	bl MI_CpuFill8
	ldr r0, [sp, #0x10]
	mov r1, #0x90
	mul r1, r0
	add r2, sp, #0x10c
	add r4, r2, r1
	ldr r1, _021F26B0 ; =0x000007CC
	mov r5, #0
	add r1, sp
	mov r6, #0xc
	mov r0, #0xa4
_021F2418:
	add r2, r5, #0
	mul r2, r6
	add r3, r4, r2
	add r2, r5, #0
	mul r2, r0
	str r3, [r1, r2]
	add r2, r5, #1
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	cmp r5, #0xc
	blo _021F2418
	add r0, sp, #0x64
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r3, r4, #0
	mul r3, r0
	mov r0, #0x90
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	mov r5, #1
	add r0, r0, r3
	add r3, r2, r0
	add r3, #0x54
	add r2, sp, #0x48
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x18]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp]
	str r0, [sp, #0x20]
	add r0, #0x48
	str r0, [sp, #0x20]
_021F2476:
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #0x20]
	add r0, r0, r2
	str r0, [sp, #0x1c]
	mov r0, #0x90
	mul r0, r1
	str r0, [sp, #0x24]
	mov r1, #1
	add r0, sp, #0x64
	strb r1, [r0, r7]
	cmp r5, #0
	beq _021F2532
	mov r0, #0xa4
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021F26B0 ; =0x000007CC
	add r0, sp
	add r4, r0, r1
	mov r0, #0
	strh r0, [r4, #0x10]
	add r6, r4, #0
	strh r0, [r4, #0x12]
	add r5, r0, #0
	mov r0, #0xc0
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021F26B4 ; =_0221DCA0
	add r6, #0x10
	add r0, r0, r1
	str r0, [sp, #8]
_021F24CA:
	ldr r1, [sp, #8]
	lsl r0, r5, #4
	ldr r2, [sp, #8]
	add r1, r1, r0
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _021F2514
	ldr r0, [r1, #8]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	add r0, #0x28
	add r1, r2, r1
	add r2, sp, #0x3c
	bl VEC_Subtract
	ldr r0, [sp, #0x18]
	add r1, sp, #0x3c
	bl VEC_DotProduct
	cmp r0, #0
	ble _021F2514
	ldrh r0, [r4, #0x10]
	add r3, sp, #0x3c
	add r0, r4, r0
	strb r5, [r0, #4]
	ldrh r1, [r4, #0x10]
	mov r0, #0xc
	mul r0, r1
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
_021F2514:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	blo _021F24CA
	mov r0, #0xa4
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021F26B0 ; =0x000007CC
	add r0, sp
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl VEC_Add
_021F2532:
	mov r0, #0xa4
	add r1, r7, #0
	mul r1, r0
	ldr r0, _021F26B0 ; =0x000007CC
	mov r5, #0
	add r0, sp
	add r4, r0, r1
	ldrh r0, [r4, #0x12]
	ldrh r1, [r4, #0x10]
	cmp r0, r1
	blo _021F2558
	add r1, r5, #0
	add r0, sp, #0x64
	strb r1, [r0, r7]
	add r0, sp, #0x54
	bl ov96_021F27A8
	add r7, r0, #0
	b _021F25BC
_021F2558:
	add r1, r4, r0
	ldrb r2, [r1, #4]
	add r1, sp, #0x64
	ldrb r1, [r1, r2]
	cmp r1, #0
	beq _021F256A
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _021F25BC
_021F256A:
	add r0, sp, #0x54
	add r1, r7, #0
	bl ov96_021F2780
	cmp r0, #0xff
	beq _021F25C2
	ldrh r2, [r4, #0x12]
	add r3, r4, #0
	mov r1, #0xc
	ldr r0, [r4]
	add r3, #0x14
	mul r1, r2
	add r1, r3, r1
	bl ov96_021F2814
	ldr r1, [sp, #0xc]
	cmp r0, r1
	blt _021F259C
	ldr r3, [r4]
	add r2, sp, #0x48
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021F25B0
_021F259C:
	ldrh r2, [r4, #0x12]
	add r3, r4, #0
	mov r1, #0xc
	mul r1, r2
	add r3, #0x14
	ldr r0, [r4]
	ldr r2, [sp, #0x18]
	add r1, r3, r1
	bl ov96_021F27B8
_021F25B0:
	ldrh r1, [r4, #0x12]
	mov r5, #1
	add r0, r1, #1
	strh r0, [r4, #0x12]
	add r0, r4, r1
	ldrb r7, [r0, #4]
_021F25BC:
	cmp r7, #0xff
	beq _021F25C2
	b _021F2476
_021F25C2:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _021F25D4
	b _021F23EE
_021F25D4:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bhi _021F25E0
	b _021F2704
_021F25E0:
	ldr r0, [sp, #4]
	mov r1, #0x90
	mul r1, r0
	ldr r0, [sp]
	add r2, sp, #0x10c
	str r0, [sp, #0x28]
	add r0, #0x20
	mov r5, #0
	add r7, r2, r1
	str r0, [sp, #0x28]
_021F25F4:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #0x28]
	add r6, r1, #0
	add r4, r0, r2
	mov r0, #0x90
	mul r6, r0
	mov r0, #0xc
	mul r0, r5
	str r0, [sp, #0x2c]
	add r0, r4, r6
	ldr r1, [sp, #0x2c]
	add r0, #0x28
	add r1, r7, r1
	add r2, r0, #0
	bl VEC_Add
	ldr r0, [sp, #0x2c]
	add r0, r7, r0
	bl VEC_Mag
	cmp r0, #0
	beq _021F2652
	add r0, r4, r6
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F2652
	add r2, r4, r6
	add r2, #0x28
	add r3, r4, r6
	ldmia r2!, {r0, r1}
	add r3, #0x1c
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
_021F2652:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	blo _021F25F4
	ldr r0, [sp, #4]
	add r1, sp, #0x70
	ldrb r4, [r1, r0]
	mov r1, #3
	add r0, r4, #0
	bl _s32_div_f
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	ldr r2, [sp]
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, #0x20
	mul r0, r5
	add r2, r2, r0
	mov r0, #0x90
	mul r0, r1
	add r5, r2, r0
	add r0, r5, #0
	add r0, #0x8e
	ldrh r0, [r0]
	cmp r0, #0
	bne _021F26F2
	mov r1, #0x72
	mov r3, #0
	lsl r1, r1, #4
_021F2696:
	ldr r0, [sp]
	add r2, r0, r3
	ldrb r0, [r2, r1]
	cmp r4, r0
	bne _021F26B8
	mov r0, #0x72
	mov r1, #0xc
	lsl r0, r0, #4
	strb r1, [r2, r0]
	b _021F26BE
	nop
_021F26AC: .word FX_SinCosTable_ + 0x800
_021F26B0: .word 0x000007CC
_021F26B4: .word _0221DCA0
_021F26B8:
	add r3, r3, #1
	cmp r3, #4
	blt _021F2696
_021F26BE:
	ldr r0, [r5, #0x18]
	cmp r0, #1
	beq _021F26C8
	bl GF_AssertFail
_021F26C8:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x44
	strb r1, [r0]
	add r0, r5, #0
	add r3, r5, #0
	add r2, r5, #0
	mov r1, #0x3c
	add r0, #0x45
	add r3, #0x28
	strb r1, [r0]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0
	str r0, [r5, #0x34]
	str r0, [r5, #0x38]
	add r5, #0x41
	strb r0, [r5]
_021F26F2:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #4]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _021F2704
	b _021F25E0
_021F2704:
	ldr r0, [sp]
	mov r5, #0
	add r0, #0x20
	str r0, [sp]
	add r7, sp, #0x30
_021F270E:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp]
	add r6, r1, #0
	add r4, r0, r2
	mov r0, #0x90
	mul r6, r0
	add r0, r4, r6
	add r1, r4, r6
	add r0, #0x1c
	add r1, #0x28
	add r2, r7, #0
	bl VEC_Subtract
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	add r0, sp, #0x7c
	add r0, r0, r1
	add r1, r7, #0
	bl VEC_DotProduct
	cmp r0, #0
	bge _021F2764
	add r2, r4, r6
	add r2, #0x28
	add r3, r4, r6
	ldmia r2!, {r0, r1}
	add r3, #0x1c
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
_021F2764:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xc
	blo _021F270E
_021F276E:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x198
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F234C

	thumb_func_start ov96_021F2780
ov96_021F2780: ; 0x021F2780
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #0xc
	blt _021F2790
	bl GF_AssertFail
_021F2790:
	ldr r1, [r5, #0xc]
	cmp r1, #0xc
	blt _021F279A
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_021F279A:
	add r0, r1, #1
	str r0, [r5, #0xc]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	strb r4, [r5, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021F2780

	thumb_func_start ov96_021F27A8
ov96_021F27A8: ; 0x021F27A8
	ldr r1, [r0, #0xc]
	sub r1, r1, #1
	bpl _021F27B2
	mov r0, #0xff
	bx lr
_021F27B2:
	str r1, [r0, #0xc]
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov96_021F27A8

	thumb_func_start ov96_021F27B8
ov96_021F27B8: ; 0x021F27B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r1, sp, #0x18
	add r4, r0, #0
	add r6, r2, #0
	bl VEC_Normalize
	add r0, r5, #0
	add r1, sp, #0xc
	bl VEC_Normalize
	add r0, sp, #0x18
	add r1, sp, #0xc
	bl VEC_DotProduct
	add r5, r0, #0
	add r0, r4, #0
	bl VEC_Mag
	add r2, r0, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	asr r1, r5, #0x1f
	add r0, r5, #0
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, sp, #0xc
	add r2, sp, #0
	add r3, r6, #0
	bl VEC_MultAdd
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov96_021F27B8

	thumb_func_start ov96_021F2814
ov96_021F2814: ; 0x021F2814
	push {r4, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r1, sp, #0xc
	bl VEC_Normalize
	add r0, r4, #0
	add r1, sp, #0
	bl VEC_Normalize
	add r0, sp, #0xc
	add r1, sp, #0
	bl VEC_DotProduct
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov96_021F2814

	thumb_func_start ov96_021F2834
ov96_021F2834: ; 0x021F2834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, _021F2950 ; =0x0000072B
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021F2844
	b _021F294A
_021F2844:
	mov r0, #0
	add r1, sp, #0x10
	add r5, r0, #0
_021F284A:
	add r0, r0, #1
	strb r5, [r1]
	add r1, r1, #1
	cmp r0, #4
	blt _021F284A
	ldr r1, _021F2950 ; =0x0000072B
	add r7, r4, #0
	add r0, r1, #0
	strb r5, [r4, r1]
	add r0, #0x23
	strb r5, [r4, r0]
	add r1, #0x24
	strb r5, [r4, r1]
	add r7, #0x20
_021F2866:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	lsl r0, r0, #4
	mul r0, r6
	add r2, r7, r0
	mov r0, #0x90
	mul r0, r1
	add r6, r2, r0
	ldr r0, [r6, #0x18]
	cmp r0, #1
	bne _021F28F6
	add r0, sp, #8
	str r0, [sp]
	ldr r1, [r6, #0x28]
	ldr r0, [r6]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [r6, #0x2c]
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #0xc
	bl ov96_021EB06C
	mov r0, #0x73
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r0, r0, #0x18
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, sp, #4
	bl ov96_021F3180
	add r2, r0, #0
	beq _021F28F6
	add r0, r6, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r6, #0x42
	add r3, sp, #0x10
	add r0, r0, r2
	strh r0, [r6]
	add r0, sp, #4
	ldrb r1, [r0]
	add r0, sp, #0x10
	ldrb r0, [r0, r1]
	add r6, r0, #1
	strb r6, [r3, r1]
	mov r3, #0xc
	add r6, r1, #0
	mul r6, r3
	add r3, sp, #0x18
	add r3, r3, r6
	strb r5, [r0, r3]
	add r0, sp, #0x14
	strb r2, [r0, r1]
_021F28F6:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021F2866
	mov r0, #0
	mov ip, r0
	add r7, sp, #0x18
	add r1, sp, #0x14
	add r2, sp, #0x10
_021F2906:
	ldrb r3, [r2]
	mov r0, #0
	cmp r3, #0
	ble _021F293A
_021F290E:
	ldr r3, _021F2954 ; =0x0000074E
	ldrb r6, [r7, r0]
	ldrb r3, [r4, r3]
	add r0, r0, #1
	add r5, r4, r3
	mov r3, #0x75
	lsl r3, r3, #4
	strb r6, [r5, r3]
	sub r3, r3, #2
	ldrb r3, [r4, r3]
	ldrb r6, [r1]
	add r5, r4, r3
	ldr r3, _021F2958 ; =0x0000075C
	strb r6, [r5, r3]
	sub r3, #0xe
	ldrb r3, [r4, r3]
	add r5, r3, #1
	ldr r3, _021F2954 ; =0x0000074E
	strb r5, [r4, r3]
	ldrb r3, [r2]
	cmp r0, r3
	blt _021F290E
_021F293A:
	mov r0, ip
	add r0, r0, #1
	add r7, #0xc
	add r1, r1, #1
	add r2, r2, #1
	mov ip, r0
	cmp r0, #4
	blt _021F2906
_021F294A:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2950: .word 0x0000072B
_021F2954: .word 0x0000074E
_021F2958: .word 0x0000075C
	thumb_func_end ov96_021F2834

	thumb_func_start ov96_021F295C
ov96_021F295C: ; 0x021F295C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #1
	cmp r5, #1
	blt _021F2978
_021F2968:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl ov96_021F2984
	add r4, r4, #1
	cmp r4, r5
	ble _021F2968
_021F2978:
	add r0, r6, #0
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F295C

	thumb_func_start ov96_021F2984
ov96_021F2984: ; 0x021F2984
	push {r3, lr}
	sub sp, #0x10
	cmp r0, #1
	blo _021F299A
	cmp r0, #6
	bhi _021F299A
	sub r0, r0, #1
	lsl r3, r0, #1
	add r3, #0x12
	mov r0, #2
	b _021F29DC
_021F299A:
	cmp r0, #0x10
	blo _021F29AE
	cmp r0, #0x1c
	bhi _021F29AE
	sub r0, #0x10
	lsl r2, r0, #1
	mov r0, #0x1a
	sub r3, r0, r2
	mov r0, #0x14
	b _021F29DC
_021F29AE:
	cmp r0, #0x26
	blo _021F29C0
	cmp r0, #0x2b
	bhs _021F29C0
	sub r0, #0x26
	lsl r0, r0, #1
	add r3, r0, #4
	mov r0, #2
	b _021F29DC
_021F29C0:
	cmp r0, #7
	blo _021F29D2
	cmp r0, #0xf
	bhi _021F29D2
	sub r0, r0, #7
	lsl r0, r0, #1
	mov r3, #0x1c
	add r0, r0, #4
	b _021F29DC
_021F29D2:
	sub r0, #0x1d
	lsl r2, r0, #1
	mov r0, #0x12
	mov r3, #2
	sub r0, r0, r2
_021F29DC:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r1, #0
	mov r1, #1
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add sp, #0x10
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov96_021F2984

	thumb_func_start ov96_021F2A00
ov96_021F2A00: ; 0x021F2A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, _021F2A80 ; =ov96_0221BDD4
	mov r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #4]
	mov r7, #2
_021F2A14:
	ldr r4, [sp, #8]
	ldr r5, [sp, #4]
	mov r6, #0
_021F2A1A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021F2A56
	str r7, [r4, #0x18]
	add r0, sp, #0x10
	str r0, [sp]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldr r0, [r4]
	add r3, sp, #0x14
	bl ov96_021EB0A4
	ldr r0, [sp, #0x14]
	add r3, r4, #0
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	lsl r0, r0, #0xc
	add r3, #0x28
	str r0, [r4, #0x2c]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r4, #0
	str r0, [r2]
	add r1, #0x40
	mov r0, #2
	strb r0, [r1]
_021F2A56:
	add r6, r6, #1
	add r4, #0x90
	add r5, r5, #4
	cmp r6, #3
	blt _021F2A1A
	mov r1, #0x1b
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _021F2A14
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2A80: .word ov96_0221BDD4
	thumb_func_end ov96_021F2A00

	thumb_func_start ov96_021F2A84
ov96_021F2A84: ; 0x021F2A84
	mov r2, #0x1b
	lsl r2, r2, #4
	mul r2, r1
	mov r3, #0
	add r1, r0, r2
_021F2A8E:
	ldr r0, [r1, #0x38]
	cmp r0, #0
	beq _021F2A98
	mov r0, #0
	bx lr
_021F2A98:
	add r3, r3, #1
	add r1, #0x90
	cmp r3, #3
	blt _021F2A8E
	mov r0, #1
	bx lr
	thumb_func_end ov96_021F2A84

	thumb_func_start ov96_021F2AA4
ov96_021F2AA4: ; 0x021F2AA4
	add r1, r0, #0
	add r1, #0x44
	ldrb r1, [r1]
	cmp r1, #0
	beq _021F2AE0
	add r1, r0, #0
	add r1, #0x45
	ldrb r1, [r1]
	sub r2, r1, #1
	add r1, r0, #0
	add r1, #0x45
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x45
	ldrb r1, [r1]
	cmp r1, #0
	bne _021F2B20
	add r1, r0, #0
	mov r2, #0
	add r1, #0x45
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x44
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x8c
	ldrh r1, [r1]
	add r0, #0x8e
	strh r1, [r0]
	bx lr
_021F2AE0:
	add r1, r0, #0
	add r1, #0x8e
	ldrh r1, [r1]
	add r2, r1, #2
	add r1, r0, #0
	add r1, #0x8e
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0x8c
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0x8e
	ldrh r1, [r1]
	cmp r1, r2
	bls _021F2B04
	add r1, r0, #0
	add r1, #0x8e
	strh r2, [r1]
_021F2B04:
	add r1, r0, #0
	add r1, #0x8e
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0x8c
	ldrh r1, [r1]
	cmp r2, r1
	bne _021F2B20
	add r1, r0, #0
	mov r2, #0
	add r1, #0x45
	strb r2, [r1]
	add r0, #0x44
	strb r2, [r0]
_021F2B20:
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F2AA4

	thumb_func_start ov96_021F2B24
ov96_021F2B24: ; 0x021F2B24
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r4, [sp, #0x10]
	bl ov96_021E60D8
	ldrb r1, [r0]
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	add r1, r4, #0
	add r1, #0x8a
	strh r2, [r1]
	ldrb r1, [r0, #3]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r2, [r1, #0x14]
	add r1, r4, #0
	add r1, #0x8c
	strh r2, [r1]
	ldrb r1, [r0, #3]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r2, [r1, #0x14]
	add r1, r4, #0
	add r1, #0x8e
	strh r2, [r1]
	ldrb r0, [r0, #1]
	add r4, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021F2B24

	thumb_func_start ov96_021F2B68
ov96_021F2B68: ; 0x021F2B68
	push {r3, r4, r5, lr}
	add r4, r0, #0
	strh r1, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	mov r2, #0
	ldr r0, _021F2BA4 ; =ov96_021F2BB4
	strb r2, [r4]
	add r1, r4, #0
	add r5, r3, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #4]
	ldr r0, _021F2BA8 ; =ov96_021F2C04
	add r1, r4, #0
	mov r2, #1
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0xc]
	mov r1, #2
	ldr r0, _021F2BAC ; =0x04000018
	str r5, [r4, #0x30]
	lsl r1, r1, #0x16
	str r1, [r0]
	ldr r0, _021F2BB0 ; =ov96_021F2CD0
	add r1, r4, #0
	mov r2, #2
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2BA4: .word ov96_021F2BB4
_021F2BA8: .word ov96_021F2C04
_021F2BAC: .word 0x04000018
_021F2BB0: .word ov96_021F2CD0
	thumb_func_end ov96_021F2B68

	thumb_func_start ov96_021F2BB4
ov96_021F2BB4: ; 0x021F2BB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021F2BC6
	cmp r0, #1
	beq _021F2BDE
	pop {r3, r4, r5, pc}
_021F2BC6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F2BFE
	ldr r0, _021F2C00 ; =ov96_021F2D68
	mov r2, #3
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x10]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_021F2BDE:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021F2BFE
	mov r0, #0
	str r0, [r4, #4]
	strb r0, [r4]
	ldr r0, [r4, #0x30]
	bl ov96_021E5F54
	bl ov96_021E8A20
	mov r1, #1
	strb r1, [r0, #8]
	add r0, r5, #0
	bl SysTask_Destroy
_021F2BFE:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2C00: .word ov96_021F2D68
	thumb_func_end ov96_021F2BB4

	thumb_func_start ov96_021F2C04
ov96_021F2C04: ; 0x021F2C04
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _021F2C1C
	cmp r1, #1
	beq _021F2C5A
	cmp r1, #2
	beq _021F2C86
	add sp, #4
	pop {r3, r4, pc}
_021F2C1C:
	ldrh r0, [r4, #0x18]
	add r0, r0, #1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	cmp r0, #5
	bhi _021F2C50
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xc
	mul r0, r1
	mov r1, #5
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r4, #4
	str r0, [sp]
	mov r3, #0xc
	ldr r0, _021F2CC8 ; =0x04000050
	mov r1, #0
	mov r2, #1
	sub r3, r3, r4
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
_021F2C50:
	ldrb r0, [r4, #1]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_021F2C5A:
	ldrh r1, [r4, #0x1e]
	ldr r0, [r4, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021F31F0
	ldrh r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021F3298
	mov r0, #0
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldr r0, _021F2CCC ; =0x0000089F
	bl PlaySE
	add sp, #4
	pop {r3, r4, pc}
_021F2C86:
	ldrh r1, [r4, #0x18]
	add r1, r1, #1
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r1, #5
	bhi _021F2CB8
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xc
	mul r0, r1
	mov r1, #5
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021F2CC8 ; =0x04000050
	mov r1, #0
	mov r2, #1
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
_021F2CB8:
	mov r1, #0
	str r1, [r4, #0xc]
	strh r1, [r4, #0x18]
	strb r1, [r4, #1]
	bl SysTask_Destroy
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021F2CC8: .word 0x04000050
_021F2CCC: .word 0x0000089F
	thumb_func_end ov96_021F2C04

	thumb_func_start ov96_021F2CD0
ov96_021F2CD0: ; 0x021F2CD0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _021F2CE6
	cmp r0, #1
	beq _021F2D16
	cmp r0, #2
	beq _021F2D2E
	pop {r3, r4, r5, pc}
_021F2CE6:
	ldrh r0, [r4, #0x1a]
	mov r1, #5
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #7
	bl _s32_div_f
	mov r1, #0x80
	sub r0, r1, r0
	lsl r1, r0, #0x10
	ldr r0, _021F2D60 ; =0x01FF0000
	and r1, r0
	ldr r0, _021F2D64 ; =0x04000018
	str r1, [r0]
	ldrh r0, [r4, #0x1a]
	cmp r0, #5
	blo _021F2D5E
	mov r0, #0
	strh r0, [r4, #0x1a]
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
_021F2D16:
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x14
	blo _021F2D5E
	mov r0, #0
	strh r0, [r4, #0x1a]
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
_021F2D2E:
	ldrh r0, [r4, #0x1a]
	mov r1, #5
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #7
	neg r0, r0
	bl _s32_div_f
	lsl r1, r0, #0x10
	ldr r0, _021F2D60 ; =0x01FF0000
	and r1, r0
	ldr r0, _021F2D64 ; =0x04000018
	str r1, [r0]
	ldrh r0, [r4, #0x1a]
	cmp r0, #5
	blo _021F2D5E
	mov r0, #0
	strh r0, [r4, #0x1a]
	str r0, [r4, #8]
	strb r0, [r4, #2]
	add r0, r5, #0
	bl SysTask_Destroy
_021F2D5E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2D60: .word 0x01FF0000
_021F2D64: .word 0x04000018
	thumb_func_end ov96_021F2CD0

	thumb_func_start ov96_021F2D68
ov96_021F2D68: ; 0x021F2D68
	push {r4, lr}
	mov r2, #0x24
	ldrsh r4, [r1, r2]
	ldrh r2, [r1, #0x26]
	lsl r3, r2, #2
	ldr r2, _021F2D94 ; =ov96_0221DB70
	ldr r2, [r2, r3]
	add r2, r4, r2
	strh r2, [r1, #0x24]
	ldrh r2, [r1, #0x26]
	add r2, r2, #1
	strh r2, [r1, #0x26]
	ldrh r2, [r1, #0x26]
	cmp r2, #0x12
	blo _021F2D92
	mov r2, #0
	strh r2, [r1, #0x24]
	str r2, [r1, #0x10]
	strh r2, [r1, #0x26]
	bl SysTask_Destroy
_021F2D92:
	pop {r4, pc}
	.balign 4, 0
_021F2D94: .word ov96_0221DB70
	thumb_func_end ov96_021F2D68

	thumb_func_start ov96_021F2D98
ov96_021F2D98: ; 0x021F2D98
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #3]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F2DC0
	ldr r0, [r4, #0x30]
	bl ov96_021E5F54
	bl ov96_021E8A20
	mov r1, #1
	strb r1, [r0, #8]
	ldr r0, [r4, #4]
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #4]
_021F2DC0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F2DCE
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #8]
_021F2DCE:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021F2DDC
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #0xc]
_021F2DDC:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021F2DEA
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #0x10]
_021F2DEA:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F2DF8
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #0x14]
_021F2DF8:
	mov r1, #2
	ldr r0, _021F2E28 ; =0x04000018
	lsl r1, r1, #0x16
	str r1, [r0]
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x26]
	strh r1, [r4, #0x2e]
	strh r1, [r4, #0x24]
	strh r1, [r4, #0x2c]
	mov r3, #0xc
	str r3, [r4, #0x28]
	mov r2, #4
	str r2, [sp]
	add r0, #0x38
	mov r2, #1
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021F2E28: .word 0x04000018
	thumb_func_end ov96_021F2D98

	thumb_func_start ov96_021F2E2C
ov96_021F2E2C: ; 0x021F2E2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021F2E44
	ldr r0, _021F2E48 ; =ov96_021F2E4C
	str r1, [r4, #0x28]
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x14]
_021F2E44:
	pop {r4, pc}
	nop
_021F2E48: .word ov96_021F2E4C
	thumb_func_end ov96_021F2E2C

	thumb_func_start ov96_021F2E4C
ov96_021F2E4C: ; 0x021F2E4C
	push {r4, lr}
	mov r2, #0x2c
	ldrsh r4, [r1, r2]
	ldrh r2, [r1, #0x2e]
	lsl r3, r2, #2
	ldr r2, _021F2E7C ; =ov96_0221DB5C
	ldr r2, [r2, r3]
	add r2, r4, r2
	strh r2, [r1, #0x2c]
	ldrh r2, [r1, #0x2e]
	add r2, r2, #1
	strh r2, [r1, #0x2e]
	ldrh r2, [r1, #0x2e]
	cmp r2, #5
	blo _021F2E7A
	mov r2, #0
	strh r2, [r1, #0x2c]
	str r2, [r1, #0x14]
	strh r2, [r1, #0x2e]
	mov r2, #0xc
	str r2, [r1, #0x28]
	bl SysTask_Destroy
_021F2E7A:
	pop {r4, pc}
	.balign 4, 0
_021F2E7C: .word ov96_0221DB5C
	thumb_func_end ov96_021F2E4C

	thumb_func_start ov96_021F2E80
ov96_021F2E80: ; 0x021F2E80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r3, #0
	add r7, r2, #0
	cmp r0, r4
	bne _021F2EC4
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov96_021E60D8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021F2EC4
	mov r1, #0
	str r1, [sp]
	mov r2, #0x2c
	ldrsh r2, [r5, r2]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	bl ov96_021EAED4
_021F2EC4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F2E80

	thumb_func_start ov96_021F2EC8
ov96_021F2EC8: ; 0x021F2EC8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4]
	ldr r2, _021F2EF8 ; =ov96_0221BC5C
	add r1, r4, #4
	bl AddWindow
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4]
	mov r1, #3
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r4, #0x14]
	mov r0, #0
	lsl r1, r1, #4
	bl LoadFontPal0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021F2EF8: .word ov96_0221BC5C
	thumb_func_end ov96_021F2EC8

	thumb_func_start ov96_021F2EFC
ov96_021F2EFC: ; 0x021F2EFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	add r0, r5, #4
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r2, _021F2F74 ; =0x00000135
	ldr r3, [r5, #0x14]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	bl MessageFormat_New
	mov r1, #0
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r2, r7, #0
	mov r3, #3
	add r6, r0, #0
	bl BufferIntegerAsString
	ldr r3, [r5, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x9e
	bl ReadMsgData_ExpandPlaceholders
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F2F78 ; =0x000F0E00
	mov r1, #4
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r7, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_Delete
	add r0, r4, #0
	bl DestroyMsgData
	add r0, r5, #4
	bl CopyWindowToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2F74: .word 0x00000135
_021F2F78: .word 0x000F0E00
	thumb_func_end ov96_021F2EFC

	thumb_func_start ov96_021F2F7C
ov96_021F2F7C: ; 0x021F2F7C
	push {lr}
	sub sp, #0xc
	add r3, sp, #4
	str r3, [sp]
	asr r3, r1, #0xb
	lsr r3, r3, #0x14
	add r3, r1, r3
	asr r1, r3, #0xc
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #8
	bl ov96_021EB06C
	ldr r0, [sp, #8]
	cmp r0, #0x10
	blt _021F2FAE
	cmp r0, #0xf0
	bge _021F2FAE
	ldr r0, [sp, #4]
	cmp r0, #0x10
	blt _021F2FAE
	cmp r0, #0xb0
	blt _021F2FB4
_021F2FAE:
	add sp, #0xc
	mov r0, #1
	pop {pc}
_021F2FB4:
	mov r0, #0
	add sp, #0xc
	pop {pc}
	.balign 4, 0
	thumb_func_end ov96_021F2F7C

	thumb_func_start ov96_021F2FBC
ov96_021F2FBC: ; 0x021F2FBC
	ldrh r3, [r1, #2]
	ldrh r2, [r0, #2]
	cmp r2, r3
	bls _021F2FCA
	mov r0, #0
	mvn r0, r0
	bx lr
_021F2FCA:
	cmp r2, r3
	bhs _021F2FD2
	mov r0, #1
	bx lr
_021F2FD2:
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r0, r1
	bhs _021F2FE0
	mov r0, #0
	mvn r0, r0
	bx lr
_021F2FE0:
	cmp r0, r1
	bls _021F2FE8
	mov r0, #1
	bx lr
_021F2FE8:
	mov r0, #0
	bx lr
	thumb_func_end ov96_021F2FBC

	thumb_func_start ov96_021F2FEC
ov96_021F2FEC: ; 0x021F2FEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021F2FF6:
	lsl r1, r4, #2
	add r0, sp, #0x14
	add r7, r0, r1
	strh r4, [r0, r1]
	add r0, r6, r4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x1b
	ldr r2, [sp, #8]
	lsl r0, r0, #4
	mul r0, r2
	mov r2, #0x90
	mul r2, r1
	add r0, r5, r0
	add r0, r2, r0
	ldr r2, [sp, #4]
	ldrb r1, [r6, r4]
	ldrb r2, [r2, #0xc]
	ldr r0, [r0, #0x20]
	add r3, sp, #0x10
	bl ov96_021EB06C
	ldr r0, [sp, #0xc]
	strh r0, [r7, #2]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F2FF6
	mov r0, #0x7f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r3, _021F30A0 ; =ov96_021F2FBC
	str r0, [sp]
	add r0, sp, #0x14
	mov r1, #0xc
	mov r2, #4
	bl MATH_QSort
	mov r4, #0
_021F305A:
	lsl r1, r4, #2
	add r0, sp, #0x14
	ldrh r0, [r0, r1]
	mov r1, #3
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r7, #0
	bl _s32_div_f
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	mov r0, #0x1b
	add r2, r1, #0
	lsl r0, r0, #4
	add r3, r6, #0
	mul r3, r0
	mov r0, #0x90
	mul r2, r0
	add r0, r5, r3
	add r0, r2, r0
	ldr r0, [r0, #0x20]
	add r1, r4, #6
	bl ov96_021EABA8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021F305A
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021F30A0: .word ov96_021F2FBC
	thumb_func_end ov96_021F2FEC

	thumb_func_start ov96_021F30A4
ov96_021F30A4: ; 0x021F30A4
	push {r4, lr}
	mov r1, #0x84
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x84
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F30A4

	thumb_func_start ov96_021F30BC
ov96_021F30BC: ; 0x021F30BC
	ldr r3, _021F30C0 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021F30C0: .word FreeToHeap
	thumb_func_end ov96_021F30BC

	thumb_func_start ov96_021F30C4
ov96_021F30C4: ; 0x021F30C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
_021F30CC:
	add r0, r7, #0
	mov r1, #0x65
	mov r2, #2
	bl ov96_021EB4F4
	str r0, [r5, #0xc]
	bl ov96_021EB5B8
	add r6, r0, #0
	mov r1, #1
	bl sub_02024B78
	add r0, r6, #0
	mov r1, #0x64
	bl Sprite_SetDrawPriority
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _021F30CC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F30C4

	thumb_func_start ov96_021F30F8
ov96_021F30F8: ; 0x021F30F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r5, #0xf
	bne _021F3104
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F3104:
	cmp r5, #1
	bhs _021F310C
	mov r0, #0
	b _021F311E
_021F310C:
	cmp r5, #6
	bhs _021F3114
	mov r0, #1
	b _021F311E
_021F3114:
	cmp r5, #0xa
	bhs _021F311C
	mov r0, #2
	b _021F311E
_021F311C:
	mov r0, #3
_021F311E:
	cmp r1, #1
	bne _021F3128
	mov r4, #1
	mov r6, #5
	b _021F3136
_021F3128:
	cmp r1, #2
	bne _021F3132
	mov r4, #6
	mov r6, #4
	b _021F3136
_021F3132:
	mov r4, #0xa
	mov r6, #5
_021F3136:
	cmp r1, r0
	bne _021F316C
	cmp r5, r4
	bhs _021F3142
	bl GF_AssertFail
_021F3142:
	bl LCRandom
	sub r1, r6, #1
	bl _s32_div_f
	sub r0, r5, r4
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
_021F316C:
	bl LCRandom
	add r1, r6, #0
	bl _s32_div_f
	add r0, r4, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F30F8

	thumb_func_start ov96_021F3180
ov96_021F3180: ; 0x021F3180
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	cmp r0, #0xf
	bne _021F3194
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F3194:
	mov r5, #0
	str r5, [sp, #0xc]
	lsl r4, r0, #2
_021F319A:
	ldr r0, _021F31E8 ; =ov96_0221DBC8
	ldr r1, [r0, r4]
	lsl r0, r5, #3
	add r3, r1, r0
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021F31E2
	lsl r1, r0, #2
	ldr r0, _021F31EC ; =ov96_0221DBB8
	add r0, r0, r1
	sub r0, r0, #4
	ldr r0, [r0]
	add r1, r7, #0
	str r0, [sp, #8]
	ldrh r0, [r0]
	str r0, [sp]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	add r0, r6, #0
	bl ov96_021F32FC
	cmp r0, #0
	beq _021F31D8
	ldr r0, [sp, #8]
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	strb r5, [r0]
	b _021F31E2
_021F31D8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021F319A
_021F31E2:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F31E8: .word ov96_0221DBC8
_021F31EC: .word ov96_0221DBB8
	thumb_func_end ov96_021F3180

	thumb_func_start ov96_021F31F0
ov96_021F31F0: ; 0x021F31F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r5, r0, #0
	ldr r0, [sp]
	mov r7, #0
	lsl r1, r0, #2
	ldr r0, _021F3294 ; =ov96_0221DBC8
	ldr r4, [r0, r1]
_021F3202:
	ldr r0, [r4]
	cmp r0, #0
	beq _021F3288
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	lsl r0, r0, #4
	add r6, r5, r0
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021F321C
	bl GF_AssertFail
_021F321C:
	mov r0, #1
	str r0, [r6]
	ldr r0, [sp]
	str r0, [r6, #8]
	add r0, r5, #0
	str r4, [r6, #4]
	add r0, #0x80
	ldr r0, [r0]
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl ov96_021EB5B8
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #1
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r1, [r4]
	add r0, r6, #0
	sub r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r0, [r4, #4]
	add r1, sp, #4
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldrh r0, [r4, #6]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r6, #0
	bl Sprite_SetMatrix
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0x80
	str r1, [r0]
_021F3288:
	add r7, r7, #1
	add r4, #8
	cmp r7, #4
	blt _021F3202
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3294: .word ov96_0221DBC8
	thumb_func_end ov96_021F31F0

	thumb_func_start ov96_021F3298
ov96_021F3298: ; 0x021F3298
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #0xf
_021F32A2:
	ldr r0, [r5, #8]
	cmp r6, r0
	bne _021F32BA
	str r7, [r5, #8]
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5]
	mov r1, #0
	ldr r0, [r5, #0xc]
	add r2, r1, #0
	bl ov96_021EB52C
_021F32BA:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _021F32A2
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F3298

	thumb_func_start ov96_021F32C4
ov96_021F32C4: ; 0x021F32C4
	push {r4, lr}
	mov r4, #0
	cmp r0, #5
	bhi _021F32F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F32D8: ; jump table
	.short _021F32F4 - _021F32D8 - 2 ; case 0
	.short _021F32E4 - _021F32D8 - 2 ; case 1
	.short _021F32E8 - _021F32D8 - 2 ; case 2
	.short _021F32EC - _021F32D8 - 2 ; case 3
	.short _021F32F4 - _021F32D8 - 2 ; case 4
	.short _021F32F0 - _021F32D8 - 2 ; case 5
_021F32E4:
	mov r4, #1
	b _021F32F8
_021F32E8:
	mov r4, #2
	b _021F32F8
_021F32EC:
	mov r4, #3
	b _021F32F8
_021F32F0:
	mov r4, #4
	b _021F32F8
_021F32F4:
	bl GF_AssertFail
_021F32F8:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov96_021F32C4

	thumb_func_start ov96_021F32FC
ov96_021F32FC: ; 0x021F32FC
	push {r3, lr}
	sub sp, #0x18
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	lsl r0, r1, #0xc
	str r0, [sp, #0x10]
	mov r1, #0
	lsl r0, r2, #0xc
	str r0, [sp]
	lsl r0, r3, #0xc
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r1, [sp, #0x14]
	str r1, [sp, #8]
	add r1, sp, #0
	add r2, r0, #0
	bl VEC_Subtract
	add r0, sp, #0xc
	bl VEC_Mag
	add r1, sp, #0x10
	ldrh r1, [r1, #0x10]
	lsl r1, r1, #0xc
	cmp r1, r0
	ble _021F3336
	add sp, #0x18
	mov r0, #1
	pop {r3, pc}
_021F3336:
	mov r0, #0
	add sp, #0x18
	pop {r3, pc}
	thumb_func_end ov96_021F32FC

	thumb_func_start ov96_021F333C
ov96_021F333C: ; 0x021F333C
	push {r4, r5, r6, r7}
	mov r4, #0
	add r3, r4, #0
	add r5, r4, #0
	lsl r2, r0, #2
_021F3346:
	ldr r0, _021F3388 ; =ov96_0221DBC8
	ldr r6, [r0, r2]
	add r0, r6, r5
	ldr r6, [r6, r5]
	cmp r6, #0
	bne _021F335C
	mov r0, #0
	str r0, [r1]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	b _021F3378
_021F335C:
	lsl r7, r6, #2
	ldr r6, _021F338C ; =ov96_0221DBB8
	add r6, r6, r7
	sub r6, r6, #4
	ldr r6, [r6]
	ldrh r6, [r6]
	str r6, [r1]
	ldrh r6, [r0, #4]
	strh r6, [r1, #4]
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021F3378:
	add r3, r3, #1
	add r5, #8
	add r1, #8
	cmp r3, #4
	blt _021F3346
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_021F3388: .word ov96_0221DBC8
_021F338C: .word ov96_0221DBB8
	thumb_func_end ov96_021F333C

	thumb_func_start ov96_021F3390
ov96_021F3390: ; 0x021F3390
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021F33D4 ; =0x000004EC
	add r6, r2, #0
	bl AllocFromHeap
	ldr r2, _021F33D4 ; =0x000004EC
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, _021F33D8 ; =0x000004E4
	mov r1, #4
	sub r2, r1, r5
	strb r5, [r4, r0]
	add r1, r0, #6
	strb r2, [r4, r1]
	ldrb r2, [r4, r1]
	add r1, r0, #5
	cmp r6, #0
	strb r2, [r4, r1]
	bne _021F33C0
	mov r1, #0x14
	b _021F33C2
_021F33C0:
	mov r1, #0xa
_021F33C2:
	add r0, r0, #3
	strb r1, [r4, r0]
	ldr r0, _021F33DC ; =0x000004E7
	ldrb r1, [r4, r0]
	sub r0, r0, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021F33D4: .word 0x000004EC
_021F33D8: .word 0x000004E4
_021F33DC: .word 0x000004E7
	thumb_func_end ov96_021F3390

	thumb_func_start ov96_021F33E0
ov96_021F33E0: ; 0x021F33E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #5
	add r0, r5, r4
	str r2, [r0, #4]
	ldr r2, [sp, #0x10]
	str r3, [r0, #8]
	str r2, [r0, #0xc]
	ldr r2, [sp, #0x14]
	str r2, [r0, #0x10]
	mov r2, #0
	mvn r2, r2
	str r2, [r5, r4]
	ldr r2, [sp, #0x1c]
	str r1, [r0, #0x14]
	str r2, [r0, #0x1c]
	add r0, r1, #0
	mov r1, #3
	bl _s32_div_f
	ldr r1, _021F3420 ; =0x000004E9
	ldrb r1, [r5, r1]
	cmp r0, r1
	blt _021F3418
	ldr r1, [sp, #0x18]
	add r0, r5, r4
	str r1, [r0, #0x18]
	pop {r3, r4, r5, pc}
_021F3418:
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, #0x18]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F3420: .word 0x000004E9
	thumb_func_end ov96_021F33E0

	thumb_func_start ov96_021F3424
ov96_021F3424: ; 0x021F3424
	ldr r3, _021F3428 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021F3428: .word FreeToHeap
	thumb_func_end ov96_021F3424

	thumb_func_start ov96_021F342C
ov96_021F342C: ; 0x021F342C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021F34FC ; =0x000004EA
	add r7, r1, #0
	ldrb r1, [r5, r0]
	mov r4, #0xc
	cmp r1, #4
	bne _021F3440
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F3440:
	sub r1, r0, #4
	ldrb r1, [r5, r1]
	add r2, r1, #1
	sub r1, r0, #4
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	sub r1, r0, #3
	ldrb r1, [r5, r1]
	cmp r2, r1
	blo _021F3484
	add r1, r0, #0
	mov r2, #1
	sub r1, #0x3a
	str r2, [r5, r1]
	sub r2, r0, #4
	mov r1, #0
	strb r1, [r5, r2]
	sub r0, r0, #6
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _021F3484
	ldr r2, _021F3500 ; =0x000004B4
	add r0, r1, #0
	add r3, r2, #0
	add r3, #0x30
_021F3472:
	lsl r6, r1, #2
	add r6, r5, r6
	str r0, [r6, r2]
	add r1, r1, #1
	lsl r1, r1, #0x18
	ldrb r6, [r5, r3]
	lsr r1, r1, #0x18
	cmp r1, r6
	blo _021F3472
_021F3484:
	mov r0, #0x4b
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021F34F6
	add r1, r0, #0
	add r1, #0x39
	ldrb r4, [r5, r1]
	add r1, r0, #0
	add r1, #0x38
	add r0, #0x35
	ldrb r2, [r5, r1]
	mov r1, #2
	ldrb r0, [r5, r0]
	sub r1, r1, r2
	add r2, r4, r0
	lsl r0, r2, #1
	add r0, r2, r0
	add r6, r1, r0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	cmp r0, r4
	bge _021F34BA
	bl GF_AssertFail
_021F34BA:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	bl ov96_021F350C
	lsl r0, r6, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021F3504 ; =0x000004E5
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	sub r1, r0, #1
	ldrb r2, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r2, r1
	blo _021F34F6
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #3
	ldrb r0, [r5, r0]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, _021F3508 ; =0x000004E8
	strb r1, [r5, r0]
	mov r1, #0
	sub r0, #0x38
	str r1, [r5, r0]
_021F34F6:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F34FC: .word 0x000004EA
_021F3500: .word 0x000004B4
_021F3504: .word 0x000004E5
_021F3508: .word 0x000004E8
	thumb_func_end ov96_021F342C

	thumb_func_start ov96_021F350C
ov96_021F350C: ; 0x021F350C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x198
	lsl r1, r1, #5
	str r0, [sp, #8]
	add r0, r0, r1
	str r2, [sp, #0xc]
	str r0, [sp, #0x20]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	bne _021F3524
	b _021F3800
_021F3524:
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _021F3534
	bl GF_AssertFail
	add sp, #0x198
	pop {r3, r4, r5, r6, r7, pc}
_021F3534:
	ldr r1, _021F3804 ; =0x000004E8
	ldr r0, [sp, #8]
	ldrb r0, [r0, r1]
	sub r1, #0x34
	lsl r2, r0, #2
	ldr r0, [sp, #8]
	add r0, r0, r2
	ldr r0, [r0, r1]
	cmp r0, #3
	bge _021F356C
	bl LCRandom
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, #0x1e
	bge _021F356C
	ldr r0, [sp, #8]
	ldr r1, _021F3808 ; =0x000004B4
	add sp, #0x198
	add r2, r0, r1
	add r1, #0x34
	ldrb r0, [r0, r1]
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	add r0, r0, #1
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021F356C:
	ldr r5, [sp, #8]
	mov r4, #0
	add r6, sp, #0x3c
	add r7, sp, #0x38
_021F3574:
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	beq _021F35A6
	ldr r2, [r5, #0xc]
	add r3, sp, #0x40
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldmia r2!, {r1, r2}
	bl ov96_021EAF78
	ldr r1, [sp, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, [sp, #0x3c]
	asr r0, r0, #0xc
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	bl ov96_021F38FC
	b _021F35AA
_021F35A6:
	mov r0, #0
	mvn r0, r0
_021F35AA:
	add r4, r4, #1
	str r0, [r5]
	add r5, #0x20
	cmp r4, #0xc
	blt _021F3574
	ldr r0, [sp, #0x20]
	ldr r2, [r0, #0xc]
	add r0, sp, #0x44
	str r0, [sp]
	ldr r3, [r2]
	ldr r0, [sp, #0x20]
	asr r1, r3, #0xb
	lsr r1, r1, #0x14
	add r1, r3, r1
	ldr r3, [r2, #4]
	ldr r0, [r0, #0x1c]
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r1, r1, #0xc
	asr r2, r2, #0xc
	add r3, sp, #0x48
	bl ov96_021EB06C
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x44]
	bl ov96_021F38FC
	ldr r1, [sp, #0x20]
	str r0, [r1]
	ldr r0, [sp, #0xc]
	add r1, sp, #0xb0
	bl ov96_021F333C
	mov r6, #0
	ldr r5, [sp, #8]
	add r4, sp, #0xb0
	sub r7, r6, #1
_021F35F6:
	ldr r0, [r4]
	cmp r0, #0
	ble _021F360C
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	bl ov96_021F38FC
	mov r1, #0x4a
	lsl r1, r1, #4
	str r0, [r5, r1]
	b _021F3612
_021F360C:
	mov r0, #0x4a
	lsl r0, r0, #4
	str r7, [r5, r0]
_021F3612:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #4
	blt _021F35F6
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	add r2, sp, #0x24
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	add r2, #2
	add r3, sp, #0x24
	bl ov96_021F3B04
	cmp r0, #0
	bne _021F363A
	bl GF_AssertFail
_021F363A:
	ldr r4, [sp, #8]
	mov r0, #0
	mov r1, #6
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r6, r0, #0
	lsl r1, r1, #6
	add r0, r4, #0
	add r5, r0, r1
	add r0, sp, #0x24
	mov r1, #2
	ldrsh r1, [r0, r1]
	add r7, sp, #0x134
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x10]
_021F365C:
	mov r0, #0x67
	lsl r0, r0, #2
	str r6, [r4, r0]
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	ldr r0, [sp, #0x14]
	sub r1, r1, #2
	add r1, r1, r0
	mov r0, #6
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	sub r1, r0, #2
	ldr r0, [sp, #0x10]
	add r1, r1, r0
	mov r0, #0x61
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	blt _021F36A4
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	blt _021F36A4
	cmp r1, #7
	bge _021F36A4
	cmp r0, #5
	blt _021F36AE
_021F36A4:
	mov r0, #0x19
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _021F36B6
_021F36AE:
	mov r0, #0x19
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
_021F36B6:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp, #0x14]
	sub r1, r1, r0
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	ldr r0, [sp, #0x10]
	str r5, [r7]
	sub r0, r2, r0
	mov r2, #0
	mvn r2, r2
	cmp r1, r2
	blt _021F36F2
	cmp r1, #1
	bgt _021F36F2
	add r1, r2, #0
	cmp r0, r1
	blt _021F36F2
	cmp r0, #1
	bgt _021F36F2
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x1c]
	add r1, r1, #1
	str r1, [sp, #0x1c]
	lsl r0, r0, #2
	add r1, sp, #0x8c
	str r5, [r1, r0]
	b _021F3700
_021F36F2:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x18]
	add r1, r1, #1
	str r1, [sp, #0x18]
	lsl r0, r0, #2
	add r1, sp, #0x4c
	str r5, [r1, r0]
_021F3700:
	add r6, r6, #1
	add r4, #0x20
	add r5, #0x20
	add r7, r7, #4
	cmp r6, #0x19
	blt _021F365C
	ldr r0, [sp, #0x1c]
	cmp r0, #9
	beq _021F3716
	bl GF_AssertFail
_021F3716:
	ldr r0, [sp, #0x18]
	cmp r0, #0x10
	beq _021F3720
	bl GF_AssertFail
_021F3720:
	mov r0, #9
	add r1, sp, #0x8c
	bl ov96_021F380C
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x9c]
	ldr r3, [sp, #0x20]
	str r1, [r0, #8]
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x9c]
	add r2, sp, #0xb0
	str r1, [r0, #0xc]
	add r0, sp, #0x8c
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r1, #9
	bl ov96_021F3888
	mov r0, #9
	add r1, sp, #0x8c
	add r2, sp, #0xd0
	bl ov96_021F3B38
	add r4, r0, #0
	ldr r0, [sp, #0xd0]
	ldr r0, [r0, #0x18]
	cmp r0, #3
	blt _021F379C
	bl LCRandom
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x16
	add r0, sp, #0xd0
	ldr r2, [r0, r1]
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [r2, #8]
	ldr r0, [r0, #0x1c]
	ldr r2, [r2, #0xc]
	add r3, sp, #0x34
	bl ov96_021EB0A4
	ldr r0, [sp, #0x34]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	str r1, [r0]
	ldr r0, [sp, #0x30]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	str r1, [r0, #4]
	ldr r0, [sp, #0x20]
	mov r1, #0
	ldr r0, [r0, #0x18]
	add sp, #0x198
	str r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021F379C:
	mov r0, #0x10
	add r1, sp, #0x4c
	bl ov96_021F380C
	add r0, sp, #0x134
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x20]
	mov r1, #0x19
	add r2, sp, #0xb0
	bl ov96_021F3888
	mov r0, #0x19
	add r1, sp, #0x134
	add r2, sp, #0xd0
	bl ov96_021F3B38
	add r4, r0, #0
	bl LCRandom
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x16
	add r0, sp, #0xd0
	ldr r2, [r0, r1]
	add r0, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [r2, #8]
	ldr r0, [r0, #0x1c]
	ldr r2, [r2, #0xc]
	add r3, sp, #0x2c
	bl ov96_021EB0A4
	ldr r0, [sp, #0x2c]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	str r1, [r0]
	ldr r0, [sp, #0x28]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	str r1, [r0, #4]
	ldr r0, [sp, #0x20]
	mov r1, #0
	ldr r0, [r0, #0x18]
	str r1, [r0, #8]
_021F3800:
	add sp, #0x198
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3804: .word 0x000004E8
_021F3808: .word 0x000004B4
	thumb_func_end ov96_021F350C

	thumb_func_start ov96_021F380C
ov96_021F380C: ; 0x021F380C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [sp]
	add r5, r1, #0
	mov r7, #0
	cmp r0, #0
	bls _021F3884
_021F381A:
	lsl r4, r7, #2
	ldr r6, [r5, r4]
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021F386A
	bl LCRandom
	ldr r1, [r6]
	lsl r3, r0, #0x1b
	lsl r2, r1, #5
	lsr r1, r0, #0x1f
	sub r3, r3, r1
	mov r0, #0x1b
	ror r3, r0
	add r2, #0x10
	add r0, r1, r3
	add r0, r2, r0
	str r0, [r6, #8]
	ldr r6, [r5, r4]
	bl LCRandom
	ldr r1, [r6, #4]
	lsl r3, r0, #0x1b
	lsl r2, r1, #5
	lsr r1, r0, #0x1f
	sub r3, r3, r1
	mov r0, #0x1b
	ror r3, r0
	add r0, r1, r3
	add r2, #0x10
	add r0, r2, r0
	str r0, [r6, #0xc]
	ldr r0, [r5, r4]
	mov r1, #7
	ldr r2, [r0, #4]
	ldr r3, [r0]
	mul r1, r2
	add r1, r3, r1
	str r1, [r0, #0x14]
	b _021F3878
_021F386A:
	mov r0, #0
	mvn r0, r0
	str r0, [r6, #8]
	ldr r1, [r5, r4]
	str r0, [r1, #0xc]
	ldr r1, [r5, r4]
	str r0, [r1, #0x14]
_021F3878:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blo _021F381A
_021F3884:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F380C

	thumb_func_start ov96_021F3888
ov96_021F3888: ; 0x021F3888
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r4, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r5, [sp, #0x30]
	cmp r0, #0
	bls _021F38F6
_021F389E:
	lsl r6, r4, #2
	ldr r2, [r5, r6]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _021F38B0
	mov r0, #0x63
	mvn r0, r0
	str r0, [r2, #0x18]
	b _021F38EA
_021F38B0:
	ldr r0, [r2, #8]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r2, #0xc]
	ldr r3, [sp, #0x14]
	str r0, [sp, #4]
	add r0, sp, #0x18
	str r0, [sp, #8]
	ldr r2, [r2, #0x14]
	add r0, r7, #0
	bl ov96_021F3930
	ldr r1, [r5, r6]
	str r0, [r1, #0x18]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021F38EA
	ldr r3, [r5, r6]
	ldr r1, [sp, #0x10]
	add r0, r3, #0
	add r0, #0xc
	str r0, [sp]
	ldr r2, [r3, #0x14]
	add r0, r7, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r3, #8
	bl ov96_021F3AD8
_021F38EA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blo _021F389E
_021F38F6:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F3888

	thumb_func_start ov96_021F38FC
ov96_021F38FC: ; 0x021F38FC
	sub r0, #0x10
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	sub r1, #0x10
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	asr r3, r2, #5
	add r0, r1, r0
	asr r2, r0, #5
	cmp r3, #0
	blt _021F3918
	cmp r2, #0
	bge _021F391E
_021F3918:
	mov r0, #0
	mvn r0, r0
	bx lr
_021F391E:
	mov r1, #7
	add r0, r2, #0
	mul r0, r1
	add r0, r3, r0
	cmp r0, #0x22
	ble _021F392E
	add r0, r1, #0
	sub r0, #8
_021F392E:
	bx lr
	thumb_func_end ov96_021F38FC

	thumb_func_start ov96_021F3930
ov96_021F3930: ; 0x021F3930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r3, #0
	mov r4, #0
	ldr r7, [sp, #0x28]
	cmp r5, #0
	bge _021F394A
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F394A:
	str r4, [r7]
	ldr r0, [r6, #8]
	ldrh r0, [r0]
	cmp r0, #0
	beq _021F3992
	ldr r0, [r6, #0x10]
	ldr r0, [r0]
	cmp r0, #1
	bne _021F3992
	add r0, r1, #0
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov96_021F3A5C
	cmp r0, #0
	beq _021F3970
	add r4, r4, #5
_021F3970:
	lsl r1, r5, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov96_021F3AB0
	cmp r0, #0
	beq _021F3984
	mov r0, #1
	add r4, r4, #4
	str r0, [r7]
_021F3984:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl ov96_021F39F0
	add r4, r4, r0
	b _021F39E8
_021F3992:
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #4]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov96_021F3A5C
	cmp r0, #0
	beq _021F39A6
	add r4, r4, #5
_021F39A6:
	lsl r1, r5, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov96_021F3AB0
	cmp r0, #0
	beq _021F39BA
	mov r0, #1
	add r4, r4, #4
	str r0, [r7]
_021F39BA:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl ov96_021F39F0
	cmp r0, #0
	bne _021F39CA
	add r4, r4, #2
_021F39CA:
	ldr r1, [r6]
	cmp r1, r5
	bne _021F39D2
	add r4, r4, #2
_021F39D2:
	cmp r0, #0
	beq _021F39D8
	mov r4, #0
_021F39D8:
	ldr r2, [r6, #0xc]
	ldr r0, [sp, #4]
	ldmia r2!, {r1, r2}
	bl ov96_021F3A5C
	cmp r0, #0
	beq _021F39E8
	add r4, r4, #4
_021F39E8:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F3930

	thumb_func_start ov96_021F39F0
ov96_021F39F0: ; 0x021F39F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp]
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	str r2, [sp, #4]
	cmp r1, r0
	bne _021F3A0C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F3A0C:
	ldr r0, [sp]
	mov r4, #0
	ldr r7, [r0, #0x14]
	add r6, r4, #0
_021F3A14:
	cmp r6, r7
	beq _021F3A4C
	ldr r1, [r5]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _021F3A4C
	ldr r0, [sp]
	ldr r1, [r0, #4]
	ldr r0, [r5, #4]
	cmp r1, r0
	bge _021F3A4A
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _021F3A46
	sub r4, r4, #1
	b _021F3A4C
_021F3A46:
	sub r4, r4, #2
	b _021F3A4C
_021F3A4A:
	sub r4, r4, #1
_021F3A4C:
	add r6, r6, #1
	add r5, #0x20
	cmp r6, #0xc
	blt _021F3A14
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F39F0

	thumb_func_start ov96_021F3A5C
ov96_021F3A5C: ; 0x021F3A5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0
	add r5, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r4, [sp, #0x14]
	add r7, r4, #0
	add r6, sp, #0
_021F3A6E:
	ldr r0, [r5]
	cmp r0, #0
	ble _021F3AA8
	ldrh r0, [r5, #4]
	add r1, r6, #0
	add r2, r6, #0
	lsl r0, r0, #0xc
	str r0, [sp]
	ldrh r0, [r5, #6]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r7, [sp, #8]
	bl VEC_Subtract
	add r0, r6, #0
	bl VEC_Mag
	ldr r1, [r5]
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _021F3AA0
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F3AA0:
	add r4, r4, #1
	add r5, #8
	cmp r4, #4
	blt _021F3A6E
_021F3AA8:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F3A5C

	thumb_func_start ov96_021F3AB0
ov96_021F3AB0: ; 0x021F3AB0
	push {r4, r5}
	mov r5, #0
	mov r2, #0x4a
	lsl r2, r2, #4
	sub r3, r5, #1
_021F3ABA:
	ldr r4, [r0, r2]
	cmp r4, r3
	beq _021F3AD2
	cmp r1, r4
	bne _021F3ACA
	mov r0, #1
	pop {r4, r5}
	bx lr
_021F3ACA:
	add r5, r5, #1
	add r0, r0, #4
	cmp r5, #4
	blt _021F3ABA
_021F3AD2:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov96_021F3AB0

	thumb_func_start ov96_021F3AD8
ov96_021F3AD8: ; 0x021F3AD8
	push {r3, r4, r5, r6}
	mov r4, #0x4a
	mov r6, #0
	lsl r4, r4, #4
_021F3AE0:
	ldr r5, [r0, r4]
	cmp r2, r5
	bne _021F3AF8
	lsl r0, r6, #3
	add r1, r1, r0
	ldrh r0, [r1, #4]
	str r0, [r3]
	ldrh r1, [r1, #6]
	ldr r0, [sp, #0x10]
	str r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
_021F3AF8:
	add r6, r6, #1
	add r0, r0, #4
	cmp r6, #4
	blt _021F3AE0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov96_021F3AD8

	thumb_func_start ov96_021F3B04
ov96_021F3B04: ; 0x021F3B04
	push {r3, r4}
	sub r0, #0x10
	asr r4, r0, #4
	lsr r4, r4, #0x1b
	add r4, r0, r4
	asr r0, r4, #5
	sub r1, #0x10
	strh r0, [r2]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	strh r0, [r3]
	mov r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	blt _021F3B2C
	ldrsh r0, [r3, r0]
	cmp r0, #0
	bge _021F3B32
_021F3B2C:
	mov r0, #0
	pop {r3, r4}
	bx lr
_021F3B32:
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021F3B04

	thumb_func_start ov96_021F3B38
ov96_021F3B38: ; 0x021F3B38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x13c
	add r6, r0, #0
	add r0, sp, #0x10
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	add r7, r2, #0
	str r0, [sp, #0xc]
	mov ip, r1
	ldr r0, [sp]
	cmp r6, #0
	bls _021F3BAE
_021F3B54:
	add r2, r0, #1
	mov r1, #0xc
	mul r1, r2
	add r2, sp, #4
	lsl r4, r0, #2
	mov r3, ip
	ldr r3, [r3, r4]
	add r2, r2, r1
	str r3, [r2, #8]
	mov r3, #0
	str r3, [r2, #4]
	add r4, r3, #0
	add r3, sp, #4
	str r4, [r3, r1]
	add r1, r4, #0
	cmp r0, #0
	bls _021F3B9C
	ldr r4, [r2, #8]
	ldr r4, [r4, #0x18]
_021F3B7A:
	ldr r3, [r3, #4]
	ldr r5, [r3, #8]
	ldr r5, [r5, #0x18]
	cmp r5, r4
	bge _021F3B92
	ldr r4, [r3]
	str r2, [r4, #4]
	ldr r4, [r3]
	str r4, [r2]
	str r3, [r2, #4]
	str r2, [r3]
	b _021F3B9C
_021F3B92:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	blo _021F3B7A
_021F3B9C:
	cmp r1, r0
	bne _021F3BA4
	str r2, [r3, #4]
	str r3, [r2]
_021F3BA4:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r6
	blo _021F3B54
_021F3BAE:
	ldr r0, [sp, #8]
	mov r2, #0
	ldr r0, [r0, #8]
	cmp r6, #0
	ldr r1, [r0, #0x18]
	add r0, sp, #4
	bls _021F3BE0
_021F3BBC:
	ldr r0, [r0, #4]
	lsl r4, r2, #2
	ldr r3, [r0, #8]
	str r3, [r7, r4]
	ldr r3, [r7, r4]
	ldr r3, [r3, #0x18]
	cmp r1, r3
	bne _021F3BD6
	ldr r3, [sp]
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	str r3, [sp]
_021F3BD6:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, r6
	blo _021F3BBC
_021F3BE0:
	ldr r0, [sp]
	cmp r0, #0
	bne _021F3BEA
	bl GF_AssertFail
_021F3BEA:
	ldr r0, [sp]
	add sp, #0x13c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F3B38

	thumb_func_start ov96_021F3BF0
ov96_021F3BF0: ; 0x021F3BF0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x5d
	lsl r1, r1, #2
	add r5, r0, #0
	add r7, r2, #0
	bl AllocFromHeap
	mov r2, #0x5d
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	str r5, [r4]
	str r6, [r4, #8]
	add r0, r4, #0
	str r7, [r4, #4]
	bl ov96_021F4558
	ldr r2, _021F3C34 ; =0x00000135
	mov r0, #1
	mov r1, #0x1b
	add r3, r5, #0
	bl NewMsgDataFromNarc
	str r0, [r4, #0x5c]
	add r0, r5, #0
	bl MessageFormat_New
	str r0, [r4, #0x60]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3C34: .word 0x00000135
	thumb_func_end ov96_021F3BF0

	thumb_func_start ov96_021F3C38
ov96_021F3C38: ; 0x021F3C38
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	add r5, r7, #0
_021F3C40:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	bl FreeToHeap
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl FreeToHeap
	add r4, r4, #1
	add r5, #8
	cmp r4, #0xc
	blt _021F3C40
	mov r6, #0x55
	mov r5, #0
	add r4, r7, #0
	lsl r6, r6, #2
_021F3C64:
	ldr r0, [r4, r6]
	bl FreeToHeap
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _021F3C64
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl FreeToHeap
	mov r6, #0x5a
	mov r5, #0
	add r4, r7, #0
	lsl r6, r6, #2
_021F3C84:
	ldr r0, [r4, r6]
	bl FreeToHeap
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _021F3C84
	ldr r0, [r7, #0x60]
	bl MessageFormat_Delete
	ldr r0, [r7, #0x5c]
	bl DestroyMsgData
	add r4, r7, #0
	mov r5, #0
	add r4, #0xc
_021F3CA4:
	add r0, r4, #0
	bl RemoveWindow
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #5
	blt _021F3CA4
	add r0, r7, #0
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F3C38

	thumb_func_start ov96_021F3CBC
ov96_021F3CBC: ; 0x021F3CBC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0xd
	str r0, [sp]
	mov r0, #0xa7
	mov r2, #0
	add r3, sp, #0xc
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #0xc]
	add r4, r0, #0
	add r2, r3, #0
	ldr r0, [r5, #8]
	ldr r3, [r3, #8]
	mov r1, #5
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #8]
	mov r1, #5
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	ldr r0, [r5, #8]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	bl FreeToHeap
	mov r1, #0x17
	ldr r0, [r5]
	add r3, r1, #0
	add r3, #0xe9
	str r0, [sp]
	mov r0, #0xa7
	mov r2, #0
	add r3, r5, r3
	bl GfGfxLoader_GetScrnData
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x18
	ldr r0, [r5]
	add r3, r1, #0
	add r3, #0xec
	str r0, [sp]
	mov r0, #0xa7
	mov r2, #0
	add r3, r5, r3
	bl GfGfxLoader_GetScrnData
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x6c
	ldr r3, [r5, r1]
	ldr r0, [r5, #8]
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #7
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r1, #0x12
	ldr r0, [r5]
	add r3, r1, #0
	add r3, #0xfa
	str r0, [sp]
	mov r0, #0xa7
	mov r2, #0
	add r3, r5, r3
	bl GfGfxLoader_GetScrnData
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x13
	ldr r0, [r5]
	add r3, r1, #0
	add r3, #0xfd
	str r0, [sp]
	mov r0, #0xa7
	mov r2, #0
	add r3, r5, r3
	bl GfGfxLoader_GetScrnData
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x11
	ldr r0, [r5]
	add r3, r1, #0
	add r3, #0xf7
	str r0, [sp]
	mov r0, #0xa7
	mov r2, #0
	add r3, r5, r3
	bl GfGfxLoader_GetScrnData
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5]
	mov r1, #0x14
	str r0, [sp]
	mov r0, #0xa7
	add r3, r0, #0
	add r3, #0x6d
	mov r2, #0
	add r3, r5, r3
	bl GfGfxLoader_GetScrnData
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5]
	mov r1, #0x10
	str r0, [sp]
	mov r0, #0xa7
	add r3, r0, #0
	add r3, #0x71
	mov r2, #0
	add r3, r5, r3
	bl GfGfxLoader_GetScrnData
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x80
	add r1, r0, #0
	add r1, #0x8c
	ldr r1, [r5, r1]
	bl ov96_021F4FD8
	mov r0, #0x80
	add r1, r0, #0
	add r1, #0x90
	ldr r1, [r5, r1]
	bl ov96_021F4FD8
	mov r0, #0x80
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r5, r1]
	bl ov96_021F4FD8
	mov r0, #0x80
	add r1, r0, #0
	add r1, #0x88
	ldr r1, [r5, r1]
	bl ov96_021F4FD8
	mov r0, #0x80
	add r1, r0, #0
	add r1, #0x98
	ldr r1, [r5, r1]
	bl ov96_021F4FD8
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	ldr r0, [r5, #8]
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x68
	bl ov96_021F4EF8
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #8]
	mov r1, #6
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	ldr r0, [r5, #8]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021F3CBC

	thumb_func_start ov96_021F3E58
ov96_021F3E58: ; 0x021F3E58
	ldr r3, _021F3E5C ; =ov96_021F4484
	bx r3
	.balign 4, 0
_021F3E5C: .word ov96_021F4484
	thumb_func_end ov96_021F3E58

	thumb_func_start ov96_021F3E60
ov96_021F3E60: ; 0x021F3E60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021F3EBC ; =ov96_0221BFF4
	add r4, sp, #8
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r6, #0
	mov r7, #2
_021F3E76:
	str r7, [sp]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #9
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #6
	bl ov96_021EB2F4
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB334
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB36C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _021F3E76
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3EBC: .word ov96_0221BFF4
	thumb_func_end ov96_021F3E60

	thumb_func_start ov96_021F3EC0
ov96_021F3EC0: ; 0x021F3EC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #4]
	ldr r0, _021F3F7C ; =ov96_0221BFF4
	str r1, [sp, #8]
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0x14]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	add r5, sp, #0x1c
	add r4, sp, #0x14
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r6, #0
	mov r7, #3
_021F3EE2:
	ldr r0, [r4]
	add r1, r7, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [sp, #4]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl ov96_021EB408
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _021F3EE2
	mov r0, #0
	ldr r4, [sp, #8]
	str r0, [sp, #0xc]
	add r7, sp, #0x14
	add r6, sp, #0x1c
	mov r5, #0x40
_021F3F10:
	ldr r1, [r6]
	ldr r2, [r7]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov96_021EB5B8
	mov r1, #2
	str r0, [sp, #0x10]
	bl Sprite_SetDrawPriority
	mov r0, #0
	str r0, [sp, #0x2c]
	lsl r0, r5, #0xc
	str r0, [sp, #0x24]
	mov r0, #0x26
	lsl r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x24
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #1
	add r6, r6, #4
	add r4, r4, #4
	add r5, #0x80
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021F3F10
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov96_021F440C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3F7C: .word ov96_0221BFF4
	thumb_func_end ov96_021F3EC0

	thumb_func_start ov96_021F3F80
ov96_021F3F80: ; 0x021F3F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _021F4248 ; =ov96_0221BFF4
	add r4, r1, #0
	add r2, sp, #0x18
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	ldrb r6, [r3, #4]
	add r2, sp, #0x10
	add r5, r0, #0
	strb r6, [r2, #4]
	ldrb r6, [r3, #5]
	add r4, #0x68
	strb r6, [r2, #5]
	ldrb r6, [r3, #6]
	strb r6, [r2, #6]
	ldrb r6, [r3, #7]
	strb r6, [r2, #7]
	ldrb r6, [r3]
	strb r6, [r2]
	ldrb r6, [r3, #1]
	strb r6, [r2, #1]
	ldrb r6, [r3, #2]
	strb r6, [r2, #2]
	ldrb r3, [r3, #3]
	strb r3, [r2, #3]
	mov r2, #8
	str r2, [sp]
	mov r2, #2
	mov r3, #0x69
	bl ov96_021EB408
	mov r0, #9
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0x69
	bl ov96_021EB408
	mov r0, #0xa
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x69
	bl ov96_021EB408
	mov r6, #0
	mov r7, #0xb
_021F3FE8:
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0x69
	str r7, [sp]
	bl ov96_021EB408
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _021F3FE8
	mov r6, #0
	mov r7, #0xc
_021F4004:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x69
	str r7, [sp]
	bl ov96_021EB408
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F4004
	mov r6, #0
	mov r7, #0xd
_021F4020:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x69
	str r7, [sp]
	bl ov96_021EB408
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F4020
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #8
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r6, r0, #0
	mov r1, #4
	bl Sprite_SetDrawPriority
	add r0, r6, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x18]
	mov r0, #0x22
	lsl r0, r0, #0x10
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0xb4
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #9
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r6, r0, #0
	mov r1, #3
	bl Sprite_SetDrawPriority
	add r0, r6, #0
	mov r1, #1
	bl Set2dSpriteAnimSeqNo
	mov r0, #0x26
	lsl r0, r0, #0xe
	str r0, [sp, #0x18]
	mov r0, #0x22
	lsl r0, r0, #0x10
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0xb8
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0xa
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r6, r0, #0
	mov r1, #5
	bl Sprite_SetDrawPriority
	add r0, r6, #0
	mov r1, #0xd
	bl Set2dSpriteAnimSeqNo
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #2
	lsl r0, r0, #0x14
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	mov r6, #0
_021F411C:
	lsl r7, r6, #2
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0xb
	bl ov96_021EB4F4
	add r1, r4, r7
	add r1, #0xbc
	str r0, [r1]
	add r0, r4, r7
	add r0, #0xbc
	ldr r0, [r0]
	bl ov96_021EB5B8
	str r0, [sp, #4]
	mov r1, #6
	bl Sprite_SetDrawPriority
	add r1, r6, #0
	ldr r0, [sp, #4]
	add r1, #0xb
	bl Set2dSpriteAnimSeqNo
	mov r0, #0xa0
	mul r0, r6
	add r0, #0x30
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	mov r0, #0x86
	lsl r0, r0, #0xe
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, r7
	add r0, #0xbc
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _021F411C
	mov r6, #0
_021F417C:
	lsl r7, r6, #2
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0xc
	bl ov96_021EB4F4
	add r1, r4, r7
	add r1, #0xc8
	str r0, [r1]
	add r0, r4, r7
	add r0, #0xc8
	ldr r0, [r0]
	bl ov96_021EB5B8
	str r0, [sp, #8]
	mov r1, #8
	bl Sprite_SetDrawPriority
	ldr r0, [sp, #8]
	mov r1, #0xe
	bl Set2dSpriteAnimSeqNo
	add r0, sp, #0x14
	ldrb r0, [r0, r6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	add r0, sp, #0x10
	ldrb r0, [r0, r6]
	lsl r1, r0, #0xc
	mov r0, #2
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, r7
	add r0, #0xc8
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F417C
	mov r6, #0
_021F41E0:
	lsl r7, r6, #2
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #0xd
	bl ov96_021EB4F4
	add r1, r4, r7
	add r1, #0xd8
	str r0, [r1]
	add r0, r4, r7
	add r0, #0xd8
	ldr r0, [r0]
	bl ov96_021EB5B8
	str r0, [sp, #0xc]
	mov r1, #7
	bl Sprite_SetDrawPriority
	ldr r0, [sp, #0xc]
	mov r1, #0x12
	bl Set2dSpriteAnimSeqNo
	add r0, sp, #0x14
	ldrb r0, [r0, r6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	add r0, sp, #0x10
	ldrb r0, [r0, r6]
	lsl r1, r0, #0xc
	mov r0, #2
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x18
	bl Sprite_SetMatrix
	add r0, r4, r7
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F41E0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021F4248: .word ov96_0221BFF4
	thumb_func_end ov96_021F3F80

	thumb_func_start ov96_021F424C
ov96_021F424C: ; 0x021F424C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r4, #0
	add r6, r5, #0
	add r6, #0xc
	add r7, r4, #0
_021F425A:
	lsl r0, r4, #4
	add r0, r6, r0
	add r1, r7, #0
	bl FillWindowPixelBuffer
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F425A
	ldr r0, [r5, #4]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x10]
	bl ov96_021E5F34
	ldr r1, [r5]
	bl PlayerProfile_GetPlayerName_NewString
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F4360 ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xc
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov96_021EB5B8
	ldr r1, [sp, #0x10]
	add r1, #0xe
	bl Set2dSpriteAnimSeqNo
	ldr r0, [sp, #0x10]
	mov r4, #0
	add r1, r5, r0
	mov r0, #0x17
	lsl r0, r0, #4
	strb r4, [r1, r0]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0xc
	mov r6, #1
	str r0, [sp, #0x14]
_021F42D2:
	ldr r0, [sp, #0x10]
	cmp r4, r0
	beq _021F4332
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov96_021E5F34
	ldr r1, [r5]
	bl PlayerProfile_GetPlayerName_NewString
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F4360 ; =0x000F0E00
	lsl r1, r6, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	add r0, r0, r1
	mov r1, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov96_021EB5B8
	add r1, r4, #0
	add r1, #0xe
	bl Set2dSpriteAnimSeqNo
	mov r0, #0x17
	add r1, r5, r4
	lsl r0, r0, #4
	strb r6, [r1, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021F4332:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021F42D2
	add r0, r5, #0
	mov r1, #1
	bl ov96_021F459C
	mov r4, #0
	add r5, #0xc
_021F4348:
	lsl r0, r4, #4
	add r0, r5, r0
	bl CopyWindowToVram
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F4348
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4360: .word 0x000F0E00
	thumb_func_end ov96_021F424C

	thumb_func_start ov96_021F4364
ov96_021F4364: ; 0x021F4364
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x64]
	add r4, r1, #0
	cmp r2, r4
	beq _021F438E
	str r4, [r5, #0x64]
	bl ov96_021F459C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov96_021EB5B8
	add r1, r4, #0
	bl Set2dSpriteAnimSeqNo
	add r5, #0x4c
	add r0, r5, #0
	bl CopyWindowToVram
_021F438E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021F4364

	thumb_func_start ov96_021F4390
ov96_021F4390: ; 0x021F4390
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	cmp r2, #4
	bhi _021F43C0
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F43A6: ; jump table
	.short _021F43C0 - _021F43A6 - 2 ; case 0
	.short _021F43B0 - _021F43A6 - 2 ; case 1
	.short _021F43B4 - _021F43A6 - 2 ; case 2
	.short _021F43B8 - _021F43A6 - 2 ; case 3
	.short _021F43BC - _021F43A6 - 2 ; case 4
_021F43B0:
	mov r5, #0x12
	b _021F43C6
_021F43B4:
	mov r5, #0x13
	b _021F43C6
_021F43B8:
	mov r5, #0x14
	b _021F43C6
_021F43BC:
	mov r5, #0x15
	b _021F43C6
_021F43C0:
	bl GF_AssertFail
	mov r5, #0x12
_021F43C6:
	mov r0, #5
	lsl r0, r0, #6
	add r4, r6, r0
	add r1, r6, r7
	add r0, #0x30
	ldrb r0, [r1, r0]
	mov r1, #1
	add r2, r1, #0
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	bl ov96_021EB52C
	ldr r0, [r4, r6]
	bl ov96_021EB5B8
	add r1, r5, #0
	bl Set2dSpriteAnimSeqNo
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F4390

	thumb_func_start ov96_021F43EC
ov96_021F43EC: ; 0x021F43EC
	mov r3, #0
	add r2, r3, #0
_021F43F0:
	add r1, r0, r3
	add r1, #0x70
	strb r2, [r1]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #0xc
	blo _021F43F0
	ldr r3, _021F4408 ; =ov96_021F4724
	str r2, [r0, #0x6c]
	add r0, #0x68
	bx r3
	.balign 4, 0
_021F4408: .word ov96_021F4724
	thumb_func_end ov96_021F43EC

	thumb_func_start ov96_021F440C
ov96_021F440C: ; 0x021F440C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, _021F4480 ; =ov96_0221BFF4
	add r6, r1, #0
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x24]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r4, #0
_021F4420:
	lsl r5, r4, #2
	add r0, sp, #0x10
	ldr r7, [r0, r5]
	ldr r0, [sp]
	add r1, r7, #0
	mov r2, #0
	bl ov96_021EB5EC
	ldr r0, [r0]
	add r1, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r2, #1
	bl ov96_021EB5EC
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl sub_0200AF00
	add r7, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0200B0F8
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #2
	bl NNS_G2dGetImageLocation
	add r1, r6, r5
	add r1, #0x88
	str r0, [r1]
	ldr r0, [sp, #0xc]
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r1, r6, r5
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021F4420
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4480: .word ov96_0221BFF4
	thumb_func_end ov96_021F440C

	thumb_func_start ov96_021F4484
ov96_021F4484: ; 0x021F4484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, sp, #0x10
_021F4490:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	ldr r0, [r6, #4]
	ldr r1, [sp, #0xc]
	add r3, sp, #0x10
	bl ov96_021E6168
	ldrb r0, [r7, #6]
	mov r3, #2
	str r0, [sp]
	ldrh r0, [r7, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	ldrh r1, [r7]
	ldrb r2, [r7, #7]
	add r0, sp, #0x20
	bl GetMonSpriteCharAndPlttNarcIdsEx
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrh r0, [r7]
	str r0, [sp, #8]
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	ldr r2, [r6]
	ldr r3, [sp, #0x1c]
	bl sub_0201457C
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x14]
	ldr r2, [r6]
	bl sub_02014450
	add r1, r5, #0
	add r1, #0x9c
	add r4, r4, #1
	add r5, #8
	str r0, [r1]
	cmp r4, #0xc
	blt _021F4490
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F4484

	thumb_func_start ov96_021F4504
ov96_021F4504: ; 0x021F4504
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	cmp r6, #2
	blo _021F4514
	bl GF_AssertFail
_021F4514:
	cmp r4, #0xc
	blo _021F451C
	bl GF_AssertFail
_021F451C:
	add r7, r5, #0
	lsl r4, r4, #3
	add r7, #0x30
	mov r1, #0x32
	ldr r0, [r7, r4]
	lsl r1, r1, #6
	bl DC_FlushRange
	lsl r6, r6, #2
	add r1, r5, r6
	mov r2, #0x32
	ldr r0, [r7, r4]
	ldr r1, [r1, #0x20]
	lsl r2, r2, #6
	bl GXS_LoadOBJ
	add r7, r5, #0
	add r7, #0x34
	ldr r0, [r7, r4]
	mov r1, #0x20
	bl DC_FlushRange
	add r1, r5, r6
	ldr r0, [r7, r4]
	ldr r1, [r1, #0x28]
	mov r2, #0x20
	bl GXS_LoadOBJPltt
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F4504

	thumb_func_start ov96_021F4558
ov96_021F4558: ; 0x021F4558
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	ldr r7, _021F4598 ; =ov96_0221C028
	mov r4, #0
	add r6, #0xc
_021F4564:
	lsl r1, r4, #4
	lsl r2, r4, #3
	ldr r0, [r5, #8]
	add r1, r6, r1
	add r2, r7, r2
	bl AddWindow
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F4564
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #8]
	mov r1, #4
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r5]
	mov r0, #4
	lsl r1, r1, #4
	bl LoadFontPal0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4598: .word ov96_0221C028
	thumb_func_end ov96_021F4558

	thumb_func_start ov96_021F459C
ov96_021F459C: ; 0x021F459C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	add r0, #0x4c
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x60]
	add r2, r5, #0
	mov r3, #2
	bl BufferIntegerAsString
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x5c]
	ldr r3, [r4]
	mov r2, #0x98
	bl ReadMsgData_ExpandPlaceholders
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F45F0 ; =0x000F0E00
	add r4, #0x4c
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F45F0: .word 0x000F0E00
	thumb_func_end ov96_021F459C

	thumb_func_start ov96_021F45F4
ov96_021F45F4: ; 0x021F45F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x68
	add r6, r1, #0
	add r0, r4, #0
	add r1, r2, #0
	bl ov96_021F46BC
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r6, #0
	bne _021F461A
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F461A
	add r0, r5, #0
	bl ov96_021F43EC
_021F461A:
	ldr r0, [r4]
	cmp r0, #0
	beq _021F4668
	cmp r6, #0
	beq _021F4646
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021F4670
	mov r1, #1
	add r0, r4, #0
	str r1, [r4, #4]
	bl ov96_021F47F0
	cmp r0, #1
	beq _021F463C
	bl GF_AssertFail
_021F463C:
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl ov96_021F480C
	b _021F4670
_021F4646:
	cmp r7, #0xc
	beq _021F4670
	add r0, r4, #0
	mov r1, #2
	bl ov96_021F47F0
	cmp r0, #0
	beq _021F4670
	ldr r0, _021F4684 ; =0x0000089E
	bl PlaySE
	ldr r1, [r5, #8]
	add r0, r4, #0
	add r2, r7, #0
	bl ov96_021F48A8
	b _021F4670
_021F4668:
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl ov96_021F4A60
_021F4670:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021F467C
	add r0, r5, #0
	blx r1
	pop {r3, r4, r5, r6, r7, pc}
_021F467C:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4684: .word 0x0000089E
	thumb_func_end ov96_021F45F4

	thumb_func_start ov96_021F4688
ov96_021F4688: ; 0x021F4688
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	add r4, r2, #0
	bl ov96_021E5F24
	cmp r4, r0
	bne _021F46B2
	mov r0, #0x15
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r0, r6
	beq _021F46B2
	cmp r0, r6
	blo _021F46AC
	bl GF_AssertFail
_021F46AC:
	mov r0, #0x15
	lsl r0, r0, #4
	strb r6, [r5, r0]
_021F46B2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021F4688

	thumb_func_start ov96_021F46B4
ov96_021F46B4: ; 0x021F46B4
	mov r1, #0x15
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov96_021F46B4

	thumb_func_start ov96_021F46BC
ov96_021F46BC: ; 0x021F46BC
	push {r3, r4, r5, r6, r7}
	sub sp, #0xc
	mov r2, #0
	add r3, sp, #0
	add r4, r2, #0
	mov r5, #1
_021F46C8:
	ldrb r6, [r1, r2]
	cmp r6, #0
	beq _021F46DC
	add r7, r0, r2
	ldrb r6, [r7, #8]
	cmp r6, #0
	bne _021F46DC
	strb r5, [r7, #8]
	strb r5, [r3]
	b _021F46DE
_021F46DC:
	strb r4, [r3]
_021F46DE:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0xc
	blt _021F46C8
	mov r0, #0
	add r2, sp, #0
_021F46EA:
	ldrb r1, [r2]
	cmp r1, #0
	bne _021F46FA
	add r0, r0, #1
	add r2, r2, #1
	cmp r0, #0xc
	blt _021F46EA
	mov r0, #0xc
_021F46FA:
	add sp, #0xc
	pop {r3, r4, r5, r6, r7}
	bx lr
	thumb_func_end ov96_021F46BC

	thumb_func_start ov96_021F4700
ov96_021F4700: ; 0x021F4700
	ldr r0, [r0, #0x1c]
	cmp r0, r1
	bne _021F470A
	mov r0, #0
	bx lr
_021F470A:
	cmp r1, #1
	bne _021F4712
	mov r0, #1
	bx lr
_021F4712:
	cmp r1, #2
	bne _021F471E
	cmp r0, #1
	beq _021F471E
	mov r0, #1
	bx lr
_021F471E:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F4700

	thumb_func_start ov96_021F4724
ov96_021F4724: ; 0x021F4724
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	str r4, [r0]
	str r0, [sp]
	strh r4, [r0, #0x1a]
	add r5, r0, #0
	mov r6, #1
	add r7, r4, #0
_021F4734:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r7, #0
	bl ov96_021EB52C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021F4734
	ldr r0, _021F4784 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [sp]
	bl ov96_021F4790
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x14]
	add r0, #0xea
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0xea
	str r0, [sp]
	ldrb r0, [r0]
	lsl r1, r0, #0x10
	ldr r0, _021F4788 ; =0x01FF0000
	and r1, r0
	ldr r0, _021F478C ; =0x04001018
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4784: .word 0x04001050
_021F4788: .word 0x01FF0000
_021F478C: .word 0x04001018
	thumb_func_end ov96_021F4724

	thumb_func_start ov96_021F4790
ov96_021F4790: ; 0x021F4790
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	mov r6, #1
	add r7, r4, #0
_021F479A:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xbc
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r7, #0
	bl ov96_021EB52C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021F479A
	mov r4, #0
	mov r7, #1
_021F47B8:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xc8
	ldr r0, [r0]
	add r1, r7, #0
	mov r2, #0
	bl ov96_021EB52C
	add r0, r5, r6
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021F47B8
	add r5, #0xc4
	ldr r0, [r5]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F4790

	thumb_func_start ov96_021F47F0
ov96_021F47F0: ; 0x021F47F0
	push {r4, lr}
	add r4, r0, #0
	bl ov96_021F4700
	cmp r0, #0
	beq _021F4806
	add r0, r4, #0
	bl ov96_021F4724
	mov r0, #1
	pop {r4, pc}
_021F4806:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F47F0

	thumb_func_start ov96_021F480C
ov96_021F480C: ; 0x021F480C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r4, #0
	mov r6, #1
_021F4820:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xbc
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r6, #0
	bl ov96_021EB52C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021F4820
	mov r4, #0
	mov r6, #1
_021F483E:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc8
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r6, #0
	bl ov96_021EB52C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021F483E
	add r0, r5, #0
	add r0, #0xa4
	ldr r3, [r0]
	add r0, r7, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	add r0, r5, #0
	add r1, r7, #0
	bl ov96_021F4EF8
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	mov r2, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #6
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	add r0, r7, #0
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _021F48A4 ; =ov96_021F4A9C
	str r0, [r5, #0x14]
	mov r0, #1
	str r0, [r5, #0x1c]
	str r0, [r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F48A4: .word ov96_021F4A9C
	thumb_func_end ov96_021F480C

	thumb_func_start ov96_021F48A8
ov96_021F48A8: ; 0x021F48A8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ov96_021F4E5C
	add r0, r5, #0
	add r0, #0xac
	ldr r3, [r0]
	add r0, r4, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #3
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	add r0, r4, #0
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _021F48F8 ; =ov96_021F4AE0
	str r0, [r5, #0x14]
	mov r0, #2
	str r0, [r5, #0x1c]
	mov r0, #1
	str r0, [r5]
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021F48F8: .word ov96_021F4AE0
	thumb_func_end ov96_021F48A8

	thumb_func_start ov96_021F48FC
ov96_021F48FC: ; 0x021F48FC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	bl ov96_021F4CAC
	mov r0, #0
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	bl OS_WaitVBlankIntr
	mov r0, #0x60
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0xc
	mov r3, #0x80
	bl SetBgAffine
	add r0, r5, #0
	add r0, #0xa8
	ldr r3, [r0]
	add r0, r4, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	add r0, r4, #0
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	add r0, #0x9c
	ldr r3, [r0]
	add r0, r4, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #7
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	add r0, r4, #0
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _021F498C ; =ov96_021F4B34
	str r0, [r5, #0x14]
	mov r0, #3
	str r0, [r5, #0x1c]
	mov r0, #1
	str r0, [r5]
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021F498C: .word ov96_021F4B34
	thumb_func_end ov96_021F48FC

	thumb_func_start ov96_021F4990
ov96_021F4990: ; 0x021F4990
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0x1c
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r0, #0xe
	lsl r0, r0, #0xe
	str r0, [sp, #0x1c]
	mov r0, #0x29
	lsl r0, r0, #0x10
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r1, sp, #0x1c
	bl Sprite_SetMatrix
	add r3, r5, #0
	add r2, r5, #0
	add r3, #0xa8
	add r2, #0xa0
	ldr r3, [r3]
	ldr r2, [r2]
	ldr r3, [r3, #8]
	add r0, r4, #0
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	add r0, r4, #0
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	add r0, #0x98
	ldr r3, [r0]
	add r0, r4, #0
	add r2, r3, #0
	ldr r3, [r3, #8]
	mov r1, #7
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	add r0, r4, #0
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	ldr r1, _021F4A54 ; =0x3CCCCCCD
	ldr r0, _021F4A58 ; =0x45800000
	bl _fmul
	bl _ffix
	mov r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	bl OS_WaitVBlankIntr
	mov r0, #0x60
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0xc
	mov r3, #0x80
	bl SetBgAffine
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, _021F4A5C ; =ov96_021F4BB4
	str r0, [r5, #0x14]
	mov r0, #4
	str r0, [r5, #0x1c]
	mov r0, #1
	str r0, [r5]
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F4A54: .word 0x3CCCCCCD
_021F4A58: .word 0x45800000
_021F4A5C: .word ov96_021F4BB4
	thumb_func_end ov96_021F4990

	thumb_func_start ov96_021F4A60
ov96_021F4A60: ; 0x021F4A60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov96_021F4724
	ldrh r0, [r5, #0x18]
	lsl r1, r0, #2
	ldr r0, _021F4A98 ; =ov96_0221DC04
	ldr r0, [r0, r1]
	cmp r0, #3
	bne _021F4A80
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021F48FC
	b _021F4A88
_021F4A80:
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021F4990
_021F4A88:
	ldrh r0, [r5, #0x18]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	strh r1, [r5, #0x18]
	pop {r3, r4, r5, pc}
	nop
_021F4A98: .word ov96_0221DC04
	thumb_func_end ov96_021F4A60

	thumb_func_start ov96_021F4A9C
ov96_021F4A9C: ; 0x021F4A9C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _021F4ADC ; =0x00000151
	ldrb r1, [r4, r0]
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r1, r0
	beq _021F4AD6
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x68
	bl ov96_021F4EF8
	mov r0, #0xc
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r2, #3
	str r2, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #6
	mov r3, #7
	bl BgTilemapRectChangePalette
	ldr r0, [r4, #8]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
_021F4AD6:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021F4ADC: .word 0x00000151
	thumb_func_end ov96_021F4A9C

	thumb_func_start ov96_021F4AE0
ov96_021F4AE0: ; 0x021F4AE0
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x68
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x46
	bls _021F4AFA
	add r0, r4, #0
	bl ov96_021F4724
	pop {r4, pc}
_021F4AFA:
	add r2, r4, #0
	add r2, #0x90
	lsl r0, r0, #0x18
	ldr r1, _021F4B28 ; =ov96_0221C01C
	ldr r2, [r2]
	lsr r0, r0, #0x18
	bl ov96_021F4E9C
	add r0, r4, #0
	add r0, #0xea
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xea
	add r1, #0x20
	add r4, #0xea
	strb r1, [r0]
	ldrb r0, [r4]
	lsl r1, r0, #0x10
	ldr r0, _021F4B2C ; =0x01FF0000
	and r1, r0
	ldr r0, _021F4B30 ; =0x04001018
	str r1, [r0]
	pop {r4, pc}
	.balign 4, 0
_021F4B28: .word ov96_0221C01C
_021F4B2C: .word 0x01FF0000
_021F4B30: .word 0x04001018
	thumb_func_end ov96_021F4AE0

	thumb_func_start ov96_021F4B34
ov96_021F4B34: ; 0x021F4B34
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r4, #0x68
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x32
	bls _021F4B4E
	add r0, r4, #0
	bl ov96_021F4724
	pop {r3, r4, r5, pc}
_021F4B4E:
	cmp r0, #5
	bne _021F4B5C
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	b _021F4B82
_021F4B5C:
	cmp r0, #0xf
	bls _021F4B82
	sub r0, #0xf
	cmp r0, #4
	bgt _021F4B82
	lsl r1, r0, #4
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	lsl r0, r0, #0xe
	lsr r5, r0, #0x10
	mov r3, #0x10
	ldr r0, _021F4BA8 ; =0x04001050
	mov r1, #8
	mov r2, #0x34
	sub r3, r3, r5
	str r5, [sp]
	bl G2x_SetBlendAlpha_
_021F4B82:
	ldrh r0, [r4, #0x1a]
	add r2, r4, #0
	add r2, #0x90
	lsl r0, r0, #0x18
	ldr r1, _021F4BAC ; =ov96_0221C050
	ldr r2, [r2]
	lsr r0, r0, #0x18
	bl ov96_021F4DAC
	ldrh r0, [r4, #0x1a]
	add r4, #0x94
	ldr r1, _021F4BB0 ; =ov96_0221C080
	lsl r0, r0, #0x18
	ldr r2, [r4]
	lsr r0, r0, #0x18
	bl ov96_021F4DAC
	pop {r3, r4, r5, pc}
	nop
_021F4BA8: .word 0x04001050
_021F4BAC: .word ov96_0221C050
_021F4BB0: .word ov96_0221C080
	thumb_func_end ov96_021F4B34

	thumb_func_start ov96_021F4BB4
ov96_021F4BB4: ; 0x021F4BB4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x68
	ldrh r0, [r4, #0x1a]
	add r0, r0, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x50
	bls _021F4BD4
	add r0, r4, #0
	bl ov96_021F4724
	add sp, #0x20
	pop {r3, r4, r5, pc}
_021F4BD4:
	cmp r0, #0x29
	bne _021F4BE8
	add r0, r4, #0
	add r0, #0xc4
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	b _021F4BFA
_021F4BE8:
	cmp r0, #0x3d
	bne _021F4BFA
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_021F4BFA:
	ldrh r0, [r4, #0x1a]
	cmp r0, #0x28
	bhi _021F4C38
	bl _ffltu
	ldr r1, _021F4CA0 ; =0x42200000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _021F4CA4 ; =0x45800000
	bl _fmul
	bl _ffix
	mov r1, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	bl OS_WaitVBlankIntr
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #7
	add r2, sp, #0x10
	mov r3, #0x80
	bl SetBgAffine
	add sp, #0x20
	pop {r3, r4, r5, pc}
_021F4C38:
	bls _021F4C6E
	cmp r0, #0x3c
	bhi _021F4C6E
	mov r1, #0
	str r1, [sp, #0xc]
	sub r0, #0x28
	mov r1, #0x90
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x14
	bl _s32_div_f
	add r0, #0x38
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x29
	lsl r0, r0, #0x10
	add r4, #0xc4
	str r0, [sp, #8]
	ldr r0, [r4]
	bl ov96_021EB5B8
	add r1, sp, #4
	bl Sprite_SetMatrix
	add sp, #0x20
	pop {r3, r4, r5, pc}
_021F4C6E:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldrh r0, [r4, #0x1a]
	mov r1, #0x14
	sub r0, #0x3c
	lsl r0, r0, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r3, #0x10
	ldr r0, _021F4CA8 ; =0x04001050
	mov r1, #8
	mov r2, #0x24
	sub r3, r3, r4
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F4CA0: .word 0x42200000
_021F4CA4: .word 0x45800000
_021F4CA8: .word 0x04001050
	thumb_func_end ov96_021F4BB4

	thumb_func_start ov96_021F4CAC
ov96_021F4CAC: ; 0x021F4CAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r5, r2, r1
	mov r4, #0
_021F4CC4:
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r6, r2, r1
	cmp r5, r6
	bne _021F4CE2
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021F4CC4
_021F4CE2:
	cmp r4, #0xa
	bne _021F4CF4
	add r0, r5, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r6, r2, r1
_021F4CF4:
	bl LCRandom
	mov r1, #3
	bl _s32_div_f
	lsl r0, r5, #1
	add r0, r5, r0
	add r5, r0, r1
	bl LCRandom
	mov r1, #3
	bl _s32_div_f
	lsl r0, r6, #1
	add r0, r6, r0
	add r4, r0, r1
	lsl r2, r5, #0x18
	add r0, r7, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl ov96_021F4504
	lsl r2, r4, #0x18
	add r0, r7, #0
	mov r1, #1
	lsr r2, r2, #0x18
	bl ov96_021F4504
	add r0, r7, #0
	add r0, #0x90
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r4, sp, #0
	ldr r5, _021F4DA4 ; =ov96_0221C050
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r3, #0
	add r1, r2, #0
	bl Sprite_SetMatrix
	add r0, r7, #0
	add r0, #0x94
	ldr r0, [r0]
	bl ov96_021EB5B8
	add r4, sp, #0
	ldr r5, _021F4DA8 ; =ov96_0221C080
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r3, #0
	add r1, r2, #0
	bl Sprite_SetMatrix
	add r0, r7, #0
	add r0, #0x90
	mov r1, #1
	ldr r0, [r0]
	add r2, r1, #0
	bl ov96_021EB52C
	add r7, #0x94
	mov r1, #1
	ldr r0, [r7]
	add r2, r1, #0
	bl ov96_021EB52C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F4DA4: .word ov96_0221C050
_021F4DA8: .word ov96_0221C080
	thumb_func_end ov96_021F4CAC

	thumb_func_start ov96_021F4DAC
ov96_021F4DAC: ; 0x021F4DAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r5, #5
	bhi _021F4DE0
	ldr r7, [r4]
	ldr r0, [r4, #0xc]
	ldr r6, [r4, #4]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r7, r7, r0
	ldr r0, [r4, #0x10]
	sub r1, r0, r6
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r4, r6, r0
	b _021F4E3C
_021F4DE0:
	bls _021F4E12
	cmp r5, #0x2d
	bhi _021F4E12
	sub r0, r5, #5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r7, [r4, #0xc]
	ldr r0, [r4, #0x18]
	ldr r6, [r4, #0x10]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x28
	bl _s32_div_f
	add r7, r7, r0
	ldr r0, [r4, #0x1c]
	sub r1, r0, r6
	add r0, r1, #0
	mul r0, r5
	mov r1, #0x28
	bl _s32_div_f
	add r4, r6, r0
	b _021F4E3C
_021F4E12:
	sub r5, #0x2d
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
	ldr r7, [r4, #0x18]
	ldr r0, [r4, #0x24]
	ldr r6, [r4, #0x1c]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r7, r7, r0
	ldr r0, [r4, #0x28]
	sub r1, r0, r6
	add r0, r1, #0
	mul r0, r5
	mov r1, #5
	bl _s32_div_f
	add r4, r6, r0
_021F4E3C:
	ldr r0, [sp]
	bl ov96_021EB5B8
	mov r1, #2
	lsl r1, r1, #0x14
	add r1, r4, r1
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	add r1, sp, #4
	str r7, [sp, #4]
	bl Sprite_SetMatrix
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F4DAC

	thumb_func_start ov96_021F4E5C
ov96_021F4E5C: ; 0x021F4E5C
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, r1, #0
	add r4, r0, #0
	mov r1, #0
	bl ov96_021F4504
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl ov96_021EB5B8
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [sp]
	mov r1, #0x76
	lsl r1, r1, #0xe
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add r4, #0x90
	mov r1, #1
	ldr r0, [r4]
	add r2, r1, #0
	bl ov96_021EB52C
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F4E5C

	thumb_func_start ov96_021F4E9C
ov96_021F4E9C: ; 0x021F4E9C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	cmp r0, #0xf
	bhi _021F4EB8
	ldr r5, [r1]
	ldr r1, [r1, #4]
	sub r1, r1, r5
	mul r0, r1
	mov r1, #0xf
	bl _s32_div_f
	add r5, r5, r0
	b _021F4ED8
_021F4EB8:
	bls _021F4EC2
	cmp r0, #0x3c
	bhi _021F4EC2
	ldr r5, [r1, #4]
	b _021F4ED8
_021F4EC2:
	ldr r5, [r1, #4]
	ldr r1, [r1, #8]
	sub r0, #0x3c
	lsl r0, r0, #0x18
	sub r1, r1, r5
	lsr r0, r0, #0x18
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	add r5, r5, r0
_021F4ED8:
	add r0, r4, #0
	bl ov96_021EB5B8
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [sp]
	lsl r1, r1, #2
	add r1, r5, r1
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov96_021F4E9C

	thumb_func_start ov96_021F4EF8
ov96_021F4EF8: ; 0x021F4EF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, #0xe8
	ldrb r7, [r0]
	add r6, r1, #0
	mov r1, #0x64
	add r0, r7, #0
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #3]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0]
	add r0, r7, #0
	mov r1, #0xa
	bl _s32_div_f
	mov r1, #0xa
	mul r1, r4
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #4]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #1]
	add r0, r7, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #5]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #2]
	mov r4, #0
	mov r7, #4
_021F4F86:
	str r7, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	lsl r2, r4, #2
	add r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x1c
	add r0, #3
	ldrb r0, [r0, r4]
	add r2, r2, #3
	lsl r2, r2, #0x18
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	ldrb r0, [r0, r4]
	mov r1, #6
	lsr r2, r2, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r3, #7
	bl CopyRectToBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F4F86
	add r0, r5, #0
	add r0, #0xe8
	ldrb r0, [r0]
	add r5, #0xe9
	strb r0, [r5]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F4EF8

	thumb_func_start ov96_021F4FD8
ov96_021F4FD8: ; 0x021F4FD8
	push {r3, r4, r5, r6}
	add r5, r0, #0
	ldr r0, [r1, #8]
	add r3, r1, #0
	lsl r0, r0, #0xf
	lsr r4, r0, #0x10
	add r3, #0xc
	mov r2, #0
	cmp r4, #0
	ble _021F5010
	ldr r6, _021F5014 ; =0x00000FFF
_021F4FEE:
	ldrh r0, [r3]
	add r2, r2, #1
	add r1, r0, #0
	and r1, r6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	sub r0, r0, r1
	add r1, r1, r5
	lsl r0, r0, #0x18
	lsl r1, r1, #0x10
	lsr r0, r0, #0x18
	lsr r1, r1, #0x10
	add r0, r0, r1
	strh r0, [r3]
	add r3, r3, #2
	cmp r2, r4
	blt _021F4FEE
_021F5010:
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
_021F5014: .word 0x00000FFF
	thumb_func_end ov96_021F4FD8

	thumb_func_start ov96_021F5018
ov96_021F5018: ; 0x021F5018
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x120
	str r0, [sp, #0x14]
	bl ov96_021E5DC4
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl ov96_021E5DD4
	cmp r0, #6
	bls _021F5030
	b _021F54AE
_021F5030:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F503C: ; jump table
	.short _021F504A - _021F503C - 2 ; case 0
	.short _021F5128 - _021F503C - 2 ; case 1
	.short _021F516A - _021F503C - 2 ; case 2
	.short _021F51CA - _021F503C - 2 ; case 3
	.short _021F522C - _021F503C - 2 ; case 4
	.short _021F5374 - _021F503C - 2 ; case 5
	.short _021F54A2 - _021F503C - 2 ; case 6
_021F504A:
	mov r2, #5
	mov r0, #0x5c
	mov r1, #0x8f
	lsl r2, r2, #0x10
	bl CreateHeap
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021F53C0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021F53C4 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021F5630
	ldr r0, [sp, #0x14]
	ldr r1, _021F53C8 ; =0x00001004
	bl ov96_021E5D94
	ldr r2, _021F53C8 ; =0x00001004
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x8f
	bl BgConfig_Alloc
	str r0, [r4]
	ldr r0, [sp, #0x14]
	mov r1, #8
	bl ov96_021E6670
	mov r0, #0xd5
	str r0, [sp, #0xcc]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0xd0]
	lsr r0, r0, #4
	str r0, [sp, #0xd4]
	ldr r0, [sp, #0x14]
	bl PokeathlonOvy_GetHeapID
	str r0, [sp, #0xd8]
	ldr r3, _021F53CC ; =0x00300010
	add r0, sp, #0xcc
	mov r1, #0xf
	mov r2, #0x8f
	str r3, [sp]
	bl ov96_021E92B0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x8f
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r0, #0x8f
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x54]
	mov r0, #4
	bl FontID_Alloc
	ldr r0, [r4]
	bl ov96_021F584C
	add r0, r4, #0
	bl ov96_021F6138
	ldr r0, _021F53D0 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r1, [r4, #0x54]
	mov r0, #0xc
	bl GF_CreateVramTransferManager
	ldr r1, [r4, #0x54]
	mov r0, #0xc
	bl sub_02020654
	mov r1, #1
	lsl r1, r1, #0xc
	str r0, [r4, r1]
	ldr r0, [sp, #0x14]
	bl ov96_021E5DEC
	b _021F54AE
_021F5128:
	ldr r0, [r4, #0x54]
	bl ov96_021F74A4
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1]
	ldr r0, [sp, #0x14]
	bl ov96_021E5D34
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	bl ov96_021E5EE8
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	bl ov96_021E5F54
	add r3, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #4
	str r0, [sp]
	ldr r0, [r4, #0x54]
	sub r1, r1, r5
	add r2, r6, #0
	bl ov96_021F7684
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x14]
	bl ov96_021E5DEC
	b _021F54AE
_021F516A:
	ldr r5, _021F53D4 ; =ov96_0221C0B8
	add r3, sp, #0xc0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x54]
	bl ov96_021EB180
	mov r1, #0
	str r0, [r4, #0x60]
	str r1, [sp]
	mov r2, #3
	ldr r0, [r4, #0x60]
	lsl r2, r2, #0x12
	add r3, r1, #0
	bl ov96_021EB5C8
	ldr r0, [r4, #0x60]
	bl ov96_021EB5E8
	str r0, [sp]
	ldr r0, [r4, #0x54]
	mov r1, #3
	mov r2, #0xa
	mov r3, #0
	bl ov96_021EA854
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0x60]
	mov r1, #0
	mov r2, #0x65
	bl ov96_021EB29C
	ldr r0, [r4, #0x60]
	bl ov96_021F6C18
	ldr r0, [r4, #0x60]
	bl ov96_021EB3A4
	ldr r0, [sp, #0x14]
	bl ov96_021E5DEC
	b _021F54AE
_021F51CA:
	ldr r0, [sp, #0x14]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r5, #0
	add r7, sp, #0x90
	add r6, sp, #0xdc
_021F51DC:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r2, r5, #0
	add r3, r7, #0
	bl ov96_021E6168
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r2, r5, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	str r0, [r6, #0x14]
	add r5, r5, #1
	add r7, #0x10
	add r6, r6, #4
	cmp r5, #3
	blt _021F51DC
	mov r0, #1
	mov r1, #3
	mov r2, #0
	str r2, [sp, #0xdc]
	str r0, [sp, #0xe0]
	str r0, [sp, #0xe4]
	mov r0, #0x63
	str r1, [sp, #0xe8]
	str r1, [sp, #0xec]
	str r2, [sp]
	str r2, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, sp, #0x90
	add r3, sp, #0xdc
	bl ov96_021EA8A8
	ldr r0, [sp, #0x14]
	bl ov96_021E5DEC
	b _021F54AE
_021F522C:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EAA00
	cmp r0, #0
	bne _021F523C
	b _021F54AE
_021F523C:
	ldr r0, [r4, #0x54]
	ldr r1, _021F53D8 ; =0x000003A1
	mov r2, #1
	bl ov96_021E9A78
	mov r2, #0x62
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r0, [sp, #0x14]
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x60]
	mov r1, #0xc0
	bl ov96_021E6290
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawPriority
	ldr r0, [r4]
	bl ov96_021E6030
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl ov96_021E5DFC
	add r0, sp, #0x78
	mov r1, #0xaa
	mov r2, #0x10
	bl ReadWholeNarcMemberByIdPair
	mov r0, #0
	str r0, [sp, #0x24]
	add r0, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x90
	str r0, [sp, #0x1c]
	mov r6, #0x40
	add r7, sp, #0x6c
_021F5288:
	mov r0, #0x63
	ldr r1, [sp, #0x24]
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	ldr r0, [r4, r0]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	mov r1, #1
	add r5, r0, #0
	bl ov96_021EAB38
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	str r5, [r0]
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl ov96_021E60C0
	bl ov96_021E6138
	lsl r1, r0, #3
	add r0, sp, #0x78
	add r2, r0, r1
	add r1, r2, #0
	sub r1, #8
	sub r2, r2, #4
	ldr r1, [r1]
	ldr r2, [r2]
	add r0, r5, #0
	bl ov96_021EAF70
	add r0, r5, #0
	mov r1, #2
	bl ov96_021EAC0C
	mov r2, #0x12
	add r0, r5, #0
	add r1, r6, #0
	lsl r2, r2, #4
	bl ov96_021EAF94
	bl ov96_021E6104
	add r1, r0, #0
	add r0, r5, #0
	bl ov96_021EAF6C
	mov r2, #0x12
	ldr r1, [sp, #0x1c]
	lsl r0, r6, #0xc
	str r0, [r1, #8]
	lsl r2, r2, #0x10
	str r2, [r1, #0xc]
	str r0, [r1, #0x1c]
	add r0, sp, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0xc
	add r3, sp, #0x2c
	bl ov96_021EB0A4
	ldr r0, [sp, #0x2c]
	add r6, #0x40
	strh r0, [r7]
	ldr r0, [sp, #0x28]
	strh r0, [r7, #2]
	ldr r0, [sp, #0x1c]
	add r7, r7, #4
	add r0, #0x38
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #3
	blt _021F5288
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, sp, #0x6c
	str r0, [sp, #8]
	mov r2, #0x62
	lsl r2, r2, #2
	ldr r0, [sp, #0x14]
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x60]
	mov r1, #0
	bl ov96_021E634C
	mov r0, #5
	mov r1, #3
	lsl r0, r0, #6
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov96_021F5980
	ldr r1, [r4, #0x60]
	add r0, r4, #0
	bl ov96_021F6C5C
	add r0, r4, #0
	bl ov96_021F7050
	ldr r0, [sp, #0x14]
	bl ov96_021E5F24
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_021F6DA4
	ldr r0, [sp, #0x14]
	bl ov96_021E5DEC
	b _021F54AE
_021F5374:
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, sp, #0x30
	mov r1, #0xaa
	mov r2, #6
	bl ReadWholeNarcMemberByIdPair
	add r6, r4, #0
	mov r5, #0
	add r6, #0x90
	add r7, sp, #0x30
_021F539E:
	lsl r2, r5, #0x18
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl ov96_021F715C
	add r5, r5, #1
	add r6, #0x38
	cmp r5, #3
	blt _021F539E
	ldr r0, [sp, #0x14]
	bl ov96_021E5F24
	mov r1, #0x4f
	ldr r0, _021F53DC ; =0x00000708
	b _021F53E0
	.balign 4, 0
_021F53C0: .word 0xFFFFE0FF
_021F53C4: .word 0x04001000
_021F53C8: .word 0x00001004
_021F53CC: .word 0x00300010
_021F53D0: .word gSystem + 0x60
_021F53D4: .word ov96_0221C0B8
_021F53D8: .word 0x000003A1
_021F53DC: .word 0x00000708
_021F53E0:
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov96_021F6F3C
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl ov96_021F6F80
	mov r2, #0
	mov r7, #0x9a
	mov r0, #0xba
	mov r1, #0xda
	add r3, r4, #0
	add r5, r2, #0
	lsl r7, r7, #4
	lsl r0, r0, #4
	lsl r1, r1, #4
_021F540A:
	mov r6, #0x1a
	lsl r6, r6, #4
	str r5, [r3, r6]
	mov r6, #0x3a
	lsl r6, r6, #4
	str r5, [r3, r6]
	mov r6, #0x5a
	lsl r6, r6, #4
	str r5, [r3, r6]
	mov r6, #0x7a
	lsl r6, r6, #4
	str r5, [r3, r6]
	str r5, [r3, r7]
	str r5, [r3, r0]
	str r5, [r3, r1]
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x80
	blt _021F540A
	mov r6, #0x40
	add r7, r4, #0
	str r4, [sp, #0x20]
_021F5436:
	ldr r0, _021F54B4 ; =0x00000FB4
	mov r1, #0
	str r1, [r4, r0]
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r1, r0, #1
	mov r0, #0xfa
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r0, r6, #0
	bl _fflt
	bl _f2d
	ldr r3, _021F54B8 ; =0x40500000
	mov r2, #0
	bl _ddiv
	mov r3, #1
	mov r2, #0
	lsl r3, r3, #0x1e
	bl _dsub
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021F54BC ; =0x40B00000
	mov r0, #0
	bl _dmul
	bl _dfix
	mov r1, #0xfb
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r1, [sp, #0x20]
	mov r0, #1
	add r1, #0xb8
	strb r0, [r1]
	ldr r0, [sp, #0x20]
	add r5, r5, #1
	add r0, #0x38
	add r4, #0x1c
	add r6, #0x40
	add r7, r7, #4
	str r0, [sp, #0x20]
	cmp r5, #3
	blt _021F5436
	mov r0, #1
	bl sub_0203A994
	ldr r0, [sp, #0x14]
	bl ov96_021E5DEC
	b _021F54AE
_021F54A2:
	add r0, r4, #0
	bl ov96_021F6E38
	add sp, #0x120
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F54AE:
	mov r0, #0
	add sp, #0x120
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F54B4: .word 0x00000FB4
_021F54B8: .word 0x40500000
_021F54BC: .word 0x40B00000
	thumb_func_end ov96_021F5018

	thumb_func_start ov96_021F54C0
ov96_021F54C0: ; 0x021F54C0
	push {r3, lr}
	bl ov96_021E5DC4
	ldr r0, [r0, #0x60]
	bl ov96_021EB5BC
	bl sub_02020674
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov96_021F54C0

	thumb_func_start ov96_021F54D4
ov96_021F54D4: ; 0x021F54D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov96_021E5DC4
	add r0, r5, #0
	bl ov96_021E6040
	add r6, r0, #0
	bl ov96_021E9510
	mov r4, #0
	add r7, r4, #0
_021F54EE:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov96_021E5FBC
	add r3, r0, #0
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov96_021E95F8
	add r4, r4, #1
	cmp r4, #4
	blt _021F54EE
	add r0, r6, #0
	mov r1, #1
	bl ov96_021E93B4
	add r0, r6, #0
	mov r1, #5
	bl ov96_0221A56C
	add r0, r6, #0
	bl ov96_021E952C
	add r0, r6, #0
	mov r1, #5
	bl ov96_021E9570
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F54D4

	thumb_func_start ov96_021F553C
ov96_021F553C: ; 0x021F553C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	bl sub_0203A914
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Camera_Delete
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl ov96_021F74C8
	ldr r0, [r4, #0x58]
	bl FreeToHeap
	ldr r0, [r4]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #3
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #6
	bl FreeBgTilemapBuffer
	mov r6, #0
	add r5, r4, #4
_021F5598:
	add r0, r5, #0
	bl RemoveWindow
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #5
	blt _021F5598
	ldr r0, [r4]
	bl FreeToHeap
	add r0, r7, #0
	bl ov96_021E5F8C
	ldr r0, [r4, #0x60]
	bl ov96_021EB21C
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EA894
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021E9C0C
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021F7738
	mov r0, #4
	bl FontID_Release
	bl OamManager_Free
	bl sub_0202168C
	bl sub_02022608
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	ldr r0, _021F5628 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #1
	lsl r0, r0, #0xc
	ldr r0, [r4, r0]
	bl sub_0202067C
	bl GF_DestroyVramTransferManager
	add r0, r7, #0
	bl ov96_021E5DAC
	ldr r0, _021F562C ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x8f
	bl DestroyHeap
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5628: .word gSystem + 0x60
_021F562C: .word 0x04000050
	thumb_func_end ov96_021F553C

	thumb_func_start ov96_021F5630
ov96_021F5630: ; 0x021F5630
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021F564C ; =ov96_0221C1F4
	add r3, sp, #0
	mov r2, #5
_021F563A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F563A
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021F564C: .word ov96_0221C1F4
	thumb_func_end ov96_021F5630

	thumb_func_start ov96_021F5650
ov96_021F5650: ; 0x021F5650
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	bhi _021F5728
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F5670: ; jump table
	.short _021F567C - _021F5670 - 2 ; case 0
	.short _021F5692 - _021F5670 - 2 ; case 1
	.short _021F56B8 - _021F5670 - 2 ; case 2
	.short _021F56CE - _021F5670 - 2 ; case 3
	.short _021F56E6 - _021F5670 - 2 ; case 4
	.short _021F56FE - _021F5670 - 2 ; case 5
_021F567C:
	add r0, r5, #0
	bl ov96_021F5B60
	add r0, r5, #0
	mov r1, #0x14
	bl ov96_021E601C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F5728
_021F5692:
	add r0, r5, #0
	bl ov96_021F5B60
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x54]
	mov r1, #3
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F5728
_021F56B8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F56C6
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_021F56C6:
	add r0, r5, #0
	bl ov96_021F5B60
	b _021F5728
_021F56CE:
	add r0, r5, #0
	bl ov96_021F5B60
	add r0, r5, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _021F5728
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F5728
_021F56E6:
	add r0, r5, #0
	bl ov96_021F5BA0
	add r0, r5, #0
	bl ov96_021F5A88
	cmp r0, #0
	beq _021F5728
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021F5728
_021F56FE:
	add r0, r5, #0
	bl ov96_021E667C
	cmp r0, #0
	beq _021F5728
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x54]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E5FC8
_021F5728:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F5650

	thumb_func_start ov96_021F5730
ov96_021F5730: ; 0x021F5730
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _021F5756
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F5750
	mov r0, #1
	strb r0, [r6]
_021F5750:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021F5756:
	add r0, r5, #0
	bl ov96_021E5F24
	mov r2, #0
	add r6, r0, #0
	add r1, r2, #0
_021F5762:
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	add r1, r1, #1
	add r4, #0x38
	add r2, r2, r0
	cmp r1, #3
	blt _021F5762
	ldr r0, _021F5848 ; =0x000003E7
	cmp r2, r0
	ble _021F577A
	add r2, r0, #0
_021F577A:
	lsl r1, r6, #0x18
	lsl r2, r2, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl ov96_021E5FB0
	cmp r6, #0
	bne _021F5842
	add r0, r5, #0
	bl ov96_021E5D34
	str r0, [sp, #8]
	cmp r0, #4
	bge _021F5842
_021F5798:
	ldr r0, [sp, #8]
	mov r4, #0
	lsl r0, r0, #0x18
	str r4, [sp, #4]
	lsr r7, r0, #0x18
_021F57A2:
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	bl ov96_021E60D8
	add r6, r0, #0
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _021F57E0
	bl LCRandom
	mov r1, #0x15
	bl _s32_div_f
	add r3, r1, #0
	ldrb r0, [r6, #3]
	ldrb r2, [r6, #2]
	mov r1, #6
	lsl r0, r0, #1
	mul r1, r2
	ldrb r2, [r6, #4]
	add r1, #0x50
	lsl r2, r2, #1
	add r1, r1, r2
	add r0, r0, r1
	add r1, r0, r3
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	bl LCRandom
_021F57E0:
	mov r0, #0
	lsl r2, r4, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #2
	bl ov96_021E8228
	bl LCRandom
	mov r1, #0x15
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #4
	str r6, [sp]
	bl ov96_021E8228
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	mov r3, #1
	str r6, [sp]
	bl ov96_021E8228
	add r4, r4, #1
	cmp r4, #3
	blt _021F57A2
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl ov96_021E5FB0
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021F5798
_021F5842:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F5848: .word 0x000003E7
	thumb_func_end ov96_021F5730

	thumb_func_start ov96_021F584C
ov96_021F584C: ; 0x021F584C
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _021F5964 ; =ov96_0221C100
	add r3, sp, #0xa8
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021F5968 ; =ov96_0221C124
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F596C ; =ov96_0221C140
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F5970 ; =ov96_0221C15C
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F5974 ; =ov96_0221C178
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F5978 ; =ov96_0221C194
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F597C ; =ov96_0221C1B0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	nop
_021F5964: .word ov96_0221C100
_021F5968: .word ov96_0221C124
_021F596C: .word ov96_0221C140
_021F5970: .word ov96_0221C15C
_021F5974: .word ov96_0221C178
_021F5978: .word ov96_0221C194
_021F597C: .word ov96_0221C1B0
	thumb_func_end ov96_021F584C

	thumb_func_start ov96_021F5980
ov96_021F5980: ; 0x021F5980
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x54]
	mov r1, #7
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xa8
	mov r3, #2
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x54]
	mov r1, #5
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xa8
	mov r3, #1
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x54]
	mov r1, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xa8
	mov r3, #4
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x54]
	mov r1, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xa8
	mov r3, #5
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x54]
	mov r1, #8
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xa8
	mov r3, #2
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x54]
	mov r1, #6
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xa8
	mov r3, #1
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x54]
	mov r1, #0xb
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xa8
	mov r3, #4
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x54]
	mov r1, #0xd
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xa8
	mov r3, #5
	bl GfGfxLoader_LoadScrnData
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r4, #0x54]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xa8
	mov r1, #4
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4, #0x54]
	mov r1, #9
	str r0, [sp, #4]
	mov r0, #0xa8
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPal
	ldr r0, [r4, #0x54]
	add r3, r4, #0
	str r0, [sp]
	mov r0, #0xa8
	mov r1, #0xe
	mov r2, #0
	add r3, #0x5c
	bl GfGfxLoader_GetScrnData
	str r0, [r4, #0x58]
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F5980

	thumb_func_start ov96_021F5A88
ov96_021F5A88: ; 0x021F5A88
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	add r0, r6, #0
	bl ov96_021E5F54
	bl ov96_021E8A20
	add r5, r0, #0
	ldr r1, _021F5B58 ; =0x00000142
	mov r0, #0
	strb r0, [r4, r1]
	sub r0, r1, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F5AB6
	sub r0, r1, #6
	ldr r0, [r4, r0]
	sub r2, r0, #1
	sub r0, r1, #6
	str r2, [r4, r0]
_021F5AB6:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bgt _021F5AC4
	mov r0, #1
	b _021F5AC6
_021F5AC4:
	mov r0, #0
_021F5AC6:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021F5B1C
	ldr r0, [r4, #0x60]
	mov r1, #1
	mov r5, #0
	bl ov96_021EB63C
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov96_021EB144
	add r1, r5, #0
	add r2, r4, #0
_021F5AE6:
	add r0, r2, #0
	add r0, #0xb0
	ldrh r0, [r0]
	add r1, r1, #1
	add r2, #0x38
	add r5, r5, r0
	cmp r1, #3
	blt _021F5AE6
	ldr r0, _021F5B5C ; =0x000003E7
	cmp r5, r0
	ble _021F5AFE
	add r5, r0, #0
_021F5AFE:
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl ov96_021E8318
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov96_021F70AC
	add r0, r6, #0
	bl ov96_021F5B60
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F5B1C:
	add r0, r6, #0
	add r1, r4, #0
	bl ov96_021F6600
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov96_021F6424
	add r0, r4, #0
	bl ov96_021F6BB0
	add r0, r6, #0
	add r1, r4, #0
	bl ov96_021F7194
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl ov96_021F7598
	add r0, r6, #0
	bl ov96_021F5B60
	ldr r0, _021F5B58 ; =0x00000142
	ldrb r0, [r4, r0]
	str r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021F5B58: .word 0x00000142
_021F5B5C: .word 0x000003E7
	thumb_func_end ov96_021F5A88

	thumb_func_start ov96_021F5B60
ov96_021F5B60: ; 0x021F5B60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021F5D3C
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov96_021F6F3C
	add r0, r4, #0
	bl ov96_021F6E38
	add r0, r5, #0
	bl ov96_021F5EC4
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov96_021E6454
	add r0, r4, #0
	bl ov96_021F637C
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021F5B60

	thumb_func_start ov96_021F5BA0
ov96_021F5BA0: ; 0x021F5BA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	bl ov96_021E5F54
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl ov96_021E5DC4
	add r5, r0, #0
	bl System_GetTouchNew
	cmp r0, #0
	beq _021F5C10
	ldr r0, [sp, #8]
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
	ldr r2, _021F5D38 ; =gSystem + 0x40
	add r0, r5, #0
	ldrh r1, [r2, #0x20]
	ldrh r2, [r2, #0x22]
	bl ov96_021F5F68
	cmp r0, #3
	bhs _021F5CC2
	mov r1, #5
	lsl r1, r1, #6
	ldr r2, _021F5D38 ; =gSystem + 0x40
	strb r0, [r5, r1]
	ldrh r0, [r2, #0x20]
	lsl r3, r0, #0xc
	add r0, r1, #0
	add r0, #0x2c
	str r3, [r5, r0]
	ldrh r0, [r2, #0x22]
	lsl r2, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x30
	str r2, [r5, r0]
	mov r0, #0
	add r1, #0x34
	str r0, [r5, r1]
	b _021F5CC2
_021F5C10:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _021F5C74
	mov r2, #5
	lsl r2, r2, #6
	ldrb r0, [r5, r2]
	cmp r0, #3
	bhs _021F5CC2
	add r0, r2, #1
	ldrb r0, [r5, r0]
	cmp r0, #7
	bhs _021F5C36
	add r0, r2, #1
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r2, #1
	strb r1, [r5, r0]
	b _021F5CC2
_021F5C36:
	add r3, sp, #0x1c
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	ldr r1, _021F5D38 ; =gSystem + 0x40
	str r0, [r3, #8]
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	add r2, #0x2c
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	add r2, r5, r2
	bl ov96_021F5F34
	mov r1, #5
	lsl r1, r1, #6
	ldrb r1, [r5, r1]
	add r0, r5, #0
	add r2, sp, #0x1c
	bl ov96_021F6088
	mov r0, #5
	mov r1, #3
	lsl r0, r0, #6
	strb r1, [r5, r0]
	mov r1, #0
	add r0, r0, #1
	strb r1, [r5, r0]
	b _021F5CC2
_021F5C74:
	mov r2, #5
	lsl r2, r2, #6
	ldrb r0, [r5, r2]
	cmp r0, #3
	bhs _021F5CB4
	add r0, r2, #1
	ldrb r0, [r5, r0]
	cmp r0, #7
	bhs _021F5CB4
	add r3, sp, #0x10
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	ldr r1, _021F5D38 ; =gSystem + 0x40
	str r0, [r3, #8]
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	add r2, #0x2c
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	add r2, r5, r2
	bl ov96_021F5F34
	mov r1, #5
	lsl r1, r1, #6
	ldrb r1, [r5, r1]
	add r0, r5, #0
	add r2, sp, #0x10
	bl ov96_021F6088
_021F5CB4:
	mov r0, #5
	mov r1, #3
	lsl r0, r0, #6
	strb r1, [r5, r0]
	mov r1, #0
	add r0, r0, #1
	strb r1, [r5, r0]
_021F5CC2:
	ldr r0, [sp, #8]
	bl ov96_021E5F24
	cmp r0, #0
	bne _021F5D32
	add r0, r4, #0
	add r0, #0x28
	bl ov96_021E8A20
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x50
	bl ov96_021E8A20
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov96_021E8A20
	add r3, r0, #0
	mov r6, #4
_021F5CEA:
	ldr r2, [sp, #4]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp, #4]
	sub r6, r6, #1
	bne _021F5CEA
	ldr r1, [r3]
	add r0, r2, #0
	str r1, [r0]
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r0, [sp, #8]
	ldr r1, [r5, r1]
	bl ov96_021F7740
	mov r6, #0
	add r4, #0x50
	add r5, sp, #0xc
_021F5D0E:
	add r0, r4, #0
	bl ov96_021E8A20
	ldr r0, [r0]
	add r6, r6, #1
	strb r0, [r5]
	add r4, #0x28
	add r5, r5, #1
	cmp r6, #4
	blt _021F5D0E
	mov r2, #0
	add r1, sp, #0xc
_021F5D26:
	ldrb r0, [r1]
	add r1, r1, #1
	strb r0, [r7, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _021F5D26
_021F5D32:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5D38: .word gSystem + 0x40
	thumb_func_end ov96_021F5BA0

	thumb_func_start ov96_021F5D3C
ov96_021F5D3C: ; 0x021F5D3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	bl ov96_021E5DC4
	str r0, [sp, #4]
	ldr r4, [sp, #4]
	ldr r6, [sp, #4]
	mov r0, #0
	ldr r5, _021F5EBC ; =ov96_0221DC18
	str r0, [sp, #0x10]
	add r4, #0x90
	add r7, r6, #0
_021F5D56:
	ldr r0, _021F5EC0 ; =0x00000FB4
	ldr r0, [r6, r0]
	lsl r1, r0, #6
	mov r0, #0x12
	lsl r0, r0, #0x10
	sub r0, r0, r1
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	mov r0, #2
	lsl r0, r0, #0x10
	str r1, [r4, #8]
	cmp r1, r0
	bge _021F5D74
	str r0, [r4, #8]
	b _021F5D7E
_021F5D74:
	mov r0, #0xdf
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021F5D7E
	str r0, [r4, #8]
_021F5D7E:
	ldr r1, [r4, #8]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r1, r0, #0x18
	mov r0, #0xfa
	lsl r0, r0, #4
	str r1, [r7, r0]
	ldr r1, [r4, #8]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	ldr r1, [r4, #0xc]
	str r0, [sp, #0xc]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl ov96_021EAF94
	mov r1, #0
	add r0, sp, #0x14
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp]
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #0x10]
	bl ov96_021E60C0
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _021F5DF0
	mov r0, #6
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x18]
	b _021F5DFA
_021F5DF0:
	mov r0, #1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x18]
_021F5DFA:
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #4]
	beq _021F5E34
	mov r1, #1
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #0x14
	bl ov96_021EAD08
	ldrb r0, [r5]
	bl sub_02006190
	cmp r0, #0
	bne _021F5E5E
	ldrb r1, [r5]
	mov r0, #0x89
	lsl r0, r0, #4
	bl sub_0200606C
	b _021F5E5E
_021F5E34:
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #0
	bl ov96_021EAD08
	mov r0, #0x3f
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	cmp r0, #0
	ldr r0, [r4]
	beq _021F5E58
	mov r1, #1
	bl ov96_021EAC0C
	b _021F5E5E
_021F5E58:
	mov r1, #2
	bl ov96_021EAC0C
_021F5E5E:
	ldr r0, [sp, #0x10]
	add r4, #0x38
	add r0, r0, #1
	add r6, #0x1c
	add r7, r7, #4
	add r5, r5, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	bge _021F5E72
	b _021F5D56
_021F5E72:
	ldr r4, [sp, #4]
	mov r1, #0x51
	mov r5, #0
	lsl r1, r1, #2
	add r0, r4, #0
	add r6, r0, r1
	add r7, r5, #0
_021F5E80:
	ldr r0, [sp, #4]
	mov r1, #0x5a
	add r0, r0, r5
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021F5EAE
	mov r1, #0x5a
	lsl r1, r1, #2
	strb r7, [r0, r1]
	mov r1, #1
	ldr r0, [r4, #0x78]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r4, #0x78]
	add r1, r6, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x78]
	mov r1, #9
	bl ov96_021EB564
_021F5EAE:
	add r5, r5, #1
	add r4, r4, #4
	add r6, #0xc
	cmp r5, #3
	blt _021F5E80
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F5EBC: .word ov96_0221DC18
_021F5EC0: .word 0x00000FB4
	thumb_func_end ov96_021F5D3C

	thumb_func_start ov96_021F5EC4
ov96_021F5EC4: ; 0x021F5EC4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov96_021E5F54
	add r0, #0xf0
	bl ov96_021E8A20
	add r7, r0, #0
	add r0, r6, #0
	bl ov96_021E5DC4
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
_021F5EE0:
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r4, r0
	bne _021F5F0A
	ldr r1, [sp]
	ldr r0, _021F5F30 ; =0x00000142
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021F5F24
	ldr r0, [r5, #0x68]
	bl ov96_021EB57C
	cmp r0, #0
	bne _021F5F24
	add r1, r4, #0
	ldr r0, [r5, #0x68]
	add r1, #0xd
	bl ov96_021EB564
	b _021F5F24
_021F5F0A:
	ldrb r0, [r7, r4]
	cmp r0, #0
	beq _021F5F24
	ldr r0, [r5, #0x68]
	bl ov96_021EB57C
	cmp r0, #0
	bne _021F5F24
	add r1, r4, #0
	ldr r0, [r5, #0x68]
	add r1, #0xd
	bl ov96_021EB564
_021F5F24:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021F5EE0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5F30: .word 0x00000142
	thumb_func_end ov96_021F5EC4

	thumb_func_start ov96_021F5F34
ov96_021F5F34: ; 0x021F5F34
	push {r3, r4, lr}
	sub sp, #0xc
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #3
	lsl r1, r1, #0xc
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r4, r3, #0
	add r1, r2, #0
	add r0, sp, #0
	add r2, r4, #0
	bl VEC_Subtract
	mov r0, #7
	ldr r1, [r4, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	ble _021F5F62
	str r0, [r4, #4]
_021F5F62:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F5F34

	thumb_func_start ov96_021F5F68
ov96_021F5F68: ; 0x021F5F68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #0xc]
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	bl ov96_021E6104
	lsl r6, r0, #0xc
	ldr r0, [sp, #8]
	mov r5, #0
	str r0, [sp, #0x14]
	add r0, #0x90
	add r4, r5, #0
	add r7, sp, #0x24
	str r0, [sp, #0x14]
_021F5F86:
	mov r0, #0x38
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r1, r0, r1
	add r0, r1, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F5FA8
	mov r0, #0
	strb r0, [r7, r4]
	add r1, r0, #0
	lsl r2, r4, #2
	add r0, sp, #0x28
	str r1, [r0, r2]
	b _021F6014
_021F5FA8:
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	add r3, r4, #0
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	mov r2, #0x1c
	mul r3, r2
	ldr r2, [sp, #8]
	add r3, r2, r3
	ldr r2, _021F605C ; =0x00000FB4
	ldr r2, [r3, r2]
	lsl r3, r2, #6
	mov r2, #6
	lsl r2, r2, #0x10
	sub r2, r2, r3
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #0x1c
	bl ov96_021EB0A4
	bl ov96_021E6104
	str r0, [sp]
	add r0, sp, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ov96_021E872C
	cmp r0, #0
	add r0, sp, #0x28
	beq _021F600A
	ldr r2, [sp, #0x20]
	lsl r1, r4, #2
	str r2, [r0, r1]
	mov r0, #1
	strb r0, [r7, r4]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _021F6014
_021F600A:
	lsl r2, r4, #2
	mov r1, #0
	str r1, [r0, r2]
	add r0, r1, #0
	strb r0, [r7, r4]
_021F6014:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F5F86
	cmp r5, #0
	bne _021F6028
	add sp, #0x34
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_021F6028:
	mov r0, #3
	mov r3, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
_021F6030:
	ldrb r4, [r2, r3]
	cmp r4, #0
	beq _021F6042
	lsl r4, r3, #2
	ldr r4, [r1, r4]
	cmp r4, r6
	bge _021F6042
	add r0, r3, #0
	add r6, r4, #0
_021F6042:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #3
	blo _021F6030
	cmp r0, #3
	bne _021F6056
	bl GF_AssertFail
	mov r0, #3
_021F6056:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021F605C: .word 0x00000FB4
	thumb_func_end ov96_021F5F68

	thumb_func_start ov96_021F6060
ov96_021F6060: ; 0x021F6060
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, r2, #0
	add r2, sp, #0
	add r4, r3, #0
	bl VEC_Subtract
	add r0, sp, #0
	bl VEC_Mag
	add r1, r5, r4
	cmp r0, r1
	bgt _021F6082
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021F6082:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov96_021F6060

	thumb_func_start ov96_021F6088
ov96_021F6088: ; 0x021F6088
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	cmp r0, #0
	ble _021F6120
	ldr r1, _021F6124 ; =0x00000FAC
	add r2, r6, r1
	mov r1, #0x1c
	mul r1, r5
	add r7, r2, r1
	ldr r1, [r7, #0x14]
	cmp r1, #0
	bne _021F6120
	asr r1, r0, #5
	lsr r1, r1, #0x1a
	add r1, r0, r1
	asr r0, r1, #6
	bl _dflt
	ldr r3, _021F6128 ; =0x40040000
	mov r2, #0
	bl _ddiv
	bl _dfix
	str r0, [sp]
	ldr r0, [r4]
	neg r1, r0
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	bmi _021F60DC
	mov r1, #0xa
	lsl r1, r1, #0xc
	cmp r0, r1
	ble _021F60E4
	add r0, r1, #0
	b _021F60E4
_021F60DC:
	ldr r1, _021F612C ; =0xFFFF6000
	cmp r0, r1
	bge _021F60E4
	add r0, r1, #0
_021F60E4:
	mov r1, #0x38
	add r4, r5, #0
	mul r4, r1
	add r1, r6, #0
	str r1, [sp, #4]
	add r1, #0xa8
	str r0, [r1, r4]
	add r0, r1, #0
	str r1, [sp, #4]
	ldr r1, [r0, r4]
	add r0, r6, r4
	add r0, #0xc4
	ldr r0, [r0]
	mul r0, r1
	mov r1, #0xc
	bl _s32_div_f
	ldr r1, [sp, #4]
	str r0, [r1, r4]
	ldr r0, [sp]
	ldr r1, _021F6130 ; =ov96_0221DC18
	neg r0, r0
	str r0, [r7]
	str r0, [r7, #0x18]
	mov r0, #1
	str r0, [r7, #0x14]
	ldrb r1, [r1, r5]
	ldr r0, _021F6134 ; =0x000008C2
	bl sub_0200606C
_021F6120:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F6124: .word 0x00000FAC
_021F6128: .word 0x40040000
_021F612C: .word 0xFFFF6000
_021F6130: .word ov96_0221DC18
_021F6134: .word 0x000008C2
	thumb_func_end ov96_021F6088

	thumb_func_start ov96_021F6138
ov96_021F6138: ; 0x021F6138
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _021F61B0 ; =0x04000540
	mov r3, #2
	str r3, [r0]
	ldr r0, _021F61B4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	add r1, r2, #0
	orr r1, r3
	strh r1, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	ldr r2, _021F61B8 ; =0xFFFFCFFD
	ldr r3, _021F61BC ; =0x0000CFEF
	and r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	lsr r2, r2, #0x11
	and r1, r3
	strh r1, [r0]
	add r1, r3, #0
	ldrh r5, [r0]
	add r1, #0xc
	and r1, r5
	strh r1, [r0]
	add r1, r3, #0
	ldrh r5, [r0]
	add r1, #8
	sub r3, #0x10
	and r1, r5
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _021F61C0 ; =0xBFFF0000
	ldr r0, _021F61C4 ; =0x04000580
	str r1, [r0]
	ldr r0, [r4, #0x54]
	bl Camera_New
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov96_021F6398
	pop {r3, r4, r5, pc}
	nop
_021F61B0: .word 0x04000540
_021F61B4: .word 0x04000008
_021F61B8: .word 0xFFFFCFFD
_021F61BC: .word 0x0000CFEF
_021F61C0: .word 0xBFFF0000
_021F61C4: .word 0x04000580
	thumb_func_end ov96_021F6138

	thumb_func_start ov96_021F61C8
ov96_021F61C8: ; 0x021F61C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r5, _021F6358 ; =ov96_0221C0E8
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x40
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F635C ; =0x00310081
	add r1, sp, #0x3c
	str r0, [sp, #0x3c]
	mov r0, #0x29
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	mov r0, #0xbf
	str r0, [sp, #0x38]
	mov r0, #0x20
	add r1, sp, #0x38
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushP
	mov r0, #3
	str r0, [sp, #0x34]
	mov r0, #0x40
	add r1, sp, #0x34
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6360 ; =ov96_0221E5A0
	mov r2, #0
	str r2, [r0]
	ldr r0, _021F6364 ; =ov96_0221DC10
	mov r1, #0xa
	str r1, [r0, #4]
	mov r1, #0x14
	str r1, [r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	str r2, [sp, #0x30]
	mov r0, #0x23
	add r1, sp, #0x2c
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6368 ; =0xE800E000
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0x23
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	add r5, r4, #4
	ldr r4, _021F6364 ; =ov96_0221DC10
	mov r6, #1
_021F624E:
	add r0, r6, #0
	bl _fflt
	bl _f2d
	ldr r3, _021F636C ; =0x40500000
	mov r2, #0
	bl _dsub
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021F6370 ; =0x40100000
	mov r0, #0
	bl _dmul
	ldr r3, _021F6374 ; =0x40600000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r7, r0, #0
	ldr r0, _021F6378 ; =0x45800000
	add r1, r7, #0
	bl _fmul
	bl _ffix
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #0x23
	add r1, sp, #0x1c
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6378 ; =0x45800000
	add r1, r7, #0
	bl _fmul
	bl _ffix
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x3a
	lsl r0, r0, #0x1a
	orr r0, r1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0x23
	add r1, sp, #0x14
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r1, _021F6360 ; =ov96_0221E5A0
	ldr r0, [r4]
	ldr r2, [r1]
	ldr r1, [r4, #4]
	lsl r0, r0, #0xa
	lsl r1, r1, #5
	orr r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x20
	add r1, sp, #0x10
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6360 ; =ov96_0221E5A0
	mov r1, #0x1f
	ldr r0, [r0]
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, _021F6360 ; =ov96_0221E5A0
	str r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #0x1f
	add r0, r0, #1
	bl _s32_div_f
	str r1, [r4, #4]
	ldr r0, [r4]
	mov r1, #0x1f
	add r0, r0, #1
	bl _s32_div_f
	add r6, r6, #1
	add r5, r5, #4
	str r1, [r4]
	cmp r6, #0x80
	ble _021F624E
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x23
	add r1, sp, #8
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	ldr r0, _021F6368 ; =0xE800E000
	add r1, sp, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x23
	mov r2, #2
	bl NNS_G3dGeBufferOP_N
	mov r1, #0
	mov r0, #0x41
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021F6358: .word ov96_0221C0E8
_021F635C: .word 0x00310081
_021F6360: .word ov96_0221E5A0
_021F6364: .word ov96_0221DC10
_021F6368: .word 0xE800E000
_021F636C: .word 0x40500000
_021F6370: .word 0x40100000
_021F6374: .word 0x40600000
_021F6378: .word 0x45800000
	thumb_func_end ov96_021F61C8

	thumb_func_start ov96_021F637C
ov96_021F637C: ; 0x021F637C
	push {r4, lr}
	add r4, r0, #0
	bl Thunk_G3X_Reset
	bl Camera_PushLookAtToNNSGlb
	add r0, r4, #0
	bl ov96_021F61C8
	mov r0, #0
	add r1, r0, #0
	bl sub_02026E50
	pop {r4, pc}
	thumb_func_end ov96_021F637C

	thumb_func_start ov96_021F6398
ov96_021F6398: ; 0x021F6398
	push {r3, r4, lr}
	sub sp, #0x2c
	ldr r3, _021F6420 ; =ov96_0221C0F4
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x65
	str r0, [r2]
	lsl r1, r1, #2
	mov r2, #0
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	add r0, sp, #0xc
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r2, sp, #0xc
	str r0, [sp, #8]
	add r0, r4, r1
	mov r1, #0x19
	lsl r1, r1, #0xe
	mov r3, #0xa4
	bl Camera_Init_FromTargetDistanceAndAngle
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, sp, #0x14
	bl Camera_OffsetLookAtPosAndTarget
	mov r2, #0x19
	mov r0, #1
	lsl r2, r2, #4
	lsl r0, r0, #0xe
	ldr r2, [r4, r2]
	lsl r1, r0, #6
	bl Camera_SetPerspectiveClippingPlane
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	str r1, [sp, #0x20]
	str r1, [sp, #0x28]
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, sp, #0x20
	bl Camera_SetLookAtCamUp
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Camera_SetStaticPtr
	add sp, #0x2c
	pop {r3, r4, pc}
	.balign 4, 0
_021F6420: .word ov96_0221C0F4
	thumb_func_end ov96_021F6398

	thumb_func_start ov96_021F6424
ov96_021F6424: ; 0x021F6424
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0
	add r2, r1, #0
	mov r3, #1
	add r4, r0, #0
	bl ov96_021F6524
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #2
	bl ov96_021F6524
	mov r1, #2
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl ov96_021F6524
	mov r2, #2
	lsl r2, r2, #0xa
	mov r3, #6
	mov r0, #0
	lsl r3, r3, #8
	lsr r5, r2, #2
	lsr r6, r2, #1
_021F6458:
	ldr r7, [r4, r5]
	str r7, [r4]
	ldr r1, [r4, r6]
	cmp r7, r1
	ble _021F6464
	str r1, [r4]
_021F6464:
	ldr r7, [r4, r3]
	ldr r1, [r4]
	cmp r1, r7
	ble _021F646E
	str r7, [r4]
_021F646E:
	ldr r7, [r4, r2]
	ldr r1, [r4]
	cmp r1, r7
	ble _021F6478
	str r7, [r4]
_021F6478:
	mov r1, #0xa
	lsl r1, r1, #8
	ldr r7, [r4, r1]
	ldr r1, [r4]
	cmp r1, r7
	ble _021F6486
	str r7, [r4]
_021F6486:
	mov r1, #3
	lsl r1, r1, #0xa
	ldr r7, [r4, r1]
	ldr r1, [r4]
	cmp r1, r7
	ble _021F6494
	str r7, [r4]
_021F6494:
	add r0, r0, #1
	add r4, r4, #4
	cmp r0, #0x80
	blt _021F6458
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6424

	thumb_func_start ov96_021F64A0
ov96_021F64A0: ; 0x021F64A0
	push {r4, r5, r6, r7}
	mov r4, #1
	mov r5, #2
	mov r6, #4
	mov r3, #0
	and r4, r1
	and r5, r1
	and r1, r6
_021F64B0:
	mov r6, #0
	str r6, [r2]
	cmp r4, #0
	beq _021F64D4
	mov r6, #2
	lsl r6, r6, #8
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F64C6
	str r7, [r2]
_021F64C6:
	mov r6, #2
	lsl r6, r6, #0xa
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F64D4
	str r7, [r2]
_021F64D4:
	cmp r5, #0
	beq _021F64F4
	mov r6, #1
	lsl r6, r6, #0xa
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F64E6
	str r7, [r2]
_021F64E6:
	mov r6, #0xa
	lsl r6, r6, #8
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F64F4
	str r7, [r2]
_021F64F4:
	cmp r1, #0
	beq _021F6514
	mov r6, #6
	lsl r6, r6, #8
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F6506
	str r7, [r2]
_021F6506:
	mov r6, #3
	lsl r6, r6, #0xa
	ldr r7, [r0, r6]
	ldr r6, [r2]
	cmp r6, r7
	ble _021F6514
	str r7, [r2]
_021F6514:
	add r3, r3, #1
	add r2, r2, #4
	add r0, r0, #4
	cmp r3, #0x80
	blt _021F64B0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F64A0

	thumb_func_start ov96_021F6524
ov96_021F6524: ; 0x021F6524
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r3, sp, #0x20
	ldrb r4, [r3, #0xc]
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0xe
	lsl r1, r1, #8
	ldrb r3, [r3, #8]
	lsl r5, r4, #2
	add r1, r2, r1
	lsl r4, r3, #2
	add r7, r1, r5
	ldr r3, [r1, r4]
	ldr r5, [r1, r5]
	cmp r3, r5
	bgt _021F6550
	add r6, r1, r4
	add r5, sp, #0x28
	add r1, sp, #0x2c
	b _021F6558
_021F6550:
	add r6, r7, #0
	add r7, r1, r4
	add r5, sp, #0x2c
	add r1, sp, #0x28
_021F6558:
	lsl r0, r0, #9
	add r3, r2, r0
	mov ip, r1
	mov r1, #0
	mov r0, #2
	str r3, [sp]
	add r4, r1, #0
	lsl r0, r0, #0xa
_021F6568:
	add r1, r1, #1
	str r4, [r3, r0]
	add r3, r3, #4
	cmp r1, #0x80
	blt _021F6568
	ldrb r1, [r5]
	ldr r0, [r6]
	lsl r1, r1, #9
	add r3, r2, r1
	lsl r1, r0, #2
	add r3, r3, r1
	mov r1, #2
	lsl r1, r1, #8
	ldr r5, [r3, r1]
	mov r3, ip
	ldrb r3, [r3]
	ldr r1, [r7]
	lsl r3, r3, #9
	add r3, r2, r3
	lsl r2, r1, #2
	add r3, r3, r2
	mov r2, #2
	lsl r2, r2, #8
	ldr r2, [r3, r2]
	sub r0, r1, r0
	str r0, [sp, #4]
	sub r0, r0, #1
	sub r7, r2, r5
	str r0, [sp, #8]
	cmp r0, #0
	ble _021F65C8
_021F65A6:
	add r0, r4, #1
	ldr r1, [sp, #4]
	mul r0, r7
	bl _s32_div_f
	ldr r1, [r6]
	add r0, r5, r0
	add r1, r1, r4
	lsl r2, r1, #2
	ldr r1, [sp]
	add r4, r4, #1
	add r2, r1, r2
	ldr r1, _021F65D4 ; =0x00000804
	str r0, [r2, r1]
	ldr r0, [sp, #8]
	cmp r4, r0
	blt _021F65A6
_021F65C8:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021F65D4: .word 0x00000804
	thumb_func_end ov96_021F6524

	thumb_func_start ov96_021F65D8
ov96_021F65D8: ; 0x021F65D8
	ldrh r1, [r0, #0x24]
	cmp r1, #5
	bhs _021F65E2
	add r1, r1, #1
	strh r1, [r0, #0x24]
_021F65E2:
	ldrh r2, [r0, #0x20]
	ldrh r1, [r0, #0x24]
	add r1, r2, r1
	strh r1, [r0, #0x20]
	ldrh r2, [r0, #0x20]
	ldr r1, _021F65FC ; =0x000003E7
	cmp r2, r1
	bls _021F65F4
	strh r1, [r0, #0x20]
_021F65F4:
	ldrh r0, [r0, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.balign 4, 0
_021F65FC: .word 0x000003E7
	thumb_func_end ov96_021F65D8

	thumb_func_start ov96_021F6600
ov96_021F6600: ; 0x021F6600
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #8]
	add r5, r1, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r4, #0
_021F6614:
	lsl r2, r4, #0x18
	ldr r0, [sp, #8]
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021F6798
	add r4, r4, #1
	cmp r4, #3
	blt _021F6614
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x90
	ldr r7, _021F6780 ; =ov96_0221DC18
	str r5, [sp, #0x1c]
	str r5, [sp, #0x18]
	str r0, [sp, #0x14]
_021F6638:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, #0x90
	ldr r4, [r0]
	add r0, sp, #0x24
	str r0, [sp]
	add r1, #0xac
	ldr r2, [r1]
	ldr r3, _021F6784 ; =0x00000FB4
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	ldr r2, [r2, r3]
	asr r1, r1, #0xc
	lsl r3, r2, #6
	mov r2, #0x12
	lsl r2, r2, #0x10
	sub r2, r2, r3
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #0x28
	bl ov96_021EB0A4
	add r0, sp, #0x34
	str r0, [sp]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	add r0, r4, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x30
	bl ov96_021EAF78
	ldr r0, [sp, #0xc]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r4, [sp, #0x38]
	str r0, [sp, #0x20]
_021F6692:
	add r0, r5, #0
	add r0, #0x8c
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl ov96_021F75E0
	cmp r0, #0
	beq _021F671C
	add r0, r5, #0
	add r0, #0x8c
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl ov96_021F75D4
	ldr r1, [sp, #0x2c]
	mov r3, #2
	add r2, r0, #0
	add r0, sp, #0x30
	lsl r1, r1, #0xc
	lsl r3, r3, #0xe
	bl ov96_021F6060
	cmp r0, #0
	beq _021F671C
	add r0, r5, #0
	add r0, #0x8c
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl ov96_021F75BC
	ldr r0, [sp, #0x14]
	bl ov96_021F65D8
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	add r2, r6, #0
	bl ov96_021F75E8
	ldr r0, _021F6788 ; =0x00000142
	mov r1, #1
	strb r1, [r5, r0]
	ldrb r1, [r7]
	ldr r0, _021F678C ; =0x0000088D
	bl sub_0200606C
	ldr r2, _021F6790 ; =ov96_0221C110
	lsl r3, r6, #2
	add r2, r2, r3
	sub r2, r2, #4
	ldrb r0, [r7]
	ldr r1, _021F6794 ; =0x0000FFFF
	ldr r2, [r2]
	bl sub_02005944
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x20]
	mov r3, #3
	bl ov96_021E8228
_021F671C:
	add r4, r4, #1
	cmp r4, #0x1d
	blt _021F6692
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r0, #0x38
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0x1c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x38
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	bge _021F6742
	b _021F6638
_021F6742:
	mov r1, #0
	add r0, r1, #0
_021F6746:
	add r2, r5, #0
	add r2, #0xb6
	ldrb r2, [r2]
	cmp r2, #0
	beq _021F6774
	add r2, r5, #0
	add r2, #0xb7
	ldrb r2, [r2]
	sub r3, r2, #1
	add r2, r5, #0
	add r2, #0xb7
	strb r3, [r2]
	add r2, r5, #0
	add r2, #0xb7
	ldrb r2, [r2]
	cmp r2, #0
	bne _021F6774
	add r2, r5, #0
	add r2, #0xb7
	strb r0, [r2]
	add r2, r5, #0
	add r2, #0xb6
	strb r0, [r2]
_021F6774:
	add r1, r1, #1
	add r5, #0x38
	cmp r1, #3
	blt _021F6746
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F6780: .word ov96_0221DC18
_021F6784: .word 0x00000FB4
_021F6788: .word 0x00000142
_021F678C: .word 0x0000088D
_021F6790: .word ov96_0221C110
_021F6794: .word 0x0000FFFF
	thumb_func_end ov96_021F6600

	thumb_func_start ov96_021F6798
ov96_021F6798: ; 0x021F6798
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	add r6, r1, #0
	ldr r1, _021F6A5C ; =0x00000FAC
	add r5, r2, #0
	add r2, r6, r1
	mov r1, #0x1c
	mul r1, r5
	add r4, r2, r1
	ldr r1, [r4, #0x14]
	str r0, [sp, #4]
	cmp r1, #0
	bne _021F67B6
	b _021F6B20
_021F67B6:
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r0, r5, #2
	add r1, r6, r0
	mov r0, #0xfa
	lsl r0, r0, #4
	ldr r7, [r1, r0]
	cmp r5, #0
	beq _021F67D8
	cmp r5, #1
	beq _021F67DC
	cmp r5, #2
	beq _021F67E0
	b _021F67E4
_021F67D8:
	mov r1, #6
	b _021F67EE
_021F67DC:
	mov r1, #5
	b _021F67EE
_021F67E0:
	mov r1, #3
	b _021F67EE
_021F67E4:
	bl GF_AssertFail
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
_021F67EE:
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r6, r0
	add r2, sp, #0x1c
	bl ov96_021F64A0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _021F6804
	b _021F6908
_021F6804:
	cmp r0, #0
	bgt _021F683C
	bl GF_AssertFail
	mov r3, #0
	str r3, [r4, #0x10]
	lsl r1, r7, #2
	add r0, sp, #0x1c
	ldr r0, [r0, r1]
	mov r1, #0x38
	str r0, [r4, #8]
	str r3, [r4, #0x18]
	mul r1, r5
	str r3, [r4, #0x14]
	add r1, r6, r1
	lsl r2, r7, #0x18
	str r3, [r4]
	mov r0, #1
	add r1, #0xb8
	strb r0, [r1]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021F6BE4
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
_021F683C:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r0, r1, r0
	str r0, [r4, #8]
	mov r0, #0x38
	mul r0, r5
	str r0, [sp, #8]
	add r0, r6, r0
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021F6862
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x90
	add r0, r1, r0
	add r1, r4, #0
	bl ov96_021F6B28
_021F6862:
	add r3, sp, #0x1c
	lsl r2, r7, #2
	ldr r1, [r3, r2]
	ldr r0, [r4, #8]
	cmp r0, r1
	ble _021F6890
	ldr r0, [r4]
	bl _dflt
	ldr r3, _021F6A60 ; =0x40600000
	mov r2, #0
	bl _dsub
	bl _dfix
	str r0, [r4]
	ldr r1, [r4, #0x18]
	neg r0, r0
	cmp r0, r1
	ble _021F6894
	neg r0, r1
	str r0, [r4]
	b _021F6AD6
_021F6890:
	cmp r0, r1
	ble _021F6896
_021F6894:
	b _021F6AD6
_021F6896:
	ldr r0, [r4]
	cmp r0, #0
	bne _021F68BA
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r3, r2]
	lsl r2, r7, #0x18
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x14]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov96_021F6BE4
	b _021F6AD6
_021F68BA:
	bge _021F68E8
	mov r0, #0
	str r0, [r4, #0x10]
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x90
	add r0, r1, r0
	bl ov96_021F7130
	ldr r0, [r4]
	bl _dflt
	ldr r3, _021F6A64 ; =0xC0600000
	mov r2, #0
	bl _dgr
	bls _021F68E2
	mov r0, #0x7f
	mvn r0, r0
	str r0, [r4]
_021F68E2:
	ldr r0, [r4]
	str r0, [r4, #0x18]
	b _021F6AD6
_021F68E8:
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r3, r2]
	lsl r2, r7, #0x18
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x14]
	str r0, [r4]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov96_021F6BE4
	b _021F6AD6
_021F6908:
	cmp r0, #0
	ble _021F6910
	bl GF_AssertFail
_021F6910:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r0, r1, r0
	str r0, [r4, #8]
	bl _dflt
	ldr r3, _021F6A68 ; =0xC0B80000
	mov r2, #0
	bl _dls
	bhs _021F692E
	ldr r0, _021F6A6C ; =0xFFFFE800
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4]
_021F692E:
	lsl r0, r7, #2
	add r1, sp, #0x1c
	str r0, [sp, #0x10]
	ldr r1, [r1, r0]
	ldr r0, [r4, #8]
	cmp r0, r1
	blt _021F6A28
	lsl r2, r7, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov96_021F6BE4
	mov r0, #0x38
	add r1, r6, #0
	mul r0, r5
	str r1, [sp, #0x18]
	add r1, #0xb8
	str r0, [sp, #0x14]
	ldrb r0, [r1, r0]
	str r1, [sp, #0x18]
	cmp r0, #0
	beq _021F6972
	ldr r0, [sp, #0x14]
	ldr r1, [r4]
	add r0, r6, r0
	add r0, #0xbc
	ldr r0, [r0]
	mul r0, r1
	mov r1, #0xc
	bl _s32_div_f
	str r0, [r4]
_021F6972:
	ldr r1, [r4]
	ldr r0, _021F6A70 ; =0x00000898
	cmp r1, r0
	ble _021F697C
	str r0, [r4]
_021F697C:
	ldr r1, [r4]
	lsl r0, r1, #3
	add r0, r1, r0
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r4]
	cmp r0, #0
	bne _021F69C0
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021F69A2
	ldr r1, _021F6A74 ; =ov96_0221DC18
	ldr r0, _021F6A78 ; =0x000005F3
	ldrb r1, [r1, #3]
	bl sub_0200606C
_021F69A2:
	mov r3, #0
	ldr r0, [sp, #0x10]
	str r3, [r4, #0x10]
	add r1, sp, #0x1c
	ldr r0, [r1, r0]
	lsl r2, r7, #0x18
	str r0, [r4, #8]
	str r3, [r4, #0x18]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	str r3, [r4, #0x14]
	bl ov96_021F6BE4
	b _021F6AD6
_021F69C0:
	bgt _021F69C4
	b _021F6AD6
_021F69C4:
	bl _dflt
	ldr r3, _021F6A7C ; =0x40960000
	mov r2, #0
	bl _dleq
	bhi _021F69FC
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021F69FC
	mov r3, #0
	ldr r0, [sp, #0x10]
	str r3, [r4, #0x10]
	add r1, sp, #0x1c
	ldr r0, [r1, r0]
	lsl r2, r7, #0x18
	str r0, [r4, #8]
	str r3, [r4, #0x18]
	str r3, [r4]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	str r3, [r4, #0x14]
	bl ov96_021F6BE4
	b _021F6AD6
_021F69FC:
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x14]
	mov r2, #0
	strb r2, [r1, r0]
	ldr r1, _021F6A74 ; =ov96_0221DC18
	ldr r0, _021F6A80 ; =0x00000656
	ldrb r1, [r1, #3]
	bl sub_0200606C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r2, r5, #0
	mov r3, #2
	bl ov96_021E8228
	b _021F6AD6
_021F6A28:
	cmp r0, r1
	bge _021F6AD6
	ldr r0, [r4]
	cmp r0, #0
	bge _021F6A4E
	bl _dflt
	ldr r2, _021F6A84 ; =0x9999999A
	ldr r3, _021F6A88 ; =0x40899999
	bl _dadd
	bl _dfix
	str r0, [r4]
	cmp r0, #0
	blt _021F6AD6
	mov r0, #0
	str r0, [r4]
	b _021F6AD6
_021F6A4E:
	blt _021F6AD6
	bl _dflt
	ldr r2, _021F6A8C ; =0x55555555
	ldr r3, _021F6A90 ; =0x40755555
	b _021F6A94
	nop
_021F6A5C: .word 0x00000FAC
_021F6A60: .word 0x40600000
_021F6A64: .word 0xC0600000
_021F6A68: .word 0xC0B80000
_021F6A6C: .word 0xFFFFE800
_021F6A70: .word 0x00000898
_021F6A74: .word ov96_0221DC18
_021F6A78: .word 0x000005F3
_021F6A7C: .word 0x40960000
_021F6A80: .word 0x00000656
_021F6A84: .word 0x9999999A
_021F6A88: .word 0x40899999
_021F6A8C: .word 0x55555555
_021F6A90: .word 0x40755555
_021F6A94:
	bl _dadd
	bl _dfix
	str r0, [r4]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	blt _021F6ACC
	bl GF_AssertFail
	mov r3, #0
	lsl r2, r7, #0x18
	ldr r0, [sp, #0x10]
	str r3, [r4, #0x10]
	add r1, sp, #0x1c
	ldr r0, [r1, r0]
	add r1, r5, #0
	str r0, [r4, #8]
	str r3, [r4, #0x18]
	str r3, [r4, #0x14]
	add r0, r6, #0
	lsr r2, r2, #0x18
	str r3, [r4]
	bl ov96_021F6BE4
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
_021F6ACC:
	neg r1, r0
	ldr r0, [r4]
	cmp r0, r1
	ble _021F6AD6
	str r1, [r4]
_021F6AD6:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021F6AE8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F6AE8
	ldr r0, [r4]
	cmp r0, #0
	bne _021F6AF4
_021F6AE8:
	mov r1, #0x38
	mul r1, r5
	add r1, r6, r1
	mov r0, #0
	add r1, #0xb4
	strh r0, [r1]
_021F6AF4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021F6B0E
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F6B0E
	lsl r2, r7, #0x18
	ldr r3, [r4, #8]
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021F6BE4
_021F6B0E:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021F6B20
	mov r0, #0x38
	mul r0, r5
	add r0, r6, r0
	mov r1, #1
	add r0, #0xb8
	strb r1, [r0]
_021F6B20:
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6798

	thumb_func_start ov96_021F6B28
ov96_021F6B28: ; 0x021F6B28
	ldr r1, [r1, #8]
	cmp r1, #0
	ble _021F6B4C
	ldr r2, [r0, #8]
	ldr r1, [r0, #0x18]
	add r2, r2, r1
	mov r1, #2
	lsl r1, r1, #0x10
	str r2, [r0, #0x1c]
	cmp r2, r1
	bge _021F6B42
	str r1, [r0, #0x1c]
	bx lr
_021F6B42:
	mov r1, #0xdf
	lsl r1, r1, #0xc
	cmp r2, r1
	ble _021F6B4C
	str r1, [r0, #0x1c]
_021F6B4C:
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F6B28

	thumb_func_start ov96_021F6B50
ov96_021F6B50: ; 0x021F6B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	neg r0, r1
	str r0, [sp, #4]
	mov r0, #0x7f
	str r2, [sp]
	sub r4, r0, r7
	mov r6, #0
	cmp r7, #0
	ble _021F6B82
	add r5, r2, #0
_021F6B68:
	add r0, r6, #1
	lsl r0, r0, #0x18
	ldr r1, [sp, #4]
	lsr r0, r0, #0x18
	mul r0, r1
	add r1, r7, #1
	bl _s32_div_f
	neg r0, r0
	add r6, r6, #1
	stmia r5!, {r0}
	cmp r6, r7
	blt _021F6B68
_021F6B82:
	mov r5, #0
	cmp r4, #0
	ble _021F6BAC
	add r6, r7, #1
_021F6B8A:
	sub r0, r4, r5
	lsl r0, r0, #0x18
	ldr r1, [sp, #4]
	lsr r0, r0, #0x18
	mul r0, r1
	add r1, r4, #1
	bl _s32_div_f
	add r1, r6, r5
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, [sp]
	neg r0, r0
	add r5, r5, #1
	str r0, [r1, r2]
	cmp r5, r4
	blt _021F6B8A
_021F6BAC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F6B50

	thumb_func_start ov96_021F6BB0
ov96_021F6BB0: ; 0x021F6BB0
	push {r4, r5}
	mov r1, #0x1a
	lsl r1, r1, #4
	add r2, r0, r1
	ldr r3, _021F6BE0 ; =0x00000FAC
	mov r4, #0xe
	add r0, r0, r3
	mov r1, #0
	add r3, r2, #0
	lsl r4, r4, #8
_021F6BC4:
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _021F6BD2
	ldr r5, [r3, r4]
	lsl r5, r5, #2
	ldr r5, [r2, r5]
	str r5, [r0, #8]
_021F6BD2:
	add r1, r1, #1
	add r0, #0x1c
	add r3, r3, #4
	cmp r1, #3
	blt _021F6BC4
	pop {r4, r5}
	bx lr
	.balign 4, 0
_021F6BE0: .word 0x00000FAC
	thumb_func_end ov96_021F6BB0

	thumb_func_start ov96_021F6BE4
ov96_021F6BE4: ; 0x021F6BE4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	lsl r6, r1, #9
	add r7, r3, #0
	mov r1, #0x3a
	mov r3, #0
	add r0, r2, #0
	add r5, r4, r6
	add r2, r3, #0
	lsl r1, r1, #4
_021F6BF8:
	add r3, r3, #1
	str r2, [r5, r1]
	add r5, r5, #4
	cmp r3, #0x80
	blt _021F6BF8
	mov r1, #0x3a
	lsl r1, r1, #4
	add r1, r4, r1
	add r2, r1, r6
	lsl r1, r0, #2
	str r7, [r2, r1]
	ldr r1, [r2, r1]
	bl ov96_021F6B50
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6BE4

	thumb_func_start ov96_021F6C18
ov96_021F6C18: ; 0x021F6C18
	push {r4, lr}
	sub sp, #8
	mov r2, #3
	mov r1, #0xa8
	mov r3, #0x65
	add r4, r0, #0
	str r2, [sp]
	bl ov96_021EB2BC
	mov r0, #3
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	mov r3, #0x65
	bl ov96_021EB2F4
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB334
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #1
	mov r3, #0x65
	bl ov96_021EB36C
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6C18

	thumb_func_start ov96_021F6C5C
ov96_021F6C5C: ; 0x021F6C5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	add r0, #0x8c
	ldr r0, [r0]
	add r5, r1, #0
	mov r2, #2
	bl ov96_021F74D0
	mov r2, #3
	add r0, r5, #0
	mov r1, #1
	mov r3, #0x65
	str r2, [sp]
	bl ov96_021EB3E4
	ldr r1, [sp, #4]
	str r0, [r1, #0x64]
	mov r1, #0xc
	bl ov96_021EB564
	ldr r0, [sp, #4]
	mov r1, #1
	ldr r0, [r0, #0x64]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r4, [sp, #4]
	mov r6, #0
	mov r7, #4
_021F6C98:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0x65
	str r7, [sp]
	bl ov96_021EB3E4
	add r1, r6, #0
	str r0, [r4, #0x68]
	add r1, #0xd
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r4, #0x68]
	add r2, r1, #0
	bl ov96_021EB52C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021F6C98
	ldr r4, [sp, #4]
	mov r6, #0
	mov r7, #7
_021F6CC8:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0x65
	str r7, [sp]
	bl ov96_021EB3E4
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0xb
	bl ov96_021EB564
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #9
	bl ov96_021EB630
	add r6, r6, #1
	add r4, #0x38
	cmp r6, #4
	blt _021F6CC8
	ldr r4, [sp, #4]
	mov r6, #0
	mov r7, #8
_021F6D02:
	str r7, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0x65
	bl ov96_021EB3E4
	str r0, [r4, #0x78]
	mov r1, #9
	bl ov96_021EB564
	ldr r0, [r4, #0x78]
	mov r1, #6
	bl ov96_021EB630
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021F6D02
	mov r0, #0
	ldr r4, [sp, #4]
	ldr r7, _021F6D9C ; =ov96_0221C0B0
	ldr r6, _021F6DA0 ; =ov96_0221C0B4
	str r0, [sp, #8]
_021F6D32:
	add r0, r5, #0
	bl ov96_021EB5E8
	add r1, r0, #0
	mov r0, #0x62
	ldr r3, [sp, #4]
	ldr r2, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r3, [r3, #0x54]
	mov r2, #1
	bl ov96_021EA634
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl Set2dSpriteVisibleFlag
	ldrb r0, [r7]
	add r1, sp, #0xc
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0x84
	ldrb r1, [r6]
	ldr r0, [r0]
	bl Set2dSpriteAnimSeqNo
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, r0, #1
	add r7, r7, #1
	add r6, r6, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _021F6D32
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F6D9C: .word ov96_0221C0B0
_021F6DA0: .word ov96_0221C0B4
	thumb_func_end ov96_021F6C5C

	thumb_func_start ov96_021F6DA4
ov96_021F6DA4: ; 0x021F6DA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	str r1, [sp]
	add r0, #0x8c
	ldr r0, [r0]
	bl ov96_021F7544
	ldr r4, _021F6E2C ; =ov96_0221C0C4
	add r3, sp, #0x28
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r5, #0x64]
	bl ov96_021EB588
	ldr r4, _021F6E30 ; =ov96_0221C0DC
	add r3, sp, #0x1c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [sp]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	bl ov96_021EB588
	ldr r3, _021F6E34 ; =ov96_0221C0D0
	mov r4, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, r4, #0
	str r0, [r2]
_021F6DF6:
	add r3, sp, #4
	ldmia r3!, {r0, r1}
	add r2, sp, #0x10
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp]
	cmp r6, r0
	beq _021F6E20
	ldr r1, [sp, #0x14]
	lsl r0, r4, #0x10
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x68]
	add r1, r7, #0
	bl ov96_021EB588
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021F6E20:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _021F6DF6
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F6E2C: .word ov96_0221C0C4
_021F6E30: .word ov96_0221C0DC
_021F6E34: .word ov96_0221C0D0
	thumb_func_end ov96_021F6DA4

	thumb_func_start ov96_021F6E38
ov96_021F6E38: ; 0x021F6E38
	push {r4, lr}
	mov r1, #0
	add r2, r1, #0
	add r3, r0, #0
_021F6E40:
	add r4, r3, #0
	add r4, #0xb0
	ldrh r4, [r4]
	add r2, r2, #1
	add r3, #0x38
	add r1, r1, r4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r2, #3
	blt _021F6E40
	ldr r2, _021F6E64 ; =0x000003E7
	cmp r1, r2
	bls _021F6E5C
	add r1, r2, #0
_021F6E5C:
	bl ov96_021F6E68
	pop {r4, pc}
	nop
_021F6E64: .word 0x000003E7
	thumb_func_end ov96_021F6E38

	thumb_func_start ov96_021F6E68
ov96_021F6E68: ; 0x021F6E68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #3]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0]
	mov r0, #0x64
	mul r0, r4
	sub r0, r6, r0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #4]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #1]
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #5]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x1c
	strb r1, [r0, #2]
	mov r4, #0
	mov r6, #4
	mov r7, #8
_021F6EF2:
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x5c]
	lsl r2, r4, #2
	add r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x1c
	add r0, #3
	ldrb r0, [r0, r4]
	add r2, r2, #1
	lsl r2, r2, #0x18
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	ldrb r0, [r0, r4]
	add r1, r6, #0
	lsr r2, r2, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5]
	mov r3, #0
	bl CopyRectToBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F6EF2
	ldr r0, [r5]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6E68

	thumb_func_start ov96_021F6F3C
ov96_021F6F3C: ; 0x021F6F3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x84
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r0]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r5, #0x88
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021F6F3C

	thumb_func_start ov96_021F6F80
ov96_021F6F80: ; 0x021F6F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	mov r4, #0
	str r0, [sp, #0x10]
	add r5, r7, #4
	add r6, r4, #0
_021F6F8E:
	lsl r0, r4, #4
	add r0, r5, r0
	add r1, r6, #0
	bl FillWindowPixelBuffer
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F6F8E
	ldr r0, [sp, #0x10]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl ov96_021E5F34
	ldr r1, [r7, #0x54]
	bl PlayerProfile_GetPlayerName_NewString
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F704C ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r7, #4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #4
	mov r4, #1
	mov r5, #0
	str r0, [sp, #0x18]
_021F6FE4:
	ldr r0, [sp, #0x14]
	cmp r5, r0
	beq _021F7026
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl ov96_021E5F34
	ldr r1, [r7, #0x54]
	bl PlayerProfile_GetPlayerName_NewString
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F704C ; =0x000F0E00
	lsl r1, r4, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	add r0, r0, r1
	mov r1, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021F7026:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021F6FE4
	mov r4, #0
	add r5, r7, #4
_021F7034:
	lsl r0, r4, #4
	add r0, r5, r0
	bl CopyWindowToVram
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F7034
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F704C: .word 0x000F0E00
	thumb_func_end ov96_021F6F80

	thumb_func_start ov96_021F7050
ov96_021F7050: ; 0x021F7050
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _021F70A8 ; =ov96_0221C1CC
	mov r4, #0
	add r6, r5, #4
_021F705A:
	lsl r1, r4, #4
	lsl r2, r4, #3
	ldr r0, [r5]
	add r1, r6, r1
	add r2, r7, r2
	bl AddWindow
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021F705A
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5]
	mov r1, #6
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r5, #0x54]
	mov r0, #4
	lsl r1, r1, #4
	bl LoadFontPal0
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5]
	mov r1, #3
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r5, #0x54]
	mov r0, #0
	lsl r1, r1, #4
	bl LoadFontPal0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F70A8: .word ov96_0221C1CC
	thumb_func_end ov96_021F7050

	thumb_func_start ov96_021F70AC
ov96_021F70AC: ; 0x021F70AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	add r0, #0x44
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r2, _021F7128 ; =0x00000135
	ldr r3, [r5, #0x54]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	add r4, r0, #0
	ldr r0, [r5, #0x54]
	bl MessageFormat_New
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r2, r7, #0
	mov r3, #3
	add r6, r0, #0
	bl BufferIntegerAsString
	ldr r3, [r5, #0x54]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0xa1
	bl ReadMsgData_ExpandPlaceholders
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F712C ; =0x000F0E00
	mov r1, #4
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x44
	add r2, r7, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_Delete
	add r0, r4, #0
	bl DestroyMsgData
	add r5, #0x44
	add r0, r5, #0
	bl CopyWindowToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F7128: .word 0x00000135
_021F712C: .word 0x000F0E00
	thumb_func_end ov96_021F70AC

	thumb_func_start ov96_021F7130
ov96_021F7130: ; 0x021F7130
	ldr r2, [r0, #0x18]
	cmp r2, #0
	beq _021F715A
	ble _021F7148
	mov r1, #2
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r0, #0x18]
	bpl _021F715A
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
_021F7148:
	bge _021F715A
	mov r1, #2
	lsl r1, r1, #0xc
	add r1, r2, r1
	str r1, [r0, #0x18]
	cmp r1, #0
	ble _021F715A
	mov r1, #0
	str r1, [r0, #0x18]
_021F715A:
	bx lr
	thumb_func_end ov96_021F7130

	thumb_func_start ov96_021F715C
ov96_021F715C: ; 0x021F715C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r6, #0
	add r2, r7, #0
	bl ov96_021E60D8
	ldrb r1, [r0, #2]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	str r1, [r4, #0x2c]
	ldrb r1, [r0, #3]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x14]
	str r1, [r4, #0x30]
	ldrb r0, [r0, #4]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F715C

	thumb_func_start ov96_021F7194
ov96_021F7194: ; 0x021F7194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r0, [sp, #8]
	mov r0, #0
	add r4, r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, _021F7494 ; =0x00000FAC
	ldr r0, [sp, #0xc]
	add r4, #0x90
	add r0, r0, r1
	str r0, [sp, #0x14]
_021F71AC:
	ldr r1, _021F7494 ; =0x00000FAC
	ldr r0, [sp, #0xc]
	ldr r5, [sp, #0xc]
	add r6, r0, r1
	ldr r0, [sp, #0x10]
	mov r7, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r0, r4, #0
	str r0, [sp, #0x28]
	add r0, #0x1c
	add r5, #0x90
	str r0, [sp, #0x28]
_021F71C8:
	ldr r0, [sp, #0x10]
	cmp r0, r7
	beq _021F72A0
	ldr r0, [sp, #8]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	str r0, [sp, #0x20]
	ldr r0, [r5]
	str r0, [sp, #0x1c]
	add r0, sp, #0x2c
	str r0, [sp]
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0x20]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [sp, #0x14]
	ldr r2, [r2, #8]
	lsl r3, r2, #6
	mov r2, #0x12
	lsl r2, r2, #0x10
	sub r3, r2, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r3, sp, #0x30
	bl ov96_021EB0A4
	add r0, sp, #0x58
	str r0, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x54
	bl ov96_021EAF78
	mov r0, #0
	str r0, [sp, #0x5c]
	add r0, sp, #0x2c
	str r0, [sp]
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #0x1c]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	ldr r2, [r6, #8]
	lsl r3, r2, #6
	mov r2, #0x12
	lsl r2, r2, #0x10
	sub r3, r2, r3
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r3, sp, #0x30
	bl ov96_021EB0A4
	add r0, sp, #0x4c
	str r0, [sp]
	add r0, sp, #0x34
	str r0, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x48
	bl ov96_021EAF78
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x50]
	add r0, sp, #0x54
	lsl r1, r1, #0xc
	add r2, sp, #0x48
	lsl r3, r3, #0xc
	bl ov96_021F6060
	cmp r0, #0
	bne _021F7294
	add r1, r4, r7
	add r1, #0x29
	mov r0, #0
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	add r1, r0, r5
	add r1, #0x29
	mov r0, #0
	strb r0, [r1]
	b _021F746C
_021F7294:
	ldr r0, [sp, #0x10]
	add r0, r0, r5
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F72A2
_021F72A0:
	b _021F746C
_021F72A2:
	add r1, r4, #0
	add r1, #0x26
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x26
	strb r0, [r1]
	ldr r1, [r4, #0x30]
	mov r0, #0x1e
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	add r1, r4, #0
	add r1, #0x27
	strb r0, [r1]
	ldr r1, [r5, #0x30]
	mov r0, #0x1e
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	add r1, r5, #0
	add r1, #0x27
	strb r0, [r1]
	mov r1, #0
	add r0, sp, #0x3c
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, sp, #0x48
	add r1, sp, #0x54
	add r2, sp, #0x3c
	bl VEC_Subtract
	add r0, sp, #0x3c
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, [sp, #0x38]
	add r1, sp, #0x3c
	lsl r0, r0, #0xc
	add r2, sp, #0x54
	add r3, r1, #0
	bl VEC_MultAdd
	ldr r1, [sp, #0xc]
	ldr r0, _021F7498 ; =0x00000143
	ldrb r1, [r1, r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0xc]
	add r1, r0, r2
	mov r0, #0x51
	lsl r0, r0, #2
	add r2, sp, #0x3c
	add r3, r1, r0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	ldr r1, [sp, #0xc]
	str r0, [r3]
	ldr r0, _021F7498 ; =0x00000143
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0xc]
	add r2, r0, r1
	mov r0, #0x5a
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r2, r0]
	ldr r1, [sp, #0xc]
	sub r0, #0x25
	ldrb r0, [r1, r0]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	ldr r2, [sp, #0xc]
	ldr r0, _021F7498 ; =0x00000143
	strb r1, [r2, r0]
	ldr r1, _021F749C ; =ov96_0221DC18
	ldr r0, _021F74A0 ; =0x000008A3
	ldrb r1, [r1, #3]
	bl sub_0200606C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	mov r3, #4
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	lsl r2, r7, #0x18
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	mov r3, #1
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	lsl r2, r7, #0x18
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov96_021E8228
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021F7404
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021F7404
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #8]
	cmp r0, #0
	ble _021F7404
	ldr r0, [r6, #8]
	cmp r0, #0
	ble _021F7404
	add r0, r4, r7
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F746C
	ldr r0, [sp, #0x10]
	add r0, r0, r5
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F746C
	add r1, r4, r7
	add r1, #0x29
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	add r1, r0, r5
	add r1, #0x29
	mov r0, #1
	strb r0, [r1]
	ldr r1, [sp, #0x14]
	ldr r0, [r6]
	ldr r1, [r1]
	str r1, [r6]
	ldr r1, [sp, #0x14]
	str r0, [r1]
	ldr r1, [r5, #0x18]
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x14]
	str r1, [r4, #0x18]
	ldr r0, [r0]
	cmp r0, #0
	bge _021F73F8
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r1, [r0]
_021F73F8:
	ldr r0, [r6]
	cmp r0, #0
	bge _021F746C
	mov r0, #0
	str r0, [r6]
	b _021F746C
_021F7404:
	ldr r1, [r4, #0x1c]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	bgt _021F7424
	ldr r0, [sp, #0x28]
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0x10
	sub r1, r1, r0
	ldr r0, [sp, #0x28]
	str r1, [r0]
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0x10
	add r0, r1, r0
	b _021F743A
_021F7424:
	ldr r0, [sp, #0x28]
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0x10
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	str r1, [r0]
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0x10
	sub r0, r1, r0
_021F743A:
	str r0, [r5, #0x1c]
	mov r0, #2
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021F744A
	str r0, [r4, #0x1c]
	b _021F7454
_021F744A:
	mov r0, #0xdf
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021F7454
	str r0, [r4, #0x1c]
_021F7454:
	mov r0, #2
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021F7462
	str r0, [r5, #0x1c]
	b _021F746C
_021F7462:
	mov r0, #0xdf
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021F746C
	str r0, [r5, #0x1c]
_021F746C:
	add r7, r7, #1
	add r5, #0x38
	add r6, #0x1c
	cmp r7, #3
	bge _021F7478
	b _021F71C8
_021F7478:
	ldr r0, [sp, #0x14]
	add r4, #0x38
	add r0, #0x1c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	bge _021F748C
	b _021F71AC
_021F748C:
	mov r0, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F7494: .word 0x00000FAC
_021F7498: .word 0x00000143
_021F749C: .word ov96_0221DC18
_021F74A0: .word 0x000008A3
	thumb_func_end ov96_021F7194

	thumb_func_start ov96_021F74A4
ov96_021F74A4: ; 0x021F74A4
	push {r4, lr}
	mov r1, #0x33
	lsl r1, r1, #4
	bl AllocFromHeap
	mov r2, #0x33
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0xcb
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F74A4

	thumb_func_start ov96_021F74C8
ov96_021F74C8: ; 0x021F74C8
	ldr r3, _021F74CC ; =FreeToHeap
	bx r3
	.balign 4, 0
_021F74CC: .word FreeToHeap
	thumb_func_end ov96_021F74C8

	thumb_func_start ov96_021F74D0
ov96_021F74D0: ; 0x021F74D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r7, #0
_021F74DA:
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	mov r3, #0x65
	bl ov96_021EB3E4
	mov r1, #1
	str r0, [r5, #0x10]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x10]
	mov r1, #8
	bl ov96_021EB564
	mov r0, #5
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	mov r3, #0x65
	bl ov96_021EB3E4
	str r0, [r5, #0x14]
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	mov r3, #0x65
	bl ov96_021EB3E4
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	mov r1, #0x14
	bl ov96_021EB630
	ldr r0, [r5, #0x14]
	mov r1, #7
	bl ov96_021EB630
	ldr r0, [r5, #0x18]
	mov r1, #8
	bl ov96_021EB630
	add r7, r7, #1
	add r5, #0x1c
	cmp r7, #0x1d
	blt _021F74DA
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F74D0

	thumb_func_start ov96_021F7544
ov96_021F7544: ; 0x021F7544
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _021F7594 ; =ov96_0221C21C
	add r5, r0, #0
	mov r6, #0
	add r7, sp, #0
_021F7550:
	ldrh r0, [r4]
	add r1, r7, #0
	lsl r0, r0, #0xf
	str r0, [sp]
	ldrh r0, [r4, #2]
	lsl r0, r0, #0xf
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	bl ov96_021EB588
	ldr r0, [r5, #0x14]
	add r1, r7, #0
	bl ov96_021EB588
	ldr r0, [r5, #0x18]
	add r1, r7, #0
	bl ov96_021EB588
	add r3, sp, #0
	add r2, r5, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, r6, #1
	str r0, [r2]
	add r4, r4, #4
	add r5, #0x1c
	cmp r6, #0x1d
	blt _021F7550
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F7594: .word ov96_0221C21C
	thumb_func_end ov96_021F7544

	thumb_func_start ov96_021F7598
ov96_021F7598: ; 0x021F7598
	push {r4, lr}
	mov r1, #0xcb
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	bne _021F75B4
	bl ov96_021F7620
	mov r0, #0xcb
	mov r1, #0xf0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_021F75B4:
	sub r0, r2, #1
	str r0, [r4, r1]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F7598

	thumb_func_start ov96_021F75BC
ov96_021F75BC: ; 0x021F75BC
	mov r2, #0x1c
	mul r2, r1
	mov r1, #0
	str r1, [r0, r2]
	add r0, r0, r2
	ldr r3, _021F75D0 ; =ov96_021EB564
	ldr r0, [r0, #0x10]
	mov r1, #8
	bx r3
	nop
_021F75D0: .word ov96_021EB564
	thumb_func_end ov96_021F75BC

	thumb_func_start ov96_021F75D4
ov96_021F75D4: ; 0x021F75D4
	mov r2, #0x1c
	mul r2, r1
	add r0, r0, r2
	add r0, r0, #4
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F75D4

	thumb_func_start ov96_021F75E0
ov96_021F75E0: ; 0x021F75E0
	mov r2, #0x1c
	mul r2, r1
	ldr r0, [r0, r2]
	bx lr
	thumb_func_end ov96_021F75E0

	thumb_func_start ov96_021F75E8
ov96_021F75E8: ; 0x021F75E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x1c
	add r6, r5, #0
	mul r4, r0
	add r6, #0x18
	ldr r0, [r6, r4]
	mov r1, #0xa
	add r7, r2, #0
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r6, r4]
	add r2, r1, #0
	bl ov96_021EB52C
	add r5, #0x14
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r5, r4]
	add r2, r1, #0
	bl ov96_021EB52C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F75E8

	thumb_func_start ov96_021F7620
ov96_021F7620: ; 0x021F7620
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	mov r4, #0
	add r3, r4, #0
	add r1, sp, #0
_021F762A:
	ldr r2, [r0]
	cmp r2, #0
	bne _021F7636
	lsl r2, r4, #2
	add r4, r4, #1
	str r0, [r1, r2]
_021F7636:
	add r3, r3, #1
	add r0, #0x1c
	cmp r3, #0x1d
	blt _021F762A
	lsl r1, r4, #2
	add r0, sp, #0
	mov r7, #0
	add r5, r0, r1
_021F7646:
	cmp r4, #0
	ble _021F767E
	bl LCRandom
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r6, r0, #0x16
	add r0, sp, #0
	ldr r1, [r0, r6]
	mov r0, #1
	str r0, [r1]
	add r0, sp, #0
	ldr r0, [r0, r6]
	mov r1, #7
	ldr r0, [r0, #0x10]
	bl ov96_021EB564
	sub r0, r5, #4
	ldr r1, [r0]
	add r0, sp, #0
	add r7, r7, #1
	str r1, [r0, r6]
	sub r5, r5, #4
	sub r4, r4, #1
	cmp r7, #0x19
	blt _021F7646
_021F767E:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F7620

	thumb_func_start ov96_021F7684
ov96_021F7684: ; 0x021F7684
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, [sp, #0x28]
	add r4, r3, #0
	str r1, [sp, #0x28]
	mov r1, #0x24
	bl AllocFromHeap
	str r0, [sp, #8]
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldr r0, [sp, #8]
	strb r5, [r0, #0x1c]
	mov r0, #4
	sub r1, r0, r5
	ldr r0, [sp, #8]
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [sp, #8]
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [sp, #8]
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [sp, #8]
	mov r1, #3
	strb r1, [r0, #0x1f]
	str r4, [r0, #4]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	ble _021F7730
_021F76CE:
	ldr r0, [sp, #8]
	mov r4, #0
	add r0, #0x20
	ldrb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r0, #1
	str r0, [sp, #4]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r5, r0, r1
	add r1, r0, #0
	ldr r0, [sp, #4]
	add r0, r1, r0
	add r6, r0, #0
	add r7, r0, #0
	str r0, [sp]
	add r6, #8
	add r7, #0xc
_021F76F8:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl ov96_021E60D8
	ldrb r2, [r6]
	ldrb r1, [r0, #2]
	add r4, r4, #1
	add r1, r2, r1
	strb r1, [r6]
	ldrb r1, [r7]
	ldrb r0, [r0, #4]
	add r0, r1, r0
	strb r0, [r7]
	ldr r0, [sp]
	ldrb r0, [r0, #8]
	strb r0, [r5, #0x10]
	add r5, r5, #1
	cmp r4, #3
	blt _021F76F8
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldrb r1, [r0, #0x1c]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _021F76CE
_021F7730:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F7684

	thumb_func_start ov96_021F7738
ov96_021F7738: ; 0x021F7738
	ldr r3, _021F773C ; =FreeToHeap
	bx r3
	.balign 4, 0
_021F773C: .word FreeToHeap
	thumb_func_end ov96_021F7738

	thumb_func_start ov96_021F7740
ov96_021F7740: ; 0x021F7740
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #4
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #4
	bne _021F775C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F775C:
	ldrb r0, [r5, #0x1e]
	add r0, r0, #1
	strb r0, [r5, #0x1e]
	add r0, r5, #0
	add r0, #0x20
	ldrb r6, [r0]
	cmp r6, #4
	bge _021F7788
	mov r0, #0x28
	add r4, r6, #0
	mul r4, r0
	mov r7, #0
_021F7774:
	ldr r0, [r5, #4]
	add r0, #0x50
	add r0, r0, r4
	bl ov96_021E8A20
	add r6, r6, #1
	add r4, #0x28
	str r7, [r0]
	cmp r6, #4
	blt _021F7774
_021F7788:
	ldrb r1, [r5, #0x1e]
	ldrb r0, [r5, #0x1f]
	cmp r1, r0
	blo _021F7798
	mov r0, #1
	str r0, [r5]
	mov r0, #0
	strb r0, [r5, #0x1e]
_021F7798:
	ldr r0, [r5]
	cmp r0, #0
	beq _021F77E6
	add r0, r5, #0
	add r0, #0x20
	ldrb r1, [r0]
	ldrb r0, [r5, #0x1d]
	add r4, r1, r0
	cmp r4, r1
	bge _021F77B0
	bl GF_AssertFail
_021F77B0:
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r4, r0
	bge _021F77C0
	add sp, #8
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021F77C0:
	lsl r2, r4, #0x18
	ldr r0, [sp]
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021F77EC
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrb r0, [r5, #0x1d]
	add r0, r0, #1
	strb r0, [r5, #0x1d]
	ldrb r1, [r5, #0x1d]
	ldrb r0, [r5, #0x1c]
	cmp r1, r0
	blo _021F77E6
	mov r0, #0
	strb r0, [r5, #0x1d]
	str r0, [r5]
_021F77E6:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F7740

	thumb_func_start ov96_021F77EC
ov96_021F77EC: ; 0x021F77EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, [r6, #4]
	str r0, [sp, #4]
	add r5, r2, #0
	mov r0, #0x28
	add r1, #0x50
	mul r0, r5
	add r0, r1, r0
	bl ov96_021E8A20
	add r4, r6, #0
	add r4, #8
	add r7, r0, #0
	ldrb r0, [r4, r5]
	cmp r0, #0
	bne _021F7814
	mov r0, #0
	b _021F782A
_021F7814:
	bl LCRandom
	mov r1, #0x65
	bl _s32_div_f
	add r0, r6, r5
	ldrb r2, [r4, r5]
	ldrb r0, [r0, #0xc]
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
_021F782A:
	cmp r0, #0x64
	blt _021F7874
	mov r0, #1
	str r0, [r7]
	bl LCRandom
	ldrb r1, [r4, r5]
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsl r1, r5, #1
	add r1, r5, r1
	lsr r0, r0, #0x18
	mov r4, #0
	add r1, r6, r1
_021F7848:
	add r2, r1, r4
	ldrb r2, [r2, #0x10]
	cmp r0, r2
	bhs _021F7862
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	bl ov96_021E8228
	b _021F786C
_021F7862:
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #3
	blo _021F7848
_021F786C:
	cmp r4, #3
	blo _021F7874
	bl GF_AssertFail
_021F7874:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F77EC

	thumb_func_start ov96_021F7878
ov96_021F7878: ; 0x021F7878
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0
	bne _021F788A
	bl GF_AssertFail
_021F788A:
	ldr r2, _021F78C0 ; =ov96_0221C2A0
	add r0, r5, #0
	add r1, r6, #0
	bl AddWindow
	mov r1, #1
	mov r2, #0
	add r0, r5, #0
	add r3, r1, #0
	str r2, [sp]
	bl BG_FillCharDataRange
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	add r2, r4, #0
	bl LoadFontPal0
	mov r1, #1
	mov r0, #6
	lsl r1, r1, #0xe
	add r2, r4, #0
	bl LoadFontPal0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F78C0: .word ov96_0221C2A0
	thumb_func_end ov96_021F7878

	thumb_func_start ov96_021F78C4
ov96_021F78C4: ; 0x021F78C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #0
	add r4, r0, #0
	bl FillWindowPixelBuffer
	ldr r2, _021F7928 ; =0x00000135
	mov r0, #1
	mov r1, #0x1b
	add r3, r5, #0
	bl NewMsgDataFromNarc
	add r7, r0, #0
	add r0, r5, #0
	bl MessageFormat_New
	ldr r2, _021F792C ; =0x0000012F
	add r1, r7, #0
	add r3, r5, #0
	add r6, r0, #0
	bl ReadMsgData_ExpandPlaceholders
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F7930 ; =0x00010200
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_Delete
	add r0, r7, #0
	bl DestroyMsgData
	add r0, r4, #0
	bl CopyWindowToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F7928: .word 0x00000135
_021F792C: .word 0x0000012F
_021F7930: .word 0x00010200
	thumb_func_end ov96_021F78C4

	thumb_func_start ov96_021F7934
ov96_021F7934: ; 0x021F7934
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5DD4
	cmp r0, #5
	bls _021F794C
	b _021F7C2E
_021F794C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F7958: ; jump table
	.short _021F7964 - _021F7958 - 2 ; case 0
	.short _021F7A04 - _021F7958 - 2 ; case 1
	.short _021F7AA0 - _021F7958 - 2 ; case 2
	.short _021F7B90 - _021F7958 - 2 ; case 3
	.short _021F7BFC - _021F7958 - 2 ; case 4
	.short _021F7C20 - _021F7958 - 2 ; case 5
_021F7964:
	mov r2, #1
	mov r0, #0x5c
	mov r1, #0x89
	lsl r2, r2, #0x12
	bl CreateHeap
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021F7C38 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021F7C3C ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021F7D10
	add r0, r5, #0
	mov r1, #0xac
	bl ov96_021E5D94
	mov r1, #0
	mov r2, #0xac
	add r4, r0, #0
	bl MI_CpuFill8
	mov r1, #0x89
	mov r0, #4
	str r1, [r4]
	bl FontID_Alloc
	mov r0, #0x89
	bl BgConfig_Alloc
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl ov96_021EE740
	str r0, [r4, #0x18]
	add r0, r4, #0
	ldr r2, [r4, #0xc]
	add r0, #0x1c
	mov r1, #0x89
	add r3, r5, #0
	bl ov96_021F8094
	add r0, r5, #0
	bl ov96_021E5E44
	ldr r1, [r4]
	bl ov96_021EE5B4
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	add r0, r4, #0
	bl ov96_021F8448
	ldr r0, _021F7C40 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r5, #0
	bl ov96_021E5DEC
	b _021F7C32
_021F7A04:
	ldr r6, _021F7C44 ; =ov96_0221C2A8
	add r3, sp, #0x1c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4]
	bl ov96_021EB180
	mov r1, #0
	str r0, [r4, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #0xe
	str r0, [sp]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	add r3, r1, #0
	bl ov96_021EB5C8
	add r0, r5, #0
	bl ov96_021E6040
	add r7, r0, #0
	bl ov96_021E9524
	add r6, r0, #0
	add r0, r7, #0
	bl ov96_021E9528
	add r3, r0, #0
	add r0, r4, #0
	lsl r2, r6, #0x18
	add r0, #0x1c
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov96_021F80A8
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	bl ov96_021F8EB0
	str r0, [r4, #0x14]
	mov r1, #2
	bl ov96_021F8F44
	ldr r0, [r4, #0x10]
	bl ov96_021EB3A4
	mov r2, #0x4b
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	lsl r2, r2, #2
	bl ov96_021F8F94
	add r0, r4, #0
	bl ov96_021F8528
	add r0, r4, #0
	bl ov96_021F85A0
	mov r0, #2
	bl ov96_021EEBC8
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	ldr r3, [r4]
	mov r2, #0xb
	bl ov96_021EEA88
	add r0, r5, #0
	bl ov96_021E5DEC
	b _021F7C32
_021F7AA0:
	ldr r0, [r4, #0xc]
	bl ov96_021E6030
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	bl ov96_021F7D30
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	ldr r1, [r4, #0xc]
	bl ov96_021EE60C
	add r0, r4, #0
	bl ov96_021F7DA8
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ov96_021EE644
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	bl ov96_021E5EE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov96_021E5D60
	str r0, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	mov r2, #5
	add r3, r6, #0
	bl ov96_021EE75C
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ov96_021EE6A0
	mov r0, #0
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	bl OS_WaitVBlankIntr
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #7
	mov r2, #1
	mov r3, #0
	bl Bg_SetTextDimAndAffineParams
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #7
	mov r2, #5
	mov r3, #0x10
	bl Bg_SetTextDimAndAffineParams
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #1
	mov r3, #0
	bl Bg_SetTextDimAndAffineParams
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #5
	mov r3, #0x10
	bl Bg_SetTextDimAndAffineParams
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	add r0, #0x84
	bl ov96_021F7878
	add r0, r4, #0
	ldr r1, [r4]
	add r0, #0x84
	bl ov96_021F78C4
	add r0, r5, #0
	bl ov96_021E5DEC
	b _021F7C32
_021F7B90:
	add r0, r5, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021F7BB4
	add r0, r5, #0
	bl ov96_021E5F54
	add r0, #0x28
	bl ov96_021E8A20
	add r4, r0, #0
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	strb r1, [r4]
_021F7BB4:
	add r0, r5, #0
	bl ov96_021E5EE8
	cmp r0, #1
	bne _021F7BCC
	mov r0, #1
	bl sub_0203A994
	bl sub_0203A9C8
	bl sub_0203A86C
_021F7BCC:
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	mov r1, #1
	bl ov96_021E5DFC
	add r0, r5, #0
	bl ov96_021E5DEC
	b _021F7C32
_021F7BFC:
	ldr r0, _021F7C48 ; =0x00000473
	bl PlayBGM
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	bl ov96_021E5DEC
	b _021F7C32
_021F7C20:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F7C32
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F7C2E:
	bl GF_AssertFail
_021F7C32:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F7C38: .word 0xFFFFE0FF
_021F7C3C: .word 0x04001000
_021F7C40: .word gSystem + 0x60
_021F7C44: .word ov96_0221C2A8
_021F7C48: .word 0x00000473
	thumb_func_end ov96_021F7934

	thumb_func_start ov96_021F7C4C
ov96_021F7C4C: ; 0x021F7C4C
	push {r4, lr}
	bl ov96_021E5DC4
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov96_021EB5BC
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_0200D020
	ldr r0, [r4, #0x1c]
	bl ov96_021F87D0
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F7C4C

	thumb_func_start ov96_021F7C70
ov96_021F7C70: ; 0x021F7C70
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	mov r0, #4
	bl FontID_Release
	ldr r0, _021F7D04 ; =0x04000050
	mov r1, #0x3f
	mov r2, #0
	bl G2x_SetBlendBrightness_
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ov96_021EE5E0
	add r0, r4, #0
	add r0, #0x84
	bl RemoveWindow
	ldr r0, [r4, #0x18]
	bl ov96_021EE808
	ldr r5, _021F7D08 ; =ov96_0221C290
	mov r6, #0
_021F7CB6:
	ldrb r1, [r5]
	ldr r0, [r4, #0xc]
	bl FreeBgTilemapBuffer
	add r6, r6, #1
	add r5, r5, #1
	cmp r6, #6
	blt _021F7CB6
	ldr r0, [r4, #0x14]
	bl ov96_021F8F0C
	ldr r0, [r4, #0x1c]
	bl ov96_021F8728
	ldr r0, [r4, #0x10]
	bl ov96_021EB21C
	add r0, r4, #0
	bl ov96_021F84E4
	ldr r0, [r4, #0xc]
	bl FreeToHeap
	add r0, r7, #0
	bl ov96_021E5DAC
	ldr r0, _021F7D0C ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0x89
	bl DestroyHeap
	bl sub_0203A914
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F7D04: .word 0x04000050
_021F7D08: .word ov96_0221C290
_021F7D0C: .word gSystem + 0x60
	thumb_func_end ov96_021F7C70

	thumb_func_start ov96_021F7D10
ov96_021F7D10: ; 0x021F7D10
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021F7D2C ; =ov96_0221C310
	add r3, sp, #0
	mov r2, #5
_021F7D1A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F7D1A
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021F7D2C: .word ov96_0221C310
	thumb_func_end ov96_021F7D10

	thumb_func_start ov96_021F7D30
ov96_021F7D30: ; 0x021F7D30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc0
	ldr r4, _021F7D98 ; =ov96_0221C2B4
	add r3, sp, #8
	add r7, r0, #0
	str r1, [sp]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021F7D9C ; =ov96_0221C338
	add r3, sp, #0x18
	mov r2, #0x15
_021F7D52:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F7D52
	mov r0, #0
	ldr r4, _021F7DA0 ; =ov96_0221C298
	ldr r5, _021F7DA4 ; =ov96_0221C290
	str r0, [sp, #4]
	add r6, sp, #0x18
_021F7D64:
	ldrb r1, [r5]
	ldrb r3, [r4]
	add r0, r7, #0
	add r2, r6, #0
	bl InitBgFromTemplate
	ldrb r1, [r5]
	add r0, r7, #0
	bl BgClearTilemapBufferAndCommit
	ldrb r0, [r5]
	ldr r3, [sp]
	mov r1, #0x40
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, r0, #1
	add r6, #0x1c
	add r5, r5, #1
	str r0, [sp, #4]
	cmp r0, #6
	blt _021F7D64
	add sp, #0xc0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F7D98: .word ov96_0221C2B4
_021F7D9C: .word ov96_0221C338
_021F7DA0: .word ov96_0221C298
_021F7DA4: .word ov96_0221C290
	thumb_func_end ov96_021F7D30

	thumb_func_start ov96_021F7DA8
ov96_021F7DA8: ; 0x021F7DA8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #3
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0xa0
	mov r3, #4
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #5
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0xa0
	mov r3, #4
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #3
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0xa0
	mov r3, #5
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0xa0
	mov r3, #5
	bl GfGfxLoader_LoadScrnData
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0xa0
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPal
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0xa0
	bl GfGfxLoader_LoadCharData
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4]
	mov r1, #1
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, #0xa0
	bl GfGfxLoader_LoadScrnData
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #4]
	mov r0, #0xa0
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPal
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F7DA8

	thumb_func_start ov96_021F7E64
ov96_021F7E64: ; 0x021F7E64
	push {r3, lr}
	bl ov96_021E5F54
	add r0, #0xf0
	bl ov96_021E8A20
	ldrb r0, [r0, #2]
	pop {r3, pc}
	thumb_func_end ov96_021F7E64

	thumb_func_start ov96_021F7E74
ov96_021F7E74: ; 0x021F7E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r4, #0
	add r6, r0, #0
	add r7, r1, #0
	bl ov96_021E5DC4
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x18]
	bl IsFanfarePlaying
	add r0, r6, #0
	bl ov96_021E5EE8
	cmp r0, #1
	bne _021F7E9E
	add r0, r6, #0
	bl ov96_021F85F4
	add r4, r0, #0
_021F7E9E:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl ov96_021EE830
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl ov96_021EEA80
	cmp r0, #0
	bne _021F7EB6
	cmp r4, #0
	beq _021F7EB8
_021F7EB6:
	b _021F8080
_021F7EB8:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl ov96_021EE97C
	str r0, [sp, #0x10]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0xc]
	ldrb r0, [r7]
	cmp r0, #8
	bhi _021F7F0A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F7EDA: ; jump table
	.short _021F7EEC - _021F7EDA - 2 ; case 0
	.short _021F7EFC - _021F7EDA - 2 ; case 1
	.short _021F7F56 - _021F7EDA - 2 ; case 2
	.short _021F7F7E - _021F7EDA - 2 ; case 3
	.short _021F7F94 - _021F7EDA - 2 ; case 4
	.short _021F7FE0 - _021F7EDA - 2 ; case 5
	.short _021F7FF2 - _021F7EDA - 2 ; case 6
	.short _021F800A - _021F7EDA - 2 ; case 7
	.short _021F8048 - _021F7EDA - 2 ; case 8
_021F7EEC:
	add r0, r6, #0
	bl ov96_021F83DC
	str r0, [sp, #0xc]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7EFC:
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	add r0, #0x1c
	bl ov96_021F81CC
	cmp r0, #0
	bne _021F7F0C
_021F7F0A:
	b _021F805C
_021F7F0C:
	mov r4, #0
	add r5, sp, #0x1c
_021F7F10:
	add r0, r6, #0
	bl ov96_021E6040
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl ov96_021E94EC
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #4
	blt _021F7F10
	ldr r2, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldrb r1, [r2, #9]
	ldrb r0, [r0, #9]
	cmp r1, r0
	bne _021F7F38
	mov r0, #0xfe
	str r0, [sp, #0xc]
	b _021F7F4E
_021F7F38:
	ldr r1, [r2]
	add r0, r6, #0
	bl ov96_021E5F34
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl BufferPlayersName
	mov r0, #0xfd
	str r0, [sp, #0xc]
_021F7F4E:
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7F56:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x10
	add r1, r0, #0
	sub r1, #0x18
	mov r2, #0
	mov r3, #0x3f
	bl StartBrightnessTransition
	mov r0, #0x3f
	add r1, r0, #0
	bl UpdateMainScreenBrightnessSurface
	ldr r0, _021F8088 ; =0x04000052
	mov r1, #0x10
	strh r1, [r0]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7F7E:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _021F805C
	mov r0, #0xff
	str r0, [sp, #0xc]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7F94:
	mov r5, #0
_021F7F96:
	add r0, r6, #0
	bl ov96_021E5E44
	add r4, r0, #0
	add r0, r6, #0
	bl ov96_021E6040
	add r1, r4, #0
	add r2, r5, #0
	bl ov96_021E95D8
	add r1, r0, #0
	ldr r0, _021F808C ; =0x000003E7
	cmp r1, r0
	ble _021F7FB6
	add r1, r0, #0
_021F7FB6:
	ldr r0, [sp, #0x14]
	lsl r2, r5, #0x18
	ldr r0, [r0, #0x14]
	lsr r2, r2, #0x18
	bl ov96_021F910C
	add r5, r5, #1
	cmp r5, #4
	blt _021F7F96
	mov r0, #2
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	add r2, r0, #0
	mov r3, #0x3f
	bl StartBrightnessTransition
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7FE0:
	mov r0, #2
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _021F805C
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F7FF2:
	add r0, r6, #0
	bl ov96_021F83FC
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, #1
	add r0, #0xa8
	str r1, [r0]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F800A:
	add r0, r6, #0
	bl ov96_021E5EE8
	cmp r0, #0
	beq _021F801E
	add r0, r6, #0
	bl ov96_021F7E64
	cmp r0, #0
	beq _021F805C
_021F801E:
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r3, _021F8090 ; =0x00007FFF
	ldr r0, [r0]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0
	mov r1, #0xc
	bl GF_SndStartFadeOutBGM
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _021F805C
_021F8048:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F805C
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl ov96_021EE944
	mov r0, #1
	str r0, [sp, #0x18]
_021F805C:
	mov r1, #0
	ldr r0, [sp, #0xc]
	mvn r1, r1
	cmp r0, r1
	beq _021F8080
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0x18]
	bl ov96_021EE8CC
	ldr r0, [sp, #0x14]
	add r0, #0xa4
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	add r0, #0xa4
	str r0, [sp, #0x14]
	str r1, [r0]
_021F8080:
	ldr r0, [sp, #0x18]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021F8088: .word 0x04000052
_021F808C: .word 0x000003E7
_021F8090: .word 0x00007FFF
	thumb_func_end ov96_021F7E74

	thumb_func_start ov96_021F8094
ov96_021F8094: ; 0x021F8094
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl ov96_021F86E8
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8094

	thumb_func_start ov96_021F80A8
ov96_021F80A8: ; 0x021F80A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	str r2, [sp, #4]
	str r1, [sp]
	add r1, r7, #0
	ldr r0, [sp, #4]
	add r1, #0x59
	strb r0, [r1]
	ldr r0, [r7]
	add r1, r3, #0
	bl ov96_021F87E0
	mov r5, #0
	str r5, [sp, #0xc]
	add r6, r5, #0
_021F80C8:
	mov r2, #1
	mov r3, #0x9c
	add r4, r5, #0
	ldr r1, [sp]
	add r0, r7, #0
	lsl r2, r2, #8
	sub r3, r3, r6
	add r4, #0xa
	bl ov96_021F8378
	str r0, [sp, #8]
	bl ov96_021F8978
	cmp r0, #0
	bne _021F80E8
	add r4, #0xa
_021F80E8:
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r4, #0
	bl ov96_021F82E4
	ldr r0, [sp, #0xc]
	add r5, #0xa
	add r0, r0, #1
	add r6, #0x28
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _021F80C8
	ldr r0, [sp, #4]
	cmp r0, #4
	bls _021F811E
	mov r2, #1
	ldr r1, [sp]
	add r0, r7, #0
	lsl r2, r2, #8
	mov r3, #0x28
	bl ov96_021F8378
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	bl ov96_021F8334
_021F811E:
	mov r0, #1
	add r7, #0x58
	strb r0, [r7]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F80A8

	thumb_func_start ov96_021F8128
ov96_021F8128: ; 0x021F8128
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F815A
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F8156
	ldr r0, [r4, #4]
	bl ov96_021F895C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021F815A
	ldr r0, [r4, #4]
	bl ov96_021F8978
	ldr r0, _021F815C ; =0x000008D7
	bl PlaySE
	mov r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021F8156:
	sub r0, r0, #1
	str r0, [r4, #8]
_021F815A:
	pop {r4, pc}
	.balign 4, 0
_021F815C: .word 0x000008D7
	thumb_func_end ov96_021F8128

	thumb_func_start ov96_021F8160
ov96_021F8160: ; 0x021F8160
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	add r5, r0, #4
_021F816A:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov96_021F8128
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _021F816A
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8160

	thumb_func_start ov96_021F8180
ov96_021F8180: ; 0x021F8180
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	mov r6, #0
	bl ov96_021F893C
	cmp r4, #0
	bne _021F81AC
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _021F81B8
	ldr r0, [r5, #4]
	ldr r2, [sp]
	add r1, r6, #0
	bl ov96_021F8948
	mov r6, #1
	b _021F81B8
_021F81AC:
	cmp r4, #1
	bne _021F81B8
	ldr r0, [sp]
	cmp r0, #0xc0
	blt _021F81B8
	mov r6, #1
_021F81B8:
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8180

	thumb_func_start ov96_021F81C0
ov96_021F81C0: ; 0x021F81C0
	add r2, r0, #0
	mov r3, #3
	add r2, #0x58
	strb r3, [r2]
	str r1, [r0, #0x54]
	bx lr
	thumb_func_end ov96_021F81C0

	thumb_func_start ov96_021F81CC
ov96_021F81CC: ; 0x021F81CC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r1, r4, #0
	add r1, #0x58
	ldrb r1, [r1]
	add r5, r4, #0
	add r5, #0x58
	cmp r1, #3
	bhi _021F82DA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F81EC: ; jump table
	.short _021F81F4 - _021F81EC - 2 ; case 0
	.short _021F824C - _021F81EC - 2 ; case 1
	.short _021F8296 - _021F81EC - 2 ; case 2
	.short _021F82BE - _021F81EC - 2 ; case 3
_021F81F4:
	mov r1, #0x4f
	add r0, #0x44
	mvn r1, r1
	mov r2, #0
	bl ov96_021F8128
	add r0, r4, #0
	add r0, #0x44
	mov r1, #0
	bl ov96_021F8180
	cmp r0, #0
	beq _021F82DA
	ldr r1, [r4, #0x48]
	add r0, r4, #0
	mov r2, #0
	bl ov96_021F82E4
	add r0, r4, #0
	add r0, #0x44
	bl ov96_021F8354
	add r0, r4, #0
	bl ov96_021F8360
	cmp r0, #0
	beq _021F8242
	mov r2, #1
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #8
	mov r3, #0x28
	bl ov96_021F8378
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ov96_021F8334
_021F8242:
	add r0, r4, #0
	mov r1, #0xa
	bl ov96_021F81C0
	b _021F82DA
_021F824C:
	mov r1, #0x4f
	mvn r1, r1
	mov r2, #0
	bl ov96_021F8160
	mov r6, #0
	add r5, r4, #4
	mov r7, #1
_021F825C:
	add r0, r5, #0
	mov r1, #0
	bl ov96_021F8180
	cmp r0, #0
	beq _021F8288
	ldr r0, [r4, #0x60]
	cmp r0, #0
	bne _021F8280
	ldr r0, [r5, #4]
	bl ov96_021F8978
	cmp r0, #0
	bne _021F8280
	ldr r0, _021F82E0 ; =0x000004B9
	bl PlayFanfare
	str r7, [r4, #0x60]
_021F8280:
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _021F825C
_021F8288:
	cmp r6, #4
	bne _021F82DA
	add r0, r4, #0
	mov r1, #0xa
	bl ov96_021F81C0
	b _021F82DA
_021F8296:
	mov r1, #0
	mov r2, #8
	bl ov96_021F8160
	add r0, r4, #0
	bl ov96_021F83D0
	mov r1, #1
	add r6, r0, #0
	bl ov96_021F8180
	cmp r0, #0
	beq _021F82DA
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021F83BC
	mov r0, #0
	strb r0, [r5]
	b _021F82DA
_021F82BE:
	ldr r2, [r4, #0x54]
	sub r1, r2, #1
	str r1, [r4, #0x54]
	cmp r2, #0
	bgt _021F82DA
	bl ov96_021F8360
	cmp r0, #0
	beq _021F82D6
	mov r0, #2
	strb r0, [r5]
	b _021F82DA
_021F82D6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F82DA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F82E0: .word 0x000004B9
	thumb_func_end ov96_021F81CC

	thumb_func_start ov96_021F82E4
ov96_021F82E4: ; 0x021F82E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r1, r5, #0
	add r1, #0x5b
	ldrb r1, [r1]
	add r0, r5, #4
	add r7, r2, #0
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021F8302
	bl GF_AssertFail
_021F8302:
	mov r0, #1
	str r0, [r4]
	str r6, [r4, #4]
	add r0, r5, #0
	str r7, [r4, #8]
	add r0, #0x5b
	ldrb r0, [r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0x5b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x5a
	ldrb r0, [r0]
	add r5, #0x5a
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F82E4

	thumb_func_start ov96_021F8334
ov96_021F8334: ; 0x021F8334
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r0, #0x44]
	add r5, r1, #0
	add r6, r2, #0
	add r4, #0x44
	cmp r0, #0
	beq _021F8348
	bl GF_AssertFail
_021F8348:
	mov r0, #1
	str r0, [r4]
	str r5, [r4, #4]
	str r6, [r4, #8]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8334

	thumb_func_start ov96_021F8354
ov96_021F8354: ; 0x021F8354
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F8354

	thumb_func_start ov96_021F8360
ov96_021F8360: ; 0x021F8360
	add r1, r0, #0
	add r1, #0x59
	add r0, #0x5a
	ldrb r1, [r1]
	ldrb r0, [r0]
	mov r2, #0
	cmp r1, r0
	bls _021F8372
	mov r2, #1
_021F8372:
	add r0, r2, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F8360

	thumb_func_start ov96_021F8378
ov96_021F8378: ; 0x021F8378
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov96_021E6040
	add r7, r0, #0
	bl ov96_021E9524
	add r2, r5, #0
	add r2, #0x5c
	sub r1, r0, #1
	ldrb r2, [r2]
	add r0, r7, #0
	sub r1, r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021E94EC
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0x5c
	ldrb r0, [r0]
	add r2, r6, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x5c
	strb r1, [r0]
	ldr r0, [r5]
	add r1, r4, #0
	bl ov96_021F8830
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8378

	thumb_func_start ov96_021F83BC
ov96_021F83BC: ; 0x021F83BC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl ov96_021F8918
	add r0, r4, #0
	bl ov96_021F8354
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F83BC

	thumb_func_start ov96_021F83D0
ov96_021F83D0: ; 0x021F83D0
	add r1, r0, #4
	add r0, #0x5b
	ldrb r0, [r0]
	lsl r0, r0, #4
	add r0, r1, r0
	bx lr
	thumb_func_end ov96_021F83D0

	thumb_func_start ov96_021F83DC
ov96_021F83DC: ; 0x021F83DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov96_021E5EE0
	add r4, r0, #0
	add r0, r5, #0
	bl ov96_021E5EE8
	cmp r0, #0
	bne _021F83F4
	add r4, #0xf6
	b _021F83F6
_021F83F4:
	add r4, #0xf9
_021F83F6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021F83DC

	thumb_func_start ov96_021F83FC
ov96_021F83FC: ; 0x021F83FC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov96_021E5EE0
	add r4, r0, #0
	add r0, r6, #0
	bl ov96_021E5F54
	add r0, #0xf0
	bl ov96_021E8A20
	add r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #5
	blo _021F841E
	bl GF_AssertFail
_021F841E:
	add r0, r6, #0
	bl ov96_021E5EE8
	cmp r0, #0
	ldrb r2, [r5]
	bne _021F8438
	lsl r0, r4, #2
	add r1, r4, r0
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	add r0, r2, r0
	pop {r4, r5, r6, pc}
_021F8438:
	lsl r0, r4, #2
	add r1, r4, r0
	ldr r0, _021F8444 ; =0x0000010F
	add r0, r1, r0
	add r0, r2, r0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F8444: .word 0x0000010F
	thumb_func_end ov96_021F83FC

	thumb_func_start ov96_021F8448
ov96_021F8448: ; 0x021F8448
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r3, _021F84D8 ; =ov96_0221C2D8
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021F84DC ; =ov96_0221C2F0
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021F84E0 ; =ov96_0221C2C4
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0x1a
	str r0, [sp]
	ldr r0, [r4]
	bl SpriteRenderer_Create
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	bl SpriteRenderer_CreateGfxHandler
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, sp, #0x14
	add r2, sp, #0
	mov r3, #0x20
	bl sub_0200CF70
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x94
	add r1, #0x98
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #2
	bl sub_0200CFF4
	add r0, r4, #0
	add r0, #0x94
	add r4, #0x98
	ldr r0, [r0]
	ldr r1, [r4]
	add r2, sp, #0x34
	bl SpriteRenderer_Init2DGfxResManagersFromCountsArray
	add sp, #0x4c
	pop {r3, r4, pc}
	.balign 4, 0
_021F84D8: .word ov96_0221C2D8
_021F84DC: .word ov96_0221C2F0
_021F84E0: .word ov96_0221C2C4
	thumb_func_end ov96_021F8448

	thumb_func_start ov96_021F84E4
ov96_021F84E4: ; 0x021F84E4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r4, #0
_021F84EC:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _021F8502
	bl sub_0200D9DC
	add r0, r5, r6
	add r0, #0x9c
	str r7, [r0]
_021F8502:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021F84EC
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x94
	add r1, #0x98
	ldr r0, [r0]
	ldr r1, [r1]
	bl SpriteRenderer_UnloadResourcesAndRemoveGfxHandler
	add r5, #0x94
	ldr r0, [r5]
	bl SpriteRenderer_Delete
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F84E4

	thumb_func_start ov96_021F8528
ov96_021F8528: ; 0x021F8528
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r1, r0, #0
	add r1, #0x94
	add r0, #0x98
	ldr r5, [r0]
	ldr r4, [r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #9
	bl SpriteRenderer_LoadCharResObjFromNarcId
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #8
	bl SpriteRenderer_LoadPlttResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #0xa
	bl SpriteRenderer_LoadCellResObjFromNarcId
	mov r0, #1
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x9a
	mov r3, #0xb
	bl SpriteRenderer_LoadAnimResObjFromNarcId
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8528

	thumb_func_start ov96_021F85A0
ov96_021F85A0: ; 0x021F85A0
	push {r3, r4, lr}
	sub sp, #0x34
	add r4, r0, #0
	add r2, sp, #0
	mov r0, #0
	add r3, r2, #0
	add r1, r0, #0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	str r0, [r3]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x2c]
	mov r1, #0xe0
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x70
	strh r1, [r0, #2]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x94
	add r1, #0x98
	ldr r0, [r0]
	ldr r1, [r1]
	bl SpriteRenderer_LoadResourcesAndCreateSprite
	add r4, #0x9c
	str r0, [r4]
	add sp, #0x34
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F85A0

	thumb_func_start ov96_021F85F4
ov96_021F85F4: ; 0x021F85F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	bl ov96_021E5DC4
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl ov96_021E5F54
	str r0, [sp, #0x10]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, #0xa4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	bne _021F86AC
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	strb r6, [r0, #1]
	ldr r0, [sp, #0x10]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	mov r2, #0x24
_021F8650:
	ldrb r1, [r0]
	add r0, r0, #1
	strb r1, [r4]
	add r4, r4, #1
	sub r2, r2, #1
	bne _021F8650
	add r0, r7, #0
	mov r4, #0
	bl ov96_021E5D34
	cmp r0, #0
	ble _021F869A
	ldr r5, [sp, #0x10]
	add r5, #0x50
_021F866C:
	add r0, r5, #0
	bl ov96_021E8A20
	ldrb r1, [r0]
	cmp r1, r6
	blo _021F867E
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _021F8682
_021F867E:
	mov r1, #1
	str r1, [sp, #4]
_021F8682:
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _021F868C
	mov r0, #0
	str r0, [sp]
_021F868C:
	add r0, r7, #0
	add r5, #0x28
	add r4, r4, #1
	bl ov96_021E5D34
	cmp r4, r0
	blt _021F866C
_021F869A:
	ldr r0, [sp]
	cmp r0, #0
	beq _021F86A6
	ldr r0, [sp, #0xc]
	mov r1, #1
	strb r1, [r0, #2]
_021F86A6:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	strb r1, [r0, #3]
_021F86AC:
	ldr r0, [sp, #0x10]
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	strb r6, [r4]
	ldr r0, [r0, #0x18]
	bl ov96_021EEA80
	strb r0, [r4, #1]
	ldr r0, [sp, #0x14]
	add r0, #0xa8
	str r0, [sp, #0x14]
	ldr r0, [r0]
	strb r0, [r4, #2]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _021F86E0
	ldr r0, [sp, #8]
	ldrb r0, [r0, #1]
	cmp r6, r0
	blo _021F86E0
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F86E0:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F85F4

	thumb_func_start ov96_021F86E8
ov96_021F86E8: ; 0x021F86E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0xcd
	lsl r1, r1, #2
	add r7, r0, #0
	add r6, r2, #0
	bl AllocFromHeap
	mov r2, #0xcd
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0xa
	add r1, r7, #0
	str r7, [r4]
	bl sub_02013534
	str r0, [r4, #0x10]
	str r5, [r4, #8]
	str r6, [r4, #4]
	mov r0, #0
	add r1, r4, #0
_021F8718:
	str r0, [r1, #0x48]
	add r0, r0, #1
	add r1, #0x48
	cmp r0, #5
	blt _021F8718
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F86E8

	thumb_func_start ov96_021F8728
ov96_021F8728: ; 0x021F8728
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r0, #0
	str r0, [sp]
	mov r7, #0
	add r6, #0x24
	add r4, #0x34
	add r5, r0, #0
_021F8738:
	add r0, r6, #0
	bl ov96_021F8E94
	add r0, r4, #0
	bl ov96_021F8E94
	ldr r0, [r5, #0x14]
	bl Sprite_Delete
	ldr r0, [r5, #0x18]
	bl Sprite_Delete
	ldr r0, [r5, #0x1c]
	bl Sprite_Delete
	ldr r0, [r5, #0x20]
	bl Sprite_Delete
	add r7, r7, #1
	add r6, #0x48
	add r4, #0x48
	add r5, #0x48
	cmp r7, #5
	blt _021F8738
	mov r1, #0xbf
	ldr r0, [sp]
	lsl r1, r1, #2
	mov r4, #0
	add r5, r0, r1
_021F8772:
	ldr r0, [r5, #0x10]
	bl sub_02013938
	add r0, r5, #0
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #2
	blt _021F8772
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	bl sub_020135AC
	mov r1, #0xb
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	bl sub_0200AEB0
	mov r1, #0xb1
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0200B0A8
	mov r6, #0xaa
	ldr r4, [sp]
	mov r5, #0
	lsl r6, r6, #2
_021F87AE:
	ldr r0, [r4, r6]
	bl Destroy2DGfxResObjMan
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _021F87AE
	mov r1, #0x5f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl SpriteList_Delete
	ldr r0, [sp]
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8728

	thumb_func_start ov96_021F87D0
ov96_021F87D0: ; 0x021F87D0
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r3, _021F87DC ; =sub_0202457C
	ldr r0, [r0, r1]
	bx r3
	nop
_021F87DC: .word sub_0202457C
	thumb_func_end ov96_021F87D0

	thumb_func_start ov96_021F87E0
ov96_021F87E0: ; 0x021F87E0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov96_021F8980
	add r0, r6, #0
	bl ov96_021F8A50
	add r5, r6, #0
	mov r4, #0
	add r5, #0x14
_021F87F4:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, r5, #0
	bl ov96_021F8AFC
	add r4, r4, #1
	add r5, #0x48
	cmp r4, #5
	blt _021F87F4
	add r0, r6, #0
	bl ov96_021F8DD4
	mov r0, #6
	lsl r0, r0, #6
	mov r2, #0x4b
	add r0, r6, r0
	mov r1, #0
	lsl r2, r2, #0xe
	bl G2dRenderer_SetSubSurfaceCoords
	mov r0, #6
	lsl r0, r0, #6
	mov r1, #0
	add r0, r6, r0
	add r2, r1, #0
	bl G2dRenderer_SetMainSurfaceCoords
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F87E0

	thumb_func_start ov96_021F8830
ov96_021F8830: ; 0x021F8830
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x33
	lsl r0, r0, #4
	str r1, [sp]
	ldr r1, [r5, r0]
	str r2, [sp, #4]
	add r2, r5, #0
	mov r0, #0x48
	add r2, #0x14
	mul r0, r1
	add r4, r2, r0
	ldr r0, [r4, #0x30]
	add r6, r3, #0
	cmp r0, #0
	beq _021F8856
	bl GF_AssertFail
_021F8856:
	ldr r0, [r5, #4]
	ldr r1, [r6]
	bl ov96_021E5D40
	str r0, [sp, #8]
	ldr r0, [r0]
	cmp r0, #0
	ble _021F886A
	mov r7, #1
	b _021F886C
_021F886A:
	mov r7, #0
_021F886C:
	ldr r0, [sp]
	add r2, r4, #0
	str r0, [r4, #0x38]
	ldr r0, [sp, #4]
	str r0, [r4, #0x3c]
	ldr r0, [r6]
	str r0, [r4, #0x40]
	add r0, r4, #0
	ldrb r1, [r6, #9]
	add r0, #0x44
	strh r1, [r0]
	ldr r1, [r6, #0x10]
	add r0, r5, #0
	bl ov96_021F8C04
	ldr r1, [r6]
	add r0, r5, #0
	add r2, r4, #0
	bl ov96_021F8BC0
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _021F88A2
	mov r1, #1
	b _021F88A4
_021F88A2:
	mov r1, #0
_021F88A4:
	mov r0, #0xcb
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r4, #0x40]
	cmp r0, #4
	blt _021F88B4
	bl GF_AssertFail
_021F88B4:
	cmp r7, #0
	beq _021F88D6
	ldr r0, [sp, #8]
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov96_021E8424
	bl ov96_021EEDCC
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	ldr r3, [r5]
	mov r2, #0xb
	bl ov96_021EEA94
	b _021F88E6
_021F88D6:
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0xc]
	lsl r2, r2, #0x18
	ldr r1, [r5, #4]
	lsr r2, r2, #0x18
	mov r3, #0x1b
	bl ov96_021EEB84
_021F88E6:
	add r0, r4, #0
	bl ov96_021F8C2C
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl ov96_021F8C54
	mov r0, #1
	str r0, [r4, #0x30]
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #5
	add r0, r0, #1
	bl _s32_div_f
	mov r0, #0x33
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8830

	thumb_func_start ov96_021F8918
ov96_021F8918: ; 0x021F8918
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _021F8926
	bl GF_AssertFail
_021F8926:
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0x10
	bl ov96_021F8E94
	add r4, #0x20
	add r0, r4, #0
	bl ov96_021F8E94
	pop {r4, pc}
	thumb_func_end ov96_021F8918

	thumb_func_start ov96_021F893C
ov96_021F893C: ; 0x021F893C
	ldr r3, [r0, #0x38]
	str r3, [r1]
	ldr r0, [r0, #0x3c]
	str r0, [r2]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F893C

	thumb_func_start ov96_021F8948
ov96_021F8948: ; 0x021F8948
	add r3, r0, #0
	str r1, [r3, #0x38]
	add r0, r1, #0
	str r2, [r3, #0x3c]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _021F8958 ; =ov96_021F8C88
	bx r3
	.balign 4, 0
_021F8958: .word ov96_021F8C88
	thumb_func_end ov96_021F8948

	thumb_func_start ov96_021F895C
ov96_021F895C: ; 0x021F895C
	add r3, r0, #0
	ldr r0, [r3, #0x38]
	add r0, r0, r1
	str r0, [r3, #0x38]
	ldr r0, [r3, #0x3c]
	add r0, r0, r2
	str r0, [r3, #0x3c]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _021F8974 ; =ov96_021F8CFC
	bx r3
	.balign 4, 0
_021F8974: .word ov96_021F8CFC
	thumb_func_end ov96_021F895C

	thumb_func_start ov96_021F8978
ov96_021F8978: ; 0x021F8978
	add r0, #0x44
	ldrh r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021F8978

	thumb_func_start ov96_021F8980
ov96_021F8980: ; 0x021F8980
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r5]
	mov r0, #0x37
	add r1, r5, r1
	bl G2dRenderer_Init
	mov r1, #0x5f
	lsl r1, r1, #2
	mov r7, #0xaa
	str r0, [r5, r1]
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_021F89A2:
	ldr r2, [r5]
	mov r0, #1
	add r1, r6, #0
	bl Create2DGfxResObjMan
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _021F89A2
	mov r0, #0x67
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #0xa0
	str r0, [sp, #8]
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #9
	mov r3, #0
	bl AddCharResObjFromNarc
	mov r1, #0xb
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #0x67
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r2, #6
	str r2, [sp, #8]
	ldr r0, [r5]
	sub r1, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	mov r1, #0xa0
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0xb1
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x67
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	sub r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xa0
	mov r2, #8
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0xb2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x67
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5]
	sub r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0xa0
	mov r2, #7
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0xb3
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_0200ADA4
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200AF94
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8980

	thumb_func_start ov96_021F8A50
ov96_021F8A50: ; 0x021F8A50
	push {r3, r4, lr}
	sub sp, #0x2c
	mov r1, #0x67
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x68
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r4, #0xaa
	str r2, [sp, #0x10]
	lsl r4, r4, #2
	ldr r3, [r0, r4]
	str r3, [sp, #0x14]
	add r3, r4, #4
	ldr r3, [r0, r3]
	str r3, [sp, #0x18]
	add r3, r4, #0
	add r3, #8
	ldr r3, [r0, r3]
	str r3, [sp, #0x1c]
	add r3, r4, #0
	add r3, #0xc
	ldr r3, [r0, r3]
	add r4, #0x30
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, r0, r4
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	add sp, #0x2c
	pop {r3, r4, pc}
	thumb_func_end ov96_021F8A50

	thumb_func_start ov96_021F8A98
ov96_021F8A98: ; 0x021F8A98
	push {r3, r4}
	mov r2, #0x5f
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	mov r4, #0
	str r2, [r0]
	mov r2, #0xb6
	lsl r2, r2, #2
	add r2, r1, r2
	str r2, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	mov r2, #1
	str r4, [r0, #0x10]
	lsl r2, r2, #0xc
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	strh r4, [r0, #0x20]
	mov r2, #2
	str r2, [r0, #0x24]
	str r3, [r0, #0x28]
	ldr r1, [r1]
	str r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021F8A98

	thumb_func_start ov96_021F8ACC
ov96_021F8ACC: ; 0x021F8ACC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl CreateSprite
	add r4, r0, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	add r1, r5, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	add r0, r4, #0
	add r1, r6, #0
	bl Sprite_SetDrawPriority
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8ACC

	thumb_func_start ov96_021F8AFC
ov96_021F8AFC: ; 0x021F8AFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r2, #0
	mov r2, #0xb6
	add r3, r0, #0
	lsl r2, r2, #2
	add r5, r1, #0
	add r0, sp, #0x14
	add r1, r3, #0
	add r2, r3, r2
	mov r3, #1
	bl ov96_021F8A98
	add r0, sp, #0x14
	mov r1, #0x11
	mov r2, #4
	bl ov96_021F8ACC
	str r0, [r4]
	add r0, sp, #0x14
	mov r1, #5
	mov r2, #0
	bl ov96_021F8ACC
	str r0, [r4, #4]
	add r0, sp, #0x14
	mov r1, #0x12
	mov r2, #1
	bl ov96_021F8ACC
	str r0, [r4, #8]
	add r0, sp, #0x14
	mov r1, #0
	mov r2, #2
	bl ov96_021F8ACC
	str r0, [r4, #0xc]
	add r4, r0, #0
	bl Sprite_GetVramType
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02024B1C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02024B34
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl NNS_G2dGetImageLocation
	str r0, [sp, #4]
	lsl r0, r5, #9
	str r0, [sp, #8]
	add r0, r7, #0
	bl NNS_G2dInitImageProxy
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r3, r2
	bl NNS_G2dSetImageLocation
	ldr r0, [sp]
	add r1, r6, #0
	bl NNS_G2dGetImagePaletteLocation
	str r0, [sp, #0xc]
	add r0, r5, #6
	lsl r0, r0, #5
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl NNS_G2dInitImagePaletteProxy
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r3, r2
	bl NNS_G2dSetImagePaletteLocation
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02024B00
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02024B20
	add r0, r4, #0
	add r1, r5, #0
	bl Sprite_SetPalOffset
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8AFC

	thumb_func_start ov96_021F8BC0
ov96_021F8BC0: ; 0x021F8BC0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	bl ov96_021E5F34
	ldr r1, [r5]
	bl PlayerProfile_GetPlayerName_NewString
	add r6, r0, #0
	mov r0, #0x37
	mvn r0, r0
	str r0, [sp]
	add r0, #0x28
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r4, #0x10
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	mov r3, #0
	str r4, [sp, #0xc]
	bl ov96_021F8DF4
	add r0, r6, #0
	bl String_Delete
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8BC0

	thumb_func_start ov96_021F8C04
ov96_021F8C04: ; 0x021F8C04
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0x37
	mvn r1, r1
	str r1, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r1, [r2]
	add r2, #0x20
	str r1, [sp, #8]
	mov r1, #0xc5
	lsl r1, r1, #2
	str r2, [sp, #0xc]
	add r1, r0, r1
	add r2, r4, #0
	bl ov96_021F8DF4
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov96_021F8C04

	thumb_func_start ov96_021F8C2C
ov96_021F8C2C: ; 0x021F8C2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	add r2, r4, #0
	bl ov96_021F8C88
	ldr r1, [r4, #0x40]
	ldr r0, [r4]
	add r1, r1, #2
	bl Sprite_SetPalIndex
	ldr r0, [r4, #4]
	add r4, #0x44
	ldrh r1, [r4]
	add r1, r1, #5
	bl Set2dSpriteAnimSeqNo
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8C2C

	thumb_func_start ov96_021F8C54
ov96_021F8C54: ; 0x021F8C54
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r1, #0
	bl Set2dSpriteVisibleFlag
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl Set2dSpriteVisibleFlag
	cmp r6, #0
	beq _021F8C76
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl Set2dSpriteVisibleFlag
_021F8C76:
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_020137C0
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl sub_020137C0
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021F8C54

	thumb_func_start ov96_021F8C88
ov96_021F8C88: ; 0x021F8C88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _021F8CF8 ; =ov96_0221C3E0
	add r5, r2, #0
	add r4, r0, #0
	add r3, r1, #0
	add r2, sp, #0
	ldmia r6!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	str r0, [r2]
	ldr r1, [sp, #4]
	lsl r0, r3, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x80
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5]
	add r1, r7, #0
	bl Sprite_SetMatrix
	add r0, r4, #0
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl Sprite_SetMatrix
	add r4, #0x30
	lsl r0, r4, #0xc
	str r0, [sp]
	ldr r0, [r5, #8]
	add r1, r7, #0
	bl Sprite_SetMatrix
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	bl Sprite_SetMatrix
	ldr r0, [r5, #0x10]
	bl sub_02013728
	ldr r0, [r5, #0x20]
	bl sub_02013728
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F8CF8: .word ov96_0221C3E0
	thumb_func_end ov96_021F8C88

	thumb_func_start ov96_021F8CFC
ov96_021F8CFC: ; 0x021F8CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r7, r1, #0
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	add r2, sp, #0
	lsl r6, r5, #0xc
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	lsl r5, r7, #0xc
	str r0, [r2]
	ldr r0, [sp]
	mov r1, ip
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, r5
	str r0, [sp, #4]
	ldr r0, [r4]
	bl Sprite_SetMatrix
	ldr r0, [r4, #4]
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r7, #0
	str r0, [r2]
	ldr r0, [sp]
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, r5
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl Sprite_SetMatrix
	ldr r0, [r4, #0xc]
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, r7, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r7, #0
	str r0, [r2]
	ldr r0, [sp]
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, r5
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl Sprite_SetMatrix
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl Sprite_SetMatrix
	ldr r0, [r4, #0x10]
	bl sub_02013728
	ldr r0, [r4, #0x20]
	bl sub_02013728
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8CFC

	thumb_func_start ov96_021F8D98
ov96_021F8D98: ; 0x021F8D98
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	ldr r0, [r5, #8]
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	ldr r1, [r5]
	add r0, r4, #0
	bl sub_02013910
	mov r1, #1
	str r0, [r4, #0x10]
	bl sub_02013948
	str r0, [r4, #0x14]
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8D98

	thumb_func_start ov96_021F8DD4
ov96_021F8DD4: ; 0x021F8DD4
	push {r4, lr}
	mov r1, #0xbf
	add r4, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	mov r2, #8
	bl ov96_021F8D98
	mov r1, #0xc5
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0x18
	bl ov96_021F8D98
	pop {r4, pc}
	thumb_func_end ov96_021F8DD4

	thumb_func_start ov96_021F8DF4
ov96_021F8DF4: ; 0x021F8DF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r7, r2, #0
	str r3, [sp, #0x18]
	ldr r6, [sp, #0x7c]
	bl FillWindowPixelBufferText_AssumeTileSize32
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F8E90 ; =0x00010200
	ldr r3, [sp, #0x18]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl AddTextPrinterParameterizedWithColorAndSpacing
	mov r1, #1
	ldr r0, [r4, #0x14]
	add r2, r1, #0
	add r3, sp, #0x1c
	bl sub_02021AC8
	ldr r0, [r5, #0x10]
	mov r1, #0
	str r0, [sp, #0x28]
	mov r0, #0x5f
	str r4, [sp, #0x2c]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x30]
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B0F8
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x78]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x70]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x74]
	str r0, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x48]
	mov r0, #3
	str r0, [sp, #0x4c]
	mov r0, #1
	str r0, [sp, #0x50]
	ldr r0, [r5]
	str r0, [sp, #0x54]
	add r0, sp, #0x28
	bl sub_020135D8
	add r4, r0, #0
	mov r1, #0
	bl sub_02013850
	str r4, [r6]
	add r3, sp, #0x1c
	ldmia r3!, {r0, r1}
	add r2, r6, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F8E90: .word 0x00010200
	thumb_func_end ov96_021F8DF4

	thumb_func_start ov96_021F8E94
ov96_021F8E94: ; 0x021F8E94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F8EAC
	bl sub_020139C8
	add r0, r4, #4
	bl sub_02021B5C
	mov r0, #0
	str r0, [r4]
_021F8EAC:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8E94

	thumb_func_start ov96_021F8EB0
ov96_021F8EB0: ; 0x021F8EB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0xc4
	add r6, r0, #0
	add r5, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc4
	bl MI_CpuFill8
	str r6, [r4]
	mov r0, #4
	add r1, r6, #0
	bl sub_02013534
	str r0, [r4, #8]
	str r5, [r4, #4]
	add r5, r4, #0
	add r5, #0xc
	add r0, r5, #0
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	ldr r1, [r4]
	add r0, r5, #0
	bl sub_02013910
	mov r1, #2
	str r0, [r5, #0x10]
	bl sub_02013948
	str r0, [r5, #0x14]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F8EB0

	thumb_func_start ov96_021F8F0C
ov96_021F8F0C: ; 0x021F8F0C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0x34
_021F8F16:
	add r0, r5, #0
	bl ov96_021F91CC
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #4
	blt _021F8F16
	add r4, r6, #0
	add r4, #0xc
	ldr r0, [r4, #0x10]
	bl sub_02013938
	add r0, r4, #0
	bl RemoveWindow
	ldr r0, [r6, #8]
	bl sub_020135AC
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8F0C

	thumb_func_start ov96_021F8F44
ov96_021F8F44: ; 0x021F8F44
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r2, #0x68
	bl ov96_021EB29C
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, #0xa1
	mov r2, #3
	mov r3, #0x68
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, #0xa1
	mov r2, #0
	mov r3, #0x68
	bl ov96_021EB2F4
	ldr r0, [r4, #4]
	mov r1, #0xa1
	mov r2, #2
	mov r3, #0x68
	bl ov96_021EB334
	ldr r0, [r4, #4]
	mov r1, #0xa1
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB36C
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8F44

	thumb_func_start ov96_021F8F94
ov96_021F8F94: ; 0x021F8F94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x28]
	mov r0, #8
	str r0, [sp, #0x24]
	add r0, r2, #0
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	add r0, r2, #0
	add r0, #0x18
	lsl r0, r0, #0xc
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp, #0x1c]
_021F8FB8:
	mov r0, #3
	str r0, [sp]
	ldr r0, [r6, #4]
	mov r1, #0
	mov r2, #2
	mov r3, #0x68
	bl ov96_021EB408
	mov r1, #0
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x28]
	add r4, r0, #0
	lsl r1, r1, #0xc
	str r1, [sp, #0x38]
	ldr r1, [sp, #0x20]
	str r1, [sp, #0x3c]
	add r1, sp, #0x38
	bl Sprite_SetMatrix
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	ldr r1, [sp, #0x34]
	add r0, r4, #0
	bl sub_02024A48
	add r0, r4, #0
	mov r1, #2
	bl Sprite_SetDrawPriority
	ldr r5, [sp, #0x24]
	mov r7, #0
_021F9002:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #4]
	mov r1, #0
	mov r2, #2
	mov r3, #0x68
	bl ov96_021EB408
	mov r1, #0
	str r1, [sp, #0x40]
	lsl r1, r5, #0xc
	str r1, [sp, #0x38]
	ldr r1, [sp, #0x1c]
	add r4, r0, #0
	str r1, [sp, #0x3c]
	add r1, sp, #0x38
	bl Sprite_SetMatrix
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r4, #0
	mov r1, #1
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetDrawPriority
	add r7, r7, #1
	add r5, #0x10
	cmp r7, #3
	blt _021F9002
	ldr r0, [sp, #0x28]
	add r0, #0x40
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, #0x40
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #4
	blt _021F8FB8
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	str r0, [sp, #0x30]
	add r0, #0x24
	str r0, [sp, #0x30]
	add r0, r6, #0
	str r0, [sp, #0x2c]
	add r0, #0x34
	add r7, r6, #0
	str r0, [sp, #0x2c]
_021F9072:
	ldr r0, [r6, #4]
	mov r1, #0x68
	mov r2, #3
	bl ov96_021EB4F4
	ldr r1, [sp, #0x30]
	str r0, [r1]
	mov r1, #1
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r4, [sp, #0x30]
	mov r5, #0
_021F908C:
	ldr r0, [r6, #4]
	mov r1, #0x68
	mov r2, #4
	bl ov96_021EB4F4
	mov r1, #1
	add r2, r1, #0
	str r0, [r4, #4]
	bl ov96_021EB52C
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _021F908C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	bl ov96_021E5F34
	ldr r1, [r6]
	bl PlayerProfile_GetPlayerName_NewString
	add r4, r0, #0
	ldr r0, [r7, #0x24]
	bl ov96_021EB5B8
	mov r1, #0
	str r1, [sp]
	sub r1, #0x10
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r1, r6, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, #0xc
	add r2, r4, #0
	mov r3, #2
	bl ov96_021F9134
	add r0, r4, #0
	bl String_Delete
	ldr r0, [r7, #0x34]
	mov r1, #1
	bl sub_020137C0
	ldr r0, [sp, #0x14]
	add r0, #0x10
	str r0, [r7, #0x48]
	ldr r0, [sp, #0x30]
	add r7, #0x28
	add r0, #0x28
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, #0x28
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _021F9072
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F8F94

	thumb_func_start ov96_021F910C
ov96_021F910C: ; 0x021F910C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, #4
	blo _021F911C
	bl GF_AssertFail
_021F911C:
	mov r0, #0x28
	add r1, r6, #0
	mul r1, r0
	add r0, r5, r1
	add r5, #0x24
	str r4, [r0, #0x44]
	add r0, r5, r1
	add r1, r4, #0
	bl ov96_021F91E8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021F910C

	thumb_func_start ov96_021F9134
ov96_021F9134: ; 0x021F9134
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r7, r2, #0
	str r3, [sp, #0x18]
	ldr r6, [sp, #0x7c]
	bl FillWindowPixelBufferText_AssumeTileSize32
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021F91C8 ; =0x00010200
	ldr r3, [sp, #0x18]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl AddTextPrinterParameterizedWithColorAndSpacing
	ldr r0, [r4, #0x14]
	mov r1, #1
	mov r2, #2
	add r3, sp, #0x1c
	bl sub_02021AC8
	ldr r0, [r5, #8]
	str r4, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	bl ov96_021EB5E8
	str r0, [sp, #0x30]
	mov r0, #0x68
	bl sub_020227AC
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x78]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x70]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x74]
	str r0, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #2
	str r0, [sp, #0x50]
	ldr r0, [r5]
	str r0, [sp, #0x54]
	add r0, sp, #0x28
	bl sub_020135D8
	add r4, r0, #0
	mov r1, #4
	bl sub_02013880
	str r4, [r6]
	add r3, sp, #0x1c
	ldmia r3!, {r0, r1}
	add r2, r6, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F91C8: .word 0x00010200
	thumb_func_end ov96_021F9134

	thumb_func_start ov96_021F91CC
ov96_021F91CC: ; 0x021F91CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F91E4
	bl sub_020139C8
	add r0, r4, #4
	bl sub_02021B5C
	mov r0, #0
	str r0, [r4]
_021F91E4:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021F91CC

	thumb_func_start ov96_021F91E8
ov96_021F91E8: ; 0x021F91E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x64
	bl _s32_div_f
	add r7, r0, #0
	mov r0, #0x64
	mul r0, r7
	sub r6, r4, r0
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl ov96_021EB5B8
	add r1, r7, #1
	bl Set2dSpriteAnimSeqNo
	ldr r0, [r5, #8]
	bl ov96_021EB5B8
	add r1, r4, #1
	bl Set2dSpriteAnimSeqNo
	ldr r0, [r5, #0xc]
	bl ov96_021EB5B8
	mov r1, #0xa
	mul r1, r4
	sub r1, r6, r1
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021F91E8

	thumb_func_start ov96_021F9234
ov96_021F9234: ; 0x021F9234
	push {r3, lr}
	mov r1, #1
	bl ov96_021E5FC8
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov96_021F9234

	thumb_func_start ov96_021F9240
ov96_021F9240: ; 0x021F9240
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r7, r0, #0
	bl ov96_021E5DC4
	ldrb r1, [r6]
	add r4, r0, #0
	cmp r1, #4
	bls _021F9256
	b _021F9370
_021F9256:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F9262: ; jump table
	.short _021F926C - _021F9262 - 2 ; case 0
	.short _021F9284 - _021F9262 - 2 ; case 1
	.short _021F92D2 - _021F9262 - 2 ; case 2
	.short _021F9306 - _021F9262 - 2 ; case 3
	.short _021F9340 - _021F9262 - 2 ; case 4
_021F926C:
	add r0, r7, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _021F9370
	ldr r0, _021F937C ; =0x000003C7
	mov r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	b _021F9370
_021F9284:
	bl ov96_021FBDBC
	add r0, r7, #0
	add r1, r4, #0
	bl ov96_021FA6D0
	add r5, r0, #0
	add r0, r7, #0
	bl ov96_021FB630
	cmp r5, #0
	beq _021F9370
	mov r5, #0
	add r0, r5, #0
	mov r1, #0x6c
_021F92A2:
	add r2, r0, #0
	mul r2, r1
	add r2, r4, r2
	add r2, #0xe2
	ldrh r2, [r2]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r5, r5, r2
	cmp r0, #3
	blo _021F92A2
	lsl r1, r5, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl ov96_021E8318
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021FB808
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	b _021F9370
_021F92D2:
	add r0, r7, #0
	bl ov96_021E667C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	bl ov96_021FB60C
	cmp r0, #0
	beq _021F92F0
	cmp r5, #0
	beq _021F92F0
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
_021F92F0:
	add r0, r4, #0
	bl ov96_021FBDBC
	add r0, r7, #0
	add r1, r4, #0
	bl ov96_021FA6D0
	add r0, r7, #0
	bl ov96_021FB630
	b _021F9370
_021F9306:
	bl ov96_021FBDBC
	add r0, r7, #0
	bl ov96_021FB630
	add r0, r7, #0
	bl ov96_021E5F54
	bl ov96_021E8A20
	mov r1, #1
	strb r1, [r0, #9]
	add r0, r7, #0
	bl ov96_021E5F54
	add r0, #0xf0
	bl ov96_021E8A20
	ldr r0, [r0]
	cmp r0, #0
	beq _021F9370
	ldrb r0, [r6]
	mov r1, #0
	add r0, r0, #1
	strb r0, [r6]
	mov r0, #0x8d
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021F9370
_021F9340:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x5a
	bls _021F9370
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r7, #0
	mov r1, #2
	bl ov96_021E5FC8
_021F9370:
	add r0, r7, #0
	bl ov96_021FAF1C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F937C: .word 0x000003C7
	thumb_func_end ov96_021F9240

	thumb_func_start ov96_021F9380
ov96_021F9380: ; 0x021F9380
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	str r0, [sp]
	bl ov96_021E5DC4
	add r7, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _021F93A6
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F93A0
	mov r0, #1
	strb r0, [r4]
_021F93A0:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F93A6:
	ldr r0, [sp]
	bl ov96_021E5F24
	add r4, r0, #0
	mov r0, #0
	add r2, r0, #0
	add r3, r7, #0
_021F93B4:
	add r1, r3, #0
	add r1, #0xe2
	ldrh r1, [r1]
	add r2, r2, #1
	add r3, #0x6c
	add r0, r0, r1
	cmp r2, #3
	blt _021F93B4
	bl ov96_021FBDEC
	add r2, r0, #0
	lsl r1, r4, #0x18
	lsl r2, r2, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl ov96_021E5FB0
	cmp r4, #0
	bne _021F94A0
	ldr r0, [sp]
	bl ov96_021E5D34
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	cmp r0, #4
	bge _021F94A0
_021F93EA:
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #8]
	sub r1, r1, r0
	lsl r0, r1, #1
	add r6, r1, r0
_021F93FA:
	mov r0, #0x28
	mul r0, r6
	add r5, r7, r0
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021F9466
	mov r0, #9
	lsl r0, r0, #6
	mov r1, #0x92
	ldr r4, [r5, r0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl _fls
	bhs _021F9424
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r4, [r5, r0]
_021F9424:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r0, r1
	bl _fflt
	add r1, r4, #0
	bl _fdiv
	str r0, [sp, #0x14]
	bl _ffix
	add r4, r0, #0
	bl _fflt
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	bl _fsub
	mov r1, #0
	bl _fgr
	bls _021F9458
	add r4, r4, #1
_021F9458:
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	add r1, r0, r4
	mov r0, #0x95
	lsl r0, r0, #2
	str r1, [r5, r0]
_021F9466:
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _021F93FA
	ldr r0, [sp, #4]
	bl ov96_021FBDEC
	add r2, r0, #0
	ldr r1, [sp, #0x10]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl ov96_021E5FB0
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _021F93EA
_021F94A0:
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021F9380

	thumb_func_start ov96_021F94A8
ov96_021F94A8: ; 0x021F94A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x180
	add r6, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	add r0, r6, #0
	bl ov96_021E5DD4
	cmp r0, #8
	bls _021F94C0
	b _021F9C8A
_021F94C0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F94CC: ; jump table
	.short _021F94DE - _021F94CC - 2 ; case 0
	.short _021F95E8 - _021F94CC - 2 ; case 1
	.short _021F9884 - _021F94CC - 2 ; case 2
	.short _021F9A94 - _021F94CC - 2 ; case 3
	.short _021F9ABA - _021F94CC - 2 ; case 4
	.short _021F9AE2 - _021F94CC - 2 ; case 5
	.short _021F9B1E - _021F94CC - 2 ; case 6
	.short _021F9B38 - _021F94CC - 2 ; case 7
	.short _021F9C7C - _021F94CC - 2 ; case 8
_021F94DE:
	mov r2, #0x12
	mov r0, #0x5c
	mov r1, #0x8a
	lsl r2, r2, #0xe
	bl CreateHeap
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021F986C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021F9870 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021F9E3C
	mov r1, #0xf2
	add r0, r6, #0
	lsl r1, r1, #2
	bl ov96_021E5D94
	mov r2, #0xf2
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x8a
	bl BgConfig_Alloc
	str r0, [r4, #4]
	ldr r0, [r4]
	bl ov96_021FC028
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1]
	ldr r0, [r4]
	bl ov96_021FC618
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl ov96_021FC0E4
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl ov96_021FC0E8
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl ov96_021FC0F4
	add r3, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov96_021E5F70
	add r0, r6, #0
	mov r1, #8
	bl ov96_021E6670
	mov r0, #0x6b
	str r0, [sp, #0xdc]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0xe0]
	lsr r0, r0, #4
	mov r2, #0x8a
	str r0, [sp, #0xe4]
	ldr r3, _021F9874 ; =0x00300010
	str r2, [sp, #0xe8]
	add r0, sp, #0xdc
	mov r1, #0x12
	str r3, [sp]
	bl ov96_021E92B0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x8a
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r1, #0x8a
	str r1, [r4]
	mov r0, #4
	bl FontID_Alloc
	ldr r0, [r4, #4]
	bl ov96_021F9E5C
	add r0, r4, #0
	bl ov96_021FB7C8
	ldr r0, _021F9878 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r6, #0
	bl ov96_021E5DEC
	b _021F9C8A
_021F95E8:
	ldr r5, _021F987C ; =ov96_0221C404
	add r3, sp, #0xd0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4]
	bl ov96_021EB180
	mov r2, #0x89
	lsl r2, r2, #2
	mov r1, #0
	str r0, [r4, r2]
	str r1, [sp]
	ldr r0, [r4, r2]
	mov r2, #0x11
	lsl r2, r2, #0x10
	add r3, r1, #0
	bl ov96_021EB5C8
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	mov r2, #0x65
	bl ov96_021EB29C
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0x66
	bl ov96_021EB29C
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	mov r2, #0x67
	bl ov96_021EB29C
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	mov r2, #0x68
	bl ov96_021EB29C
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	mov r2, #0x69
	bl ov96_021EB29C
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	mov r2, #0x6a
	bl ov96_021EB29C
	mov r0, #3
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #9
	mov r3, #0x65
	bl ov96_021EB2BC
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #6
	mov r3, #0x65
	bl ov96_021EB2F4
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #8
	mov r3, #0x65
	bl ov96_021EB334
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #7
	mov r3, #0x65
	bl ov96_021EB36C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x10
	mov r3, #0x66
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0xd
	mov r3, #0x66
	bl ov96_021EB2F4
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0xf
	mov r3, #0x66
	bl ov96_021EB334
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0xe
	mov r3, #0x66
	bl ov96_021EB36C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0xc
	mov r3, #0x67
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #6
	mov r3, #0x67
	bl ov96_021EB2F4
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0xb
	mov r3, #0x67
	bl ov96_021EB334
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0xa
	mov r3, #0x67
	bl ov96_021EB36C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x14
	mov r3, #0x69
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x11
	mov r3, #0x69
	bl ov96_021EB2F4
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x13
	mov r3, #0x69
	bl ov96_021EB334
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x12
	mov r3, #0x69
	bl ov96_021EB36C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x1c
	mov r3, #0x68
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x19
	mov r3, #0x68
	bl ov96_021EB2F4
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x1b
	mov r3, #0x68
	bl ov96_021EB334
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x1a
	mov r3, #0x68
	bl ov96_021EB36C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x20
	mov r3, #0x6a
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x1d
	mov r3, #0x6a
	bl ov96_021EB2F4
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x1f
	mov r3, #0x6a
	bl ov96_021EB334
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x9c
	mov r2, #0x1e
	mov r3, #0x6a
	bl ov96_021EB36C
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EB3A4
	ldr r0, [r4]
	ldr r1, _021F9880 ; =0x000002E7
	mov r2, #1
	bl ov96_021E9A78
	mov r1, #0x3a
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EB5E8
	mov r3, #0x3a
	str r0, [sp]
	lsl r3, r3, #4
	ldr r0, [r4]
	ldr r3, [r4, r3]
	mov r1, #3
	mov r2, #4
	bl ov96_021EA854
	mov r1, #0xe9
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r6, #0
	bl ov96_021E5DEC
	b _021F9C8A
	nop
_021F986C: .word 0xFFFFE0FF
_021F9870: .word 0x04001000
_021F9874: .word 0x00300010
_021F9878: .word gSystem + 0x60
_021F987C: .word ov96_0221C404
_021F9880: .word 0x000002E7
_021F9884:
	mov r5, #0
	mov r7, #2
_021F9888:
	mov r0, #0x89
	str r7, [sp]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #3
	mov r3, #0x65
	bl ov96_021EB408
	mov r1, #0x1b
	bl Sprite_SetDrawPriority
	mov r0, #6
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	mov r3, #0x67
	bl ov96_021EB408
	mov r1, #0x1b
	bl Sprite_SetDrawPriority
	add r5, r5, #1
	cmp r5, #0xc
	blt _021F9888
	mov r5, #0
	mov r7, #5
_021F98C4:
	mov r0, #0x89
	str r7, [sp]
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	mov r3, #0x66
	bl ov96_021EB408
	mov r0, #7
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #8
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	mov r3, #0x69
	bl ov96_021EB408
	add r5, r5, #1
	cmp r5, #3
	blt _021F98C4
	mov r0, #9
	str r0, [sp]
	mov r0, #0x89
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	mov r3, #0x6a
	bl ov96_021EB3E4
	mov r1, #0xea
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl ov96_021EB564
	mov r0, #0
	str r0, [sp, #0xcc]
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [sp, #0xc4]
	mov r0, #0x72
	lsl r0, r0, #0xe
	str r0, [sp, #0xc8]
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0xc4
	bl ov96_021EB588
	mov r0, #0xea
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov96_021EB630
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _021F9C90 ; =ov96_0221C3F4
	ldr r7, _021F9C94 ; =ov96_0221C3EC
	add r5, r4, #0
	str r0, [sp, #0x18]
_021F9968:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EB5E8
	add r1, r0, #0
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r3, [r4]
	mov r2, #0
	bl ov96_021EA374
	mov r1, #0xeb
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Set2dSpriteVisibleFlag
	ldr r0, [sp, #0x18]
	add r1, sp, #0xb8
	ldrb r0, [r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xb8]
	mov r0, #0x72
	lsl r0, r0, #0xe
	str r0, [sp, #0xbc]
	mov r0, #0
	str r0, [sp, #0xc0]
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Sprite_SetMatrix
	mov r0, #0xeb
	lsl r0, r0, #2
	ldrb r1, [r7]
	ldr r0, [r5, r0]
	bl Set2dSpriteAnimSeqNo
	ldr r0, [sp, #0x18]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #6
	blt _021F9968
	add r0, r4, #0
	mov r1, #0x89
	add r0, #0xdc
	lsl r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	mov r2, #1
	bl ov96_021FC630
	ldr r0, [r4]
	bl ov96_021FC188
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r7, #0
	add r5, sp, #0x88
_021F99F2:
	add r0, r6, #0
	add r1, r7, #0
	bl ov96_021E5D50
	mov r1, #0
_021F99FC:
	ldrh r2, [r0]
	add r1, r1, #1
	strh r2, [r5]
	ldrh r2, [r0, #2]
	add r0, #0x28
	strh r2, [r5, #2]
	add r5, r5, #4
	cmp r1, #3
	blt _021F99FC
	add r7, r7, #1
	cmp r7, #4
	blt _021F99F2
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x88
	bl ov96_021FC214
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov96_021FC2B4
	add r0, sp, #0x58
	mov r5, #0
	str r0, [sp, #0x1c]
	add r7, sp, #0x13c
_021F9A34:
	add r0, r6, #0
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r3, [sp, #0x1c]
	add r0, r6, #0
	add r2, r5, #0
	bl ov96_021E6168
	add r0, r6, #0
	bl ov96_021E5F24
	add r1, r0, #0
	add r0, r6, #0
	add r2, r5, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	str r0, [r7, #0x14]
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	add r0, #0x10
	add r7, r7, #4
	str r0, [sp, #0x1c]
	cmp r5, #3
	blt _021F9A34
	mov r0, #1
	mov r1, #0
	str r1, [sp, #0x13c]
	str r0, [sp, #0x140]
	str r1, [sp, #0x144]
	str r0, [sp, #0x148]
	str r0, [sp, #0x14c]
	str r1, [sp]
	mov r0, #0xe9
	str r1, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	add r2, sp, #0x58
	add r3, sp, #0x13c
	bl ov96_021EA8A8
	add r0, r6, #0
	bl ov96_021E5DEC
	b _021F9C8A
_021F9A94:
	mov r0, #0xe9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EAA00
	cmp r0, #0
	bne _021F9AA4
	b _021F9C8A
_021F9AA4:
	ldr r0, [r4, #4]
	bl ov96_021E6030
	ldr r0, [r4, #4]
	ldr r1, [r4]
	bl ov96_021F9FE8
	add r0, r6, #0
	bl ov96_021E5DEC
	b _021F9C8A
_021F9ABA:
	ldr r0, [r4, #4]
	ldr r1, [r4]
	bl ov96_021FA020
	mov r1, #5
	ldr r0, _021F9C98 ; =0x04000010
	lsl r1, r1, #0x16
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	mov r1, #3
	ldr r0, _021F9C9C ; =0x04001010
	lsl r1, r1, #0x14
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r6, #0
	bl ov96_021E5DEC
	b _021F9C8A
_021F9AE2:
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r6, #0
	mov r1, #1
	bl ov96_021E5DFC
	mov r7, #0xe9
	mov r5, #0
	lsl r7, r7, #2
_021F9B00:
	lsl r1, r5, #0x18
	ldr r0, [r4, r7]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	mov r1, #1
	bl ov96_021EAB38
	add r5, r5, #1
	cmp r5, #3
	blt _021F9B00
	add r0, r6, #0
	bl ov96_021E5DEC
	b _021F9C8A
_021F9B1E:
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021F9B30
	add r4, #0xd8
	ldr r0, [r4]
	bl ov96_021FC144
_021F9B30:
	add r0, r6, #0
	bl ov96_021E5DEC
	b _021F9C8A
_021F9B38:
	add r0, r4, #0
	mov r1, #0x89
	add r0, #0xd8
	lsl r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	bl ov96_021FC07C
	mov r2, #0x3a
	mov r3, #0x89
	lsl r2, r2, #4
	lsl r3, r3, #2
	mov r1, #0x11
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, r6, #0
	lsl r1, r1, #4
	bl ov96_021E6290
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawPriority
	ldr r3, _021F9CA0 ; =ov96_0221C410
	add r2, sp, #0x4c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0xaa
	str r0, [r2]
	add r0, sp, #0x28
	mov r2, #0xa
	bl ReadWholeNarcMemberByIdPair
	add r0, sp, #0xec
	mov r1, #0xaa
	mov r2, #0
	bl ReadWholeNarcMemberByIdPair
	mov r0, #0
	str r0, [sp, #0x24]
	add r0, r4, #0
	str r0, [sp, #0x20]
	add r0, #0xe0
	str r0, [sp, #0x20]
	add r7, sp, #0x4c
	add r5, sp, #0x40
_021F9B96:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r3, r4, #0
	str r0, [sp]
	mov r0, #0xe9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r3, #0xd8
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	add r1, sp, #0xec
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r2, sp, #0x28
	str r0, [sp, #0xc]
	ldr r3, [r3]
	add r0, r6, #0
	bl ov96_021FA0E8
	ldr r0, [r7]
	add r7, r7, #4
	strh r0, [r5]
	mov r0, #0x62
	lsl r0, r0, #2
	strh r0, [r5, #2]
	ldr r0, [sp, #0x20]
	add r5, r5, #4
	add r0, #0x6c
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #3
	blt _021F9B96
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, sp, #0x40
	mov r2, #0x3a
	mov r3, #0x89
	str r0, [sp, #8]
	lsl r2, r2, #4
	lsl r3, r3, #2
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, r6, #0
	mov r1, #0
	bl ov96_021E634C
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021F9C12
	add r0, r6, #0
	add r1, sp, #0xec
	bl ov96_021FBBB4
_021F9C12:
	add r0, r6, #0
	bl ov96_021E5F54
	add r5, r0, #0
	add r0, #0xf0
	bl ov96_021E8A20
	mov r3, #0
	mov r1, #0x11
_021F9C24:
	add r2, r0, r3
	strb r1, [r2, #0x1c]
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	cmp r3, #6
	blo _021F9C24
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021F9C56
	add r5, #0x28
	add r0, r5, #0
	bl ov96_021E8A20
	mov r3, #0
	mov r2, #0x11
_021F9C48:
	add r1, r0, r3
	strb r2, [r1, #0x1c]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #6
	blo _021F9C48
_021F9C56:
	mov r0, #1
	bl sub_0203A994
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #3
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	add r0, r6, #0
	bl ov96_021E5DEC
	b _021F9C8A
_021F9C7C:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F9C8A
	add sp, #0x180
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F9C8A:
	mov r0, #0
	add sp, #0x180
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F9C90: .word ov96_0221C3F4
_021F9C94: .word ov96_0221C3EC
_021F9C98: .word 0x04000010
_021F9C9C: .word 0x04001010
_021F9CA0: .word ov96_0221C410
	thumb_func_end ov96_021F94A8

	thumb_func_start ov96_021F9CA4
ov96_021F9CA4: ; 0x021F9CA4
	push {r4, lr}
	bl ov96_021E5DC4
	add r4, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021FC314
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EB5BC
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov96_021F9CA4

	thumb_func_start ov96_021F9CC4
ov96_021F9CC4: ; 0x021F9CC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	bl ov96_021E5DC4
	add r0, r6, #0
	bl ov96_021E6040
	str r0, [sp, #0x1c]
	bl ov96_021E9510
	mov r5, #0
_021F9CDC:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov96_021E5FBC
	add r4, r0, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x1e
	bl _s32_div_f
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, _021F9D54 ; =0x00000123
	lsl r3, r4, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ov96_021E966C
	add r5, r5, #1
	cmp r5, #4
	blt _021F9CDC
	ldr r0, [sp, #0x1c]
	mov r1, #2
	bl ov96_021E93B4
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl ov96_0221A56C
	ldr r0, [sp, #0x1c]
	bl ov96_021E952C
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl ov96_021E9570
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F9D54: .word 0x00000123
	thumb_func_end ov96_021F9CC4

	thumb_func_start ov96_021F9D58
ov96_021F9D58: ; 0x021F9D58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	bl sub_0203A914
	add r0, r5, #0
	bl ov96_021E5F1C
	mov r1, #0
	bl ov96_021E87B0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021FC1A8
	add r0, r5, #0
	bl ov96_021E5F8C
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl ov96_021FC690
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl ov96_021FC05C
	ldr r0, [r4, #4]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #3
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #6
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #4]
	mov r1, #7
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	add r0, #8
	bl RemoveWindow
	ldr r0, [r4, #4]
	bl FreeToHeap
	mov r0, #0xe9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EA894
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov96_021E9C0C
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EB21C
	bl ov96_021E92D0
	mov r0, #4
	bl FontID_Release
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	add r0, r5, #0
	bl ov96_021E5DAC
	ldr r0, _021F9E38 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0x8a
	bl DestroyHeap
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021F9E38: .word gSystem + 0x60
	thumb_func_end ov96_021F9D58

	thumb_func_start ov96_021F9E3C
ov96_021F9E3C: ; 0x021F9E3C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021F9E58 ; =ov96_0221C534
	add r3, sp, #0
	mov r2, #5
_021F9E46:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F9E46
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021F9E58: .word ov96_0221C534
	thumb_func_end ov96_021F9E3C

	thumb_func_start ov96_021F9E5C
ov96_021F9E5C: ; 0x021F9E5C
	push {r3, r4, r5, lr}
	sub sp, #0xf0
	ldr r5, _021F9FC4 ; =ov96_0221C434
	add r3, sp, #0xe0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021F9FC8 ; =ov96_0221C48C
	add r3, sp, #0xc4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F9FCC ; =ov96_0221C4A8
	add r3, sp, #0xa8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F9FD0 ; =ov96_0221C4C4
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F9FD4 ; =ov96_0221C4E0
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F9FD8 ; =ov96_0221C454
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F9FDC ; =ov96_0221C470
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F9FE0 ; =ov96_0221C518
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021F9FE4 ; =ov96_0221C4FC
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #7
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0xf0
	pop {r3, r4, r5, pc}
	nop
_021F9FC4: .word ov96_0221C434
_021F9FC8: .word ov96_0221C48C
_021F9FCC: .word ov96_0221C4A8
_021F9FD0: .word ov96_0221C4C4
_021F9FD4: .word ov96_0221C4E0
_021F9FD8: .word ov96_0221C454
_021F9FDC: .word ov96_0221C470
_021F9FE0: .word ov96_0221C518
_021F9FE4: .word ov96_0221C4FC
	thumb_func_end ov96_021F9E5C

	thumb_func_start ov96_021F9FE8
ov96_021F9FE8: ; 0x021F9FE8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	str r3, [sp, #4]
	add r4, r1, #0
	str r3, [sp, #8]
	mov r0, #0x9c
	mov r1, #1
	add r2, r5, #0
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9c
	mov r1, #1
	add r2, r5, #0
	mov r3, #4
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadCharData
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021F9FE8

	thumb_func_start ov96_021FA020
ov96_021FA020: ; 0x021FA020
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	str r3, [sp, #4]
	add r4, r1, #0
	str r3, [sp, #8]
	mov r0, #0x9c
	mov r1, #2
	add r2, r5, #0
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9c
	mov r1, #3
	add r2, r5, #0
	mov r3, #1
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9c
	mov r1, #4
	add r2, r5, #0
	mov r3, #2
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9c
	mov r1, #2
	add r2, r5, #0
	mov r3, #4
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9c
	mov r1, #3
	add r2, r5, #0
	mov r3, #5
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9c
	mov r1, #4
	add r2, r5, #0
	mov r3, #6
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x9c
	mov r1, #5
	add r2, r5, #0
	mov r3, #7
	str r4, [sp, #0xc]
	bl GfGfxLoader_LoadScrnData
	mov r1, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x9c
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #4]
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x20
	str r0, [sp]
	mov r1, #0
	mov r0, #0x9c
	mov r2, #4
	add r3, r1, #0
	str r4, [sp, #4]
	bl GfGfxLoader_GXLoadPal
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021FA020

	thumb_func_start ov96_021FA0E8
ov96_021FA0E8: ; 0x021FA0E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r5, [sp, #0x60]
	str r0, [sp]
	ldr r4, [sp, #0x64]
	mov r0, #0
	strh r0, [r4]
	add r6, r1, #0
	strh r0, [r4, #2]
	mov r1, #0x30
	strh r1, [r4, #4]
	mov r1, #5
	lsl r1, r1, #6
	strh r1, [r4, #6]
	add r1, r4, #0
	str r2, [sp, #4]
	strb r5, [r4, #0x18]
	mov r2, #1
	add r1, #0x68
	strh r2, [r1]
	mov r1, #0xfe
	lsl r1, r1, #0x16
	str r1, [r4, #0x64]
	strb r0, [r4, #8]
	add r0, r3, #0
	add r1, r5, #0
	bl ov96_021FC0D0
	str r0, [r4, #0x20]
	cmp r5, #0
	beq _021FA130
	cmp r5, #1
	beq _021FA13A
	cmp r5, #2
	beq _021FA144
	b _021FA14C
_021FA130:
	mov r0, #0
	strh r0, [r4, #0x14]
	mov r0, #4
	strh r0, [r4, #0x16]
	b _021FA14C
_021FA13A:
	mov r0, #1
	strh r0, [r4, #0x14]
	mov r0, #5
	strh r0, [r4, #0x16]
	b _021FA14C
_021FA144:
	mov r0, #2
	strh r0, [r4, #0x14]
	mov r0, #6
	strh r0, [r4, #0x16]
_021FA14C:
	cmp r5, #0
	beq _021FA15A
	cmp r5, #1
	beq _021FA162
	cmp r5, #2
	beq _021FA16A
	b _021FA172
_021FA15A:
	mov r0, #0x30
	mov r1, #0
	str r0, [sp, #8]
	b _021FA17A
_021FA162:
	mov r0, #0x80
	mov r1, #1
	str r0, [sp, #8]
	b _021FA17A
_021FA16A:
	mov r0, #0xd0
	mov r1, #2
	str r0, [sp, #8]
	b _021FA17A
_021FA172:
	bl GF_AssertFail
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021FA17A:
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x5c]
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	str r0, [sp, #0xc]
	bl ov96_021EAA20
	ldr r1, [sp, #0xc]
	str r1, [r4, #0x24]
	bl ov96_021E8BB0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r0, [sp]
	add r2, r5, #0
	bl ov96_021E60D8
	add r7, r0, #0
	ldrb r0, [r7, #2]
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x5c
	strh r1, [r0]
	ldrb r0, [r7, #2]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r1, [r0, #0x14]
	add r0, r4, #0
	add r0, #0x5e
	strh r1, [r0]
	add r0, r4, #0
	ldrb r1, [r7, #2]
	add r0, #0x58
	strb r1, [r0]
	ldr r0, [sp]
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r0, [sp]
	add r2, r5, #0
	bl ov96_021E60C0
	bl ov96_021E6138
	sub r0, r0, #1
	lsl r2, r0, #3
	ldr r1, [sp, #4]
	ldr r3, [sp, #4]
	ldr r1, [r1, r2]
	add r2, r3, r2
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #4]
	bl ov96_021EAF70
	bl ov96_021E6104
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl ov96_021EAF6C
	ldrb r0, [r7, #1]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #0x3c]
	bl _fflt
	ldr r1, _021FA338 ; =0x41200000
	bl _fdiv
	str r0, [r4, #0x50]
	ldrb r0, [r7, #4]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #0x28]
	bl _fflt
	ldr r1, _021FA33C ; =0x42C80000
	bl _fdiv
	str r0, [r4, #0x54]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021FA236
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	b _021FA23E
_021FA236:
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
_021FA23E:
	mov r3, #0x78
	str r3, [r4, #0x3c]
	add r2, r3, #0
	add r3, #0x98
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r2, r3
	bl ov96_021EAF94
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl ov96_021EAC0C
	ldr r0, [sp, #0xc]
	mov r1, #4
	bl ov96_021EABA8
	ldr r0, [sp, #0xc]
	mov r1, #2
	bl ov96_021EABE0
	ldr r0, [sp, #0xc]
	add r1, sp, #0x38
	bl ov96_021EABF4
	ldr r0, [sp, #0x58]
	mov r1, #0x66
	mov r2, #5
	bl ov96_021EB4F4
	str r0, [r4, #0x44]
	bl ov96_021EB5B8
	mov r1, #0x12
	ldr r2, [r4, #0x3c]
	lsl r1, r1, #4
	add r1, r2, r1
	str r1, [r4, #0x40]
	mov r1, #0
	str r1, [sp, #0x34]
	ldr r1, [sp, #8]
	add r6, r0, #0
	lsl r5, r1, #0xc
	str r5, [sp, #0x2c]
	ldr r1, [r4, #0x40]
	lsl r1, r1, #0xc
	str r1, [sp, #0x30]
	add r1, sp, #0x2c
	bl Sprite_SetMatrix
	ldr r0, [r4, #0x44]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	add r0, r6, #0
	mov r1, #3
	bl Sprite_SetDrawPriority
	ldr r0, [sp, #0x58]
	mov r1, #0x68
	mov r2, #7
	bl ov96_021EB4F4
	str r0, [r4, #0x48]
	bl ov96_021EB5B8
	mov r1, #0
	add r6, r0, #0
	bl Set2dSpriteAnimSeqNo
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0x6b
	lsl r0, r0, #0xe
	str r0, [sp, #0x24]
	add r0, r6, #0
	add r1, sp, #0x20
	str r5, [sp, #0x20]
	bl Sprite_SetMatrix
	add r0, r6, #0
	mov r1, #4
	bl Sprite_SetDrawPriority
	add r0, r6, #0
	mov r1, #2
	bl sub_0202487C
	ldr r0, [sp, #0x58]
	mov r1, #0x69
	mov r2, #8
	bl ov96_021EB4F4
	str r0, [r4, #0x4c]
	bl ov96_021EB5B8
	mov r1, #0
	add r6, r0, #0
	bl Set2dSpriteAnimSeqNo
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x62
	lsl r0, r0, #0xe
	str r0, [sp, #0x18]
	str r5, [sp, #0x14]
	add r0, r6, #0
	add r1, sp, #0x14
	bl Sprite_SetMatrix
	mov r1, #1
	ldr r0, [r4, #0x4c]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r6, #0
	mov r1, #2
	bl Sprite_SetDrawPriority
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r4, #0xc]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FA338: .word 0x41200000
_021FA33C: .word 0x42C80000
	thumb_func_end ov96_021FA0E8

	thumb_func_start ov96_021FA340
ov96_021FA340: ; 0x021FA340
	ldr r3, _021FA348 ; =ov96_021FBE44
	ldr r0, [r0, #0x20]
	bx r3
	nop
_021FA348: .word ov96_021FBE44
	thumb_func_end ov96_021FA340

	thumb_func_start ov96_021FA34C
ov96_021FA34C: ; 0x021FA34C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #8]
	add r6, r3, #0
	str r1, [sp, #4]
	cmp r0, #1
	beq _021FA38A
	ldr r0, [r4, #0x28]
	cmp r0, #2
	beq _021FA38A
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _021FA38A
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x50]
	bl _fls
	bhs _021FA38A
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x54]
	bl _fadd
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x50]
	bl _fgr
	bls _021FA38A
	ldr r0, [r4, #0x50]
	str r0, [r4, #0xc]
_021FA38A:
	cmp r6, #0
	beq _021FA422
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021FA422
	ldrb r2, [r4, #0x18]
	add r3, r4, #0
	ldr r1, [r6, #4]
	add r0, r5, #0
	add r3, #0x24
	bl ov96_021FA7BC
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA3FA
	ldr r6, [sp, #8]
_021FA3B2:
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021FA340
	add r7, r0, #0
	bl ov96_021FBEA0
	cmp r0, #0
	beq _021FA3F4
	add r0, r7, #0
	add r1, sp, #0x1c
	bl ov96_021FBF5C
	ldr r0, [r4, #0x24]
	bl ov96_021EAF8C
	mov r1, #0x11
	ldr r2, [r4, #0x3c]
	lsl r1, r1, #4
	add r1, r2, r1
	sub r0, r1, r0
	add r1, sp, #0x1c
	bl ov96_021FAB04
	cmp r0, #0
	beq _021FA3F4
	mov r0, #1
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021FBCB8
	b _021FA3FA
_021FA3F4:
	add r6, r6, #1
	cmp r6, #4
	blt _021FA3B2
_021FA3FA:
	ldr r0, [r4, #0x44]
	bl ov96_021EB5B8
	mov r1, #1
	add r6, r0, #0
	bl Set2dSpriteVisibleFlag
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021FA418
	add r0, r6, #0
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	b _021FA452
_021FA418:
	add r0, r6, #0
	mov r1, #1
	bl Set2dSpriteAnimSeqNo
	b _021FA452
_021FA422:
	cmp r6, #0
	beq _021FA452
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _021FA452
	ldr r0, [r4, #0x2c]
	cmp r0, #3
	bne _021FA452
	add r0, r4, #0
	add r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA452
	add r0, r4, #0
	mov r1, #1
	add r0, #0x60
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x62
	strh r1, [r0]
_021FA452:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl _fadd
	add r6, r0, #0
	bl _ffix
	add r7, r0, #0
	bl _fflt
	add r1, r0, #0
	add r0, r6, #0
	bl _fsub
	str r0, [r4, #0x10]
	ldrh r0, [r4]
	add r0, r0, r7
	strh r0, [r4]
	ldrh r1, [r4]
	ldrb r2, [r4, #0x18]
	ldr r0, [sp, #4]
	bl ov96_021FB6B4
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ov96_021FB6C8
	ldrh r0, [r4, #4]
	sub r0, r0, r7
	strh r0, [r4, #4]
	mov r0, #2
	ldrh r1, [r4, #4]
	lsl r0, r0, #8
	add r0, r1, r0
	cmp r0, #0
	bgt _021FA49C
	strh r0, [r4, #4]
_021FA49C:
	ldrh r1, [r4, #4]
	mov r0, #0x11
	lsl r0, r0, #4
	add r1, r1, r0
	strh r1, [r4, #6]
	ldrh r1, [r4, #6]
	add r0, #0xf0
	add r0, r1, r0
	cmp r0, #0
	bgt _021FA4B2
	strh r0, [r4, #6]
_021FA4B2:
	mov r6, #0
_021FA4B4:
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021FA340
	add r1, r7, #0
	bl ov96_021FBEFC
	add r6, r6, #1
	cmp r6, #4
	blt _021FA4B4
	ldr r0, [sp, #4]
	ldrb r1, [r4, #0x18]
	add r0, #0xdc
	ldr r0, [r0]
	add r2, r7, #0
	bl ov96_021FC6EC
	add r1, r4, #0
	add r2, r4, #0
	ldrb r0, [r4, #0x18]
	add r1, #0x24
	add r2, #0xc
	bl ov96_021FA83C
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _021FA54C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021FA4F6
	mov r0, #3
	str r0, [r4, #0x28]
	b _021FA53E
_021FA4F6:
	cmp r0, #3
	beq _021FA4FE
	cmp r0, #1
	bne _021FA53E
_021FA4FE:
	ldrh r1, [r4]
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r2, [r4, #0x3c]
	cmp r1, r0
	blo _021FA51A
	cmp r2, #0x78
	bne _021FA53E
	mov r0, #4
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	b _021FA53E
_021FA51A:
	sub r0, #0x80
	cmp r1, r0
	blo _021FA53E
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ov96_021EAC0C
	ldr r0, [r4, #0x4c]
	bl ov96_021EB5B8
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
_021FA53E:
	ldr r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl ov96_021FAB24
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021FA54C:
	ldr r1, [r4, #0x28]
	mov r0, #1
	cmp r1, #1
	bne _021FA556
	mov r0, #0
_021FA556:
	add r1, r4, #0
	add r1, #0x60
	ldrh r1, [r1]
	cmp r1, #1
	bne _021FA56C
	add r1, r4, #0
	add r1, #0x62
	ldrh r1, [r1]
	cmp r1, #1
	bne _021FA56C
	mov r0, #1
_021FA56C:
	cmp r0, #0
	bne _021FA572
	b _021FA67C
_021FA572:
	mov r6, #0
_021FA574:
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_021FA340
	str r0, [sp, #0xc]
	bl ov96_021FBEA0
	cmp r0, #0
	beq _021FA674
	ldr r7, [r4, #0x24]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x14
	bl ov96_021FBF5C
	add r0, r7, #0
	bl ov96_021EAF90
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ov96_021EAF8C
	add r1, r0, #0
	mov r0, #0x11
	lsl r1, r1, #0x18
	ldr r2, [r4, #0x3c]
	lsl r0, r0, #4
	add r2, r2, r0
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x18
	sub r0, r2, r0
	add r2, sp, #0x14
	bl ov96_021FAAE0
	cmp r0, #0
	beq _021FA674
	ldr r0, [sp, #0xc]
	bl ov96_021FBEA4
	ldrb r2, [r4, #0x18]
	ldr r1, _021FA6C0 ; =ov96_0221DC2C
	ldr r0, _021FA6C4 ; =0x000008A5
	ldrb r1, [r1, r2]
	bl sub_0200606C
	ldrb r2, [r4, #0x18]
	ldr r0, _021FA6C0 ; =ov96_0221DC2C
	ldr r1, _021FA6C8 ; =ov96_0221DC28
	ldrb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	bl sub_020061D0
	add r0, r4, #0
	add r0, #0x60
	ldrh r0, [r0]
	cmp r0, #1
	bne _021FA61E
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	cmp r0, #1
	bne _021FA61E
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldrb r2, [r4, #0x18]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r3, #2
	bl ov96_021E8228
	add r1, r4, #0
	add r1, #0x30
	mov r0, #3
	strb r0, [r1]
	mov r0, #1
	str r0, [r4, #0x2c]
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021FBCB8
	b _021FA666
_021FA61E:
	mov r0, #0x3f
	lsl r0, r0, #0x18
	str r0, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #9]
	mov r0, #2
	add r1, r4, #0
	str r0, [r4, #0x28]
	add r1, #0x31
	mov r0, #0
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x32
	mov r0, #1
	strb r0, [r1]
	mov r0, #4
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x4c]
	bl ov96_021EB5B8
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldrb r2, [r4, #0x18]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r3, #1
	bl ov96_021E8228
_021FA666:
	add r1, r4, #0
	add r1, #0x60
	mov r0, #0
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x62
	strh r0, [r1]
_021FA674:
	add r6, r6, #1
	cmp r6, #4
	bge _021FA67C
	b _021FA574
_021FA67C:
	ldrb r0, [r4, #8]
	cmp r0, #1
	beq _021FA6B0
	ldrh r1, [r4]
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	blo _021FA6B0
	mov r0, #1
	strb r0, [r4, #8]
	mov r1, #0x23
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, _021FA6C0 ; =ov96_0221DC2C
	strh r0, [r4, #2]
	ldrb r2, [r4, #0x18]
	ldr r0, _021FA6CC ; =0x000008AB
	ldrb r1, [r1, r2]
	bl sub_0200606C
	mov r1, #0xf1
	ldr r0, [sp, #4]
	mov r2, #0x1e
	lsl r1, r1, #2
	strh r2, [r0, r1]
_021FA6B0:
	ldr r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl ov96_021FAB24
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021FA6C0: .word ov96_0221DC2C
_021FA6C4: .word 0x000008A5
_021FA6C8: .word ov96_0221DC28
_021FA6CC: .word 0x000008AB
	thumb_func_end ov96_021FA34C

	thumb_func_start ov96_021FA6D0
ov96_021FA6D0: ; 0x021FA6D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0xc]
	sub r0, r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r6, r1, #0
	str r0, [sp, #0x14]
	bl System_GetTouchNew
	cmp r0, #0
	beq _021FA71C
	ldr r0, [sp, #4]
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
	ldr r2, _021FA7A8 ; =gSystem + 0x40
	add r0, r6, #0
	ldrh r1, [r2, #0x20]
	ldrh r2, [r2, #0x22]
	bl ov96_021FB784
	str r0, [sp, #8]
	cmp r0, #3
	bge _021FA71C
	str r0, [sp, #0x10]
_021FA71C:
	mov r7, #0
	add r5, r6, #0
	add r4, r7, #0
	add r5, #0xe0
_021FA724:
	ldrb r0, [r5, #8]
	mov r3, #0
	cmp r0, #0
	bne _021FA736
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _021FA73C
	add r3, sp, #0x10
	b _021FA73C
_021FA736:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021FA73C:
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl ov96_021FA34C
	add r4, r4, #1
	add r5, #0x6c
	cmp r4, #3
	blt _021FA724
	add r0, r6, #0
	add r0, #0xe6
	ldrh r0, [r0]
	ldr r1, _021FA7AC ; =0x01FF0000
	ldr r2, _021FA7B0 ; =0x04000010
	lsl r0, r0, #0x10
	and r0, r1
	str r0, [r2]
	ldr r0, _021FA7B4 ; =0x00000152
	ldrh r3, [r6, r0]
	lsl r3, r3, #0x10
	and r3, r1
	str r3, [r2, #4]
	add r3, r0, #0
	add r3, #0x6c
	ldrh r3, [r6, r3]
	lsl r3, r3, #0x10
	and r3, r1
	str r3, [r2, #8]
	add r2, r6, #0
	add r2, #0xe4
	ldrh r2, [r2]
	lsl r2, r2, #0x10
	add r3, r2, #0
	ldr r2, _021FA7B8 ; =0x04001010
	and r3, r1
	str r3, [r2]
	sub r3, r0, #2
	ldrh r3, [r6, r3]
	add r0, #0x6a
	lsl r3, r3, #0x10
	and r3, r1
	str r3, [r2, #4]
	ldrh r0, [r6, r0]
	lsl r0, r0, #0x10
	and r0, r1
	str r0, [r2, #8]
	cmp r7, #3
	blo _021FA7A0
	mov r0, #1
	str r0, [sp, #0xc]
_021FA7A0:
	ldr r0, [sp, #0xc]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FA7A8: .word gSystem + 0x40
_021FA7AC: .word 0x01FF0000
_021FA7B0: .word 0x04000010
_021FA7B4: .word 0x00000152
_021FA7B8: .word 0x04001010
	thumb_func_end ov96_021FA6D0

	thumb_func_start ov96_021FA7BC
ov96_021FA7BC: ; 0x021FA7BC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r7, r0, #0
	ldr r0, [r4, #4]
	add r5, r2, #0
	cmp r0, #0
	bne _021FA82A
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA7FC
	ldr r1, _021FA82C ; =ov96_0221DC2C
	ldr r0, _021FA830 ; =0x0000060A
	add r6, r1, r5
	ldrb r1, [r1, r5]
	bl sub_0200606C
	add r0, r7, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, r5, #0
	mov r3, #2
	bl ov96_021E8228
	b _021FA808
_021FA7FC:
	ldr r1, _021FA82C ; =ov96_0221DC2C
	ldr r0, _021FA834 ; =0x000008AA
	add r6, r1, r5
	ldrb r1, [r1, r5]
	bl sub_0200606C
_021FA808:
	ldr r1, _021FA838 ; =ov96_0221DC28
	ldrb r0, [r6]
	ldrsb r1, [r1, r5]
	bl sub_020061D0
	mov r1, #1
	str r1, [r4, #4]
	mov r0, #0
	strb r0, [r4, #0xc]
	str r1, [r4, #8]
	add r1, r4, #0
	ldr r0, [r4]
	add r4, #0x14
	add r1, #0x10
	add r2, r4, #0
	bl ov96_021EAE9C
_021FA82A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FA82C: .word ov96_0221DC2C
_021FA830: .word 0x0000060A
_021FA834: .word 0x000008AA
_021FA838: .word ov96_0221DC28
	thumb_func_end ov96_021FA7BC

	thumb_func_start ov96_021FA83C
ov96_021FA83C: ; 0x021FA83C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	bhi _021FA8F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FA856: ; jump table
	.short _021FAA64 - _021FA856 - 2 ; case 0
	.short _021FA85E - _021FA856 - 2 ; case 1
	.short _021FA9AE - _021FA856 - 2 ; case 2
	.short _021FAA1E - _021FA856 - 2 ; case 3
_021FA85E:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _021FA874
	cmp r0, #2
	beq _021FA8D8
	cmp r0, #3
	beq _021FA912
	b _021FA9A8
_021FA874:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	ldr r3, _021FAAC8 ; =ov96_0221C55C
	lsl r1, r0, #3
	add r5, r0, r1
	ldrb r1, [r4, #0xc]
	sub r2, r1, #1
	add r1, r3, r5
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x14]
	sub r5, r2, r1
	cmp r0, #0
	bne _021FA8A4
	add r0, r4, #0
	mov r1, #0
	bl ov96_021FB8FC
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	bl ov96_021EAE4C
	b _021FA8B6
_021FA8A4:
	add r0, r4, #0
	bl ov96_021FB8B4
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	mov r3, #0
	bl ov96_021EAD88
_021FA8B6:
	ldrb r1, [r4, #0xc]
	ldrh r0, [r4, #0x38]
	cmp r1, r0
	blt _021FA8F2
	mov r0, #2
	str r0, [r4, #8]
	mov r1, #0
	add r0, r4, #0
	strb r1, [r4, #0xc]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FA8F2
	ldr r0, [r4]
	bl ov96_021EAB94
	b _021FAA6A
_021FA8D8:
	ldrb r1, [r4, #0xc]
	ldrh r0, [r4, #0x3a]
	cmp r1, r0
	blt _021FA8F2
	mov r0, #3
	str r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #0xc]
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA8F4
_021FA8F2:
	b _021FAA6A
_021FA8F4:
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EAB94
	ldr r6, _021FAACC ; =ov96_0221DC2C
	ldr r0, _021FAAD0 ; =0x000008AA
	ldrb r1, [r6, r5]
	bl sub_0200606C
	ldr r1, _021FAAD4 ; =ov96_0221DC28
	ldrb r0, [r6, r5]
	ldrsb r1, [r1, r5]
	bl sub_020061D0
	b _021FAA6A
_021FA912:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	ldr r3, _021FAAD8 ; =ov96_0221C589
	lsl r1, r0, #3
	add r6, r0, r1
	ldrb r1, [r4, #0xc]
	sub r2, r1, #1
	add r1, r3, r6
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x14]
	sub r6, r2, r1
	cmp r0, #0
	bne _021FA942
	add r0, r4, #0
	mov r1, #1
	bl ov96_021FB8FC
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r6, #0
	bl ov96_021EAE4C
	b _021FA954
_021FA942:
	add r0, r4, #0
	bl ov96_021FB8B4
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	add r2, r6, #0
	mov r3, #0
	bl ov96_021EAD88
_021FA954:
	ldrh r0, [r4, #0x38]
	ldrb r1, [r4, #0xc]
	cmp r1, r0
	blt _021FA99C
	mov r3, #0
	str r3, [r4, #4]
	str r3, [r4, #8]
	strb r3, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov96_021EAD88
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FA98C
	ldr r6, _021FAACC ; =ov96_0221DC2C
	ldr r0, _021FAADC ; =0x000008A8
	ldrb r1, [r6, r5]
	bl sub_0200606C
	ldr r1, _021FAAD4 ; =ov96_0221DC28
	ldrb r0, [r6, r5]
	ldrsb r1, [r1, r5]
	bl sub_020061D0
_021FA98C:
	add r0, r4, #0
	mov r1, #0
	bl ov96_021FB8B4
	mov r0, #0
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
	b _021FAA6A
_021FA99C:
	sub r0, r0, #5
	cmp r1, r0
	bge _021FAA6A
	mov r0, #0
	strh r0, [r4, #0x3c]
	b _021FAA6A
_021FA9A8:
	bl GF_AssertFail
	b _021FAA6A
_021FA9AE:
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _021FA9F4
	ldrb r0, [r4, #0xe]
	cmp r0, #4
	bhi _021FA9EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FA9CC: ; jump table
	.short _021FA9EC - _021FA9CC - 2 ; case 0
	.short _021FA9D6 - _021FA9CC - 2 ; case 1
	.short _021FA9E2 - _021FA9CC - 2 ; case 2
	.short _021FA9DC - _021FA9CC - 2 ; case 3
	.short _021FA9E8 - _021FA9CC - 2 ; case 4
_021FA9D6:
	mov r0, #3
	strb r0, [r4, #0xe]
	b _021FA9EC
_021FA9DC:
	mov r0, #2
	strb r0, [r4, #0xe]
	b _021FA9EC
_021FA9E2:
	mov r0, #4
	strb r0, [r4, #0xe]
	b _021FA9EC
_021FA9E8:
	mov r0, #1
	strb r0, [r4, #0xe]
_021FA9EC:
	ldrb r1, [r4, #0xe]
	ldr r0, [r4]
	bl ov96_021EAC0C
_021FA9F4:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xc]
	cmp r0, #0x1e
	bls _021FAA6A
	mov r0, #0
	strb r0, [r4, #0xc]
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [r4]
	mov r1, #1
	bl ov96_021EAC0C
	b _021FAA6A
_021FAA1E:
	ldr r1, [r4, #0x18]
	mov r0, #0
	cmp r1, #0x78
	bge _021FAA36
	add r0, r1, #1
	mov r2, #1
	cmp r0, #0x78
	ble _021FAA32
	add r2, r1, #0
	sub r2, #0x78
_021FAA32:
	mov r0, #1
	b _021FAA46
_021FAA36:
	ble _021FAA46
	sub r2, r0, #1
	sub r0, r1, #1
	cmp r0, #0x78
	bge _021FAA44
	mov r0, #0x78
	sub r2, r0, r1
_021FAA44:
	mov r0, #1
_021FAA46:
	cmp r0, #0
	beq _021FAA6A
	ldr r0, [r4, #0x18]
	mov r3, #1
	add r0, r0, r2
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	add r0, r0, r2
	str r0, [r4, #0x1c]
	str r3, [sp]
	ldr r0, [r4]
	bl ov96_021EAED4
	b _021FAA6A
_021FAA64:
	mov r0, #0
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
_021FAA6A:
	ldr r0, [r4, #0x20]
	bl ov96_021EB5B8
	add r5, r0, #0
	bl Sprite_GetMatrixPtr
	add r6, r0, #0
	add r3, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x1c]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl Sprite_SetMatrix
	ldr r0, [r4]
	add r1, sp, #8
	add r2, sp, #4
	bl ov96_021EAE9C
	ldr r0, [r4, #0x28]
	bl ov96_021EB5B8
	add r4, r0, #0
	bl Sprite_GetMatrixPtr
	add r5, r0, #0
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl Sprite_SetMatrix
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FAAC8: .word ov96_0221C55C
_021FAACC: .word ov96_0221DC2C
_021FAAD0: .word 0x000008AA
_021FAAD4: .word ov96_0221DC28
_021FAAD8: .word ov96_0221C589
_021FAADC: .word 0x000008A8
	thumb_func_end ov96_021FA83C

	thumb_func_start ov96_021FAAE0
ov96_021FAAE0: ; 0x021FAAE0
	push {r4, r5}
	add r4, r0, r1
	mov r3, #2
	sub r1, r0, r1
	mov r0, #6
	ldrsh r3, [r2, r3]
	ldrsh r0, [r2, r0]
	mov r5, #0
	add r0, r3, r0
	cmp r1, r0
	bgt _021FAAFC
	cmp r3, r4
	bgt _021FAAFC
	mov r5, #1
_021FAAFC:
	add r0, r5, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021FAAE0

	thumb_func_start ov96_021FAB04
ov96_021FAB04: ; 0x021FAB04
	push {r3, r4}
	mov r2, #2
	ldrsh r3, [r1, r2]
	mov r2, #6
	ldrsh r1, [r1, r2]
	mov r4, #0
	add r1, r3, r1
	cmp r0, r1
	blt _021FAB1E
	sub r0, #0x18
	cmp r0, r1
	bge _021FAB1E
	mov r4, #1
_021FAB1E:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021FAB04

	thumb_func_start ov96_021FAB24
ov96_021FAB24: ; 0x021FAB24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, [r4, #0x1c]
	add r5, r0, #0
	cmp r1, #0
	beq _021FAB42
	cmp r1, #1
	bne _021FAB38
	b _021FAC6C
_021FAB38:
	cmp r1, #2
	bne _021FAB3E
	b _021FADBE
_021FAB3E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021FAB42:
	ldrh r1, [r4]
	cmp r1, #0x70
	bhs _021FAB4A
	b _021FAF10
_021FAB4A:
	mov r2, #2
	lsl r1, r2, #9
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	mov r1, #0x32
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #0x10
	str r1, [sp, #0xc]
	ldrh r1, [r4, #0x14]
	ldrb r6, [r4, #0x18]
	mov r3, #0xa
	lsl r1, r1, #0x18
	mul r3, r6
	add r3, r3, #2
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	mov r0, #0x32
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x14]
	ldrb r6, [r4, #0x18]
	mov r3, #0xa
	lsl r1, r1, #0x18
	mul r3, r6
	add r3, r3, #3
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	mov r0, #0x32
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x14]
	ldrb r6, [r4, #0x18]
	mov r3, #0xa
	lsl r1, r1, #0x18
	mul r3, r6
	add r3, #9
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	mov r0, #0x32
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x16]
	ldrb r6, [r4, #0x18]
	mov r3, #0xa
	lsl r1, r1, #0x18
	mul r3, r6
	add r3, r3, #2
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	mov r0, #0x32
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x16]
	ldrb r6, [r4, #0x18]
	mov r3, #0xa
	lsl r1, r1, #0x18
	mul r3, r6
	add r3, r3, #3
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	mov r0, #0x32
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r1, [r4, #0x16]
	ldrb r6, [r4, #0x18]
	mov r3, #0xa
	lsl r1, r1, #0x18
	mul r3, r6
	add r3, #9
	lsl r3, r3, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #0xff
	add sp, #0x10
	strb r0, [r4, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
_021FAC6C:
	ldrh r1, [r4]
	ldr r0, _021FAF14 ; =0x00000E48
	sub r1, #0x10
	cmp r1, r0
	bge _021FAC78
	b _021FAF10
_021FAC78:
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1a
	sub r0, r0, r1
	mov r2, #0x1a
	ror r0, r2
	add r1, r1, r0
	mov r0, #0x40
	sub r0, r0, r1
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1a
	sub r0, r0, r1
	ror r0, r2
	add r0, r1, r0
	sub r0, r0, #2
	bpl _021FACA0
	add r0, #0x40
_021FACA0:
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	mov r2, #0x60
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	mul r3, r6
	add r3, r3, #2
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	mov r2, #0x61
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	mul r3, r6
	add r3, r3, #3
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	mov r2, #0x62
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	mul r3, r6
	add r3, #9
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	mov r2, #0x60
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	mul r3, r6
	add r3, r3, #2
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	mov r2, #0x61
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	mul r3, r6
	add r3, r3, #3
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	mov r2, #0x62
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	mul r3, r6
	add r3, #9
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #2
	add sp, #0x10
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_021FADBE:
	ldrh r1, [r4]
	ldr r0, _021FAF18 ; =0x00001048
	sub r1, #0x10
	cmp r1, r0
	bge _021FADCA
	b _021FAF10
_021FADCA:
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1a
	sub r0, r0, r1
	mov r2, #0x1a
	ror r0, r2
	add r1, r1, r0
	mov r0, #0x40
	sub r0, r0, r1
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1a
	sub r0, r0, r1
	ror r0, r2
	add r0, r1, r0
	sub r0, r0, #2
	bpl _021FADF2
	add r0, #0x40
_021FADF2:
	mov r2, #2
	strb r0, [r4, #0x1b]
	lsl r0, r2, #9
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	mul r3, r6
	add r3, r3, #2
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	mov r2, #3
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	mul r3, r6
	add r3, r3, #3
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	add r2, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	mul r3, r6
	add r3, #9
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r2, #2
	mov r3, #0xa
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	mul r3, r6
	add r3, r3, #2
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	mov r2, #3
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	mul r3, r6
	add r3, r3, #3
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r4, #0x1b]
	mov r3, #0xa
	add r2, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r6, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	mul r3, r6
	add r3, #9
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrh r1, [r4, #0x14]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	ldrh r1, [r4, #0x16]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #3
	str r0, [r4, #0x1c]
_021FAF10:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FAF14: .word 0x00000E48
_021FAF18: .word 0x00001048
	thumb_func_end ov96_021FAB24

	thumb_func_start ov96_021FAF1C
ov96_021FAF1C: ; 0x021FAF1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	bl ov96_021E5DC4
	add r5, r0, #0
	ldr r0, [sp]
	bl ov96_021E5F54
	add r4, r0, #0
	bl ov96_021E8A20
	mov r7, #0x23
	add r3, r0, #0
	mov r1, #0
	add r2, r5, #0
	mov r0, #1
	lsl r7, r7, #4
_021FAF40:
	add r6, r2, #0
	add r6, #0xe0
	ldrh r6, [r6]
	strh r6, [r3]
	add r6, r2, #0
	add r6, #0xe8
	ldrb r6, [r6]
	cmp r6, #0
	beq _021FAF5E
	ldrh r6, [r3, #0x10]
	cmp r6, #0
	bne _021FAF5E
	strh r0, [r3, #0x10]
	ldr r6, [r5, r7]
	strh r6, [r3, #0xa]
_021FAF5E:
	add r1, r1, #1
	add r2, #0x6c
	add r3, r3, #2
	cmp r1, #3
	blt _021FAF40
	ldr r0, [sp]
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FAFF0
	add r0, r4, #0
	add r0, #0x28
	mov r7, #0
	bl ov96_021E8A20
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x50
	bl ov96_021E8A20
	add r5, r0, #0
	add r0, r4, #0
	bl ov96_021E8A20
	mov r2, #0x12
_021FAF90:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r5]
	add r5, r5, #2
	sub r2, r2, #1
	bne _021FAF90
	mov r0, #0
	ldr r5, [sp, #8]
	str r0, [sp, #4]
	add r4, #0x50
_021FAFA4:
	add r0, r4, #0
	bl ov96_021E8A20
	add r6, r0, #0
	mov r1, #0
	add r2, r6, #0
	add r3, r5, #0
_021FAFB2:
	ldrh r0, [r2]
	add r1, r1, #1
	add r2, r2, #2
	strh r0, [r3, #4]
	add r3, r3, #2
	cmp r1, #3
	blt _021FAFB2
	ldrb r0, [r6, #9]
	cmp r0, #0
	beq _021FAFCC
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021FAFCC:
	ldr r0, [sp, #4]
	add r4, #0x28
	add r0, r0, #1
	add r5, r5, #6
	str r0, [sp, #4]
	cmp r0, #4
	blt _021FAFA4
	ldr r0, [sp]
	bl ov96_021E5D34
	cmp r7, r0
	bne _021FAFEA
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0]
_021FAFEA:
	ldr r0, [sp]
	bl ov96_021FB400
_021FAFF0:
	ldr r0, [sp]
	bl ov96_021FB0F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FAF1C

	thumb_func_start ov96_021FAFFC
ov96_021FAFFC: ; 0x021FAFFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	str r0, [sp]
	add r7, r1, #0
	mov r0, #0
	add r1, sp, #0x10
	str r1, [sp, #8]
	str r0, [sp, #4]
	add r1, sp, #4
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
_021FB012:
	add r2, r0, #1
	mov r1, #0xc
	add r3, sp, #4
	mul r1, r2
	add r2, r3, r1
	lsr r1, r0, #0x1f
	add r1, r0, r1
	lsl r1, r1, #0x17
	lsr r1, r1, #0x18
	add r1, r7, r1
	ldrb r6, [r1, #0x1c]
	lsr r5, r0, #0x1f
	lsl r4, r0, #0x1f
	sub r4, r4, r5
	mov r1, #0x1f
	ror r4, r1
	add r1, r5, r4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	add r4, r6, #0
	asr r4, r1
	mov r1, #0xf
	and r1, r4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	strh r1, [r2, #8]
	mov r1, #0
	strh r0, [r2, #0xa]
	str r1, [r2, #4]
	cmp r0, #0
	ble _021FB088
	ldrh r4, [r2, #8]
	ldrh r5, [r2, #0xa]
_021FB054:
	ldr r3, [r3, #4]
	ldrh r6, [r3, #8]
	cmp r6, r4
	bls _021FB06A
	ldr r4, [r3]
	str r2, [r4, #4]
	ldr r4, [r3]
	str r4, [r2]
	str r3, [r2, #4]
	str r2, [r3]
	b _021FB088
_021FB06A:
	cmp r6, r4
	bne _021FB082
	ldrh r6, [r3, #0xa]
	cmp r6, r5
	bls _021FB082
	ldr r4, [r3]
	str r2, [r4, #4]
	ldr r4, [r3]
	str r4, [r2]
	str r3, [r2, #4]
	str r2, [r3]
	b _021FB088
_021FB082:
	add r1, r1, #1
	cmp r1, r0
	blt _021FB054
_021FB088:
	cmp r1, r0
	bne _021FB090
	str r2, [r3, #4]
	str r3, [r2]
_021FB090:
	add r0, r0, #1
	cmp r0, #0xc
	blt _021FB012
	mov r1, #0x8a
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl ov96_021FC2B4
	add r4, sp, #4
	mov r7, #0
	mov r5, #0x10
_021FB0AA:
	ldr r4, [r4, #4]
	ldrh r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #8
	bls _021FB0B8
	mov r6, #8
_021FB0B8:
	mov r0, #0x8a
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r1, [r4, #0xa]
	add r2, r5, #0
	bl ov96_021FC248
	mov r0, #0x8a
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r1, [r4, #0xa]
	add r2, r6, #0
	bl ov96_021FC28C
	mov r0, #0x8a
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r1, [r4, #0xa]
	mov r2, #1
	bl ov96_021FC2E0
	add r7, r7, #1
	add r5, #0x20
	cmp r7, #0xc
	blt _021FB0AA
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021FAFFC

	thumb_func_start ov96_021FB0F4
ov96_021FB0F4: ; 0x021FB0F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp]
	bl ov96_021E5DC4
	str r0, [sp, #4]
	ldr r0, [sp]
	bl ov96_021E5F54
	add r0, #0xf0
	bl ov96_021E8A20
	str r0, [sp, #8]
	ldr r2, _021FB3EC ; =0x000003C7
	ldr r0, [sp, #4]
	ldrb r0, [r0, r2]
	cmp r0, #0
	beq _021FB124
	ldr r0, [sp, #4]
	sub r1, r2, #3
	ldrh r0, [r0, r1]
	add r3, r0, #1
	ldr r0, [sp, #4]
	strh r3, [r0, r1]
_021FB124:
	ldr r0, _021FB3F0 ; =0x000003C6
	ldr r1, [sp, #4]
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _021FB21E
	ldr r1, [sp, #4]
	sub r2, r0, #2
	ldrh r1, [r1, r2]
	cmp r1, #0x96
	blo _021FB21C
	ldr r1, [sp, #4]
	mov r3, #0
	strh r3, [r1, r2]
	mov r2, #1
	strb r2, [r1, r0]
	add r0, r1, #0
	ldr r1, [sp, #8]
	bl ov96_021FAFFC
	mov r4, #0
_021FB14C:
	mov r0, #0x6c
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r5, r0, r1
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov96_021EB5B8
	add r7, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [sp]
	bl ov96_021E5F24
	lsl r1, r0, #1
	add r0, r0, r1
	add r1, r4, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r6, r0, #0x18
	ldr r0, [sp]
	bl ov96_021E5F24
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r4, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r1, r0, #0x18
	ldr r0, [sp, #8]
	add r0, r0, r6
	ldrb r2, [r0, #0x1c]
	lsr r0, r1, #0x16
	add r1, r2, #0
	asr r1, r0
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	beq _021FB1B8
	cmp r6, #0xc
	bls _021FB1BC
_021FB1B8:
	bl GF_AssertFail
_021FB1BC:
	mov r1, #0xff
	mov r0, #0x51
	lsl r1, r1, #0x16
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r0, _021FB3F4 ; =0x45800000
	ldr r1, [r5, r1]
	bl _fmul
	bl _ffix
	mov r1, #0x51
	str r0, [sp, #0x30]
	lsl r1, r1, #2
	ldr r0, _021FB3F4 ; =0x45800000
	ldr r1, [r5, r1]
	bl _fmul
	bl _ffix
	mov r1, #0x51
	str r0, [sp, #0x34]
	lsl r1, r1, #2
	ldr r0, _021FB3F4 ; =0x45800000
	ldr r1, [r5, r1]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x38]
	mov r0, #0x52
	lsl r0, r0, #2
	strh r6, [r5, r0]
	add r0, r7, #0
	add r1, sp, #0x30
	bl sub_020247F4
	add r0, r7, #0
	sub r1, r6, #1
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021FB14C
_021FB21C:
	b _021FB348
_021FB21E:
	ldr r1, [sp, #4]
	sub r2, r0, #2
	ldrh r1, [r1, r2]
	cmp r1, #0x1e
	bhs _021FB22A
	b _021FB348
_021FB22A:
	sub r1, r0, #2
	ldr r0, [sp, #4]
	mov r2, #0
	strh r2, [r0, r1]
	ldr r1, [sp, #8]
	bl ov96_021FAFFC
	mov r7, #0
_021FB23A:
	mov r0, #0x6c
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r4, r0, r1
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EB5B8
	add r6, r0, #0
	ldr r0, [sp]
	bl ov96_021E5F24
	lsl r1, r0, #1
	add r0, r0, r1
	add r1, r7, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r5, r0, #0x18
	ldr r0, [sp]
	bl ov96_021E5F24
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r7, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r1, r0, #0x18
	ldr r0, [sp, #8]
	add r0, r0, r5
	ldrb r2, [r0, #0x1c]
	lsr r0, r1, #0x16
	add r1, r2, #0
	asr r1, r0
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	beq _021FB298
	cmp r5, #0xc
	bls _021FB29C
_021FB298:
	bl GF_AssertFail
_021FB29C:
	add r0, r4, #0
	add r0, #0xe8
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FB2D2
	add r0, r6, #0
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, ip
	str r0, [r2]
	mov r0, #0x4e
	lsl r0, r0, #0xe
	str r0, [sp, #0x28]
	add r0, r6, #0
	bl Sprite_SetMatrix
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0xb
	bl Set2dSpriteAnimSeqNo
_021FB2D2:
	mov r0, #0x52
	lsl r0, r0, #2
	ldrsh r0, [r4, r0]
	cmp r5, r0
	beq _021FB33C
	mov r0, #0x52
	lsl r0, r0, #2
	strh r5, [r4, r0]
	add r0, r4, #0
	add r0, #0xe8
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FB33C
	mov r1, #0xff
	mov r0, #0x51
	lsl r1, r1, #0x16
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r0, _021FB3F4 ; =0x45800000
	ldr r1, [r4, r1]
	bl _fmul
	bl _ffix
	mov r1, #0x51
	str r0, [sp, #0x18]
	lsl r1, r1, #2
	ldr r0, _021FB3F4 ; =0x45800000
	ldr r1, [r4, r1]
	bl _fmul
	bl _ffix
	mov r1, #0x51
	str r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r0, _021FB3F4 ; =0x45800000
	ldr r1, [r4, r1]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_020247F4
	add r0, r6, #0
	sub r1, r5, #1
	bl Set2dSpriteAnimSeqNo
_021FB33C:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #3
	bhs _021FB348
	b _021FB23A
_021FB348:
	ldr r7, _021FB3F4 ; =0x45800000
	mov r5, #0
_021FB34C:
	mov r0, #0x6c
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r4, r0, r1
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EB5B8
	add r6, r0, #0
	bl sub_020248B0
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021FB38E
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl _f2d
	ldr r2, _021FB3F8 ; =0x9999999A
	ldr r3, _021FB3FC ; =0x3FB99999
	bl _dsub
	bl _d2f
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	b _021FB398
_021FB38E:
	mov r1, #0xfe
	mov r0, #0x51
	lsl r1, r1, #0x16
	lsl r0, r0, #2
	str r1, [r4, r0]
_021FB398:
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r7, #0
	bl _fmul
	bl _ffix
	mov r1, #0x51
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r7, #0
	bl _fmul
	bl _ffix
	mov r1, #0x51
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r7, #0
	bl _fmul
	bl _ffix
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_020247F4
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021FB34C
	ldr r0, [sp, #4]
	bl ov96_021FB994
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021FB3EC: .word 0x000003C7
_021FB3F0: .word 0x000003C6
_021FB3F4: .word 0x45800000
_021FB3F8: .word 0x9999999A
_021FB3FC: .word 0x3FB99999
	thumb_func_end ov96_021FB0F4

	thumb_func_start ov96_021FB400
ov96_021FB400: ; 0x021FB400
	push {r4, r5, r6, r7, lr}
	sub sp, #0x11c
	bl ov96_021E5F54
	str r0, [sp, #8]
	add r0, #0x28
	bl ov96_021E8A20
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, sp, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x18
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	str r0, [sp, #0x28]
	ldr r0, [sp, #8]
	add r0, #0x50
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
_021FB434:
	ldr r0, [sp, #8]
	bl ov96_021E8A20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
_021FB440:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add r5, sp, #0x18
	add r7, r1, r0
	add r1, r7, #1
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x18
	add r4, r0, r2
	ldr r0, [sp]
	ldrh r0, [r0]
	strh r0, [r4, #8]
	ldr r0, [sp]
	ldrh r0, [r0, #0xa]
	strh r0, [r4, #0xc]
	ldr r0, [sp]
	strh r7, [r4, #0xa]
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0xe]
	mov r0, #0
	str r0, [r4, #0x10]
	add r6, r0, #0
	str r0, [r4, #4]
	cmp r7, #0
	ble _021FB498
_021FB474:
	ldrh r0, [r4, #0xe]
	ldr r5, [r5, #4]
	cmp r0, #0
	beq _021FB486
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021FB514
	b _021FB48E
_021FB486:
	add r0, r4, #0
	add r1, r5, #0
	bl ov96_021FB56C
_021FB48E:
	cmp r0, #0
	bne _021FB498
	add r6, r6, #1
	cmp r6, r7
	blt _021FB474
_021FB498:
	cmp r6, r7
	bne _021FB4A0
	str r4, [r5, #4]
	str r5, [r4]
_021FB4A0:
	ldr r0, [sp]
	add r0, r0, #2
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _021FB440
	ldr r0, [sp, #8]
	add r0, #0x28
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _021FB434
	mov r7, #0
	add r5, sp, #0x18
	mov r4, #1
	add r1, r7, #0
	add r6, r7, #0
_021FB4D0:
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	add r1, r1, #1
	strb r6, [r0, #0x1c]
	cmp r1, #6
	blt _021FB4D0
_021FB4DC:
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _021FB4E6
	bl GF_AssertFail
_021FB4E6:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021FB4F6
	add r0, r7, r4
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r4, #1
	b _021FB4FC
_021FB4F6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021FB4FC:
	ldrh r1, [r5, #0xa]
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021FB5C8
	add r6, r6, #1
	cmp r6, #0xc
	blt _021FB4DC
	add sp, #0x11c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021FB400

	thumb_func_start ov96_021FB514
ov96_021FB514: ; 0x021FB514
	ldrh r2, [r1, #0xe]
	cmp r2, #0
	beq _021FB556
	ldrh r3, [r0, #0xc]
	ldrh r2, [r1, #0xc]
	cmp r2, r3
	bls _021FB532
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	mov r0, #1
	bx lr
_021FB532:
	cmp r2, r3
	bne _021FB566
	ldrh r3, [r1, #0xa]
	ldrh r2, [r0, #0xa]
	cmp r3, r2
	bls _021FB550
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	mov r0, #1
	str r0, [r1, #0x10]
	bx lr
_021FB550:
	mov r1, #1
	str r1, [r0, #0x10]
	b _021FB566
_021FB556:
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	mov r0, #1
	bx lr
_021FB566:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021FB514

	thumb_func_start ov96_021FB56C
ov96_021FB56C: ; 0x021FB56C
	ldrh r3, [r0, #8]
	ldrh r2, [r1, #8]
	cmp r2, r3
	bhs _021FB584
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	mov r0, #1
	bx lr
_021FB584:
	cmp r2, r3
	bne _021FB5C2
	ldrh r3, [r0, #0xc]
	ldrh r2, [r1, #0xc]
	cmp r2, r3
	bls _021FB5A0
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	mov r0, #1
	bx lr
_021FB5A0:
	cmp r2, r3
	bne _021FB5C2
	ldrh r3, [r1, #0xa]
	ldrh r2, [r0, #0xa]
	cmp r3, r2
	bls _021FB5BE
	ldr r2, [r1]
	str r0, [r2, #4]
	ldr r2, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	str r0, [r1]
	mov r0, #1
	str r0, [r1, #0x10]
	bx lr
_021FB5BE:
	mov r1, #1
	str r1, [r0, #0x10]
_021FB5C2:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021FB56C

	thumb_func_start ov96_021FB5C8
ov96_021FB5C8: ; 0x021FB5C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0xc
	blo _021FB5D8
	bl GF_AssertFail
_021FB5D8:
	cmp r6, #0
	beq _021FB5E0
	cmp r6, #0xc
	bls _021FB5E4
_021FB5E0:
	bl GF_AssertFail
_021FB5E4:
	lsr r7, r4, #0x1f
	lsl r3, r4, #0x1f
	sub r3, r3, r7
	mov r2, #0x1f
	ror r3, r2
	add r2, r7, r3
	lsl r2, r2, #0x18
	lsl r0, r4, #0x17
	lsr r2, r2, #0x16
	add r3, r6, #0
	lsl r3, r2
	lsl r2, r3, #0x18
	add r5, #0x1c
	lsr r1, r0, #0x18
	ldrb r0, [r5, r1]
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FB5C8

	thumb_func_start ov96_021FB60C
ov96_021FB60C: ; 0x021FB60C
	push {r3, r4}
	mov r4, #0
	mov r1, #0x42
	add r3, r4, #0
	lsl r1, r1, #2
_021FB616:
	ldr r2, [r0, r1]
	cmp r2, #4
	bne _021FB624
	add r3, r3, #1
	add r0, #0x6c
	cmp r3, #3
	blt _021FB616
_021FB624:
	cmp r3, #3
	bne _021FB62A
	mov r4, #1
_021FB62A:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021FB60C

	thumb_func_start ov96_021FB630
ov96_021FB630: ; 0x021FB630
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #8]
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FB6B0
	ldr r0, [sp, #8]
	bl ov96_021E5F54
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl ov96_021E5DC4
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	bl ov96_021E5D34
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	cmp r0, #4
	bge _021FB6B0
	mov r1, #0x28
	add r4, #0x50
	mul r1, r0
	add r0, r4, r1
	str r0, [sp, #0xc]
_021FB666:
	ldr r0, [sp, #0xc]
	bl ov96_021E8A20
	add r7, r0, #0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r4, #0
	sub r1, r1, r0
	lsl r0, r1, #1
	add r5, r1, r0
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021FB680:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	add r3, r6, #0
	bl ov96_021FBA3C
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #3
	blt _021FB680
	ldr r0, [sp, #0xc]
	add r0, #0x28
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _021FB666
_021FB6B0:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021FB630

	thumb_func_start ov96_021FB6B4
ov96_021FB6B4: ; 0x021FB6B4
	mov r3, #0x15
	lsl r3, r3, #4
	add r1, r1, r3
	add r0, #0xd8
	ldr r3, _021FB6C4 ; =ov96_021FC0FC
	ldr r0, [r0]
	bx r3
	nop
_021FB6C4: .word ov96_021FC0FC
	thumb_func_end ov96_021FB6B4

	thumb_func_start ov96_021FB6C8
ov96_021FB6C8: ; 0x021FB6C8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021FB780 ; =ov96_0221C428
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [r4, #0x28]
	cmp r1, #1
	beq _021FB77A
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _021FB77A
	cmp r1, #2
	bne _021FB6F0
	mov r0, #0x18
	b _021FB726
_021FB6F0:
	ldrb r0, [r4, #9]
	cmp r0, #4
	bhi _021FB720
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FB702: ; jump table
	.short _021FB70C - _021FB702 - 2 ; case 0
	.short _021FB710 - _021FB702 - 2 ; case 1
	.short _021FB714 - _021FB702 - 2 ; case 2
	.short _021FB718 - _021FB702 - 2 ; case 3
	.short _021FB71C - _021FB702 - 2 ; case 4
_021FB70C:
	mov r0, #8
	b _021FB726
_021FB710:
	mov r0, #6
	b _021FB726
_021FB714:
	mov r0, #6
	b _021FB726
_021FB718:
	mov r0, #6
	b _021FB726
_021FB71C:
	mov r0, #4
	b _021FB726
_021FB720:
	bl GF_AssertFail
	mov r0, #8
_021FB726:
	add r1, r4, #0
	add r1, #0x6a
	ldrh r1, [r1]
	add r2, r1, #1
	add r1, r4, #0
	add r1, #0x6a
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x6a
	ldrh r1, [r1]
	cmp r1, r0
	blt _021FB77A
	add r0, sp, #0
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	bl LCRandom
	mov r1, #7
	bl _s32_div_f
	ldrb r0, [r4, #0x18]
	add r5, #0xdc
	lsl r2, r0, #2
	add r0, sp, #0xc
	ldr r2, [r0, r2]
	sub r0, r1, #3
	add r0, r2, r0
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x62
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	ldrb r1, [r4, #0x18]
	ldr r0, [r5]
	add r2, sp, #0
	bl ov96_021FC698
_021FB77A:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021FB780: .word ov96_0221C428
	thumb_func_end ov96_021FB6C8

	thumb_func_start ov96_021FB784
ov96_021FB784: ; 0x021FB784
	push {r4, r5, r6}
	sub sp, #0xc
	ldr r6, _021FB7C4 ; =ov96_0221C41C
	add r4, r1, #0
	ldmia r6!, {r0, r1}
	add r5, sp, #0
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	mov r0, #0
_021FB79A:
	lsl r1, r0, #2
	ldr r1, [r3, r1]
	sub r1, #0x18
	cmp r1, r4
	bge _021FB7B2
	add r1, #0x30
	cmp r4, r1
	bge _021FB7B2
	cmp r2, #0x58
	ble _021FB7B2
	cmp r2, #0xa8
	blt _021FB7BE
_021FB7B2:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	blo _021FB79A
	mov r0, #3
_021FB7BE:
	add sp, #0xc
	pop {r4, r5, r6}
	bx lr
	.balign 4, 0
_021FB7C4: .word ov96_0221C41C
	thumb_func_end ov96_021FB784

	thumb_func_start ov96_021FB7C8
ov96_021FB7C8: ; 0x021FB7C8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	ldr r2, _021FB804 ; =ov96_0221C3FC
	add r1, #8
	bl AddWindow
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #4]
	mov r1, #3
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r4]
	mov r0, #0
	lsl r1, r1, #4
	bl LoadFontPal0
	add r4, #8
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add sp, #4
	pop {r3, r4, pc}
	nop
_021FB804: .word ov96_0221C3FC
	thumb_func_end ov96_021FB7C8

	thumb_func_start ov96_021FB808
ov96_021FB808: ; 0x021FB808
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r2, _021FB8AC ; =0x00000135
	add r6, r1, #0
	ldr r3, [r5]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	add r7, r0, #0
	ldr r0, [r5]
	bl MessageFormat_New
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x1e
	bl _s32_div_f
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #3
	bl BufferIntegerAsString
	add r0, r6, #0
	mov r1, #0x1e
	bl _s32_div_f
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r4, #0
	add r3, r1, #0
	bl BufferIntegerAsString
	ldr r3, [r5]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x9c
	bl ReadMsgData_ExpandPlaceholders
	add r6, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FB8B0 ; =0x000F0E00
	mov r1, #4
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #8
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_Delete
	add r0, r7, #0
	bl DestroyMsgData
	add r5, #8
	add r0, r5, #0
	bl CopyWindowToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FB8AC: .word 0x00000135
_021FB8B0: .word 0x000F0E00
	thumb_func_end ov96_021FB808

	thumb_func_start ov96_021FB8B4
ov96_021FB8B4: ; 0x021FB8B4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bge _021FB8BE
	mov r1, #0
_021FB8BE:
	add r0, r1, #0
	bl _dflt
	add r3, r1, #0
	mov r1, #1
	add r2, r0, #0
	mov r0, #0
	lsl r1, r1, #0x1e
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FB8F8 ; =0x40590000
	mov r0, #0
	bl _dadd
	ldr r3, _021FB8F8 ; =0x40590000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r1, r0, #0
	ldr r0, [r4]
	add r2, r1, #0
	bl ov96_021EB10C
	pop {r4, pc}
	nop
_021FB8F8: .word 0x40590000
	thumb_func_end ov96_021FB8B4

	thumb_func_start ov96_021FB8FC
ov96_021FB8FC: ; 0x021FB8FC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021FB934
	ldrb r0, [r4, #0xc]
	ldrh r1, [r4, #0x38]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r1, r0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FB988 ; =0x40240000
	mov r0, #0
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FB98C ; =0x40590000
	mov r0, #0
	bl _dsub
	bl _d2f
	add r5, r0, #0
	b _021FB968
_021FB934:
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl _dfltu
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FB988 ; =0x40240000
	mov r0, #0
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FB98C ; =0x40590000
	mov r0, #0
	bl _dsub
	bl _d2f
	mov r1, #0
	add r5, r0, #0
	bl _fls
	bhs _021FB968
	ldr r5, _021FB990 ; =0x41200000
_021FB968:
	add r0, r5, #0
	bl _f2d
	ldr r3, _021FB98C ; =0x40590000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r1, r0, #0
	ldr r0, [r4]
	add r2, r1, #0
	bl ov96_021EB10C
	pop {r3, r4, r5, pc}
	nop
_021FB988: .word 0x40240000
_021FB98C: .word 0x40590000
_021FB990: .word 0x41200000
	thumb_func_end ov96_021FB8FC

	thumb_func_start ov96_021FB994
ov96_021FB994: ; 0x021FB994
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1e
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x64
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	mov r1, #0x3c
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0xeb
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0x3c
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0xed
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	mov r0, #0xee
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0xf
	lsl r0, r0, #6
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021FB994

	thumb_func_start ov96_021FBA3C
ov96_021FBA3C: ; 0x021FBA3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	str r3, [sp, #8]
	add r7, r0, #0
	mov r0, #0x8e
	lsl r0, r0, #2
	add r1, sp, #0x18
	str r2, [sp, #4]
	ldrb r2, [r1, #0x14]
	mov r1, #0x28
	add r0, r6, r0
	mul r1, r2
	add r4, r0, r1
	ldr r0, [r4, #0x18]
	ldr r5, [sp, #0x28]
	cmp r0, #1
	beq _021FBA8C
	ldrb r0, [r4]
	cmp r0, #2
	beq _021FBA8C
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _021FBA8C
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	bl _fls
	bhs _021FBA8C
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x14]
	bl _fadd
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	bl _fgr
	bls _021FBA8C
	ldr r0, [r4, #0x10]
	str r0, [r4, #8]
_021FBA8C:
	ldrb r0, [r4]
	cmp r0, #2
	bne _021FBAA4
	ldrb r0, [r4, #1]
	sub r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _021FBB50
	mov r0, #0
	strb r0, [r4]
	b _021FBB50
_021FBAA4:
	add r0, r6, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r2, [r4, #0x20]
	add r1, r5, #0
	bl ov96_021FC164
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0xc]
	cmp r0, r1
	beq _021FBB50
	ldr r1, [r4, #0x24]
	cmp r1, r0
	beq _021FBB50
	bl LCRandom
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, #3]
	cmp r1, r0
	bhs _021FBB14
	ldrb r0, [r4, #2]
	cmp r0, #4
	bhs _021FBAF2
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r1, [r4, #2]
	ldr r0, [r4, #0x10]
	sub r1, r1, #1
	lsl r2, r1, #2
	ldr r1, _021FBBAC ; =ov96_0221C444
	ldr r1, [r1, r2]
	bl _fadd
	str r0, [r4, #8]
_021FBAF2:
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #6
	bl ov96_021E8228
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #2
	bl ov96_021E8228
	b _021FBB4C
_021FBB14:
	ldrb r0, [r4, #4]
	cmp r1, r0
	bhs _021FBB3C
	mov r0, #2
	strb r0, [r4]
	mov r0, #0x1e
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #0x3f
	lsl r0, r0, #0x18
	str r0, [r4, #8]
	mov r3, #1
	str r3, [sp]
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r5, #0
	bl ov96_021E8228
	b _021FBB4C
_021FBB3C:
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #2
	bl ov96_021E8228
_021FBB4C:
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x24]
_021FBB50:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl _fadd
	str r0, [sp, #0x10]
	bl _ffix
	add r7, r0, #0
	bl _fflt
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	bl _fsub
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x20]
	lsl r1, r5, #1
	add r2, r0, r7
	ldr r0, [sp, #4]
	str r2, [r4, #0x20]
	strh r2, [r0, r1]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021FBBA6
	mov r0, #1
	ldr r2, [r4, #0x20]
	lsl r0, r0, #0xc
	cmp r2, r0
	blt _021FBBA6
	ldr r2, [sp, #4]
	mov r0, #1
	add r3, r2, r1
	mov r1, #0x23
	strh r0, [r3, #0x10]
	lsl r1, r1, #4
	ldr r2, [r6, r1]
	strh r2, [r3, #0xa]
	ldr r1, [r6, r1]
	str r1, [r4, #0x1c]
	str r0, [r4, #0x18]
	ldr r0, _021FBBB0 ; =0x000008A1
	bl PlaySE
_021FBBA6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021FBBAC: .word ov96_0221C444
_021FBBB0: .word 0x000008A1
	thumb_func_end ov96_021FBA3C

	thumb_func_start ov96_021FBBB4
ov96_021FBBB4: ; 0x021FBBB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r6, r1, #0
	bl ov96_021E5DC4
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov96_021E5D34
	str r0, [sp, #4]
	cmp r0, #4
	bhs _021FBCAC
	str r0, [sp, #0xc]
_021FBBD0:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r5, #0
	sub r1, r1, r0
	lsl r0, r1, #1
	add r0, r1, r0
	str r0, [sp, #8]
	mov r1, #0x8e
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x14]
_021FBBE8:
	ldr r0, [sp, #8]
	add r0, r5, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r2, r1, #0
	mov r0, #0x28
	mul r2, r0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	add r4, r0, r2
	ldr r0, [sp]
	add r2, r5, #0
	bl ov96_021E60D8
	add r7, r0, #0
	ldrb r0, [r7, #1]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #0x3c]
	bl _fflt
	ldr r1, _021FBCB0 ; =0x41200000
	bl _fdiv
	str r0, [r4, #0x10]
	ldrb r0, [r7, #4]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #0x28]
	bl _fflt
	ldr r1, _021FBCB4 ; =0x42C80000
	bl _fdiv
	str r0, [r4, #0x14]
	bl LCRandom
	mov r1, #6
	bl _s32_div_f
	cmp r1, #5
	bhi _021FBC90
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FBC48: ; jump table
	.short _021FBC54 - _021FBC48 - 2 ; case 0
	.short _021FBC5E - _021FBC48 - 2 ; case 1
	.short _021FBC68 - _021FBC48 - 2 ; case 2
	.short _021FBC72 - _021FBC48 - 2 ; case 3
	.short _021FBC7C - _021FBC48 - 2 ; case 4
	.short _021FBC86 - _021FBC48 - 2 ; case 5
_021FBC54:
	mov r0, #0xa
	strb r0, [r4, #3]
	mov r0, #0x32
	strb r0, [r4, #4]
	b _021FBC94
_021FBC5E:
	mov r0, #0x14
	strb r0, [r4, #3]
	mov r0, #0x32
	strb r0, [r4, #4]
	b _021FBC94
_021FBC68:
	mov r0, #0x1e
	strb r0, [r4, #3]
	mov r0, #0x3c
	strb r0, [r4, #4]
	b _021FBC94
_021FBC72:
	mov r0, #0x14
	strb r0, [r4, #3]
	mov r0, #0x46
	strb r0, [r4, #4]
	b _021FBC94
_021FBC7C:
	mov r0, #0x1e
	strb r0, [r4, #3]
	mov r0, #0x46
	strb r0, [r4, #4]
	b _021FBC94
_021FBC86:
	mov r0, #0x28
	strb r0, [r4, #3]
	mov r0, #0x50
	strb r0, [r4, #4]
	b _021FBC94
_021FBC90:
	bl GF_AssertFail
_021FBC94:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021FBBE8
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #4
	blo _021FBBD0
_021FBCAC:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FBCB0: .word 0x41200000
_021FBCB4: .word 0x42C80000
	thumb_func_end ov96_021FBBB4

	thumb_func_start ov96_021FBCB8
ov96_021FBCB8: ; 0x021FBCB8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #4
	bhs _021FBD82
	ldr r0, [r4, #0x4c]
	bl ov96_021EB5B8
	add r6, r0, #0
	ldrb r0, [r4, #9]
	add r0, r0, #1
	strb r0, [r4, #9]
	ldrb r0, [r4, #9]
	cmp r0, #1
	bne _021FBD06
	ldrb r2, [r4, #0x18]
	ldr r1, _021FBDA0 ; =ov96_0221DC2C
	ldr r0, _021FBDA4 ; =0x000008A6
	ldrb r1, [r1, r2]
	bl sub_0200606C
	ldrb r2, [r4, #0x18]
	ldr r0, _021FBDA0 ; =ov96_0221DC2C
	ldr r1, _021FBDA8 ; =ov96_0221DC28
	ldrb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	bl sub_020061D0
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov96_021EAC0C
	add r0, r6, #0
	mov r1, #1
	bl Set2dSpriteAnimSeqNo
	b _021FBD5A
_021FBD06:
	cmp r0, #4
	bne _021FBD36
	ldrb r2, [r4, #0x18]
	ldr r1, _021FBDA0 ; =ov96_0221DC2C
	ldr r0, _021FBDAC ; =0x000008A9
	ldrb r1, [r1, r2]
	bl sub_0200606C
	ldrb r2, [r4, #0x18]
	ldr r0, _021FBDA0 ; =ov96_0221DC2C
	ldr r1, _021FBDA8 ; =ov96_0221DC28
	ldrb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	bl sub_020061D0
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl ov96_021EAC0C
	add r0, r6, #0
	mov r1, #2
	bl Set2dSpriteAnimSeqNo
	b _021FBD5A
_021FBD36:
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021FBD5A
	ldrb r2, [r4, #0x18]
	ldr r1, _021FBDA0 ; =ov96_0221DC2C
	ldr r0, _021FBDB0 ; =0x000008A7
	ldrb r1, [r1, r2]
	bl sub_0200606C
	ldrb r2, [r4, #0x18]
	ldr r0, _021FBDA0 ; =ov96_0221DC2C
	ldr r1, _021FBDA8 ; =ov96_0221DC28
	ldrb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	bl sub_020061D0
_021FBD5A:
	ldr r0, [r4, #0xc]
	bl _f2d
	ldr r3, _021FBDB4 ; =0x40240000
	mov r2, #0
	bl _dls
	bhs _021FBD7E
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0x50]
	sub r1, r1, #1
	lsl r2, r1, #2
	ldr r1, _021FBDB8 ; =ov96_0221C444
	ldr r1, [r1, r2]
	bl _fadd
	str r0, [r4, #0xc]
	b _021FBD82
_021FBD7E:
	bl GF_AssertFail
_021FBD82:
	add r0, r5, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r1, r1, #0x18
	ldrb r2, [r4, #0x18]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r3, #6
	bl ov96_021E8228
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FBDA0: .word ov96_0221DC2C
_021FBDA4: .word 0x000008A6
_021FBDA8: .word ov96_0221DC28
_021FBDAC: .word 0x000008A9
_021FBDB0: .word 0x000008A7
_021FBDB4: .word 0x40240000
_021FBDB8: .word ov96_0221C444
	thumb_func_end ov96_021FBCB8

	thumb_func_start ov96_021FBDBC
ov96_021FBDBC: ; 0x021FBDBC
	mov r1, #0x23
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	add r3, r0, #0
	add r2, r2, #1
	str r2, [r0, r1]
	mov r2, #0
_021FBDCA:
	add r1, r3, #0
	add r1, #0xe8
	ldrb r1, [r1]
	cmp r1, #0
	bne _021FBDE0
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
	bx lr
_021FBDE0:
	add r2, r2, #1
	add r3, #0x6c
	cmp r2, #3
	blt _021FBDCA
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021FBDBC

	thumb_func_start ov96_021FBDEC
ov96_021FBDEC: ; 0x021FBDEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x1e
	bl _s32_div_f
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	mov r1, #0x1e
	mul r1, r0
	add r0, r1, #0
	mov r1, #0xa
	bl _s32_div_f
	mov r1, #0x1e
	mul r1, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021FBDEC

	thumb_func_start ov96_021FBE20
ov96_021FBE20: ; 0x021FBE20
	push {r3, r4, r5, lr}
	lsl r5, r0, #4
	add r0, r1, #0
	add r1, r5, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r5, #0
	bl MIi_CpuClearFast
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021FBE20

	thumb_func_start ov96_021FBE3C
ov96_021FBE3C: ; 0x021FBE3C
	ldr r3, _021FBE40 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021FBE40: .word FreeToHeap
	thumb_func_end ov96_021FBE3C

	thumb_func_start ov96_021FBE44
ov96_021FBE44: ; 0x021FBE44
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021FBE44

	thumb_func_start ov96_021FBE4C
ov96_021FBE4C: ; 0x021FBE4C
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021FBE4C

	thumb_func_start ov96_021FBE54
ov96_021FBE54: ; 0x021FBE54
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021FBE82
	mov r1, #1
	str r1, [r4]
	str r1, [r4, #0xc]
	ldr r0, [r4, #4]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [r4, #8]
	bl ov96_021EB5B8
	mov r1, #0
	bl Set2dSpriteAnimActiveFlag
	pop {r4, pc}
_021FBE82:
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #0xc]
	ldr r0, [r4, #4]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov96_021EB52C
	pop {r4, pc}
	thumb_func_end ov96_021FBE54

	thumb_func_start ov96_021FBE9C
ov96_021FBE9C: ; 0x021FBE9C
	ldr r0, [r0]
	bx lr
	thumb_func_end ov96_021FBE9C

	thumb_func_start ov96_021FBEA0
ov96_021FBEA0: ; 0x021FBEA0
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov96_021FBEA0

	thumb_func_start ov96_021FBEA4
ov96_021FBEA4: ; 0x021FBEA4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl ov96_021EB5B8
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	mov r1, #1
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r5, #0
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	add r0, r5, #0
	mov r1, #1
	bl Set2dSpriteAnimSeqNo
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov96_021FBEA4

	thumb_func_start ov96_021FBEDC
ov96_021FBEDC: ; 0x021FBEDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	bl ov96_021EB5B8
	add r1, r4, #0
	bl Sprite_SetMatrix
	ldr r0, [r5, #8]
	bl ov96_021EB5B8
	add r1, r4, #0
	bl Sprite_SetMatrix
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021FBEDC

	thumb_func_start ov96_021FBEFC
ov96_021FBEFC: ; 0x021FBEFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	beq _021FBF58
	ldr r0, [r5, #4]
	bl ov96_021EB5B8
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl ov96_021EB5B8
	str r0, [sp]
	add r0, r6, #0
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	add r2, sp, #4
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [sp, #8]
	lsl r0, r4, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	bl Sprite_SetMatrix
	ldr r0, [sp]
	add r1, r7, #0
	bl Sprite_SetMatrix
	mov r0, #0x82
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _021FBF58
	add r0, r5, #0
	mov r1, #0
	bl ov96_021FBE54
_021FBF58:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021FBEFC

	thumb_func_start ov96_021FBF5C
ov96_021FBF5C: ; 0x021FBF5C
	push {r4, lr}
	ldr r0, [r0, #4]
	add r4, r1, #0
	bl ov96_021EB5B8
	bl Sprite_GetMatrixPtr
	mov r1, #0x40
	strh r1, [r4, #4]
	mov r1, #0x10
	strh r1, [r4, #6]
	ldr r2, [r0]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	sub r1, #0x20
	strh r1, [r4]
	ldr r1, [r0, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	sub r0, #0x10
	strh r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end ov96_021FBF5C

	thumb_func_start ov96_021FBF90
ov96_021FBF90: ; 0x021FBF90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	lsl r4, r5, #3
	add r1, r6, r4
	ldr r1, [r1, #4]
	ldr r0, [r6, r4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r2, [sp]
	bl ov96_021FBE44
	add r7, r0, #0
	bl ov96_021FBE9C
	cmp r0, #0
	beq _021FBFBE
	bl GF_AssertFail
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FBFBE:
	add r0, r6, #4
	ldr r1, [r0, r4]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r3, r2
	ldr r3, _021FC024 ; =ov96_0221C5B8
	str r1, [r0, r4]
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	cmp r5, #0
	beq _021FBFF6
	cmp r5, #1
	beq _021FBFFE
	cmp r5, #2
	beq _021FC006
	b _021FC00C
_021FBFF6:
	mov r0, #3
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	b _021FC00C
_021FBFFE:
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #4]
	b _021FC00C
_021FC006:
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #4]
_021FC00C:
	add r0, r7, #0
	add r1, sp, #4
	bl ov96_021FBEDC
	add r0, r7, #0
	mov r1, #1
	bl ov96_021FBE54
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FC024: .word ov96_0221C5B8
	thumb_func_end ov96_021FBF90

	thumb_func_start ov96_021FC028
ov96_021FC028: ; 0x021FC028
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021FC058 ; =0x00000C24
	add r6, r0, #0
	bl AllocFromHeap
	ldr r2, _021FC058 ; =0x00000C24
	mov r1, #0
	str r0, [sp]
	bl MI_CpuFill8
	ldr r5, [sp]
	mov r4, #0
	mov r7, #4
_021FC042:
	add r0, r7, #0
	add r1, r6, #0
	bl ov96_021FBE20
	str r0, [r5]
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _021FC042
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FC058: .word 0x00000C24
	thumb_func_end ov96_021FC028

	thumb_func_start ov96_021FC05C
ov96_021FC05C: ; 0x021FC05C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021FC064:
	ldr r0, [r5]
	bl ov96_021FBE3C
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _021FC064
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC05C

	thumb_func_start ov96_021FC07C
ov96_021FC07C: ; 0x021FC07C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	add r5, r1, #0
	str r0, [sp, #4]
_021FC088:
	mov r4, #0
_021FC08A:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0]
	bl ov96_021FBE44
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #2
	bl ov96_021EB4F4
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x67
	mov r2, #6
	bl ov96_021EB4F4
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov96_021FBE4C
	add r4, r4, #1
	cmp r4, #4
	blt _021FC08A
	ldr r0, [sp]
	add r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #3
	blt _021FC088
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_021FC07C

	thumb_func_start ov96_021FC0D0
ov96_021FC0D0: ; 0x021FC0D0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #3
	blo _021FC0DE
	bl GF_AssertFail
_021FC0DE:
	lsl r0, r5, #3
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021FC0D0

	thumb_func_start ov96_021FC0E4
ov96_021FC0E4: ; 0x021FC0E4
	add r0, #0x18
	bx lr
	thumb_func_end ov96_021FC0E4

	thumb_func_start ov96_021FC0E8
ov96_021FC0E8: ; 0x021FC0E8
	ldr r1, _021FC0F0 ; =0x00000618
	add r0, r0, r1
	bx lr
	nop
_021FC0F0: .word 0x00000618
	thumb_func_end ov96_021FC0E8

	thumb_func_start ov96_021FC0F4
ov96_021FC0F4: ; 0x021FC0F4
	mov r0, #6
	lsl r0, r0, #8
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021FC0F4

	thumb_func_start ov96_021FC0FC
ov96_021FC0FC: ; 0x021FC0FC
	push {r4, r5, r6, lr}
	add r3, r2, #0
	asr r2, r1, #2
	lsr r2, r2, #0x1d
	add r2, r1, r2
	asr r4, r2, #3
	beq _021FC13A
	lsl r2, r4, #3
	sub r2, r1, r2
	sub r1, r4, #1
	mov r4, #2
	lsl r4, r4, #8
	cmp r1, r4
	bge _021FC13A
	lsl r4, r3, #9
	add r4, r0, r4
	add r5, r4, r1
	ldr r4, _021FC13C ; =0x00000618
	ldrb r4, [r5, r4]
	cmp r4, #0
	beq _021FC13A
	ldr r4, _021FC140 ; =0x00000C18
	lsl r5, r3, #2
	add r6, r0, r4
	ldr r4, [r6, r5]
	cmp r4, r1
	bge _021FC13A
	str r1, [r6, r5]
	add r1, r3, #0
	bl ov96_021FBF90
_021FC13A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FC13C: .word 0x00000618
_021FC140: .word 0x00000C18
	thumb_func_end ov96_021FC0FC

	thumb_func_start ov96_021FC144
ov96_021FC144: ; 0x021FC144
	push {r4, lr}
	add r4, r0, #0
	bl LCRandom
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #0x18
	add r4, #0x18
	lsr r2, r0, #0x18
	add r0, r4, #0
	mov r1, #0xe4
	bl ReadWholeNarcMemberByIdPair
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC144

	thumb_func_start ov96_021FC164
ov96_021FC164: ; 0x021FC164
	asr r3, r2, #2
	lsr r3, r3, #0x1d
	add r3, r2, r3
	lsl r1, r1, #9
	asr r2, r3, #3
	add r0, r0, r1
	add r1, r0, r2
	ldr r0, _021FC184 ; =0x00000618
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021FC17E
	mov r2, #0
	mvn r2, r2
_021FC17E:
	add r0, r2, #0
	bx lr
	nop
_021FC184: .word 0x00000618
	thumb_func_end ov96_021FC164

	thumb_func_start ov96_021FC188
ov96_021FC188: ; 0x021FC188
	push {r3, r4, r5, lr}
	mov r1, #0x91
	lsl r1, r1, #2
	add r5, r0, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r2, #0x91
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl MIi_CpuClearFast
	str r5, [r4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021FC188

	thumb_func_start ov96_021FC1A8
ov96_021FC1A8: ; 0x021FC1A8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x62
	lsl r7, r7, #2
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	add r6, r7, #4
_021FC1B6:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Sprite_Delete
	ldr r0, [r5, r7]
	bl Sprite_Delete
	ldr r0, [r5, r6]
	bl Sprite_Delete
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xc
	blt _021FC1B6
	mov r1, #0x52
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0200AEB0
	mov r1, #0x53
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0200B0A8
	mov r6, #0x13
	ldr r4, [sp]
	mov r5, #0
	lsl r6, r6, #4
_021FC1F4:
	ldr r0, [r4, r6]
	bl Destroy2DGfxResObjMan
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _021FC1F4
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl SpriteList_Delete
	ldr r0, [sp]
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC1A8

	thumb_func_start ov96_021FC214
ov96_021FC214: ; 0x021FC214
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov96_021FC320
	add r0, r5, #0
	bl ov96_021FC404
	add r0, r5, #0
	add r1, r4, #0
	bl ov96_021FC450
	add r0, r5, #0
	mov r1, #0
	add r0, #8
	add r2, r1, #0
	bl G2dRenderer_SetSubSurfaceCoords
	add r5, #8
	mov r2, #3
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #0x12
	bl G2dRenderer_SetMainSurfaceCoords
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_021FC214

	thumb_func_start ov96_021FC248
ov96_021FC248: ; 0x021FC248
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	lsl r0, r2, #0xc
	str r0, [sp]
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	lsl r4, r1, #4
	mov r0, #0x61
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	mov r0, #0x62
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	mov r0, #0x63
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov96_021FC248

	thumb_func_start ov96_021FC28C
ov96_021FC28C: ; 0x021FC28C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	beq _021FC29A
	cmp r4, #8
	bls _021FC29E
_021FC29A:
	bl GF_AssertFail
_021FC29E:
	lsl r0, r6, #4
	add r1, r5, r0
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r4, #0xf
	add r1, r4, #0
	bl Set2dSpriteAnimSeqNo
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC28C

	thumb_func_start ov96_021FC2B4
ov96_021FC2B4: ; 0x021FC2B4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x62
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	lsl r7, r7, #2
_021FC2C0:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl Set2dSpriteVisibleFlag
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl Set2dSpriteVisibleFlag
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #0xc
	blt _021FC2C0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC2B4

	thumb_func_start ov96_021FC2E0
ov96_021FC2E0: ; 0x021FC2E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r4, r1, #4
	mov r0, #0x61
	add r1, r5, r4
	lsl r0, r0, #2
	add r6, r2, #0
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl Set2dSpriteVisibleFlag
	mov r0, #0x62
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl Set2dSpriteVisibleFlag
	mov r0, #0x63
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl Set2dSpriteVisibleFlag
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021FC2E0

	thumb_func_start ov96_021FC314
ov96_021FC314: ; 0x021FC314
	ldr r3, _021FC31C ; =sub_0202457C
	ldr r0, [r0, #4]
	bx r3
	nop
_021FC31C: .word sub_0202457C
	thumb_func_end ov96_021FC314

	thumb_func_start ov96_021FC320
ov96_021FC320: ; 0x021FC320
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r1, r5, #0
	ldr r2, [r5]
	mov r0, #0x24
	add r1, #8
	bl G2dRenderer_Init
	mov r7, #0x13
	str r0, [r5, #4]
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #4
_021FC33C:
	ldr r2, [r5]
	mov r0, #1
	add r1, r6, #0
	bl Create2DGfxResObjMan
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _021FC33C
	mov r1, #0x80
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0x9c
	mov r2, #0x18
	mov r3, #0
	bl AddCharResObjFromNarc
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x80
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5]
	add r1, #0xb4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	mov r1, #0x9c
	mov r2, #0x15
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x80
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, #0xb8
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0x9c
	mov r2, #0x17
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r1, #0x80
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, #0xbc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0x9c
	mov r2, #0x16
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_0200ADA4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200AF94
	bl sub_02074490
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r2, #5
	str r0, [sp, #4]
	mov r0, #0x14
	mov r3, #0x60
	bl GfGfxLoader_GXLoadPal
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC320

	thumb_func_start ov96_021FC404
ov96_021FC404: ; 0x021FC404
	push {lr}
	sub sp, #0x2c
	mov r1, #0x80
	add r2, r1, #0
	str r1, [sp]
	sub r2, #0x81
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	add r3, r1, #0
	str r2, [sp, #0x10]
	add r3, #0xb0
	ldr r3, [r0, r3]
	str r3, [sp, #0x14]
	add r3, r1, #0
	add r3, #0xb4
	ldr r3, [r0, r3]
	str r3, [sp, #0x18]
	add r3, r1, #0
	add r3, #0xb8
	ldr r3, [r0, r3]
	str r3, [sp, #0x1c]
	add r3, r1, #0
	add r3, #0xbc
	ldr r3, [r0, r3]
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r2, r1, #0
	add r2, #0xe0
	add r0, r0, r2
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	add sp, #0x2c
	pop {pc}
	thumb_func_end ov96_021FC404

	thumb_func_start ov96_021FC450
ov96_021FC450: ; 0x021FC450
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp]
	add r7, r1, #0
	ldr r1, [sp]
	mov r0, #0x14
	ldr r1, [r1]
	bl NARC_New
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bl AllocFromHeapAtEnd
	ldr r1, [sp]
	mov r3, #0x16
	str r0, [sp, #0x10]
	lsl r3, r3, #4
	add r2, r1, #0
	add r2, r2, r3
	add r0, sp, #0x24
	mov r3, #2
	bl ov96_021FC5E0
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r5, [sp]
	mov r4, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_021FC498:
	add r0, sp, #0x24
	bl CreateSprite
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Set2dSpriteAnimActiveFlag
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl Set2dSpriteAnimSeqNo
	add r0, sp, #0x24
	bl CreateSprite
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0xc
	bl Set2dSpriteAnimSeqNo
	add r0, sp, #0x24
	bl CreateSprite
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	cmp r4, #8
	bge _021FC4F8
	add r0, r1, #0
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x10
	bl Set2dSpriteAnimSeqNo
_021FC4F8:
	ldrh r0, [r7, #2]
	ldrh r6, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r6, #0
	bne _021FC52A
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Set2dSpriteVisibleFlag
_021FC52A:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl Sprite_SetDrawPriority
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl Sprite_SetDrawPriority
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawPriority
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl ov96_021FC248
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Set2dSpriteVisibleFlag
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	bl GetMonIconNaixEx
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl NARC_ReadWholeMember
	ldr r0, [sp, #0x10]
	add r1, sp, #0x20
	bl NNS_G2dGetUnpackedBGCharacterData
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	mov r2, #0
	bl GetMonIconPaletteEx
	add r0, r0, #3
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x14]
	bl DC_FlushRange
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x14]
	ldr r2, [sp, #0x1c]
	bl GXS_LoadOBJ
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Sprite_SetPalIndex
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, #0x20
	add r5, #0x10
	add r7, r7, #4
	str r0, [sp, #4]
	cmp r4, #0xc
	bge _021FC5CE
	b _021FC498
_021FC5CE:
	ldr r0, [sp, #0x10]
	bl FreeToHeap
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC450

	thumb_func_start ov96_021FC5E0
ov96_021FC5E0: ; 0x021FC5E0
	push {r3, r4}
	ldr r2, [r1, #4]
	mov r4, #0
	str r2, [r0]
	mov r2, #0x16
	lsl r2, r2, #4
	add r2, r1, r2
	str r2, [r0, #4]
	mov r2, #0xf
	lsl r2, r2, #0x10
	str r2, [r0, #8]
	mov r2, #0xe
	lsl r2, r2, #0xc
	str r2, [r0, #0xc]
	mov r2, #1
	str r4, [r0, #0x10]
	lsl r2, r2, #0xc
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	strh r4, [r0, #0x20]
	mov r2, #2
	str r2, [r0, #0x24]
	str r3, [r0, #0x28]
	ldr r1, [r1]
	str r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	thumb_func_end ov96_021FC5E0

	thumb_func_start ov96_021FC618
ov96_021FC618: ; 0x021FC618
	push {r4, lr}
	mov r1, #0x84
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x84
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC618

	thumb_func_start ov96_021FC630
ov96_021FC630: ; 0x021FC630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0
	add r7, r1, #0
	str r0, [sp, #0xc]
_021FC63E:
	ldr r1, [sp, #0xc]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #4]
	mov r4, #0
	add r6, r0, r2
_021FC64C:
	lsl r0, r4, #3
	add r5, r6, r0
	mov r0, #0xa
	str r0, [sp]
	ldr r1, [sp, #8]
	add r0, r7, #0
	mov r2, #1
	mov r3, #0x6a
	bl ov96_021EB3E4
	str r0, [r5, #4]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [r5, #4]
	mov r1, #5
	bl ov96_021EB630
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021FC64C
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #3
	blo _021FC63E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC630

	thumb_func_start ov96_021FC690
ov96_021FC690: ; 0x021FC690
	ldr r3, _021FC694 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021FC694: .word FreeToHeap
	thumb_func_end ov96_021FC690

	thumb_func_start ov96_021FC698
ov96_021FC698: ; 0x021FC698
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blo _021FC6A8
	bl GF_AssertFail
_021FC6A8:
	mov r0, #0x2c
	mul r0, r4
	add r4, r5, r0
	ldr r0, [r4, #0x28]
	lsl r0, r0, #3
	add r5, r4, r0
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021FC6E6
	mov r1, #1
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov96_021EB564
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl ov96_021EB588
	mov r0, #1
	str r0, [r5]
	ldr r0, [r4, #0x28]
	mov r1, #5
	add r0, r0, #1
	bl _u32_div_f
	str r1, [r4, #0x28]
	pop {r4, r5, r6, pc}
_021FC6E6:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021FC698

	thumb_func_start ov96_021FC6EC
ov96_021FC6EC: ; 0x021FC6EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blo _021FC6FE
	bl GF_AssertFail
_021FC6FE:
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	str r0, [sp]
	mov r4, #0
	lsl r7, r6, #0xc
_021FC70A:
	ldr r0, [sp]
	lsl r1, r4, #3
	add r5, r0, r1
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021FC748
	ldr r0, [r5, #4]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #4
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [sp, #8]
	add r0, r0, r7
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl ov96_021EB588
	ldr r0, [r5, #4]
	bl ov96_021EB57C
	cmp r0, #0
	bne _021FC748
	add r0, r5, #0
	bl ov96_021FC758
_021FC748:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021FC70A
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FC6EC

	thumb_func_start ov96_021FC758
ov96_021FC758: ; 0x021FC758
	ldr r3, _021FC764 ; =ov96_021EB52C
	mov r2, #0
	str r2, [r0]
	ldr r0, [r0, #4]
	mov r1, #1
	bx r3
	.balign 4, 0
_021FC764: .word ov96_021EB52C
	thumb_func_end ov96_021FC758

	thumb_func_start ov96_021FC768
ov96_021FC768: ; 0x021FC768
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x5c
	add r4, r0, #0
	bl ov96_021E5DC4
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl ov96_021E5DD4
	cmp r0, #6
	bls _021FC782
	b _021FCD68
_021FC782:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FC78E: ; jump table
	.short _021FC79C - _021FC78E - 2 ; case 0
	.short _021FC870 - _021FC78E - 2 ; case 1
	.short _021FC8C6 - _021FC78E - 2 ; case 2
	.short _021FC9AC - _021FC78E - 2 ; case 3
	.short _021FCAAC - _021FC78E - 2 ; case 4
	.short _021FCD14 - _021FC78E - 2 ; case 5
	.short _021FCD52 - _021FC78E - 2 ; case 6
_021FC79C:
	mov r2, #0x1a
	mov r0, #0x5c
	mov r1, #0x90
	lsl r2, r2, #0xe
	bl CreateHeap
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021FCA90 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021FCA94 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_021FCEE0
	ldr r1, _021FCA98 ; =0x00000648
	add r0, r4, #0
	bl ov96_021E5D94
	ldr r2, _021FCA98 ; =0x00000648
	mov r1, #0
	add r5, r0, #0
	bl MI_CpuFill8
	mov r0, #0x90
	bl BgConfig_Alloc
	mov r2, #0xf9
	lsl r2, r2, #2
	add r1, r5, r2
	add r2, #0x78
	str r0, [r5]
	add r0, r4, #0
	add r2, r5, r2
	mov r3, #0x78
	bl ov96_021E5F70
	add r0, r4, #0
	mov r1, #8
	bl ov96_021E6670
	mov r0, #0x97
	str r0, [sp, #0xa4]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0xa8]
	lsr r0, r0, #4
	mov r2, #0x90
	str r0, [sp, #0xac]
	str r2, [sp, #0xb0]
	mov r0, #0x10
	str r0, [sp]
	ldr r3, _021FCA9C ; =0x00300010
	add r0, sp, #0xa4
	mov r1, #0x16
	bl ov96_021E92B0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x90
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r1, #0x90
	str r1, [r5, #0x14]
	mov r0, #4
	bl FontID_Alloc
	ldr r0, [r5]
	bl ov96_021FCF00
	add r0, r5, #0
	bl ov96_021FFD4C
	ldr r0, _021FCAA0 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r4, #0
	bl ov96_021E5DEC
	b _021FCD68
_021FC870:
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x34]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	add r2, r4, #0
	bl ov96_021FFF3C
	mov r2, #0x3e
	ldr r1, [sp, #0x34]
	lsl r2, r2, #4
	str r0, [r1, r2]
	add r0, r4, #0
	bl ov96_021E5D34
	add r5, r0, #0
	add r0, r4, #0
	bl ov96_021E5EE8
	add r2, r0, #0
	ldr r0, [sp, #0x34]
	mov r1, #4
	ldr r0, [r0, #0x14]
	sub r1, r1, r5
	bl ov96_02200E3C
	mov r2, #0xf7
	ldr r1, [sp, #0x34]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, #0x14]
	ldr r1, _021FCAA4 ; =0x000002BF
	mov r2, #1
	bl ov96_021E9A78
	mov r2, #0xf1
	ldr r1, [sp, #0x34]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r4, #0
	bl ov96_021E5DEC
	b _021FCD68
_021FC8C6:
	ldr r5, _021FCAA8 ; =ov96_0221C5E4
	add r3, sp, #0x98
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x14]
	bl ov96_021EB180
	ldr r1, [sp, #0x34]
	str r0, [r1, #0x18]
	mov r0, #2
	lsl r0, r0, #0x14
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0
	ldr r0, [r0, #0x18]
	add r2, r1, #0
	add r3, r1, #0
	bl ov96_021EB5C8
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x18]
	bl ov96_021EB5E8
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r5, #0xf1
	ldr r3, [sp, #0x34]
	lsl r5, r5, #2
	ldr r0, [r0, #0x14]
	ldr r3, [r3, r5]
	mov r1, #0xc
	mov r2, #4
	bl ov96_021EA854
	ldr r1, [sp, #0x34]
	add r2, r5, #4
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, #0x18]
	mov r1, #0
	mov r2, #0x65
	bl ov96_021EB29C
	ldr r0, [sp, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x18]
	mov r2, #0x66
	bl ov96_021EB29C
	ldr r0, [sp, #0x34]
	mov r1, #2
	ldr r0, [r0, #0x18]
	mov r2, #0x67
	bl ov96_021EB29C
	ldr r0, [sp, #0x34]
	mov r1, #3
	ldr r0, [r0, #0x18]
	mov r2, #0x68
	bl ov96_021EB29C
	add r1, r5, #0
	ldr r0, [sp, #0x34]
	add r1, #0x1c
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x34]
	ldr r1, [r1, #0x18]
	bl ov96_022000E4
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x18]
	bl ov96_021FD0E4
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x18]
	bl ov96_021EB3A4
	ldr r2, [sp, #0x34]
	add r3, r5, #0
	ldr r2, [r2, r3]
	ldr r3, [sp, #0x34]
	add r0, r4, #0
	ldr r3, [r3, #0x18]
	mov r1, #0
	bl ov96_021E6290
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawPriority
	ldr r0, [sp, #0x34]
	add r1, r0, #0
	ldr r1, [r1, #0x18]
	bl ov96_021FD128
	add r3, r5, #0
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x34]
	add r3, #0x1c
	ldr r0, [r0, r3]
	ldr r2, [sp, #0x34]
	sub r3, #0x1c
	ldr r1, [r1, #0x18]
	ldr r2, [r2, r3]
	bl ov96_02200180
	add r0, r4, #0
	bl ov96_021E5DEC
	b _021FCD68
_021FC9AC:
	add r0, sp, #0x154
	mov r7, #0
	add r5, sp, #0x198
	str r0, [sp, #0x1c]
	add r6, sp, #0x68
_021FC9B6:
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x18]
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r3, r5, #0
	bl ov96_021E6168
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	ldr r1, [sp, #0x1c]
	add r7, r7, #1
	str r0, [r1, #0x14]
	ldrh r0, [r5]
	strh r0, [r6]
	ldrh r0, [r5, #2]
	add r5, #0x10
	strh r0, [r6, #2]
	add r0, r1, #0
	add r0, r0, #4
	add r6, r6, #4
	str r0, [sp, #0x1c]
	cmp r7, #0xc
	blt _021FC9B6
	mov r1, #0x3e
	ldr r0, [sp, #0x34]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, sp, #0x68
	bl ov96_022002F8
	add r0, r4, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r1, #0x3e
	ldr r0, [sp, #0x34]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	lsl r1, r3, #1
	add r1, r3, r1
	add r2, sp, #0x198
	lsl r1, r1, #4
	add r1, r2, r1
	bl ov96_022003E8
	mov r1, #0x3e
	ldr r0, [sp, #0x34]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	mov r2, #1
	bl ov96_02200454
	mov r1, #0x3e
	ldr r0, [sp, #0x34]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #1
	mov r2, #2
	bl ov96_02200454
	mov r1, #0
	mov r0, #2
	str r0, [sp, #0x158]
	mov r0, #1
	str r1, [sp, #0x154]
	str r1, [sp, #0x15c]
	str r0, [sp, #0x160]
	str r0, [sp, #0x164]
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0xf2
	ldr r0, [sp, #0x34]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0xc
	add r2, sp, #0x198
	add r3, sp, #0x154
	bl ov96_021EA8A8
	add r0, r4, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r2, #0x3e
	ldr r0, [sp, #0x34]
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	bl ov96_02200B04
	add r0, r4, #0
	bl ov96_021E5DEC
	b _021FCD68
	.balign 4, 0
_021FCA90: .word 0xFFFFE0FF
_021FCA94: .word 0x04001000
_021FCA98: .word 0x00000648
_021FCA9C: .word 0x00300010
_021FCAA0: .word gSystem + 0x60
_021FCAA4: .word 0x000002BF
_021FCAA8: .word ov96_0221C5E4
_021FCAAC:
	mov r1, #0xf2
	ldr r0, [sp, #0x34]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl ov96_021EAA00
	cmp r0, #0
	bne _021FCABE
	b _021FCD68
_021FCABE:
	add r0, r4, #0
	bl ov96_021E5F24
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	bl ov96_021E6030
	add r0, r4, #0
	mov r1, #1
	bl ov96_021E5DFC
	add r0, sp, #0x50
	mov r1, #0xaa
	mov r2, #0xc
	bl ReadWholeNarcMemberByIdPair
	ldr r0, [sp, #0x34]
	mov r5, #0
	str r0, [sp, #0x40]
	add r0, #0x30
	str r0, [sp, #0x40]
_021FCAEA:
	mov r0, #0xf2
	ldr r1, [sp, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x14]
	cmp r1, #0
	bne _021FCB12
	add r0, r6, #0
	mov r1, #1
	bl ov96_021EAB38
_021FCB12:
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r1, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov96_021E60C0
	bl ov96_021E6138
	lsl r1, r0, #3
	add r0, sp, #0x50
	add r2, r0, r1
	add r1, r2, #0
	sub r1, #8
	sub r2, r2, #4
	ldr r1, [r1]
	ldr r2, [r2]
	add r0, r6, #0
	bl ov96_021EAF70
	mov r0, #0xf2
	ldr r1, [sp, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	bl ov96_021EAA04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	bl _s32_div_f
	mov r1, #0xd4
	str r0, [sp, #0x3c]
	mul r1, r0
	ldr r0, [sp, #0x40]
	add r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp, #0x2c]
	str r6, [r0, r1]
	ldr r0, [sp, #0x3c]
	add r1, r0, #1
	add r7, r1, #0
	ldr r1, [sp, #0x2c]
	mov r0, #0x1b
	mul r7, r0
	add r1, #0x88
	mov r0, #4
	strb r0, [r1]
	add r7, #0x28
	add r0, r6, #0
	mov r1, #4
	bl ov96_021EAC0C
	add r0, r6, #0
	mov r1, #0x50
	add r2, r7, #0
	bl ov96_021EAF94
	bl ov96_021E6104
	add r1, r0, #0
	add r0, r6, #0
	bl ov96_021EAF6C
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r1, [r0, #0x7c]
	add r0, #0x80
	lsl r1, r7, #0xc
	str r1, [r0]
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bne _021FCBDE
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021FCBDE
	add r0, sp, #0x44
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x50
	add r2, r7, #0
	add r3, sp, #0x48
	bl ov96_021EB0A4
	ldr r1, [sp, #0x48]
	add r0, sp, #0x44
	strh r1, [r0, #8]
	ldr r1, [sp, #0x44]
	strh r1, [r0, #0xa]
_021FCBDE:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021FCAEA
	ldr r6, [sp, #0x34]
	mov r5, #0
	add r6, #0x30
	mov r7, #1
_021FCBEC:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r5, r0
	bne _021FCBFA
	add r2, r7, #0
	b _021FCBFC
_021FCBFA:
	mov r2, #0
_021FCBFC:
	add r1, r6, #0
	add r1, #0x80
	ldr r1, [r1]
	add r0, r6, #0
	asr r3, r1, #0xb
	lsr r3, r3, #0x14
	add r3, r1, r3
	asr r1, r3, #0xc
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021FFB7C
	add r5, r5, #1
	add r6, #0xd4
	cmp r5, #4
	blt _021FCBEC
	add r0, sp, #0xb4
	mov r1, #0xaa
	mov r2, #2
	bl ReadWholeNarcMemberByIdPair
	mov r2, #0x19
	ldr r1, _021FCD70 ; =0x00000A8C
	ldr r0, [sp, #0x34]
	lsl r2, r2, #6
	strh r1, [r0, r2]
	mov r1, #0x3e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x34]
	ldrh r1, [r1, r2]
	bl ov96_02200A64
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x34]
	add r6, r0, #0
	str r0, [sp, #0x24]
	add r6, #0x30
	str r0, [sp, #0x20]
_021FCC4C:
	mov r0, #0x3b
	mov r2, #0
	ldr r1, [sp, #0x24]
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r0, [sp, #0x28]
	add r5, r2, #0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021FCC5E:
	lsl r3, r5, #0x18
	add r0, r4, #0
	add r1, sp, #0xb4
	add r2, r7, #0
	lsr r3, r3, #0x18
	str r6, [sp]
	bl ov96_021FEFE8
	add r5, r5, #1
	cmp r5, #3
	blt _021FCC5E
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FCC92
	mov r0, #0xf7
	ldr r1, [sp, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x28]
	add r2, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_02200E78
_021FCC92:
	mov r0, #1
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	strb r2, [r1, r0]
	ldr r0, [sp, #0x24]
	add r6, #0xd4
	add r0, r0, #4
	str r0, [sp, #0x24]
	add r0, r1, #0
	add r0, #0xd4
	str r0, [sp, #0x20]
	add r0, r2, #0
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _021FCC4C
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FCCD2
	add r0, r4, #0
	bl ov96_021E5F54
	add r0, #0x28
	bl ov96_021E8A20
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	bl ov96_021FDA30
_021FCCD2:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x4c
	mov r3, #0xf1
	str r0, [sp, #8]
	ldr r2, [sp, #0x34]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	ldr r3, [sp, #0x34]
	add r0, r4, #0
	ldr r3, [r3, #0x18]
	mov r1, #0
	bl ov96_021E634C
	ldr r0, [sp, #0x34]
	bl ov96_021FD060
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	bl sub_0203A994
	add r0, r4, #0
	bl ov96_021E5DEC
	b _021FCD68
_021FCD14:
	add r0, r4, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FCD4A
	mov r5, #0xf9
	lsl r5, r5, #2
	bl LCRandom
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	ldr r0, [sp, #0x34]
	mov r1, #0xe5
	add r0, r0, r5
	bl ReadWholeNarcMemberByIdPair
	add r1, r5, #0
	ldr r0, [sp, #0x34]
	sub r1, #8
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x34]
	add r1, r1, r5
	bl ov96_02200E80
_021FCD4A:
	add r0, r4, #0
	bl ov96_021E5DEC
	b _021FCD68
_021FCD52:
	mov r0, #0x5c
	bl GF_heap_c_dummy_return_true
	cmp r0, #0
	bne _021FCD60
	bl GF_AssertFail
_021FCD60:
	add sp, #0x1fc
	add sp, #0x5c
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FCD68:
	mov r0, #0
	add sp, #0x1fc
	add sp, #0x5c
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FCD70: .word 0x00000A8C
	thumb_func_end ov96_021FC768

	thumb_func_start ov96_021FCD74
ov96_021FCD74: ; 0x021FCD74
	push {r3, lr}
	bl ov96_021E5DC4
	ldr r0, [r0, #0x18]
	bl ov96_021EB5BC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov96_021FCD74

	thumb_func_start ov96_021FCD84
ov96_021FCD84: ; 0x021FCD84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl ov96_021E6040
	add r6, r0, #0
	bl ov96_021E9510
	mov r4, #0
	add r7, r4, #0
_021FCD98:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov96_021E5FBC
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	lsr r0, r3, #0xa
	str r0, [sp]
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x16
	sub r1, r1, r2
	mov r0, #0x16
	ror r1, r0
	add r0, r2, r1
	mov r1, #0xa
	mul r1, r0
	asr r0, r1, #9
	lsr r0, r0, #0x16
	add r0, r1, r0
	asr r0, r0, #0xa
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, _021FCE0C ; =0x00000129
	add r1, r6, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r2, r4, #0
	bl ov96_021E966C
	add r4, r4, #1
	cmp r4, #4
	blt _021FCD98
	add r0, r6, #0
	mov r1, #1
	bl ov96_021E93B4
	add r0, r6, #0
	mov r1, #6
	bl ov96_0221A56C
	add r0, r6, #0
	bl ov96_021E952C
	add r0, r6, #0
	mov r1, #6
	bl ov96_021E9570
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021FCE0C: .word 0x00000129
	thumb_func_end ov96_021FCD84

	thumb_func_start ov96_021FCE10
ov96_021FCE10: ; 0x021FCE10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov96_021E5DC4
	add r4, r0, #0
	bl sub_0203A914
	add r0, r5, #0
	bl ov96_021E5F8C
	ldr r0, [r4]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #3
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [r4]
	mov r1, #6
	bl FreeBgTilemapBuffer
	add r0, r4, #4
	bl RemoveWindow
	ldr r0, [r4]
	bl FreeToHeap
	ldr r0, [r4, #0x18]
	bl ov96_021EB21C
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EA894
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021E9C0C
	bl OamManager_Free
	bl sub_0202168C
	bl sub_02022608
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_02200EEC
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov96_021FFFE8
	mov r0, #4
	bl FontID_Release
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	add r0, r5, #0
	bl ov96_021E5DAC
	ldr r0, _021FCED8 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	ldr r0, _021FCEDC ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x90
	bl DestroyHeap
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FCED8: .word gSystem + 0x60
_021FCEDC: .word 0x04000050
	thumb_func_end ov96_021FCE10

	thumb_func_start ov96_021FCEE0
ov96_021FCEE0: ; 0x021FCEE0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021FCEFC ; =ov96_0221C6F0
	add r3, sp, #0
	mov r2, #5
_021FCEEA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FCEEA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021FCEFC: .word ov96_0221C6F0
	thumb_func_end ov96_021FCEE0

	thumb_func_start ov96_021FCF00
ov96_021FCF00: ; 0x021FCF00
	push {r4, r5, lr}
	sub sp, #0xd4
	ldr r5, _021FD040 ; =ov96_0221C61C
	add r3, sp, #0xc4
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021FD044 ; =ov96_0221C648
	add r3, sp, #0xa8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021FD048 ; =ov96_0221C664
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021FD04C ; =ov96_0221C680
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021FD050 ; =ov96_0221C69C
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021FD054 ; =ov96_0221C6B8
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021FD058 ; =ov96_0221C6D4
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021FD05C ; =ov96_0221C62C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0xd4
	pop {r4, r5, pc}
	nop
_021FD040: .word ov96_0221C61C
_021FD044: .word ov96_0221C648
_021FD048: .word ov96_0221C664
_021FD04C: .word ov96_0221C680
_021FD050: .word ov96_0221C69C
_021FD054: .word ov96_0221C6B8
_021FD058: .word ov96_0221C6D4
_021FD05C: .word ov96_0221C62C
	thumb_func_end ov96_021FCF00

	thumb_func_start ov96_021FD060
ov96_021FD060: ; 0x021FD060
	push {r4, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r4, r0, #0
	str r3, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #1
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xb2
	bl GfGfxLoader_LoadCharData
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xb2
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #3
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xb2
	mov r3, #1
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #4
	str r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, #0xb2
	mov r3, #2
	bl GfGfxLoader_LoadScrnData
	mov r1, #0
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4, #0x14]
	add r2, r1, #0
	str r0, [sp, #4]
	mov r0, #0xb2
	add r3, r1, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov96_02200068
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov96_021FD060

	thumb_func_start ov96_021FD0E4
ov96_021FD0E4: ; 0x021FD0E4
	push {r4, lr}
	sub sp, #8
	mov r1, #1
	str r1, [sp]
	mov r1, #0xb2
	mov r2, #0x11
	mov r3, #0x68
	add r4, r0, #0
	bl ov96_021EB2BC
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0xe
	mov r3, #0x68
	bl ov96_021EB2F4
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0x10
	mov r3, #0x68
	bl ov96_021EB334
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0xf
	mov r3, #0x68
	bl ov96_021EB36C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov96_021FD0E4

	thumb_func_start ov96_021FD128
ov96_021FD128: ; 0x021FD128
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
	mov r6, #6
_021FD134:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r6, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021FD134
	mov r4, #0
	mov r6, #7
_021FD14C:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r6, [sp]
	bl ov96_021EB408
	mov r0, #9
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #0xb
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #4
	blt _021FD14C
	mov r4, #0
	mov r6, #0xe
_021FD194:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0x68
	str r6, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #4
	blt _021FD194
	mov r0, #0xc
	mov r1, #1
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	mov r0, #0xf
	mov r1, #1
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x68
	bl ov96_021EB408
	mov r6, #0
	add r4, r7, #0
_021FD1CC:
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #6
	bl ov96_021EB4F4
	ldr r1, _021FD2DC ; =0x000004D8
	add r6, r6, #1
	str r0, [r4, r1]
	add r4, #0xc
	cmp r6, #0x1e
	blt _021FD1CC
	mov r6, #0
	add r4, r7, #0
_021FD1E6:
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #7
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #9
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xb
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xd
	bl ov96_021EB4F4
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #3
	bl ov96_021EB564
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #8
	bl ov96_021EB564
	add r6, r6, #1
	add r4, #0xd4
	cmp r6, #4
	blt _021FD1E6
	mov r6, #0
	add r4, r7, #0
_021FD24A:
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xe
	bl ov96_021EB4F4
	mov r1, #0xf3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021FD24A
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xc
	bl ov96_021EB4F4
	str r0, [r7, #0x1c]
	mov r1, #0xb
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r7, #0x1c]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #2
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	lsr r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x1c]
	add r1, sp, #4
	bl ov96_021EB588
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0xf
	bl ov96_021EB4F4
	str r0, [r7, #0x28]
	mov r1, #0xa
	bl ov96_021EB564
	ldr r0, [r7, #0x18]
	bl ov96_021EB5E8
	add r1, r0, #0
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r3, [r7, #0x14]
	mov r2, #0
	bl ov96_021EA424
	str r0, [r7, #0x20]
	ldr r0, [r7, #0x18]
	bl ov96_021EB5E8
	add r1, r0, #0
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r3, [r7, #0x14]
	mov r2, #0
	bl ov96_021EA424
	str r0, [r7, #0x24]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FD2DC: .word 0x000004D8
	thumb_func_end ov96_021FD128

	thumb_func_start ov96_021FD2E0
ov96_021FD2E0: ; 0x021FD2E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	bl ov96_021E5DC4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FD300
	cmp r0, #1
	beq _021FD3A0
	cmp r0, #2
	beq _021FD3C6
	b _021FD3D6
_021FD300:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	ldr r1, _021FD3DC ; =0x000004D4
	str r0, [sp, #0x14]
	add r5, r0, #0
	add r7, r0, r1
_021FD30E:
	ldr r1, [sp, #0x14]
	ldr r0, _021FD3E0 ; =0x0000045C
	ldr r0, [r1, r0]
	lsl r1, r0, #0x18
	asr r2, r0, #8
	asr r0, r0, #0x10
	lsl r2, r2, #0x18
	lsl r0, r0, #0x10
	lsr r1, r1, #0x18
	lsr r6, r2, #0x18
	lsr r4, r0, #0x10
	cmp r1, #0
	beq _021FD370
	ldr r0, _021FD3DC ; =0x000004D4
	mov r2, #1
	str r2, [r5, r0]
	add r0, #0xb
	strb r1, [r5, r0]
	ldr r0, _021FD3E4 ; =0x000004DC
	sub r1, r1, #1
	strh r4, [r5, r0]
	add r0, r0, #2
	strb r6, [r5, r0]
	ldr r0, _021FD3E8 ; =0x000004D8
	ldr r0, [r5, r0]
	bl ov96_021EB564
	ldr r0, _021FD3E8 ; =0x000004D8
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #0
	add r4, #0x50
	str r0, [sp, #0x28]
	lsl r0, r4, #0xc
	add r6, #0x20
	str r0, [sp, #0x20]
	lsl r0, r6, #0xc
	str r0, [sp, #0x24]
	ldr r0, _021FD3E8 ; =0x000004D8
	add r1, sp, #0x20
	ldr r0, [r5, r0]
	bl ov96_021EB588
	add r0, r7, #0
	bl ov96_021FFB44
_021FD370:
	ldr r0, [sp, #0x14]
	add r5, #0xc
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r7, #0xc
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0x1e
	blt _021FD30E
	ldr r0, [sp, #0x18]
	mov r1, #0
	bl ov96_021FEAEC
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0x12
	bl ov96_021E601C
	b _021FD3D6
_021FD3A0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r1, #3
	ldr r0, [r0, #0x14]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #2
	mov r3, #0
	bl BeginNormalPaletteFade
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	b _021FD3D6
_021FD3C6:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021FD3D6
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl ov96_021E5FC8
_021FD3D6:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD3DC: .word 0x000004D4
_021FD3E0: .word 0x0000045C
_021FD3E4: .word 0x000004DC
_021FD3E8: .word 0x000004D8
	thumb_func_end ov96_021FD2E0

	thumb_func_start ov96_021FD3EC
ov96_021FD3EC: ; 0x021FD3EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov96_021E5DC4
	add r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021FD40A
	cmp r0, #1
	beq _021FD41C
	cmp r0, #2
	beq _021FD434
	b _021FD464
_021FD40A:
	add r0, r5, #0
	bl ov96_021E637C
	cmp r0, #0
	beq _021FD464
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021FD464
_021FD41C:
	add r0, r5, #0
	bl ov96_021FD4D0
	add r0, r5, #0
	bl ov96_021FDB64
	cmp r0, #0
	beq _021FD464
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021FD464
_021FD434:
	add r0, r5, #0
	bl ov96_021FD4D0
	add r0, r5, #0
	bl ov96_021E667C
	cmp r0, #0
	beq _021FD464
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r5, #0
	mov r1, #2
	bl ov96_021E5FC8
_021FD464:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021FD3EC

	thumb_func_start ov96_021FD46C
ov96_021FD46C: ; 0x021FD46C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	bl ov96_021E5DC4
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _021FD48E
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021FD48A
	mov r0, #1
	strb r0, [r4]
_021FD48A:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021FD48E:
	add r0, r6, #0
	bl ov96_021E5F24
	cmp r0, #0
	beq _021FD49C
	mov r0, #1
	pop {r4, r5, r6, pc}
_021FD49C:
	mov r4, #0
	add r5, #0x30
_021FD4A0:
	ldr r2, [r5, #0x7c]
	lsl r1, r4, #0x18
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, r5, #0
	add r3, #0x9c
	ldrb r3, [r3]
	add r0, r6, #0
	lsr r1, r1, #0x18
	lsl r3, r3, #0xa
	add r2, r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl ov96_021E5FB0
	add r4, r4, #1
	add r5, #0xd4
	cmp r4, #4
	blt _021FD4A0
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021FD46C

	thumb_func_start ov96_021FD4D0
ov96_021FD4D0: ; 0x021FD4D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r0, [sp, #4]
	bl ov96_021E5F54
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	bl ov96_021E5DC4
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	bl ov96_021E5F24
	cmp r0, #0
	beq _021FD4F0
	b _021FDA18
_021FD4F0:
	mov r1, #0xf
	ldr r0, [sp, #0x30]
	lsl r1, r1, #6
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021FD512
	ldr r0, [sp, #0x2c]
	add r0, #0x28
	str r0, [sp, #0x2c]
	bl ov96_021E8A20
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	bl ov96_021FDA30
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
_021FD512:
	ldr r0, [sp, #0x2c]
	add r0, #0x50
	bl ov96_021E8A20
	add r4, r0, #0
	ldr r0, [sp, #0x2c]
	bl ov96_021E8A20
	add r3, r0, #0
	mov r2, #4
_021FD526:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _021FD526
	ldr r0, [r3]
	mov r1, #0x19
	str r0, [r4]
	ldr r0, [sp, #0x30]
	lsl r1, r1, #6
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _021FD544
	sub r2, r0, #1
	ldr r0, [sp, #0x30]
	strh r2, [r0, r1]
_021FD544:
	ldr r0, [sp, #0x2c]
	add r0, #0x28
	bl ov96_021E8A20
	ldr r4, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	add r5, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x50
	str r0, [sp, #0x1c]
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x30
	str r0, [sp, #0x18]
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0xe0
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0xec
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0xbc
	add r7, r4, #0
	str r0, [sp, #0xc]
	str r0, [sp, #8]
_021FD580:
	ldr r0, [sp, #0x1c]
	bl ov96_021E8A20
	add r6, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	beq _021FD5C6
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021FD5AA
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021FD5AA
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	b _021FD5D2
_021FD5AA:
	cmp r1, #0
	bne _021FD5D2
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021FD5D2
	mov r0, #0xe
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	b _021FD5D2
_021FD5C6:
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_021FD5D2:
	ldrb r1, [r6, #4]
	ldrb r2, [r6, #5]
	ldr r0, [sp, #0x30]
	bl ov96_021FDE6C
	ldr r1, [sp, #0x34]
	add r2, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	bl ov96_021FFE5C
	add r0, r5, #0
	add r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FD674
	add r0, r5, #0
	add r0, #0xce
	ldrb r1, [r0]
	cmp r1, #1
	bne _021FD622
	ldrb r0, [r6, #8]
	cmp r0, #1
	bne _021FD622
	add r0, r5, #0
	add r0, #0xbb
	ldrb r0, [r0]
	mov r1, #3
	add r0, r0, #1
	bl _s32_div_f
	add r0, r5, #0
	add r0, #0xbb
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0xce
	mov r0, #2
	strb r0, [r1]
	b _021FD640
_021FD622:
	cmp r1, #2
	bne _021FD640
	ldrb r0, [r6, #8]
	cmp r0, #2
	bne _021FD640
	add r1, r5, #0
	add r1, #0xce
	mov r0, #0
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xcd
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xd3
	strb r0, [r1]
_021FD640:
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r1, r5, #0
	add r1, #0xdc
	mov r0, #0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	add r1, r5, #0
	add r3, r5, #0
	add r1, #0xe8
	add r2, r5, #0
	add r3, #0xe0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xec
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021FD994
_021FD674:
	add r0, r5, #0
	add r0, #0xbb
	ldrb r1, [r0]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #2
	bne _021FD6BC
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r1, r5, #0
	add r1, #0xdc
	mov r0, #0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	add r1, r5, #0
	add r3, r5, #0
	add r1, #0xe8
	add r2, r5, #0
	add r3, #0xe0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xec
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021FD994
_021FD6BC:
	add r0, r5, #0
	add r0, #0xd9
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FD6FA
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r1, r5, #0
	add r1, #0xdc
	mov r0, #0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	add r1, r5, #0
	add r3, r5, #0
	add r1, #0xe8
	add r2, r5, #0
	add r3, #0xe0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xec
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021FD994
_021FD6FA:
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021FD786
	ldrb r1, [r6, #4]
	ldrb r2, [r6, #5]
	ldr r0, [sp, #0x30]
	bl ov96_021FDE6C
	cmp r0, #0
	beq _021FD73C
	add r1, r5, #0
	add r1, #0xcd
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xce
	strb r0, [r1]
	mov r1, #1
	add r2, r5, #0
	str r0, [sp]
	lsl r1, r1, #8
	add r2, #0xbb
	ldrb r1, [r5, r1]
	ldrb r2, [r2]
	ldr r0, [sp, #4]
	mov r3, #7
	bl ov96_021E8228
	b _021FD804
_021FD73C:
	ldr r1, [sp, #0x34]
	ldrb r2, [r6, #4]
	lsl r1, r1, #0x18
	ldrb r3, [r6, #5]
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	bl ov96_021FDE08
	cmp r0, #0
	beq _021FD804
	mov r0, #0x3b
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r7, r0]
	ldrb r0, [r6, #4]
	add r3, r5, #0
	add r2, r5, #0
	lsl r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xe0
	str r1, [r0]
	ldrb r0, [r6, #5]
	add r3, #0xe0
	add r2, #0xec
	lsl r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xe4
	str r1, [r0]
	add r1, r5, #0
	add r1, #0xe8
	mov r0, #0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021FD804
_021FD786:
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021FD7D4
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0xff
	bge _021FD7AA
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xdc
	str r1, [r0]
	b _021FD7B2
_021FD7AA:
	ldr r1, [sp, #0x30]
	ldr r0, _021FDA1C ; =0x000003C2
	mov r2, #1
	strb r2, [r1, r0]
_021FD7B2:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	cmp r0, #0
	bne _021FD7BE
	b _021FD994
_021FD7BE:
	ldrb r0, [r6, #4]
	lsl r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xec
	str r1, [r0]
	ldrb r0, [r6, #5]
	lsl r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xf0
	str r1, [r0]
	b _021FD804
_021FD7D4:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021FD800
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0x1e
	bgt _021FD7F0
	add r1, r5, #0
	add r1, #0xda
	mov r0, #1
	strb r0, [r1]
_021FD7F0:
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r2, r1, #0
	ldr r1, [sp, #0x30]
	add r0, #0x12
	strb r2, [r1, r0]
_021FD800:
	mov r0, #1
	str r0, [sp, #0x28]
_021FD804:
	add r0, r5, #0
	add r0, #0xda
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FD810
	b _021FD964
_021FD810:
	mov r1, #0
	add r0, sp, #0x44
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r5, #0
	add r0, #0xbb
	ldrb r1, [r0]
	mov r0, #0x1c
	mul r0, r1
	add r2, r5, r0
	ldr r0, [r2, #0x48]
	ldr r6, [r2, #0x4c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	bl ov96_021FF6DC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	bl _fmul
	bl _f2d
	ldr r3, _021FDA20 ; =0x40200000
	mov r2, #0
	bl _ddiv
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FDA24 ; =0x40B00000
	mov r0, #0
	bl _dmul
	bl _dfix
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x50
	bl VEC_Subtract
	ldr r1, [sp, #0x50]
	cmp r1, #0
	bge _021FD89C
	ldr r0, _021FDA28 ; =0xFFFF0000
	cmp r1, r0
	bge _021FD894
	add r1, r5, #0
	add r1, #0xcd
	mov r0, #1
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xce
	strb r0, [r1]
	mov r1, #1
	add r2, r5, #0
	str r0, [sp]
	lsl r1, r1, #8
	add r2, #0xbb
	ldrb r1, [r5, r1]
	ldrb r2, [r2]
	ldr r0, [sp, #4]
	mov r3, #7
	bl ov96_021E8228
_021FD894:
	mov r0, #0
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
_021FD89C:
	add r1, sp, #0x50
	add r0, r6, #0
	add r2, sp, #0x44
	add r3, r1, #0
	bl VEC_MultAdd
	add r0, sp, #0x50
	bl VEC_Mag
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	bl _fflt
	add r3, r5, #0
	add r3, #0xbc
	add r2, sp, #0x5c
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x50
	str r0, [r2]
	add r0, r6, #0
	add r2, r6, #0
	bl ov96_021FF72C
	add r0, r6, #0
	bl VEC_Mag
	bl _fflt
	add r6, r0, #0
	ldr r0, _021FDA2C ; =0x45800000
	ldr r1, [sp, #0x20]
	bl _fmul
	add r1, r0, #0
	add r0, r6, #0
	bl _fgr
	bls _021FD91C
	mov r1, #0
	add r0, sp, #0x38
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, sp, #0x5c
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, _021FDA2C ; =0x45800000
	ldr r1, [sp, #0x20]
	bl _fmul
	bl _ffix
	ldr r3, [sp, #0xc]
	add r1, sp, #0x5c
	add r2, sp, #0x38
	bl VEC_MultAdd
	b _021FD926
_021FD91C:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r1, sp, #0x50
	bl ov96_021FF72C
_021FD926:
	ldr r0, [sp, #0x18]
	add r0, #0x8c
	bl VEC_Mag
	ldr r1, [sp, #0x18]
	add r1, #0x8b
	ldrb r2, [r1]
	mov r1, #0x1c
	add r3, r2, #0
	mul r3, r1
	ldr r1, [sp, #0x18]
	add r1, r1, r3
	add r1, #0x2e
	ldrb r1, [r1]
	sub r1, r1, #3
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _021FD95C
	ldr r1, [sp, #0x18]
	mov r0, #1
	str r0, [sp]
	add r1, #0xd0
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	mov r3, #6
	bl ov96_021E8228
_021FD95C:
	add r1, r5, #0
	add r1, #0xda
	mov r0, #0
	strb r0, [r1]
_021FD964:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021FD994
	add r1, r5, #0
	add r1, #0xdc
	mov r0, #0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	add r1, r5, #0
	add r3, r5, #0
	add r1, #0xe8
	add r2, r5, #0
	add r3, #0xe0
	str r0, [r1]
	ldmia r3!, {r0, r1}
	add r2, #0xec
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_021FD994:
	ldr r0, [sp, #0x1c]
	add r4, #0xc
	add r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r5, #0xd4
	add r0, #0xd4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r7, r7, #4
	add r0, #0xd4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0xd4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0xd4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0xd4
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #4
	bge _021FD9CA
	b _021FD580
_021FD9CA:
	mov r2, #0xf7
	ldr r1, [sp, #0x30]
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	mov r3, #0x19
	ldr r2, [sp, #0x30]
	lsl r3, r3, #6
	ldrh r2, [r2, r3]
	ldr r0, [sp, #4]
	bl ov96_02200EF4
	ldr r0, [sp, #4]
	bl ov96_021FDE7C
	mov r1, #0x19
	ldr r0, [sp, #0x30]
	lsl r1, r1, #6
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _021FD9FC
	mov r1, #0xf
	mov r2, #1
	lsl r1, r1, #6
	ldr r0, [sp, #0x30]
	b _021FDA04
_021FD9FC:
	mov r1, #0xf
	ldr r0, [sp, #0x30]
	mov r2, #0
	lsl r1, r1, #6
_021FDA04:
	strb r2, [r0, r1]
	ldr r0, [sp, #0x2c]
	add r0, #0x28
	str r0, [sp, #0x2c]
	bl ov96_021E8A20
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	bl ov96_021FDA30
_021FDA18:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FDA1C: .word 0x000003C2
_021FDA20: .word 0x40200000
_021FDA24: .word 0x40B00000
_021FDA28: .word 0xFFFF0000
_021FDA2C: .word 0x45800000
	thumb_func_end ov96_021FD4D0

	thumb_func_start ov96_021FDA30
ov96_021FDA30: ; 0x021FDA30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r2, #0
	str r0, [sp]
	mov lr, r2
	add r0, r2, #0
	str r0, [sp, #0x14]
	ldr r3, [sp]
	mov r0, lr
	str r0, [sp, #0x10]
	add r0, r1, #0
	str r1, [sp, #4]
	add r7, r2, #0
	add r3, #0x30
	str r0, [sp, #0xc]
	mov r6, lr
_021FDA50:
	add r0, r3, #0
	add r0, #0x8b
	add r4, r3, #0
	add r4, #0xa2
	ldrb r4, [r4]
	ldrb r0, [r0]
	mov r1, #0
	lsl r4, r4, #2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r4
	mov ip, r0
	add r0, r3, #0
	add r0, #0x9e
	ldrb r4, [r0]
	ldr r0, [sp, #0x10]
	lsl r4, r0
	mov r0, lr
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov lr, r0
	add r0, r3, #0
	add r0, #0x9d
	ldrb r0, [r0]
	lsl r4, r0, #7
	add r0, r3, #0
	add r0, #0x9c
	ldrb r0, [r0]
	add r5, r4, r0
	ldr r0, [sp, #4]
	add r0, r0, r7
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, #0x80
	ldr r4, [r0]
	asr r0, r4, #0xb
	lsr r0, r0, #0x14
	add r0, r4, r0
	asr r4, r0, #0xc
	ldr r0, [sp, #8]
	strb r4, [r0, #8]
	ldr r4, [r3, #0x7c]
	asr r0, r4, #0xb
	lsr r0, r0, #0x14
	add r0, r4, r0
	asr r4, r0, #0xc
	ldr r0, [sp, #0xc]
	strh r4, [r0]
	ldr r0, [sp, #8]
	mov r4, ip
	strb r4, [r0, #0xc]
	strb r5, [r0, #0x10]
	add r4, r3, #0
_021FDABE:
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r5, r1, r6
	lsl r5, r5, #1
	lsl r0, r5
	add r1, r1, #1
	add r2, r2, r0
	add r4, #0x1c
	cmp r1, #3
	blt _021FDABE
	ldr r0, [sp]
	ldr r4, _021FDB60 ; =0x00000644
	add r0, r0, r7
	ldrb r1, [r0, r4]
	ldr r0, [sp, #8]
	add r6, r6, #3
	strb r1, [r0, #0x1e]
	add r0, r3, #0
	add r0, #0xd1
	ldrb r0, [r0]
	add r3, #0xd4
	add r1, r0, #0
	lsl r1, r7
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #2
	str r0, [sp, #0xc]
	cmp r7, #4
	blt _021FDA50
	ldr r0, [sp, #4]
	mov r1, lr
	strb r1, [r0, #0x1d]
	str r2, [r0, #0x14]
	mov r1, #0xf
	ldr r0, [sp]
	lsl r1, r1, #6
	ldrb r0, [r0, r1]
	add r1, r4, #0
	sub r1, #8
	lsl r0, r0, #0x18
	add r2, r2, r0
	ldr r0, [sp, #4]
	str r2, [r0, #0x14]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x19
	add r1, r2, r0
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x1a
	add r1, r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r0, [sp]
	sub r1, r4, #6
	ldrh r1, [r0, r1]
	ldr r0, [sp, #4]
	strh r1, [r0, #0x1a]
	ldr r0, [sp]
	sub r1, r4, #7
	ldrb r1, [r0, r1]
	ldr r0, [sp, #4]
	strb r1, [r0, #0x1c]
	ldr r0, [sp]
	sub r1, r4, #4
	ldrh r1, [r0, r1]
	ldr r0, [sp, #4]
	strh r1, [r0, #0x18]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FDB60: .word 0x00000644
	thumb_func_end ov96_021FDA30

	thumb_func_start ov96_021FDB64
ov96_021FDB64: ; 0x021FDB64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	bl ov96_021E5DC4
	str r0, [sp, #4]
	add r0, r7, #0
	bl ov96_021E5F54
	add r5, r0, #0
	bl ov96_021E8A20
	add r4, r0, #0
	mov r0, #0
	add r5, #0xf0
	str r0, [r4]
	add r0, r5, #0
	bl ov96_021E8A20
	ldr r0, [r0, #0x14]
	mov r1, #1
	asr r0, r0, #0x18
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021FDC30
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r0, [r0, #0x28]
	bl ov96_021EB52C
	ldr r0, [sp, #4]
	mov r1, #0
	ldr r0, [r0, #0x20]
	bl Set2dSpriteVisibleFlag
	ldr r0, [sp, #4]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl Set2dSpriteVisibleFlag
	ldr r0, [sp, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl ov96_021EB63C
	mov r1, #0xf2
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl ov96_021EB144
	ldr r1, _021FDC74 ; =ov96_021FFEE8
	add r0, r7, #0
	bl ov96_021E8324
	add r0, r7, #0
	bl ov96_021E5F24
	cmp r0, #0
	bne _021FDC2A
	mov r5, #0
_021FDBE2:
	mov r0, #0xd4
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r4, #0
	add r6, r0, r1
_021FDBEE:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r1, [r0, #0x3c]
	add r2, r4, #0
	asr r0, r1, #9
	lsr r0, r0, #0x16
	add r0, r1, r0
	asr r1, r0, #0xa
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #3
	bl ov96_021E8228
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021FDBEE
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021FDBE2
_021FDC2A:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FDC30:
	bl System_GetTouchNew
	cmp r0, #0
	beq _021FDC52
	add r0, r7, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
_021FDC52:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _021FDC68
	ldr r0, _021FDC78 ; =gSystem + 0x40
	ldrh r1, [r0, #0x20]
	strb r1, [r4, #4]
	ldrh r0, [r0, #0x22]
	strb r0, [r4, #5]
	mov r0, #1
	str r0, [r4]
_021FDC68:
	add r0, r7, #0
	bl ov96_021FDC7C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FDC74: .word ov96_021FFEE8
_021FDC78: .word gSystem + 0x40
	thumb_func_end ov96_021FDB64

	thumb_func_start ov96_021FDC7C
ov96_021FDC7C: ; 0x021FDC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	bl ov96_021E5DC4
	add r4, r0, #0
	ldr r0, [sp]
	bl ov96_021E5F54
	str r0, [sp, #8]
	add r0, #0xf0
	bl ov96_021E8A20
	add r7, r0, #0
	ldr r0, [sp]
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r5, #0
	add r6, r7, #0
_021FDCA8:
	mov r0, #0x3e
	lsl r0, r0, #4
	lsl r1, r5, #0x18
	ldrh r2, [r6]
	ldr r0, [r4, r0]
	lsr r1, r1, #0x18
	bl ov96_0220050C
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #4
	blt _021FDCA8
	ldr r0, [sp, #4]
	mov r1, #0
	lsl r5, r0, #1
	ldrh r3, [r7, r5]
	ldr r0, [r4]
	add r2, r1, #0
	bl ScheduleSetBgPosText
	ldrh r3, [r7, r5]
	ldr r0, [r4]
	mov r1, #1
	mov r2, #0
	lsr r3, r3, #1
	bl ScheduleSetBgPosText
	ldrh r3, [r7, r5]
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0
	lsl r3, r3, #1
	bl ScheduleSetBgPosText
	add r2, r4, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	add r2, #0x30
	bl ov96_021FE550
	ldrh r1, [r7, r5]
	add r0, r4, #0
	bl ov96_021FEAEC
	ldr r0, [sp, #4]
	add r0, r7, r0
	ldrb r1, [r0, #0x10]
	mov r0, #0x7f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r7, #0x14]
	asr r1, r0, #0x1a
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	ldr r1, [sp, #4]
	lsr r0, r0, #0x18
	asr r0, r1
	mov r1, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021FDD2E
	mov r2, #0
	b _021FDD30
_021FDD2E:
	ldrh r2, [r7, r5]
_021FDD30:
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl ov96_022005B4
	ldr r0, [r7, #0x14]
	asr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _021FDD54
	add r0, r4, #0
	add r0, #0x20
	add r1, r6, #0
	bl ov96_021FFC34
_021FDD54:
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrh r1, [r7, #0x18]
	ldr r0, [r4, r0]
	bl ov96_02200A64
	ldr r0, [sp, #4]
	add r0, r7, r0
	ldrb r0, [r0, #0x1e]
	cmp r0, #4
	bhi _021FDDE6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FDD76: ; jump table
	.short _021FDD80 - _021FDD76 - 2 ; case 0
	.short _021FDDD8 - _021FDD76 - 2 ; case 1
	.short _021FDDA0 - _021FDD76 - 2 ; case 2
	.short _021FDD90 - _021FDD76 - 2 ; case 3
	.short _021FDDBC - _021FDD76 - 2 ; case 4
_021FDD80:
	ldr r0, _021FDDFC ; =0x00000642
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	mov r1, #0xb
	bl ov96_021EB570
	b _021FDDE6
_021FDD90:
	ldr r0, _021FDDFC ; =0x00000642
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl ov96_021EB570
	b _021FDDE6
_021FDDA0:
	ldr r0, _021FDDFC ; =0x00000642
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _021FDDB2
	mov r1, #1
	strh r1, [r4, r0]
	ldr r0, _021FDE00 ; =0x0000089B
	bl PlaySE
_021FDDB2:
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl ov96_021EB570
	b _021FDDE6
_021FDDBC:
	ldr r0, _021FDDFC ; =0x00000642
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _021FDDCE
	mov r1, #1
	strh r1, [r4, r0]
	ldr r0, _021FDE04 ; =0x0000089C
	bl PlaySE
_021FDDCE:
	ldr r0, [r4, #0x1c]
	mov r1, #0xe
	bl ov96_021EB570
	b _021FDDE6
_021FDDD8:
	ldr r0, _021FDDFC ; =0x00000642
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, [r4, #0x1c]
	mov r1, #0xf
	bl ov96_021EB570
_021FDDE6:
	ldrh r1, [r7, r5]
	ldr r0, [r4]
	bl ov96_021FFBD8
	ldrh r1, [r7, #0x18]
	ldr r0, [sp]
	bl ov96_021E6454
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021FDDFC: .word 0x00000642
_021FDE00: .word 0x0000089B
_021FDE04: .word 0x0000089C
	thumb_func_end ov96_021FDC7C

	thumb_func_start ov96_021FDE08
ov96_021FDE08: ; 0x021FDE08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	mov r2, #0xd4
	add r0, #0x30
	mul r2, r1
	add r4, r0, r2
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	add r6, r3, #0
	cmp r0, #3
	blo _021FDE26
	bl GF_AssertFail
_021FDE26:
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	mov r1, #0x50
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	add r0, sp, #4
	str r0, [sp]
	add r4, #0x80
	ldr r2, [r4]
	add r0, r5, #0
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	add r3, sp, #8
	bl ov96_021EB0A4
	str r6, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, r7, #0
	bl ov96_021EB0CC
	cmp r0, #0
	beq _021FDE66
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021FDE66:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021FDE08

	thumb_func_start ov96_021FDE6C
ov96_021FDE6C: ; 0x021FDE6C
	cmp r1, #0x40
	bhs _021FDE78
	cmp r2, #0x20
	bhs _021FDE78
	mov r0, #1
	bx lr
_021FDE78:
	mov r0, #0
	bx lr
	thumb_func_end ov96_021FDE6C

	thumb_func_start ov96_021FDE7C
ov96_021FDE7C: ; 0x021FDE7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #8]
	bl ov96_021E5DC4
	add r5, r0, #0
	ldr r1, _021FE1B4 ; =0x0000063C
	mov r7, #0
	str r0, [sp, #0x14]
	strb r7, [r0, r1]
	add r4, sp, #0x1c
	add r6, r0, #0
	add r5, #0x30
_021FDE96:
	mov r0, #0
	strb r0, [r4]
	add r0, r6, #0
	add r0, #0xd9
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FDEB2
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	add r2, r5, #0
	bl ov96_021FE538
	mov r0, #1
	strb r0, [r4]
_021FDEB2:
	add r7, r7, #1
	add r4, r4, #1
	add r6, #0xd4
	add r5, #0xd4
	cmp r7, #4
	blt _021FDE96
	mov r0, #0
	ldr r5, [sp, #0x14]
	str r0, [sp, #0xc]
	add r0, sp, #0x1c
	str r0, [sp, #0x10]
	add r5, #0x30
_021FDECA:
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FDED4
	b _021FE51E
_021FDED4:
	add r3, r5, #0
	add r3, #0x7c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x44
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x7c
	add r1, #0x8c
	add r2, r0, #0
	bl VEC_Add
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r2, r5, r0
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r2, #0xc]
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [r2, #0xc]
	add r0, r5, #0
	add r0, #0x80
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0x10
	cmp r0, r1
	bge _021FDF1C
	add r0, r5, #0
	add r0, #0x80
	str r1, [r0]
	b _021FDF2A
_021FDF1C:
	mov r1, #0x2a
	lsl r1, r1, #0xe
	cmp r0, r1
	ble _021FDF2A
	add r0, r5, #0
	add r0, #0x80
	str r1, [r0]
_021FDF2A:
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov96_021EAF8C
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x7c
	str r0, [sp]
	add r1, r5, #0
	str r0, [sp, #4]
	add r1, #0xcc
	ldr r0, [sp, #0x14]
	ldr r1, [r1]
	add r3, sp, #0x44
	bl ov96_021FF5A8
	asr r1, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	cmp r1, #1
	bne _021FDF62
	mov r2, #1
	b _021FDF64
_021FDF62:
	mov r2, #0
_021FDF64:
	add r1, r5, #0
	add r1, #0xa5
	strb r2, [r1]
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1]
	cmp r0, #9
	bhi _021FDFFE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FDF80: ; jump table
	.short _021FE10C - _021FDF80 - 2 ; case 0
	.short _021FE10C - _021FDF80 - 2 ; case 1
	.short _021FDF94 - _021FDF80 - 2 ; case 2
	.short _021FDFB4 - _021FDF80 - 2 ; case 3
	.short _021FDFD4 - _021FDF80 - 2 ; case 4
	.short _021FDFF4 - _021FDF80 - 2 ; case 5
	.short _021FE016 - _021FDF80 - 2 ; case 6
	.short _021FE054 - _021FDF80 - 2 ; case 7
	.short _021FE092 - _021FDF80 - 2 ; case 8
	.short _021FE0D0 - _021FDF80 - 2 ; case 9
_021FDF94:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	ble _021FDFFE
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FDFB4:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bge _021FDFFE
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
	b _021FE10C
_021FDFD4:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bge _021FDFFE
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FDFF4:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bgt _021FE000
_021FDFFE:
	b _021FE10C
_021FE000:
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
	b _021FE10C
_021FE016:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	ble _021FE034
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
_021FE034:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	ble _021FE10C
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FE054:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bge _021FE072
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
_021FE072:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	ble _021FE10C
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FE092:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bge _021FE0B0
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
_021FE0B0:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bge _021FE10C
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
	b _021FE10C
_021FE0D0:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	ble _021FE0EE
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x8c
	str r2, [r0]
_021FE0EE:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bge _021FE10C
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	add r2, r1, #0
	mul r2, r0
	add r0, r5, #0
	add r0, #0x90
	str r2, [r0]
_021FE10C:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, #0x30
	add r2, sp, #0x50
	bl ov96_021FF764
	ldr r1, _021FE1B4 ; =0x0000063C
	ldr r2, [sp, #0x14]
	ldrb r2, [r2, r1]
	cmp r2, #0
	bne _021FE14C
	cmp r0, #0
	beq _021FE14C
	ldr r0, [sp, #0x14]
	mov r2, #1
	strb r2, [r0, r1]
	ldr r2, [sp, #0x50]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r3, r0, #0xc
	add r2, r1, #2
	ldr r0, [sp, #0x14]
	add r1, r1, #1
	strh r3, [r0, r2]
	ldr r2, [sp, #0x54]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r2, r0, #0xc
	ldr r0, [sp, #0x14]
	strb r2, [r0, r1]
_021FE14C:
	ldr r4, [r5, #0x7c]
	add r0, r4, #0
	bl _dflt
	ldr r3, _021FE1B8 ; =0x41500000
	mov r2, #0
	bl _dgeq
	blo _021FE1BC
	add r0, r4, #0
	bl _dflt
	ldr r3, _021FE1B8 ; =0x41500000
	mov r2, #0
	bl _dsub
	bl _dfix
	str r0, [r5, #0x7c]
	add r0, r5, #0
	add r0, #0xd1
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FE194
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #0x3c
	bhs _021FE194
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x9c
	strb r1, [r0]
_021FE194:
	add r0, r5, #0
	add r0, #0x9c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldrb r0, [r0]
	cmp r0, r1
	bhs _021FE1AA
	add r0, r5, #0
	add r0, #0xa8
	strb r1, [r0]
_021FE1AA:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd1
	strb r1, [r0]
	b _021FE1FC
	.balign 4, 0
_021FE1B4: .word 0x0000063C
_021FE1B8: .word 0x41500000
_021FE1BC:
	cmp r4, #0
	bge _021FE1FC
	add r0, r4, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE4EC ; =0x41500000
	mov r0, #0
	bl _dadd
	bl _dfix
	str r0, [r5, #0x7c]
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FE1F2
	add r0, r5, #0
	add r0, #0x9c
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x9c
	strb r1, [r0]
	b _021FE1FC
_021FE1F2:
	bne _021FE1FC
	add r0, r5, #0
	mov r1, #1
	add r0, #0xd1
	strb r1, [r0]
_021FE1FC:
	add r4, r5, #0
	add r4, #0x8c
	ldmia r4!, {r0, r1}
	add r3, sp, #0x38
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	add r0, r2, #0
	bl VEC_Mag
	add r1, r5, #0
	add r1, #0x9d
	ldrb r1, [r1]
	cmp r1, #0
	bne _021FE28C
	add r1, r5, #0
	add r1, #0xa5
	ldrb r1, [r1]
	cmp r1, #0
	beq _021FE28C
	add r1, r5, #0
	add r1, #0x8b
	ldrb r2, [r1]
	mov r1, #0x1c
	mul r1, r2
	add r1, r5, r1
	add r1, #0x2c
	ldrb r1, [r1]
	lsl r6, r1, #0xc
	cmp r0, r6
	ble _021FE28C
	add r1, sp, #0x2c
	mov r0, #0
	str r0, [r1]
	add r4, r5, #0
	str r0, [r1, #4]
	add r3, sp, #0x20
	add r4, #0x8c
	str r0, [r1, #8]
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	add r0, r2, #0
	bl VEC_Normalize
	add r1, sp, #0x20
	add r0, r6, #0
	add r2, sp, #0x2c
	add r3, r1, #0
	bl VEC_MultAdd
	add r3, sp, #0x20
	add r2, r5, #0
	add r2, #0x8c
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #0x38
	str r0, [r2]
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	add r0, r2, #0
	bl VEC_Mag
_021FE28C:
	cmp r0, #0
	ble _021FE33E
	mov r0, #0xfe
	lsl r0, r0, #0x16
	bl _f2d
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021FE4F0 ; =0x9999999A
	ldr r1, _021FE4F4 ; =0x3FD99999
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE4F8 ; =0x40B00000
	mov r0, #0
	bl _dmul
	bl _dfix
	add r4, r0, #0
	ldr r1, _021FE4FC ; =0x000003C2
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021FE2C6
	mov r0, #3
	lsl r0, r0, #0xc
	add r4, r4, r0
_021FE2C6:
	add r0, sp, #0x38
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, [sp, #0x38]
	asr r6, r4, #0x1f
	asr r1, r0, #0x1f
	add r2, r4, #0
	add r3, r6, #0
	bl _ll_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	add r2, r4, #0
	asr r1, r0, #0x1f
	add r3, r6, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, sp, #0x38
	str r1, [sp, #0x3c]
	bl VEC_Mag
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	bl VEC_Mag
	cmp r0, r4
	blt _021FE330
	add r0, r5, #0
	add r0, #0x8c
	add r1, sp, #0x38
	add r2, r0, #0
	bl VEC_Subtract
	b _021FE33E
_021FE330:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x8c
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0]
_021FE33E:
	add r0, r5, #0
	add r0, #0x8c
	bl VEC_Mag
	add r1, r5, #0
	add r1, #0x8b
	ldrb r2, [r1]
	mov r1, #0x1c
	mul r1, r2
	add r1, r5, r1
	add r1, #0x2e
	ldrb r2, [r1]
	sub r1, r2, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _021FE368
	add r0, r5, #0
	mov r1, #3
	add r0, #0xa2
	strb r1, [r0]
	b _021FE390
_021FE368:
	sub r1, r2, #3
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _021FE37A
	add r0, r5, #0
	mov r1, #2
	add r0, #0xa2
	strb r1, [r0]
	b _021FE390
_021FE37A:
	cmp r0, #0
	bne _021FE388
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	b _021FE390
_021FE388:
	add r0, r5, #0
	mov r1, #1
	add r0, #0xa2
	strb r1, [r0]
_021FE390:
	add r0, r5, #0
	add r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FE39C
	b _021FE51E
_021FE39C:
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0xa4
	mov r7, #0
	add r4, r5, #0
	str r0, [sp, #0x18]
_021FE3A8:
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	ldr r6, [r4, #0x24]
	cmp r7, r0
	bne _021FE454
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _021FE432
	add r0, r5, #0
	add r0, #0xa2
	ldrb r0, [r0]
	cmp r0, #3
	bhi _021FE406
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FE3D4: ; jump table
	.short _021FE3DC - _021FE3D4 - 2 ; case 0
	.short _021FE3F2 - _021FE3D4 - 2 ; case 1
	.short _021FE3F2 - _021FE3D4 - 2 ; case 2
	.short _021FE3F2 - _021FE3D4 - 2 ; case 3
_021FE3DC:
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE500 ; =0x3FE00000
	mov r2, #0
	bl _dadd
	bl _d2f
	add r6, r0, #0
	b _021FE406
_021FE3F2:
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE500 ; =0x3FE00000
	mov r2, #0
	bl _dsub
	bl _d2f
	add r6, r0, #0
_021FE406:
	add r0, r5, #0
	add r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FE424
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE504 ; =0x40440000
	mov r2, #0
	bl _dgr
	bls _021FE472
	ldr r6, _021FE508 ; =0x42200000
	b _021FE472
_021FE424:
	ldr r1, [r4, #0x28]
	add r0, r6, #0
	bl _fgr
	bls _021FE472
	ldr r6, [r4, #0x28]
	b _021FE472
_021FE432:
	bne _021FE472
	ldr r0, [sp, #0x18]
	ldrb r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp, #0x18]
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FE472
	add r1, r4, #0
	add r1, #0x30
	mov r0, #1
	strb r0, [r1]
	ldr r6, _021FE508 ; =0x42200000
	b _021FE472
_021FE454:
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE500 ; =0x3FE00000
	mov r2, #0
	bl _dadd
	bl _d2f
	ldr r1, [r4, #0x28]
	add r6, r0, #0
	bl _fgr
	bls _021FE472
	ldr r6, [r4, #0x28]
_021FE472:
	add r0, r6, #0
	mov r1, #0
	bl _fleq
	bhi _021FE4CE
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	cmp r7, r0
	beq _021FE48A
	bl GF_AssertFail
_021FE48A:
	mov r0, #0
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _021FE514
	add r1, r4, #0
	add r1, #0x30
	mov r0, #2
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0xa3
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	strb r1, [r0]
	mov r0, #1
	add r1, r5, #0
	add r2, r5, #0
	str r0, [sp]
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	mov r3, #1
	bl ov96_021E8228
	b _021FE514
_021FE4CE:
	add r0, r6, #0
	bl _f2d
	ldr r3, _021FE504 ; =0x40440000
	mov r2, #0
	bl _dleq
	str r6, [r4, #0x24]
	bhi _021FE50C
	add r1, r4, #0
	add r1, #0x30
	mov r0, #1
	strb r0, [r1]
	b _021FE514
	nop
_021FE4EC: .word 0x41500000
_021FE4F0: .word 0x9999999A
_021FE4F4: .word 0x3FD99999
_021FE4F8: .word 0x40B00000
_021FE4FC: .word 0x000003C2
_021FE500: .word 0x3FE00000
_021FE504: .word 0x40440000
_021FE508: .word 0x42200000
_021FE50C:
	add r1, r4, #0
	add r1, #0x30
	mov r0, #0
	strb r0, [r1]
_021FE514:
	add r7, r7, #1
	add r4, #0x1c
	cmp r7, #3
	bge _021FE51E
	b _021FE3A8
_021FE51E:
	ldr r0, [sp, #0x10]
	add r5, #0xd4
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	bge _021FE532
	b _021FDECA
_021FE532:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FDE7C

	thumb_func_start ov96_021FE538
ov96_021FE538: ; 0x021FE538
	add r0, r2, #0
	add r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FE54E
	add r0, r2, #0
	add r0, #0xa9
	ldrb r0, [r0]
	add r2, #0xa9
	sub r0, r0, #1
	strb r0, [r2]
_021FE54E:
	bx lr
	thumb_func_end ov96_021FE538

	thumb_func_start ov96_021FE550
ov96_021FE550: ; 0x021FE550
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	str r0, [sp, #0x18]
	add r0, r3, #0
	add r0, #0xf0
	str r1, [sp, #0x1c]
	add r5, r2, #0
	str r3, [sp, #0x20]
	bl ov96_021E8A20
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x18]
	bl ov96_021E5DC4
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #1
	ldr r0, [sp, #0x58]
	ldrh r0, [r0, r1]
	add r1, sp, #0x7c
	str r0, [sp, #0x60]
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [sp, #0x58]
	ldr r0, [r0, #0x14]
	asr r1, r0, #0x19
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021FE64E
	ldr r0, [sp, #0x58]
	ldrh r1, [r0, #0x1a]
	ldr r0, [sp, #0x60]
	sub r4, r0, r1
	add r0, r4, #0
	bl _dflt
	ldr r3, _021FE8C4 ; =0x40880000
	mov r2, #0
	bl _dgeq
	blo _021FE5D0
	add r0, r4, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE8C8 ; =0x40900000
	mov r0, #0
	bl _dsub
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE8CC ; =0x40540000
	mov r0, #0
	bl _dadd
	bl _dfix
	add r4, r0, #0
	b _021FE5D4
_021FE5D0:
	mov r0, #0x50
	sub r4, r0, r4
_021FE5D4:
	lsl r0, r4, #0xc
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x58]
	ldr r1, _021FE8D0 ; =0x000003C3
	ldrb r0, [r0, #0x1c]
	lsl r0, r0, #0xc
	str r0, [sp, #0x80]
	ldr r0, [sp, #0x5c]
	ldrb r0, [r0, r1]
	add r1, #9
	lsl r2, r0, #2
	ldr r0, [sp, #0x5c]
	add r0, r0, r2
	ldr r0, [r0, r1]
	add r1, sp, #0x7c
	bl ov96_021EB588
	ldr r1, _021FE8D0 ; =0x000003C3
	ldr r0, [sp, #0x5c]
	ldrb r0, [r0, r1]
	add r1, #9
	lsl r2, r0, #2
	ldr r0, [sp, #0x5c]
	add r0, r0, r2
	ldr r0, [r0, r1]
	mov r1, #1
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r1, _021FE8D0 ; =0x000003C3
	ldr r0, [sp, #0x5c]
	ldrb r0, [r0, r1]
	add r1, #9
	lsl r2, r0, #2
	ldr r0, [sp, #0x5c]
	add r0, r0, r2
	ldr r0, [r0, r1]
	mov r1, #9
	bl ov96_021EB564
	ldr r0, _021FE8D0 ; =0x000003C3
	ldr r1, [sp, #0x5c]
	mov r2, #0x1e
	ldrb r1, [r1, r0]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r1, r1, #0x1e
	sub r1, r1, r3
	ror r1, r2
	add r3, r3, r1
	ldr r1, [sp, #0x5c]
	cmp r4, #0
	strb r3, [r1, r0]
	blt _021FE64E
	add r2, #0xe2
	cmp r4, r2
	bge _021FE64E
	ldr r0, _021FE8D4 ; =0x000008A3
	mov r1, #5
	bl sub_0200606C
_021FE64E:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021FE65A
	mov r0, #1
	str r0, [sp, #0x28]
	b _021FE65E
_021FE65A:
	mov r0, #0
	str r0, [sp, #0x28]
_021FE65E:
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x3c]
	add r0, #0x50
	str r0, [sp, #0x3c]
_021FE672:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bne _021FE680
	mov r0, #1
	str r0, [sp, #0x24]
	b _021FE684
_021FE680:
	mov r0, #0
	str r0, [sp, #0x24]
_021FE684:
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldrb r0, [r0, #0xc]
	mov r1, #3
	str r0, [sp, #0x38]
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	ldrh r4, [r0]
	ldr r0, [sp, #0x60]
	sub r6, r4, r0
	bl _dflt
	ldr r3, _021FE8D8 ; =0x4086A000
	mov r2, #0
	bl _dgr
	bls _021FE6E8
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r4, r0
	bhs _021FE738
	ldr r0, [sp, #0x60]
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE8C8 ; =0x40900000
	mov r0, #0
	bl _dsub
	add r7, r0, #0
	add r6, r1, #0
	add r0, r4, #0
	bl _dfltu
	add r2, r0, #0
	add r3, r1, #0
	add r0, r7, #0
	add r1, r6, #0
	bl _dadd
	bl _dfix
	add r6, r0, #0
	b _021FE738
_021FE6E8:
	ldr r0, [sp, #0x60]
	cmp r0, #0x64
	bge _021FE738
	add r0, r4, #0
	bl _dfltu
	ldr r3, _021FE8DC ; =0x408CE000
	mov r2, #0
	bl _dgr
	bls _021FE738
	ldr r0, [sp, #0x60]
	bl _dflt
	add r7, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	bl _dfltu
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FE8C8 ; =0x40900000
	mov r0, #0
	bl _dsub
	add r2, r0, #0
	add r3, r1, #0
	add r0, r7, #0
	add r1, r6, #0
	bl _dadd
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl _dsub
	bl _dfix
	add r6, r0, #0
_021FE738:
	ldr r1, [sp, #0x58]
	ldr r0, [sp, #0x30]
	add r6, #0x50
	add r1, r1, r0
	ldrb r0, [r1, #0x10]
	asr r2, r0, #7
	mov r0, #1
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x58]
	ldr r3, [sp, #0x34]
	ldr r2, [sp, #0x40]
	ldr r0, [r0, #0x14]
	add r2, r3, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x17
	asr r0, r2
	mov r2, #3
	and r0, r2
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x38]
	asr r0, r0, #2
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x54]
	lsl r0, r6, #0xc
	str r0, [sp, #0x70]
	ldrb r0, [r1, #8]
	lsl r0, r0, #0xc
	str r0, [sp, #0x74]
	mov r0, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x18]
	bl ov96_021E5D34
	ldr r1, [sp, #0x30]
	cmp r0, r1
	bgt _021FE79C
	ldr r0, [sp, #0x3c]
	mov r4, #1
	bl ov96_021E8A20
	b _021FE7A4
_021FE79C:
	ldr r0, [sp, #0x20]
	mov r4, #0
	bl ov96_021E8A20
_021FE7A4:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	cmp r2, r1
	add r2, sp, #0x70
	bne _021FE7D8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x34]
	ldr r3, [sp, #0x58]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r1, #0x3e
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov96_021FEECC
	b _021FE7FE
_021FE7D8:
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x34]
	ldr r3, [sp, #0x58]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r1, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	str r4, [sp, #0x14]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, r5, #0
	bl ov96_021FEECC
_021FE7FE:
	ldr r0, [sp, #0x48]
	mov r1, #0x3e
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsl r1, r1, #0x18
	ldr r3, [sp, #0x50]
	lsr r1, r1, #0x18
	bl ov96_02200950
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	cmp r0, #0
	bne _021FE83C
	mov r0, #0x1f
	mvn r0, r0
	cmp r6, r0
	blt _021FE83C
	mov r0, #0x12
	lsl r0, r0, #4
	cmp r6, r0
	bgt _021FE83C
	ldr r0, [sp, #0x54]
	mov r1, #1
	bl ov96_021EAB38
	b _021FE844
_021FE83C:
	ldr r0, [sp, #0x54]
	mov r1, #0
	bl ov96_021EAB38
_021FE844:
	mov r7, #0
	add r4, r5, #0
_021FE848:
	ldr r2, [sp, #0x2c]
	ldr r0, [r4]
	ldrb r2, [r2, #8]
	add r1, r6, #0
	bl ov96_021EAF94
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #3
	blt _021FE848
	ldr r0, [sp, #0x18]
	bl ov96_021E5F24
	ldr r1, [sp, #0x30]
	cmp r1, r0
	bne _021FE86C
	mov r2, #1
	b _021FE86E
_021FE86C:
	mov r2, #0
_021FE86E:
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	ldrb r1, [r1, #8]
	bl ov96_021FFB7C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	bl ov96_021E60C0
	ldr r2, [r5, #0x6c]
	add r1, sp, #0x70
	bl ov96_021FFAEC
	add r4, sp, #0x70
	add r3, sp, #0x64
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	mov r0, #6
	ldr r1, [sp, #0x68]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x68]
	ldr r0, [r5, #0x78]
	add r1, r2, #0
	bl ov96_021EB588
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _021FE8B2
	b _021FEA44
_021FE8B2:
	ldr r0, [sp, #0x4c]
	mov r4, #0
	add r7, r4, #0
	cmp r0, #2
	beq _021FE8E0
	cmp r0, #3
	beq _021FE938
	b _021FE990
	nop
_021FE8C4: .word 0x40880000
_021FE8C8: .word 0x40900000
_021FE8CC: .word 0x40540000
_021FE8D0: .word 0x000003C3
_021FE8D4: .word 0x000008A3
_021FE8D8: .word 0x4086A000
_021FE8DC: .word 0x408CE000
_021FE8E0:
	add r0, r5, #0
	add r0, #0xa7
	ldrb r1, [r0]
	ldr r0, [sp, #0x4c]
	cmp r0, r1
	beq _021FE8FE
	mov r1, #1
	ldr r0, [r5, #0x78]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x78]
	mov r1, #4
	bl ov96_021EB564
_021FE8FE:
	ldr r0, [sp, #0x54]
	mov r1, #8
	bl ov96_021EAC5C
	add r0, r5, #0
	add r0, #0xd2
	ldrb r0, [r0]
	mov r4, #1
	cmp r0, #1
	bhi _021FE9AA
	add r0, r5, #0
	add r0, #0xd3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FE9AA
	ldr r1, _021FEAE8 ; =0x000008A7
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	bl ov96_021FFE38
	add r0, r5, #0
	mov r1, #2
	add r0, #0xd2
	strb r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0xd3
	strb r1, [r0]
	b _021FE9AA
_021FE938:
	add r0, r5, #0
	add r0, #0xa7
	ldrb r1, [r0]
	ldr r0, [sp, #0x4c]
	cmp r0, r1
	beq _021FE956
	mov r1, #1
	ldr r0, [r5, #0x78]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x78]
	mov r1, #5
	bl ov96_021EB564
_021FE956:
	ldr r0, [sp, #0x54]
	mov r1, #8
	bl ov96_021EAC5C
	add r0, r5, #0
	add r0, #0xd2
	ldrb r0, [r0]
	mov r4, #1
	cmp r0, #1
	bhi _021FE9AA
	add r0, r5, #0
	add r0, #0xd3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FE9AA
	ldr r1, _021FEAE8 ; =0x000008A7
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	bl ov96_021FFE38
	add r0, r5, #0
	mov r1, #3
	add r0, #0xd2
	strb r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0xd3
	strb r1, [r0]
	b _021FE9AA
_021FE990:
	ldr r0, [r5, #0x78]
	mov r1, #1
	add r2, r4, #0
	bl ov96_021EB52C
	add r1, r5, #0
	ldr r0, [sp, #0x4c]
	add r1, #0xd2
	strb r0, [r1]
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0xd3
	strb r1, [r0]
_021FE9AA:
	ldr r0, [sp, #0x48]
	cmp r0, #1
	beq _021FE9B6
	cmp r0, #2
	beq _021FE9CA
	b _021FEA28
_021FE9B6:
	mov r1, #1
	ldr r0, [r5, #0x6c]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x6c]
	mov r1, #6
	bl ov96_021EB570
	b _021FEA32
_021FE9CA:
	add r0, r5, #0
	add r0, #0xa6
	ldrb r1, [r0]
	ldr r0, [sp, #0x48]
	cmp r0, r1
	beq _021FE9E8
	mov r1, #1
	ldr r0, [r5, #0x6c]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x6c]
	mov r1, #7
	bl ov96_021EB564
_021FE9E8:
	ldr r0, [sp, #0x54]
	mov r1, #0x15
	bl ov96_021EAC5C
	ldr r0, [sp, #0x24]
	mov r7, #1
	cmp r0, #0
	beq _021FEA10
	mov r0, #3
	bl sub_02006190
	cmp r0, #0
	bne _021FEA32
	mov r1, #0x89
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	lsl r1, r1, #4
	bl ov96_021FFE38
	b _021FEA32
_021FEA10:
	mov r0, #4
	bl sub_02006190
	cmp r0, #0
	bne _021FEA32
	mov r1, #0x89
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	lsl r1, r1, #4
	bl ov96_021FFE38
	b _021FEA32
_021FEA28:
	ldr r0, [r5, #0x6c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_021FEA32:
	cmp r4, #0
	bne _021FEA58
	cmp r7, #0
	bne _021FEA58
	ldr r0, [sp, #0x54]
	mov r1, #0
	bl ov96_021EAC5C
	b _021FEA58
_021FEA44:
	ldr r0, [r5, #0x78]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x6c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_021FEA58:
	add r1, r5, #0
	ldr r0, [sp, #0x4c]
	add r1, #0xa7
	strb r0, [r1]
	add r1, r5, #0
	ldr r0, [sp, #0x48]
	add r1, #0xa6
	strb r0, [r1]
	ldr r0, [sp, #0x44]
	add r5, #0xd4
	add r0, r0, #2
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x40]
	add r0, r0, #3
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r0, #0x28
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #4
	bge _021FEA88
	b _021FE672
_021FEA88:
	mov r1, #0x3e
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov96_02200BC8
	add r4, r0, #0
	mov r1, #0x3e
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #1
	bl ov96_02200BC8
	add r6, r0, #0
	ldr r0, [sp, #0x58]
	mov r2, #3
	ldr r5, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #1
	add r3, r0, r1
	mov r1, #0x3e
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, r4, r3
	lsl r1, r1, #0x18
	add r3, r6, r3
	lsl r3, r3, #0x18
	lsr r1, r1, #0x17
	add r4, r5, #0
	asr r4, r1
	add r1, r4, #0
	and r1, r2
	lsl r1, r1, #0x18
	lsr r3, r3, #0x17
	add r4, r5, #0
	asr r4, r3
	and r2, r4
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_02200A18
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FEAE8: .word 0x000008A7
	thumb_func_end ov96_021FE550

	thumb_func_start ov96_021FEAEC
ov96_021FEAEC: ; 0x021FEAEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	mov r6, #0
_021FEAF6:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	ldr r0, _021FEBD4 ; =0x000004D4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021FEBD0
	ldr r0, _021FEBD8 ; =0x000004DE
	ldrb r7, [r4, r0]
	sub r0, r0, #2
	ldrh r1, [r4, r0]
	ldr r0, [sp, #4]
	sub r5, r0, r1
	add r0, r5, #0
	bl _dflt
	ldr r3, _021FEBDC ; =0x40880000
	mov r2, #0
	bl _dgeq
	blo _021FEB4A
	add r0, r5, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FEBE0 ; =0x40900000
	mov r0, #0
	bl _dsub
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FEBE4 ; =0x40540000
	mov r0, #0
	bl _dadd
	bl _dfix
	add r5, r0, #0
	b _021FEB84
_021FEB4A:
	add r0, r5, #0
	bl _dflt
	ldr r3, _021FEBE8 ; =0xC0880000
	mov r2, #0
	bl _dleq
	bhi _021FEB80
	add r0, r5, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FEBE0 ; =0x40900000
	mov r0, #0
	bl _dadd
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FEBE4 ; =0x40540000
	mov r0, #0
	bl _dsub
	bl _dfix
	add r5, r0, #0
	b _021FEB84
_021FEB80:
	mov r0, #0x50
	sub r5, r0, r5
_021FEB84:
	mov r0, #0
	str r0, [sp, #0x10]
	lsl r0, r5, #0xc
	add r7, #0x20
	str r0, [sp, #8]
	lsl r0, r7, #0xc
	str r0, [sp, #0xc]
	ldr r0, _021FEBEC ; =0x000004D8
	add r1, sp, #8
	ldr r0, [r4, r0]
	bl ov96_021EB588
	mov r0, #0x1f
	mvn r0, r0
	cmp r5, r0
	blt _021FEBBA
	mov r0, #0x12
	lsl r0, r0, #4
	cmp r5, r0
	bgt _021FEBBA
	ldr r0, _021FEBEC ; =0x000004D8
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	b _021FEBC6
_021FEBBA:
	ldr r0, _021FEBEC ; =0x000004D8
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov96_021EB52C
_021FEBC6:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x1e
	blo _021FEAF6
_021FEBD0:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FEBD4: .word 0x000004D4
_021FEBD8: .word 0x000004DE
_021FEBDC: .word 0x40880000
_021FEBE0: .word 0x40900000
_021FEBE4: .word 0x40540000
_021FEBE8: .word 0xC0880000
_021FEBEC: .word 0x000004D8
	thumb_func_end ov96_021FEAEC

	thumb_func_start ov96_021FEBF0
ov96_021FEBF0: ; 0x021FEBF0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, #0xa0
	ldrb r1, [r1]
	add r5, r2, #0
	ldr r6, [sp, #0x24]
	cmp r1, #3
	bls _021FEC04
	b _021FED34
_021FEC04:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021FEC10: ; jump table
	.short _021FEC18 - _021FEC10 - 2 ; case 0
	.short _021FEC84 - _021FEC10 - 2 ; case 1
	.short _021FECDE - _021FEC10 - 2 ; case 2
	.short _021FED34 - _021FEC10 - 2 ; case 3
_021FEC18:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
	mov r1, #1
	ldr r0, [r4, #0x70]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r4, #0x70]
	mov r1, #8
	bl ov96_021EB564
	mov r1, #1
	ldr r0, [r4, #0x74]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	mov r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov96_021EAB38
	add r0, r4, #0
	mov r1, #1
	add r0, #0xc8
	str r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa1
	strb r1, [r0]
	ldr r1, [r5]
	ldr r2, [sp, #0x2c]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, _021FED38 ; =0x000008B4
	asr r0, r0, #0xc
	bl ov96_021FFE38
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021FEC84:
	ldr r0, [r4, #0x74]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #5
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x74]
	bl ov96_021EB588
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa1
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	cmp r0, #0x14
	blo _021FED34
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021FECDE:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _021FED04
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	bl ov96_022006BC
	cmp r0, #0
	beq _021FED34
	mov r0, #1
	strb r0, [r6, #8]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021FED04:
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _021FED28
	add r1, r3, #0
	bl ov96_02200900
	cmp r0, #0
	beq _021FED34
	mov r0, #1
	strb r0, [r6, #8]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021FED28:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add r0, r0, #1
	strb r0, [r4]
_021FED34:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FED38: .word 0x000008B4
	thumb_func_end ov96_021FEBF0

	thumb_func_start ov96_021FED3C
ov96_021FED3C: ; 0x021FED3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r5, r1, #0
	add r6, r3, #0
	cmp r0, #3
	bls _021FED50
	b _021FEE56
_021FED50:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FED5C: ; jump table
	.short _021FED64 - _021FED5C - 2 ; case 0
	.short _021FEDC2 - _021FED5C - 2 ; case 1
	.short _021FEE1C - _021FED5C - 2 ; case 2
	.short _021FEE46 - _021FED5C - 2 ; case 3
_021FED64:
	add r3, r5, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0x19
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x74]
	add r1, r7, #0
	bl ov96_021EB588
	mov r1, #1
	ldr r0, [r4, #0x74]
	add r2, r1, #0
	bl ov96_021EB52C
	lsl r0, r6, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov96_021EAB38
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa1
	strb r1, [r0]
	ldr r1, [r5]
	ldr r2, [sp, #0x38]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, _021FEE5C ; =0x000008B5
	asr r0, r0, #0xc
	bl ov96_021FFE38
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021FEDC2:
	ldr r0, [r4, #0x74]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #5
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x74]
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa1
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	cmp r0, #0x14
	blo _021FEE56
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, #0xa0
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021FEE1C:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _021FEE28
	ldr r0, [sp, #0x30]
	mov r1, #2
	strb r1, [r0, #8]
_021FEE28:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa0
	strb r1, [r0]
_021FEE46:
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl ov96_021EB588
_021FEE56:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FEE5C: .word 0x000008B5
	thumb_func_end ov96_021FED3C

	thumb_func_start ov96_021FEE60
ov96_021FEE60: ; 0x021FEE60
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	lsl r0, r2, #2
	ldr r0, [r5, r0]
	mov r1, #1
	add r4, r3, #0
	bl ov96_021EAB38
	add r0, r5, #0
	mov r1, #0
	add r0, #0xc8
	str r1, [r0]
	mov r1, #1
	ldr r0, [r5, #0x70]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r5, #0x70]
	mov r1, #8
	bl ov96_021EB564
	ldr r0, [r5, #0x74]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021FEEA0
	mov r0, #0
	strb r0, [r4, #8]
_021FEEA0:
	ldr r0, [r5, #0x70]
	bl ov96_021EB594
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [sp]
	ldr r2, [sp, #0x1c]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, _021FEEC8 ; =0x000008B6
	asr r0, r0, #0xc
	bl ov96_021FFE38
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021FEEC8: .word 0x000008B6
	thumb_func_end ov96_021FEE60

	thumb_func_start ov96_021FEECC
ov96_021FEECC: ; 0x021FEECC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r7, [sp, #0x40]
	str r0, [sp, #0x10]
	ldr r6, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x14]
	add r4, r1, #0
	ldrb r0, [r3, #0x1d]
	lsl r1, r7, #1
	mov ip, r2
	asr r0, r1
	mov r1, #3
	and r0, r1
	add r1, r4, #0
	add r1, #0x9f
	lsl r0, r0, #0x18
	ldrb r1, [r1]
	lsr r0, r0, #0x18
	ldr r5, [sp, #0x50]
	cmp r1, r0
	beq _021FEF0A
	add r1, r4, #0
	add r1, #0x9f
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp, #0x14]
	add r1, #0xa0
	strb r0, [r1]
	mov r0, #1
	str r0, [sp, #0x14]
_021FEF0A:
	add r0, sp, #0x18
	str r0, [sp]
	mov r1, ip
	ldr r2, [r1]
	lsl r0, r6, #2
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	mov r2, ip
	ldr r3, [r2, #4]
	ldr r0, [r4, r0]
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r1, r1, #0xc
	asr r2, r2, #0xc
	add r3, sp, #0x1c
	bl ov96_021EB0A4
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FEFB0
	cmp r0, #1
	beq _021FEF56
	cmp r0, #2
	beq _021FEF82
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021FEF56:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _021FEF66
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _021FEF66
	mov r1, #1
	b _021FEF68
_021FEF66:
	mov r1, #0
_021FEF68:
	ldr r0, [sp, #0x48]
	str r6, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	add r2, sp, #0x20
	add r3, r7, #0
	str r5, [sp, #0xc]
	bl ov96_021FEBF0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021FEF82:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _021FEF92
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _021FEF92
	mov r1, #1
	b _021FEF94
_021FEF92:
	mov r1, #0
_021FEF94:
	ldr r0, [sp, #0x48]
	add r2, r7, #0
	str r0, [sp]
	add r0, r1, #0
	orr r0, r5
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0x20
	add r3, r6, #0
	str r5, [sp, #8]
	bl ov96_021FED3C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021FEFB0:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021FEFDA
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _021FEFC6
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _021FEFC6
	mov r0, #1
	b _021FEFC8
_021FEFC6:
	mov r0, #0
_021FEFC8:
	orr r0, r5
	str r0, [sp]
	ldr r3, [sp, #0x48]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	str r5, [sp, #4]
	bl ov96_021FEE60
_021FEFDA:
	ldr r0, [r4, #0x70]
	add r1, sp, #0x20
	bl ov96_021EB588
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FEECC

	thumb_func_start ov96_021FEFE8
ov96_021FEFE8: ; 0x021FEFE8
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r1, #0
	add r1, r2, #0
	ldr r2, [sp]
	ldr r6, [sp, #0x18]
	bl ov96_021E60D8
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x1c
	add r7, r0, #0
	ldrb r0, [r4]
	mul r7, r1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl _fflt
	bl _f2d
	ldr r3, _021FF0B8 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r1, r6, r7
	str r0, [r1, #0x20]
	ldrb r0, [r4, #3]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	bl _fflt
	add r1, r6, r7
	str r0, [r1, #0x28]
	ldrb r0, [r4, #3]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	bl _fflt
	add r1, r6, r7
	str r0, [r1, #0x24]
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r2, [r0, #0x64]
	add r0, r1, #0
	add r0, #0x2e
	strb r2, [r0]
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x8c
	ldr r2, [r0]
	add r0, r1, #0
	add r0, #0x2c
	strb r2, [r0]
	ldrb r0, [r4, #1]
	add r1, #0x2d
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x78]
	strb r0, [r1]
	ldrb r0, [r4, #4]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	bl _fflt
	bl _f2d
	ldr r3, _021FF0B8 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r1, r6, r7
	str r0, [r1, #0x18]
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl _fflt
	bl _f2d
	ldr r3, _021FF0B8 ; =0x40240000
	mov r2, #0
	bl _ddiv
	bl _d2f
	add r1, r6, r7
	str r0, [r1, #0x1c]
	ldrb r0, [r4, #3]
	add r1, #0x2f
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	strb r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FF0B8: .word 0x40240000
	thumb_func_end ov96_021FEFE8

	thumb_func_start ov96_021FF0BC
ov96_021FF0BC: ; 0x021FF0BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	str r2, [sp]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	str r3, [sp, #4]
	str r0, [sp, #0x2c]
	mov r0, #0
	add r7, r0, #0
_021FF0D2:
	stmia r2!, {r7}
	add r0, r0, #1
	stmia r3!, {r7}
	cmp r0, #0x1e
	blt _021FF0D2
	ldr r0, [sp, #0x28]
	str r5, [sp, #8]
	strb r7, [r0]
	ldr r0, [sp, #0x2c]
	strb r7, [r0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, _021FF1C4 ; =0x0000045C
	add r6, r5, r0
_021FF0F4:
	ldr r0, _021FF1C8 ; =0x000004D4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021FF1C0
	ldr r1, [sp, #8]
	ldr r0, _021FF1C4 ; =0x0000045C
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, _021FF1CC ; =0x000004DC
	ldrh r1, [r5, r0]
	ldr r0, [sp, #0x10]
	sub r4, r0, r1
	add r0, r4, #0
	bl _dflt
	ldr r3, _021FF1D0 ; =0x40880000
	mov r2, #0
	bl _dgeq
	blo _021FF144
	add r0, r4, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FF1D4 ; =0x40900000
	mov r0, #0
	bl _dsub
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FF1D8 ; =0x40540000
	mov r0, #0
	bl _dadd
	bl _dfix
	b _021FF17C
_021FF144:
	add r0, r4, #0
	bl _dflt
	ldr r3, _021FF1DC ; =0xC0880000
	mov r2, #0
	bl _dleq
	bhi _021FF178
	add r0, r4, #0
	bl _dflt
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FF1D4 ; =0x40900000
	mov r0, #0
	bl _dadd
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021FF1D8 ; =0x40540000
	mov r0, #0
	bl _dsub
	bl _dfix
	b _021FF17C
_021FF178:
	mov r0, #0x50
	sub r0, r0, r4
_021FF17C:
	mov r1, #0x1f
	mvn r1, r1
	cmp r0, r1
	blt _021FF1B0
	mov r1, #0x12
	lsl r1, r1, #4
	cmp r0, r1
	bgt _021FF1B0
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _021FF1A2
	ldr r0, [sp, #0x2c]
	ldrb r2, [r0]
	add r1, r2, #1
	strb r1, [r0]
	ldr r0, [sp, #4]
	lsl r1, r2, #2
	str r6, [r0, r1]
	b _021FF1B0
_021FF1A2:
	ldr r0, [sp, #0x28]
	ldrb r2, [r0]
	add r1, r2, #1
	strb r1, [r0]
	ldr r0, [sp]
	lsl r1, r2, #2
	str r6, [r0, r1]
_021FF1B0:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, #4
	add r5, #0xc
	add r6, r6, #4
	str r0, [sp, #8]
	cmp r7, #0x1e
	blt _021FF0F4
_021FF1C0:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FF1C4: .word 0x0000045C
_021FF1C8: .word 0x000004D4
_021FF1CC: .word 0x000004DC
_021FF1D0: .word 0x40880000
_021FF1D4: .word 0x40900000
_021FF1D8: .word 0x40540000
_021FF1DC: .word 0xC0880000
	thumb_func_end ov96_021FF0BC

	thumb_func_start ov96_021FF1E0
ov96_021FF1E0: ; 0x021FF1E0
	push {r4, r5}
	ldr r3, [r1]
	lsl r1, r3, #0x18
	lsr r4, r1, #0x18
	asr r1, r3, #8
	lsl r1, r1, #0x18
	asr r3, r3, #0x10
	lsr r1, r1, #0x18
	lsl r3, r3, #0x10
	lsr r5, r3, #0x10
	add r1, #0x20
	str r4, [r2]
	cmp r4, #3
	bne _021FF208
	sub r5, #0x20
	str r5, [r2, #4]
	sub r1, #0x20
	str r1, [r2, #8]
	pop {r4, r5}
	bx lr
_021FF208:
	cmp r4, #1
	bne _021FF210
	mov r3, #0x30
	b _021FF212
_021FF210:
	mov r3, #0x20
_021FF212:
	lsr r4, r3, #1
	sub r5, r5, r4
	sub r4, r1, r4
	str r5, [r2, #4]
	str r4, [r2, #8]
	add r1, r5, r3
	str r1, [r2, #0xc]
	str r4, [r2, #0x10]
	str r1, [r2, #0x14]
	add r1, r4, r3
	str r1, [r2, #0x18]
	str r5, [r2, #0x1c]
	str r1, [r2, #0x20]
	ldr r3, [r2, #4]
	ldr r1, [r2, #8]
	str r3, [r2, #0x24]
	str r1, [r2, #0x28]
	ldr r3, [r2, #0xc]
	ldr r1, [r2, #0x10]
	str r3, [r2, #0x2c]
	str r1, [r2, #0x30]
	ldr r3, [r2, #0xc]
	ldr r1, [r2, #0x10]
	str r3, [r2, #0x34]
	str r1, [r2, #0x38]
	ldr r3, [r2, #0x14]
	ldr r1, [r2, #0x18]
	str r3, [r2, #0x3c]
	str r1, [r2, #0x40]
	ldr r3, [r2, #0x14]
	ldr r1, [r2, #0x18]
	str r3, [r2, #0x44]
	str r1, [r2, #0x48]
	ldr r3, [r2, #0x1c]
	ldr r1, [r2, #0x20]
	str r3, [r2, #0x4c]
	str r1, [r2, #0x50]
	ldr r3, [r2, #0x1c]
	ldr r1, [r2, #0x20]
	str r3, [r2, #0x54]
	str r1, [r2, #0x58]
	ldr r3, [r2, #4]
	ldr r1, [r2, #8]
	str r3, [r2, #0x5c]
	str r1, [r2, #0x60]
	ldr r1, [r2, #0x28]
	sub r1, r1, r0
	str r1, [r2, #0x28]
	ldr r1, [r2, #0x30]
	sub r1, r1, r0
	str r1, [r2, #0x30]
	ldr r1, [r2, #0x34]
	add r1, r1, r0
	str r1, [r2, #0x34]
	ldr r1, [r2, #0x3c]
	add r1, r1, r0
	str r1, [r2, #0x3c]
	ldr r1, [r2, #0x48]
	add r1, r1, r0
	str r1, [r2, #0x48]
	ldr r1, [r2, #0x50]
	add r1, r1, r0
	str r1, [r2, #0x50]
	ldr r1, [r2, #0x54]
	sub r1, r1, r0
	str r1, [r2, #0x54]
	ldr r1, [r2, #0x5c]
	sub r0, r1, r0
	str r0, [r2, #0x5c]
	pop {r4, r5}
	bx lr
	thumb_func_end ov96_021FF1E0

	thumb_func_start ov96_021FF2A0
ov96_021FF2A0: ; 0x021FF2A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	str r0, [sp, #4]
	ldr r0, [sp, #0xb8]
	str r1, [sp, #8]
	str r0, [sp, #0xb8]
	add r0, r3, #0
	ldr r0, [r0]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	cmp r0, #3
	bne _021FF2BE
	add sp, #0xa4
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021FF2BE:
	ldr r0, [sp, #4]
	add r7, r3, #0
	ldr r1, [r0]
	add r6, r3, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	add r5, r3, #0
	ldr r1, [r0, #4]
	ldr r2, _021FF56C ; =ov96_0221C5FC
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #8]
	add r3, sp, #0x34
	ldr r1, [r0]
	mov r4, #0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	add r7, #0x2c
	ldr r1, [r0, #4]
	add r6, #0x24
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [sp, #0x20]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
_021FF30E:
	add r3, sp, #0x34
	add r2, sp, #0x94
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x2c
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x24
	add r3, sp, #0x1c
	bl sub_02020F4C
	cmp r0, #0
	beq _021FF34C
	ldr r0, [sp, #0x2c]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0xb8]
	str r1, [r0]
	ldr r0, [sp, #0x30]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0xb8]
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	add r0, sp, #0x94
	lsl r1, r4, #2
	add sp, #0xa4
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_021FF34C:
	mov r0, #0
	cmp r4, #0
	bne _021FF37C
	cmp r4, #2
	bne _021FF37C
	ldr r2, [sp, #0x28]
	ldr r1, [r5, #0x28]
	cmp r2, r1
	bne _021FF3A0
	ldr r2, [r5, #0x2c]
	ldr r3, [r5, #0x24]
	cmp r3, r2
	bge _021FF36A
	add r1, r3, #0
	b _021FF36E
_021FF36A:
	add r1, r2, #0
	add r2, r3, #0
_021FF36E:
	ldr r3, [sp, #0x24]
	cmp r1, r3
	bgt _021FF3A0
	cmp r3, r2
	bgt _021FF3A0
	mov r0, #1
	b _021FF3A0
_021FF37C:
	ldr r2, [sp, #0x24]
	ldr r1, [r5, #0x24]
	cmp r2, r1
	bne _021FF3A0
	ldr r2, [r5, #0x30]
	ldr r3, [r5, #0x28]
	cmp r3, r2
	bge _021FF390
	add r1, r3, #0
	b _021FF394
_021FF390:
	add r1, r2, #0
	add r2, r3, #0
_021FF394:
	ldr r3, [sp, #0x28]
	cmp r1, r3
	bgt _021FF3A0
	cmp r3, r2
	bgt _021FF3A0
	mov r0, #1
_021FF3A0:
	cmp r0, #0
	beq _021FF3C2
	ldr r2, [sp, #4]
	ldmia r2!, {r0, r1}
	str r2, [sp, #4]
	ldr r2, [sp, #0xb8]
	stmia r2!, {r0, r1}
	ldr r0, [sp, #4]
	str r2, [sp, #0xb8]
	ldr r1, [r0]
	add r0, r2, #0
	str r1, [r0]
	add r0, sp, #0x94
	lsl r1, r4, #2
	add sp, #0xa4
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_021FF3C2:
	add r4, r4, #1
	add r7, #0x10
	add r6, #0x10
	add r5, #0x10
	cmp r4, #4
	blt _021FF30E
	ldr r3, _021FF570 ; =ov96_0221C60C
	add r2, sp, #0x44
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #0x10]
	mov r5, #0
	lsl r6, r0, #0xc
	add r7, sp, #0x6c
_021FF3E4:
	add r3, sp, #0x44
	add r2, sp, #0x84
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #4]
	add r1, sp, #0x78
	lsl r0, r0, #0xc
	str r0, [sp, #0x78]
	ldr r0, [r4, #8]
	add r2, r7, #0
	lsl r0, r0, #0xc
	str r0, [sp, #0x7c]
	mov r0, #0
	str r0, [sp, #0x80]
	ldr r0, [sp, #8]
	bl VEC_Subtract
	add r0, r7, #0
	bl VEC_Mag
	cmp r0, r6
	bgt _021FF452
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, sp, #0x78
	lsl r3, r3, #0xc
	bl ov96_021FF67C
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0x60
	bl VEC_Subtract
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0x60
	add r3, sp, #0x54
	bl VEC_MultAdd
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0xb8]
	str r1, [r0]
	ldr r1, [sp, #0x58]
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	add r0, sp, #0x84
	lsl r1, r5, #2
	add sp, #0xa4
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_021FF452:
	add r5, r5, #1
	add r4, #8
	cmp r5, #4
	blt _021FF3E4
	ldr r0, [sp, #8]
	ldr r1, [r0]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r0, r1
	bgt _021FF564
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x14]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _021FF564
	ldr r0, [sp, #8]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #8]
	lsl r0, r0, #0xc
	cmp r0, r1
	bgt _021FF564
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x18]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _021FF564
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xb8]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x10]
	ldr r0, [r0, #4]
	ldr r3, [r3, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	str r3, [sp, #0x14]
	ldr r2, [r0]
	ldr r0, [sp, #0x18]
	lsl r3, r3, #0xc
	lsl r0, r0, #0xc
	sub r0, r0, r2
	sub r3, r3, r2
	mov ip, r1
	cmp r0, #0
	bge _021FF4BC
	sub r2, r1, #1
	mul r0, r2
_021FF4BC:
	cmp r3, #0
	bge _021FF4C6
	mov r2, #0
	mvn r2, r2
	mul r3, r2
_021FF4C6:
	cmp r0, r3
	bge _021FF4CE
	mov r6, #0xd
	b _021FF4D2
_021FF4CE:
	add r0, r3, #0
	mov r6, #0xb
_021FF4D2:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x10]
	ldr r2, [r2, #8]
	ldr r5, [r3, #4]
	ldr r7, [r4, #0x18]
	lsl r3, r2, #0xc
	lsl r4, r7, #0xc
	sub r3, r3, r5
	sub r4, r4, r5
	cmp r3, #0
	bge _021FF4F0
	mov r5, #0
	mvn r5, r5
	mul r3, r5
_021FF4F0:
	cmp r4, #0
	bge _021FF4FA
	mov r5, #0
	mvn r5, r5
	mul r4, r5
_021FF4FA:
	cmp r3, r4
	bge _021FF502
	mov r4, #0xa
	b _021FF506
_021FF502:
	add r3, r4, #0
	mov r4, #0xc
_021FF506:
	cmp r0, r3
	bgt _021FF512
	mov r0, #1
	mov ip, r0
	add r0, r6, #0
	b _021FF516
_021FF512:
	mov r1, #1
	add r0, r4, #0
_021FF516:
	mov r3, ip
	cmp r3, #0
	beq _021FF540
	cmp r6, #0xd
	bne _021FF530
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0xc]
	sub r1, r2, r1
	lsl r2, r1, #0xc
	ldr r1, [sp, #0xb8]
	add sp, #0xa4
	str r2, [r1]
	pop {r4, r5, r6, r7, pc}
_021FF530:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0xc]
	add r1, r2, r1
	lsl r2, r1, #0xc
	ldr r1, [sp, #0xb8]
	add sp, #0xa4
	str r2, [r1]
	pop {r4, r5, r6, r7, pc}
_021FF540:
	cmp r1, #0
	beq _021FF566
	cmp r4, #0xa
	bne _021FF556
	ldr r1, [sp, #0xc]
	sub r1, r2, r1
	lsl r2, r1, #0xc
	ldr r1, [sp, #0xb8]
	add sp, #0xa4
	str r2, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_021FF556:
	ldr r1, [sp, #0xc]
	add r1, r7, r1
	lsl r2, r1, #0xc
	ldr r1, [sp, #0xb8]
	add sp, #0xa4
	str r2, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_021FF564:
	mov r0, #0
_021FF566:
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	nop
_021FF56C: .word ov96_0221C5FC
_021FF570: .word ov96_0221C60C
	thumb_func_end ov96_021FF2A0

	thumb_func_start ov96_021FF574
ov96_021FF574: ; 0x021FF574
	push {r3, r4}
	ldr r3, [r1, #4]
	ldr r2, [r0]
	ldr r1, [r1, #8]
	lsl r3, r3, #0xc
	ldr r0, [r0, #4]
	lsl r4, r1, #0xc
	cmp r3, r2
	bge _021FF5A0
	mov r1, #1
	lsl r1, r1, #0x12
	add r3, r3, r1
	cmp r2, r3
	bge _021FF5A0
	cmp r4, r0
	bge _021FF5A0
	add r1, r4, r1
	cmp r0, r1
	bge _021FF5A0
	mov r0, #1
	pop {r3, r4}
	bx lr
_021FF5A0:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_021FF574

	thumb_func_start ov96_021FF5A8
ov96_021FF5A8: ; 0x021FF5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1dc
	str r1, [sp, #8]
	ldr r1, [sp, #0x1f0]
	add r7, r3, #0
	str r1, [sp, #0x1f0]
	ldr r1, [sp, #0x1f4]
	add r6, r2, #0
	str r1, [sp, #0x1f4]
	add r1, sp, #0x14
	add r1, #1
	str r1, [sp]
	add r1, sp, #0x14
	str r1, [sp, #4]
	ldr r1, [r7]
	add r2, sp, #0x164
	add r3, sp, #0xec
	bl ov96_021FF0BC
	mov r4, #0
	str r4, [sp, #0x10]
	add r0, sp, #0x14
	ldrb r0, [r0]
	cmp r0, #0
	ble _021FF604
	add r5, sp, #0xec
_021FF5DC:
	ldr r1, [r5]
	add r0, r6, #0
	add r2, sp, #0x88
	bl ov96_021FF1E0
	add r0, r7, #0
	add r1, sp, #0x88
	bl ov96_021FF574
	cmp r0, #0
	beq _021FF5F8
	mov r0, #1
	str r0, [sp, #0x10]
	b _021FF604
_021FF5F8:
	add r0, sp, #0x14
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _021FF5DC
_021FF604:
	mov r5, #0
	str r5, [sp, #0xc]
	add r0, sp, #0x14
	ldrb r0, [r0, #1]
	cmp r0, #0
	ble _021FF66C
	add r4, sp, #0x164
_021FF612:
	ldr r1, [r4]
	add r0, r6, #0
	add r2, sp, #0x24
	bl ov96_021FF1E0
	add r0, sp, #0x18
	str r0, [sp]
	ldr r1, [sp, #0x1f0]
	add r0, r7, #0
	add r2, r6, #0
	add r3, sp, #0x24
	bl ov96_021FF2A0
	cmp r0, #0
	beq _021FF660
	cmp r0, #0xa
	blt _021FF644
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1f4]
	str r2, [r1]
	ldr r2, [sp, #0x1c]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #8]
	b _021FF658
_021FF644:
	ldr r1, [sp, #8]
	cmp r0, r1
	beq _021FF658
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1f4]
	str r2, [r1]
	ldr r2, [sp, #0x1c]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #8]
_021FF658:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	b _021FF66C
_021FF660:
	add r0, sp, #0x14
	ldrb r0, [r0, #1]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _021FF612
_021FF66C:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #8
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0x1dc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021FF5A8

	thumb_func_start ov96_021FF67C
ov96_021FF67C: ; 0x021FF67C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r4, #0
	add r2, sp, #0
	add r7, r3, #0
	bl VEC_Subtract
	add r0, sp, #0
	bl VEC_Mag
	add r5, r0, #0
	mul r5, r0
	add r0, sp, #0
	add r1, r6, #0
	bl VEC_DotProduct
	add r4, r0, #0
	add r0, r6, #0
	bl VEC_Mag
	add r1, r0, #0
	mul r1, r0
	add r0, r7, #0
	mul r0, r7
	sub r0, r1, r0
	mul r0, r5
	sub r0, r4, r0
	bl FX_Sqrt
	add r7, r0, #0
	sub r0, r7, r4
	add r1, r5, #0
	bl FX_Div
	add r6, r0, #0
	add r0, r4, r7
	neg r0, r0
	add r1, r5, #0
	bl FX_Div
	cmp r6, r0
	bgt _021FF6D8
	add r0, r6, #0
_021FF6D8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_021FF67C

	thumb_func_start ov96_021FF6DC
ov96_021FF6DC: ; 0x021FF6DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xa5
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FF6F8
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	add r0, #0x2c
	ldrb r0, [r0]
	bl _ffltu
	pop {r3, r4, r5, pc}
_021FF6F8:
	mov r0, #0x1c
	add r4, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldr r0, [r0, #0x24]
	bl _f2d
	ldr r3, _021FF728 ; =0x40440000
	mov r2, #0
	bl _dleq
	bhi _021FF71C
	add r0, r5, r4
	add r0, #0x2d
	ldrb r0, [r0]
	bl _ffltu
	pop {r3, r4, r5, pc}
_021FF71C:
	add r0, r5, r4
	add r0, #0x2e
	ldrb r0, [r0]
	bl _ffltu
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FF728: .word 0x40440000
	thumb_func_end ov96_021FF6DC

	thumb_func_start ov96_021FF72C
ov96_021FF72C: ; 0x021FF72C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r3, [r0]
	ldr r2, [r1]
	add r2, r3, r2
	str r2, [r5]
	ldr r4, [r1, #4]
	ldr r6, [r0, #4]
	asr r3, r4, #0x1f
	asr r1, r6, #0x1f
	add r0, r6, #0
	add r2, r4, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	bmi _021FF760
	add r0, r6, r4
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021FF760:
	str r4, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_021FF72C

	thumb_func_start ov96_021FF764
ov96_021FF764: ; 0x021FF764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	str r0, [sp, #8]
	mov r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r0, [sp, #0x24]
	str r0, [sp, #0x9c]
	str r0, [sp, #0x90]
	str r0, [sp, #0x18]
	add r4, r1, #0
_021FF77A:
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FF796
	add r0, r4, #0
	add r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FF798
_021FF796:
	b _021FFAC8
_021FF798:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x3c
	str r0, [sp]
	ldr r2, [r4, #0x7c]
	ldr r0, [sp, #0x2c]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	add r2, r4, #0
	add r2, #0x80
	ldr r3, [r2]
	asr r1, r1, #0xc
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r3, sp, #0x40
	bl ov96_021EB0A4
	add r0, r4, #0
	str r0, [sp, #0x30]
	add r0, #0x8c
	ldr r5, [sp, #0xc]
	mov r6, #0
	str r0, [sp, #0x30]
_021FF7D0:
	ldr r0, [sp, #0x18]
	cmp r0, r6
	bne _021FF7D8
	b _021FFABE
_021FF7D8:
	add r0, r5, #0
	add r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FF8E0
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	ldr r7, [sp, #0x40]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x28]
	add r0, sp, #0x34
	str r0, [sp]
	ldr r1, [r5, #0x7c]
	ldr r0, [sp, #0x28]
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	add r2, r5, #0
	add r2, #0x80
	ldr r3, [r2]
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	add r3, sp, #0x38
	bl ov96_021EB0A4
	ldr r0, [r4, #0x7c]
	str r0, [sp, #0x1c]
	bl _dflt
	ldr r3, _021FFADC ; =0x41480000
	mov r2, #0
	bl _dgr
	bls _021FF846
	mov r0, #1
	ldr r1, [r5, #0x7c]
	lsl r0, r0, #0x14
	cmp r1, r0
	bge _021FF846
	ldr r0, [sp, #0x38]
	bl _dflt
	ldr r3, _021FFAE0 ; =0x40900000
	mov r2, #0
	bl _dadd
	bl _dfix
	str r0, [sp, #0x38]
	b _021FF874
_021FF846:
	ldr r0, [r5, #0x7c]
	bl _dflt
	ldr r3, _021FFADC ; =0x41480000
	mov r2, #0
	bl _dgr
	bls _021FF874
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x14
	cmp r1, r0
	bge _021FF874
	add r0, r7, #0
	bl _dflt
	ldr r3, _021FFAE0 ; =0x40900000
	mov r2, #0
	bl _dadd
	bl _dfix
	add r7, r0, #0
_021FF874:
	add r0, sp, #0x8c
	str r0, [sp]
	add r0, sp, #0x44
	str r0, [sp, #4]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x34]
	ldr r0, [sp, #0x28]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x88
	bl ov96_021EAF78
	add r0, sp, #0x98
	str r0, [sp]
	add r0, sp, #0x48
	str r0, [sp, #4]
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x2c]
	lsl r1, r7, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x94
	bl ov96_021EAF78
	add r0, sp, #0x88
	add r1, sp, #0x94
	add r2, sp, #0x7c
	bl VEC_Subtract
	add r0, sp, #0x7c
	bl VEC_Mag
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	add r1, r2, r1
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _021FF8C0
	b _021FFAAC
_021FF8C0:
	add r0, r4, r6
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	bne _021FF8E0
	mov r1, #0
	add r0, sp, #0x70
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [sp, #0x30]
	add r0, sp, #0x7c
	bl VEC_DotProduct
	cmp r0, #0
	bgt _021FF8E2
_021FF8E0:
	b _021FFABE
_021FF8E2:
	add r0, r4, #0
	add r0, #0x8c
	bl VEC_Mag
	cmp r0, #0
	beq _021FF94C
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	mov r2, #0x1c
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	ldr r0, _021FFAE4 ; =0x45800000
	mul r2, r1
	add r1, r4, r2
	ldr r1, [r1, #0x20]
	bl _fmul
	bl _ffix
	add r1, r4, #0
	add r3, r5, #0
	add r1, #0x8c
	add r2, sp, #0x70
	add r3, #0x8c
	bl VEC_MultAdd
	add r0, r5, #0
	add r0, #0x8c
	bl VEC_Mag
	mov r1, #0xb
	lsl r1, r1, #0xc
	cmp r0, r1
	ble _021FF94C
	add r1, sp, #0x64
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	add r0, #0x8c
	add r1, r0, #0
	bl VEC_Normalize
	add r1, r5, #0
	mov r0, #0xb
	add r1, #0x8c
	lsl r0, r0, #0xc
	add r2, sp, #0x64
	add r3, r1, #0
	bl VEC_MultAdd
_021FF94C:
	ldr r0, [sp, #0x14]
	mov r1, #0x1c
	mul r1, r0
	add r0, r5, r1
	add r1, r0, #0
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, #1
	bne _021FF98A
	mov r1, #0
	str r1, [r0, #0x24]
	add r1, r0, #0
	mov r2, #2
	add r1, #0x30
	strb r2, [r1]
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	strb r1, [r0]
	mov r3, #1
	add r1, r5, #0
	add r2, r5, #0
	str r3, [sp]
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	bl ov96_021E8228
_021FF98A:
	add r3, sp, #0x58
	mov r7, #0
	str r7, [r3]
	str r7, [r3, #4]
	str r7, [r3, #8]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x8c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x1c
	str r0, [r2]
	ldr r0, [sp, #0x20]
	mul r1, r0
	add r0, r4, r1
	add r1, r0, #0
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, #1
	bne _021FF9DC
	add r1, r0, #0
	str r7, [r0, #0x24]
	mov r2, #2
	add r1, #0x30
	strb r2, [r1]
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xa4
	strb r1, [r0]
	mov r3, #1
	add r1, r4, #0
	add r2, r4, #0
	str r3, [sp]
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	bl ov96_021E8228
_021FF9DC:
	add r0, r4, r6
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FF9EA
	bl GF_AssertFail
_021FF9EA:
	ldr r0, [sp, #0x18]
	add r0, r5, r0
	add r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FF9FA
	bl GF_AssertFail
_021FF9FA:
	add r1, r5, r6
	mov r0, #1
	add r1, #0x98
	strb r0, [r1]
	ldr r1, [sp, #0x18]
	add r1, r4, r1
	add r1, #0x98
	strb r0, [r1]
	ldr r1, [sp, #0x24]
	cmp r1, #0
	bne _021FFA6C
	add r2, sp, #0x4c
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r0, [sp, #0x24]
	add r0, sp, #0x88
	add r1, sp, #0x94
	bl VEC_Subtract
	add r0, sp, #0x4c
	add r1, r0, #0
	bl VEC_Normalize
	ldr r0, [sp, #0x48]
	add r1, sp, #0x4c
	lsl r0, r0, #0xc
	add r2, sp, #0x94
	add r3, r1, #0
	bl VEC_MultAdd
	ldr r6, [sp, #0x4c]
	add r0, r6, #0
	bl _dflt
	ldr r3, _021FFAE8 ; =0x41500000
	mov r2, #0
	bl _dgeq
	blo _021FFA60
	add r0, r6, #0
	bl _dflt
	ldr r3, _021FFAE8 ; =0x41500000
	mov r2, #0
	bl _dsub
	bl _dfix
	str r0, [sp, #0x4c]
_021FFA60:
	add r3, sp, #0x4c
	ldr r2, [sp, #0x10]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_021FFA6C:
	add r0, r5, #0
	mov r1, #6
	add r0, #0xa9
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x12
	add r0, #0xa9
	strb r1, [r0]
	add r1, r5, #0
	mov r0, #1
	str r0, [sp]
	add r1, #0xd0
	add r5, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r5]
	ldr r0, [sp, #8]
	mov r3, #4
	bl ov96_021E8228
	mov r0, #1
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp]
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [sp, #8]
	mov r3, #4
	bl ov96_021E8228
	b _021FFAC8
_021FFAAC:
	add r1, r4, r6
	add r1, #0x98
	mov r0, #0
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	add r1, r0, r5
	add r1, #0x98
	mov r0, #0
	strb r0, [r1]
_021FFABE:
	add r6, r6, #1
	add r5, #0xd4
	cmp r6, #4
	bge _021FFAC8
	b _021FF7D0
_021FFAC8:
	ldr r0, [sp, #0x18]
	add r4, #0xd4
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _021FFAD6
	b _021FF77A
_021FFAD6:
	ldr r0, [sp, #0x24]
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FFADC: .word 0x41480000
_021FFAE0: .word 0x40900000
_021FFAE4: .word 0x45800000
_021FFAE8: .word 0x41500000
	thumb_func_end ov96_021FF764

	thumb_func_start ov96_021FFAEC
ov96_021FFAEC: ; 0x021FFAEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r3, r0, #0
	add r4, r2, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r2]
	ldrb r0, [r3, #8]
	cmp r0, #1
	beq _021FFB10
	cmp r0, #2
	beq _021FFB1C
	cmp r0, #3
	beq _021FFB28
	b _021FFB34
_021FFB10:
	mov r0, #5
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	b _021FFB38
_021FFB1C:
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #4]
	b _021FFB38
_021FFB28:
	mov r0, #0xa
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	b _021FFB38
_021FFB34:
	bl GF_AssertFail
_021FFB38:
	add r0, r4, #0
	add r1, sp, #0
	bl ov96_021EB588
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov96_021FFAEC

	thumb_func_start ov96_021FFB44
ov96_021FFB44: ; 0x021FFB44
	push {r3, lr}
	ldrb r1, [r0, #0xb]
	cmp r1, #3
	bne _021FFB58
	mov r1, #0x96
	ldr r0, [r0, #4]
	lsl r1, r1, #2
	bl ov96_021EB630
	pop {r3, pc}
_021FFB58:
	ldrb r2, [r0, #0xa]
	mov r1, #0xa0
	add r2, #0x20
	sub r2, r1, r2
	bpl _021FFB64
	mov r2, #0
_021FFB64:
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	add r2, r1, #1
	mov r1, #0x1e
	mul r1, r2
	ldr r0, [r0, #4]
	add r1, r1, #3
	bl ov96_021EB630
	pop {r3, pc}
	thumb_func_end ov96_021FFB44

	thumb_func_start ov96_021FFB7C
ov96_021FFB7C: ; 0x021FFB7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xa8
	sub r1, r0, r1
	bpl _021FFB88
	mov r1, #0
_021FFB88:
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r1, r0, #3
	cmp r2, #0
	beq _021FFB9C
	mov r0, #0x1e
	mul r0, r1
	add r4, r0, #4
	b _021FFBA2
_021FFB9C:
	mov r0, #0x1e
	mul r0, r1
	add r4, r0, #7
_021FFBA2:
	ldr r0, [r5, #0x70]
	add r1, r4, #0
	bl ov96_021EB630
	ldr r0, [r5, #0x78]
	add r1, r4, #1
	bl ov96_021EB630
	ldr r0, [r5, #0x6c]
	add r1, r4, #1
	bl ov96_021EB630
	ldr r0, [r5, #0x74]
	add r1, r4, #2
	bl ov96_021EB630
	mov r6, #0
_021FFBC4:
	ldr r0, [r5]
	add r1, r4, #2
	bl ov96_021EABA8
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021FFBC4
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_021FFB7C

	thumb_func_start ov96_021FFBD8
ov96_021FFBD8: ; 0x021FFBD8
	push {r4, lr}
	sub sp, #0x10
	mov r2, #0x11
	lsl r2, r2, #4
	add r4, r0, #0
	cmp r1, r2
	ble _021FFC0A
	mov r2, #3
	lsl r2, r2, #8
	cmp r1, r2
	bge _021FFC0A
	mov r1, #3
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #0x15
	str r1, [sp, #8]
	mov r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl FillBgTilemapRect
	b _021FFC26
_021FFC0A:
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	mov r3, #0xa
	bl FillBgTilemapRect
_021FFC26:
	add r0, r4, #0
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_021FFBD8

	thumb_func_start ov96_021FFC34
ov96_021FFC34: ; 0x021FFC34
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r3, _021FFD3C ; =ov96_0221C5CC
	add r4, r0, #0
	add r5, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021FFD40 ; =ov96_0221C5D8
	str r0, [r2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021FFD44 ; =ov96_0221C5F0
	str r0, [r2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r4, #0xe]
	cmp r0, r5
	bge _021FFC6C
	strh r5, [r4, #0xe]
	mov r0, #1
	b _021FFC6E
_021FFC6C:
	mov r0, #0
_021FFC6E:
	cmp r0, #0
	beq _021FFD0E
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
	cmp r6, #0
	beq _021FFCB2
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0xb
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4]
	add r1, r6, #1
	bl Set2dSpriteAnimSeqNo
	ldr r0, [r4, #4]
	add r1, r5, #1
	bl Set2dSpriteAnimSeqNo
	b _021FFCCE
_021FFCB2:
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4]
	add r1, r5, #1
	bl Set2dSpriteAnimSeqNo
	ldr r0, [r4, #4]
	mov r1, #0
	bl Set2dSpriteAnimSeqNo
_021FFCCE:
	ldr r0, [r4, #8]
	add r1, sp, #0x18
	bl ov96_021EB588
	ldr r0, [r4]
	add r1, sp, #0xc
	bl Sprite_SetMatrix
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl Sprite_SetMatrix
	mov r1, #1
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #1
	bl Set2dSpriteVisibleFlag
	ldr r0, [r4, #4]
	mov r1, #1
	bl Set2dSpriteVisibleFlag
	mov r0, #0x3c
	strh r0, [r4, #0xc]
	ldr r0, _021FFD48 ; =0x0000088F
	bl PlaySE
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_021FFD0E:
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _021FFD36
	mov r2, #0
	strh r2, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov96_021EB52C
	ldr r0, [r4]
	mov r1, #0
	bl Set2dSpriteVisibleFlag
	ldr r0, [r4, #4]
	mov r1, #0
	bl Set2dSpriteVisibleFlag
_021FFD36:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021FFD3C: .word ov96_0221C5CC
_021FFD40: .word ov96_0221C5D8
_021FFD44: .word ov96_0221C5F0
_021FFD48: .word 0x0000088F
	thumb_func_end ov96_021FFC34

	thumb_func_start ov96_021FFD4C
ov96_021FFD4C: ; 0x021FFD4C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4]
	ldr r2, _021FFD7C ; =ov96_0221C5C4
	add r1, r4, #4
	bl AddWindow
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4]
	mov r1, #3
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r4, #0x14]
	mov r0, #0
	lsl r1, r1, #4
	bl LoadFontPal0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021FFD7C: .word ov96_0221C5C4
	thumb_func_end ov96_021FFD4C

	thumb_func_start ov96_021FFD80
ov96_021FFD80: ; 0x021FFD80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r0, r5, #4
	mov r1, #0
	add r4, r2, #0
	bl FillWindowPixelBuffer
	mov r0, #0xa
	mul r0, r4
	bl _dflt
	ldr r3, _021FFE2C ; =0x40900000
	mov r2, #0
	bl _ddiv
	bl _dfix
	add r7, r0, #0
	cmp r7, #9
	ble _021FFDB0
	bl GF_AssertFail
_021FFDB0:
	ldr r2, _021FFE30 ; =0x00000135
	ldr r3, [r5, #0x14]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	bl MessageFormat_New
	mov r3, #2
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0x10]
	mov r1, #0
	add r4, r0, #0
	bl BufferIntegerAsString
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r4, #0
	add r2, r7, #0
	add r3, r1, #0
	bl BufferIntegerAsString
	ldr r3, [r5, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xa2
	bl ReadMsgData_ExpandPlaceholders
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FFE34 ; =0x000F0E00
	mov r1, #4
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r7, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	add r0, r4, #0
	bl MessageFormat_Delete
	add r0, r6, #0
	bl DestroyMsgData
	add r0, r5, #4
	bl CopyWindowToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021FFE2C: .word 0x40900000
_021FFE30: .word 0x00000135
_021FFE34: .word 0x000F0E00
	thumb_func_end ov96_021FFD80

	thumb_func_start ov96_021FFE38
ov96_021FFE38: ; 0x021FFE38
	push {r3, lr}
	cmp r0, #0
	blt _021FFE5A
	mov r3, #1
	lsl r3, r3, #8
	cmp r0, r3
	bge _021FFE5A
	cmp r2, #0
	beq _021FFE4E
	mov r2, #3
	b _021FFE50
_021FFE4E:
	mov r2, #4
_021FFE50:
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r1, r2, #0
	bl sub_0200606C
_021FFE5A:
	pop {r3, pc}
	thumb_func_end ov96_021FFE38

	thumb_func_start ov96_021FFE5C
ov96_021FFE5C: ; 0x021FFE5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _021FFEE4 ; =0x00000644
	add r7, r2, #0
	add r3, r0, r1
	mov r1, #0xd4
	mul r1, r5
	add r2, r0, r1
	add r1, r2, #0
	add r1, #0xbb
	ldrb r6, [r1]
	mov r1, #0x1c
	mov r4, #0
	mul r1, r6
	add r6, r2, #0
	add r6, #0xcd
	add r1, r2, r1
	add r1, #0x60
	ldrb r6, [r6]
	ldrb r1, [r1]
	cmp r6, #0
	beq _021FFE8C
	mov r4, #3
	b _021FFEA6
_021FFE8C:
	add r2, #0xd9
	ldrb r2, [r2]
	cmp r2, #0
	beq _021FFE98
	mov r4, #3
	b _021FFEA6
_021FFE98:
	cmp r1, #2
	bne _021FFEA0
	mov r4, #3
	b _021FFEA6
_021FFEA0:
	cmp r1, #1
	bne _021FFEA6
	mov r4, #1
_021FFEA6:
	cmp r7, #0
	bne _021FFEAE
	strb r4, [r3, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FFEAE:
	mov r1, #0xc
	mul r1, r5
	add r2, r0, r1
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021FFED8
	cmp r4, #1
	bhi _021FFEC8
	mov r0, #2
	strb r0, [r3, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FFEC8:
	cmp r4, #3
	bne _021FFED2
	mov r0, #4
	strb r0, [r3, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FFED2:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021FFED8:
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _021FFEE2
	strb r4, [r3, r5]
_021FFEE2:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FFEE4: .word 0x00000644
	thumb_func_end ov96_021FFE5C

	thumb_func_start ov96_021FFEE8
ov96_021FFEE8: ; 0x021FFEE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov96_021E5F54
	add r0, #0xf0
	bl ov96_021E8A20
	add r4, r0, #0
	add r0, r6, #0
	bl ov96_021E5DC4
	add r7, r0, #0
	add r0, r6, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, r0
	ldrb r2, [r1, #0x10]
	mov r1, #0x7f
	lsl r0, r0, #1
	and r1, r2
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	ldrh r4, [r4, r0]
	cmp r5, #0x3c
	bls _021FFF20
	mov r5, #0x3c
_021FFF20:
	lsl r1, r5, #0xa
	add r1, r4, r1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl ov96_021E8318
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov96_021FFD80
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FFEE8

	thumb_func_start ov96_021FFF3C
ov96_021FFF3C: ; 0x021FFF3C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x1a
	lsl r1, r1, #4
	add r6, r0, #0
	str r2, [sp]
	bl AllocFromHeap
	mov r2, #0x1a
	add r7, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	str r6, [r7]
	ldr r0, [sp]
	str r4, [r7, #8]
	str r0, [r7, #4]
	add r0, r7, #0
	bl ov96_02200DF8
	ldr r2, _021FFFE4 ; =0x00000135
	mov r0, #1
	mov r1, #0x1b
	add r3, r6, #0
	bl NewMsgDataFromNarc
	str r0, [r7, #0x2c]
	add r0, r6, #0
	bl MessageFormat_New
	str r0, [r7, #0x30]
	mov r4, #0
	add r5, r7, #0
_021FFF80:
	mov r0, #0xb
	add r1, r6, #0
	bl String_New
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021FFF80
	ldr r0, [sp]
	bl ov96_021E5F24
	add r1, r0, #0
	ldr r0, [sp]
	bl ov96_021E5D50
	add r4, r0, #0
	mov r6, #0
	add r5, r7, #0
_021FFFAA:
	mov r0, #0x17
	lsl r0, r0, #4
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x12
	bl CopyU16ArrayToString
	add r6, r6, #1
	add r4, #0x28
	add r5, r5, #4
	cmp r6, #3
	blt _021FFFAA
	add r0, r7, #0
	mov r1, #1
	bl ov96_02200BD8
	add r0, r7, #0
	bl ov96_02200C40
	mov r0, #0x16
	mov r1, #1
	lsl r0, r0, #4
	strh r1, [r7, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r7, r0]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FFFE4: .word 0x00000135
	thumb_func_end ov96_021FFF3C

	thumb_func_start ov96_021FFFE8
ov96_021FFFE8: ; 0x021FFFE8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x4a
	lsl r7, r7, #2
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	add r6, r7, #4
_021FFFF6:
	ldr r0, [r5, r7]
	bl FreeToHeap
	ldr r0, [r5, r6]
	bl FreeToHeap
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _021FFFF6
	ldr r4, [sp]
	mov r5, #0
_0220000E:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl FreeToHeap
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0xc
	blt _0220000E
	ldr r0, [sp]
	ldr r0, [r0, #0x34]
	bl FreeToHeap
	mov r6, #0x17
	ldr r4, [sp]
	mov r5, #0
	lsl r6, r6, #4
_02200030:
	ldr r0, [r4, r6]
	bl String_Delete
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02200030
	ldr r0, [sp]
	ldr r0, [r0, #0x30]
	bl MessageFormat_Delete
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl DestroyMsgData
	ldr r0, [sp]
	add r0, #0xc
	bl RemoveWindow
	ldr r0, [sp]
	add r0, #0x1c
	bl RemoveWindow
	ldr r0, [sp]
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021FFFE8

	thumb_func_start ov96_02200068
ov96_02200068: ; 0x02200068
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #6
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	mov r0, #0xb2
	add r3, r1, #0
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #7
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	mov r0, #0xb2
	mov r3, #6
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	mov r0, #0xb2
	mov r3, #5
	bl GfGfxLoader_LoadScrnData
	ldr r0, [r4]
	add r3, r4, #0
	str r0, [sp]
	mov r0, #0xb2
	mov r1, #9
	mov r2, #0
	add r3, #0x38
	bl GfGfxLoader_GetScrnData
	str r0, [r4, #0x34]
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0xb2
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPal
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov96_02200068

	thumb_func_start ov96_022000E4
ov96_022000E4: ; 0x022000E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0220017C ; =ov96_0221C728
	add r5, r1, #0
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	add r4, sp, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r6, #0
	mov r7, #2
_022000FA:
	str r7, [sp]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #9
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #6
	bl ov96_021EB2F4
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB334
	ldr r3, [r4]
	add r0, r5, #0
	mov r1, #0x5d
	mov r2, #0xa
	bl ov96_021EB36C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _022000FA
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0xd
	mov r3, #0x65
	bl ov96_021EB2BC
	mov r0, #2
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0xa
	mov r3, #0x65
	bl ov96_021EB2F4
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0xc
	mov r3, #0x65
	bl ov96_021EB334
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0xb
	mov r3, #0x65
	bl ov96_021EB36C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0220017C: .word ov96_0221C728
	thumb_func_end ov96_022000E4

	thumb_func_start ov96_02200180
ov96_02200180: ; 0x02200180
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #4]
	add r5, r1, #0
	str r2, [sp, #8]
	mov r4, #0
	mov r6, #8
	mov r7, #0xa
_02200190:
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB408
	mov r0, #3
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB408
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	str r6, [sp]
	bl ov96_021EB408
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	str r7, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #4
	blt _02200190
	mov r4, #0
	mov r6, #0x10
	mov r7, #3
_022001D8:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #2
	mov r3, #0x65
	str r6, [sp]
	bl ov96_021EB408
	add r4, r4, #1
	cmp r4, #2
	blt _022001D8
	ldr r4, [sp, #4]
	mov r6, #0
	mov r7, #0x65
_022001F2:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #2
	bl ov96_021EB4F4
	str r0, [r4, #0x48]
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #3
	bl ov96_021EB4F4
	str r0, [r4, #0x54]
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #8
	bl ov96_021EB4F4
	str r0, [r4, #0x50]
	add r0, r5, #0
	mov r1, #0x65
	mov r2, #0xa
	bl ov96_021EB4F4
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x48]
	add r1, r6, #0
	bl ov96_021EB564
	ldr r0, [r4, #0x54]
	add r1, r6, #4
	bl ov96_021EB564
	ldr r0, [r4, #0x50]
	mov r1, #0xa
	bl ov96_021EB564
	add r6, r6, #1
	add r4, #0x20
	cmp r6, #4
	blt _022001F2
	mov r0, #0x11
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0x65
	bl ov96_021EB3E4
	mov r1, #1
	add r4, r0, #0
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r4, #0
	mov r1, #0xb
	bl ov96_021EB564
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x10]
	mov r0, #0x8e
	lsl r0, r0, #0xe
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, sp, #0x10
	bl ov96_021EB588
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov96_02200C8C
	mov r0, #0
	ldr r4, [sp, #4]
	ldr r7, _022002F0 ; =ov96_0221C718
	ldr r6, _022002F4 ; =ov96_0221C720
	str r0, [sp, #0xc]
_0220028E:
	add r0, r5, #0
	bl ov96_021EB5E8
	ldr r3, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp, #8]
	ldr r3, [r3]
	mov r2, #3
	bl ov96_021EA2C4
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl Set2dSpriteVisibleFlag
	ldrb r0, [r7]
	add r1, sp, #0x1c
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	mov r0, #0x8e
	lsl r0, r0, #0xe
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_SetMatrix
	mov r0, #0x5f
	lsl r0, r0, #2
	ldrb r1, [r6]
	ldr r0, [r4, r0]
	bl Set2dSpriteAnimSeqNo
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #1
	add r7, r7, #1
	add r6, r6, #1
	str r0, [sp, #0xc]
	cmp r0, #6
	blt _0220028E
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022002F0: .word ov96_0221C718
_022002F4: .word ov96_0221C720
	thumb_func_end ov96_02200180

	thumb_func_start ov96_022002F8
ov96_022002F8: ; 0x022002F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r5, r1, #0
	ldr r1, [r6]
	mov r0, #0x14
	bl NARC_New
	str r0, [sp, #0x14]
	bl sub_02074490
	add r1, r0, #0
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [r6]
	mov r2, #5
	str r0, [sp, #4]
	mov r0, #0x14
	mov r3, #0x20
	bl GfGfxLoader_GXLoadPal
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0xec
	mov r7, #0
	add r4, r6, #0
	str r0, [sp, #0x10]
_0220032E:
	mov r1, #1
	ldr r0, [r6]
	lsl r1, r1, #0xc
	bl AllocFromHeapAtEnd
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1]
	ldrh r0, [r5, #2]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	ldr r2, [sp, #0xc]
	str r0, [sp, #8]
	bl GetMonIconNaixEx
	add r2, r4, #0
	add r2, #0xbc
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r2, [r2]
	bl NARC_ReadWholeMember
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	bl NNS_G2dGetUnpackedBGCharacterData
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r2, #0
	bl GetMonIconPaletteEx
	add r2, r0, #1
	mov r0, #0x47
	add r1, r6, r7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #4
	add r4, r4, #4
	add r5, r5, #4
	str r0, [sp, #0x10]
	cmp r7, #0xc
	blt _0220032E
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	mov r5, #0
	add r4, r6, #0
	add r7, sp, #0x18
_0220039C:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov96_022004B4
	mov r1, #1
	ldr r0, [r4, #0x48]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r1, #1
	ldr r0, [r4, #0x54]
	add r2, r1, #0
	bl ov96_021EB52C
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0x2b
	lsl r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x48]
	add r1, r7, #0
	bl ov96_021EB588
	ldr r0, [r4, #0x54]
	add r1, r7, #0
	bl ov96_021EB588
	add r5, r5, #1
	add r4, #0x20
	cmp r5, #4
	blt _0220039C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_022002F8

	thumb_func_start ov96_022003E8
ov96_022003E8: ; 0x022003E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	mov r0, #0
	add r5, r1, #0
	str r0, [sp, #0xc]
	add r4, r6, #0
	add r7, sp, #0x10
_022003F8:
	ldrb r0, [r5, #6]
	mov r3, #2
	str r0, [sp]
	ldrh r0, [r5, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	str r0, [sp, #8]
	ldrh r1, [r5]
	ldrb r2, [r5, #7]
	add r0, sp, #0x10
	bl GetMonSpriteCharAndPlttNarcIdsEx
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldrh r0, [r7]
	ldrh r1, [r7, #2]
	ldr r2, [r6]
	ldr r3, [r5, #0xc]
	bl sub_0201457C
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrh r0, [r7]
	ldrh r1, [r7, #4]
	ldr r2, [r6]
	bl sub_02014450
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	add r5, #0x10
	add r0, r0, #1
	add r4, #8
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _022003F8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_022003E8

	thumb_func_start ov96_02200454
ov96_02200454: ; 0x02200454
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	cmp r6, #2
	blo _02200464
	bl GF_AssertFail
_02200464:
	cmp r4, #3
	blo _0220046C
	bl GF_AssertFail
_0220046C:
	mov r0, #0x4a
	lsl r0, r0, #2
	lsl r4, r4, #3
	add r7, r5, r0
	mov r1, #0x32
	ldr r0, [r7, r4]
	lsl r1, r1, #6
	bl DC_FlushRange
	lsl r6, r6, #2
	mov r1, #5
	add r2, r5, r6
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	mov r2, #0x32
	ldr r0, [r7, r4]
	lsl r2, r2, #6
	bl GXS_LoadOBJ
	mov r0, #0x4b
	lsl r0, r0, #2
	add r7, r5, r0
	ldr r0, [r7, r4]
	mov r1, #0x20
	bl DC_FlushRange
	mov r1, #0x52
	add r2, r5, r6
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r0, [r7, r4]
	mov r2, #0x20
	bl GXS_LoadOBJPltt
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02200454

	thumb_func_start ov96_022004B4
ov96_022004B4: ; 0x022004B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #5
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	add r6, r2, #0
	bl ov96_021EB5B8
	str r0, [sp]
	lsl r0, r4, #1
	add r0, r4, r0
	add r6, r6, r0
	add r7, r5, #0
	lsl r0, r6, #2
	mov r1, #2
	add r7, #0xec
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	lsl r1, r1, #8
	ldr r0, [r0, #0x14]
	bl DC_FlushRange
	ldr r0, [sp, #4]
	mov r1, #6
	ldr r0, [r7, r0]
	lsl r2, r4, #9
	lsl r1, r1, #8
	add r1, r2, r1
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r2, r2, #8
	bl GXS_LoadOBJ
	mov r1, #0x47
	add r2, r5, r6
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	ldr r0, [sp]
	bl Sprite_SetPalIndex
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_022004B4

	thumb_func_start ov96_0220050C
ov96_0220050C: ; 0x0220050C
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r4, r1, #0
	add r5, r0, #0
	lsr r3, r2, #0x1f
	lsl r1, r2, #0x16
	sub r1, r1, r3
	mov r0, #0x16
	ror r1, r0
	add r0, r3, r1
	lsl r1, r0, #0x10
	asr r0, r1, #9
	lsr r0, r0, #0x16
	add r0, r1, r0
	lsl r0, r0, #6
	lsr r1, r0, #0x10
	mov r0, #1
	lsl r0, r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #0x10
	ldr r6, _022005A8 ; =ov96_0221C748
	lsr r2, r0, #0x10
	ldmia r6!, {r0, r1}
	add r3, sp, #0x30
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	ldr r6, _022005AC ; =ov96_0221C754
	str r0, [r3]
	ldmia r6!, {r0, r1}
	add r3, sp, #0x24
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	asr r0, r2, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _022005B0 ; =FX_SinCosTable_
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotZ33_
	add r0, sp, #0x30
	add r1, sp, #0
	add r2, r0, #0
	bl MTX_MultVec33
	add r0, sp, #0x24
	add r1, sp, #0x30
	add r2, sp, #0x3c
	bl VEC_Add
	lsl r4, r4, #5
	add r0, r5, r4
	ldr r0, [r0, #0x48]
	add r1, sp, #0x3c
	bl ov96_021EB588
	add r0, r5, r4
	ldr r0, [r0, #0x54]
	add r1, sp, #0x3c
	bl ov96_021EB588
	add r0, r5, r4
	ldr r0, [r0, #0x4c]
	add r1, sp, #0x3c
	bl ov96_021EB588
	add r0, r5, r4
	ldr r0, [r0, #0x50]
	add r1, sp, #0x3c
	bl ov96_021EB588
	add sp, #0x48
	pop {r4, r5, r6, pc}
	nop
_022005A8: .word ov96_0221C748
_022005AC: .word ov96_0221C754
_022005B0: .word FX_SinCosTable_
	thumb_func_end ov96_0220050C

	thumb_func_start ov96_022005B4
ov96_022005B4: ; 0x022005B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl _ffltu
	bl _f2d
	ldr r2, _022006B4 ; =0x9999999A
	ldr r3, _022006B8 ; =0x40599999
	bl _ddiv
	bl _dfixu
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x20
	strb r1, [r0, #2]
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x20
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x20
	strb r1, [r0, #3]
	add r0, r4, #0
	mov r1, #5
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, sp, #0x20
	strb r1, [r0, #1]
	mov r4, #0
	mov r7, #4
	mov r6, #8
_0220062E:
	str r7, [sp]
	str r6, [sp, #4]
	ldr r0, [r5, #0x38]
	lsl r2, r4, #2
	add r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x20
	add r0, #2
	ldrb r0, [r0, r4]
	add r2, #0xe
	lsl r2, r2, #0x18
	str r0, [sp, #0xc]
	add r0, sp, #0x20
	ldrb r0, [r0, r4]
	mov r1, #5
	lsr r2, r2, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	add r3, r6, #0
	bl CopyRectToBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _0220062E
	ldr r0, [sp, #0x1c]
	mov r1, #5
	bl _s32_div_f
	add r4, r1, #0
	ldr r0, [sp, #0x1c]
	mov r1, #5
	bl _s32_div_f
	mov r1, #4
	lsl r0, r0, #0x1b
	str r1, [sp]
	mov r3, #8
	str r3, [sp, #4]
	ldr r1, [r5, #0x38]
	lsr r0, r0, #0x18
	add r1, #0xc
	str r1, [sp, #8]
	lsl r1, r4, #0x1a
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	mov r1, #5
	mov r2, #0x18
	bl CopyRectToBgTilemapRect
	ldr r0, [r5, #8]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022006B4: .word 0x9999999A
_022006B8: .word 0x40599999
	thumb_func_end ov96_022005B4

	thumb_func_start ov96_022006BC
ov96_022006BC: ; 0x022006BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r5, #0x59
	add r4, r0, #0
	lsl r5, r5, #2
	add r6, r1, #0
	ldr r1, [r4, r5]
	cmp r1, #3
	bhi _0220073A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022006DA: ; jump table
	.short _022006E2 - _022006DA - 2 ; case 0
	.short _0220076E - _022006DA - 2 ; case 1
	.short _022007B2 - _022006DA - 2 ; case 2
	.short _0220084C - _022006DA - 2 ; case 3
_022006E2:
	add r0, r5, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r1, r0]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x18
	bl ov96_021EB588
	mov r0, #0x2e
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _0220073C
_0220073A:
	b _022008FA
_0220073C:
	mov r0, #0x76
	lsl r0, r0, #0xe
	str r0, [sp, #0x1c]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x18
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x18
	bl ov96_021EB588
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _022008FA
_0220076E:
	add r1, r5, #4
	ldr r1, [r4, r1]
	add r2, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_02200454
	sub r1, r5, #4
	add r0, r4, r1
	add r1, #8
	ldr r1, [r4, r1]
	lsl r2, r1, #1
	ldrh r1, [r0, r2]
	cmp r1, #0
	bne _02200790
	mov r1, #2
	b _02200792
_02200790:
	sub r1, r1, #1
_02200792:
	mov r3, #0x5a
	lsl r3, r3, #2
	strh r1, [r0, r2]
	ldr r0, [r4, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, r3]
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _022008FA
_022007B2:
	add r0, r5, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r1, r0]
	bl ov96_021EB594
	add r6, r0, #0
	add r3, sp, #0xc
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	mov r0, #2
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r2, #0
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl ov96_021EB588
	mov r0, #0xa2
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _022008FA
	str r0, [sp, #0x10]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl ov96_021EB588
	add r3, r5, #4
	ldr r0, [r4, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, r3]
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	b _022008FA
_0220084C:
	add r0, r5, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r1, r0]
	bl ov96_021EB594
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	mov r0, #0x23
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	blt _022008FA
	str r0, [sp, #4]
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x18
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	add r0, r5, #4
	ldr r1, [r4, r0]
	sub r0, #0x10
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov96_021EB588
	add r3, r5, #4
	ldr r0, [r4, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, r3]
	add r0, r6, #2
	mov r1, #3
	bl _s32_div_f
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov96_02200BD8
	mov r0, #0
	str r0, [r4, r5]
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022008FA:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov96_022006BC

	thumb_func_start ov96_02200900
ov96_02200900: ; 0x02200900
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	beq _0220090C
	cmp r5, #4
	blo _02200910
_0220090C:
	bl GF_AssertFail
_02200910:
	mov r1, #0x65
	sub r0, r5, #1
	lsl r1, r1, #2
	lsl r0, r0, #2
	add r3, r4, r1
	ldrh r2, [r3, r0]
	add r2, #0x20
	strh r2, [r3, r0]
	ldrh r2, [r3, r0]
	cmp r2, #0x58
	blo _02200934
	mov r2, #0
	add r1, r1, #2
	strh r2, [r3, r0]
	add r2, r4, r1
	ldrh r1, [r2, r0]
	add r1, r1, #1
	strh r1, [r2, r0]
_02200934:
	ldr r1, _0220094C ; =0x00000196
	add r2, r4, r1
	ldrh r1, [r2, r0]
	cmp r1, #3
	blo _02200946
	mov r1, #0
	strh r1, [r2, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02200946:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0220094C: .word 0x00000196
	thumb_func_end ov96_02200900

	thumb_func_start ov96_02200950
ov96_02200950: ; 0x02200950
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	mov r3, #0x5b
	add r5, r0, #0
	lsl r3, r3, #2
	add r4, r1, #0
	add r7, r5, r3
	ldrb r3, [r7, r4]
	ldr r6, [sp, #0x18]
	cmp r2, r3
	beq _0220096C
	strb r2, [r7, r4]
	bl ov96_022004B4
_0220096C:
	ldr r0, [sp]
	cmp r0, #0
	beq _0220099A
	lsl r4, r4, #5
	add r0, r5, r4
	ldr r0, [r0, #0x48]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	add r0, r5, r4
	mov r1, #1
	ldr r0, [r0, #0x50]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r5, r4
	ldr r0, [r0, #0x4c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	b _02200A0E
_0220099A:
	lsl r4, r4, #5
	add r0, r5, r4
	mov r1, #1
	ldr r0, [r0, #0x48]
	add r2, r1, #0
	bl ov96_021EB52C
	add r0, r5, r4
	ldr r0, [r0, #0x50]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	cmp r6, #1
	beq _022009BE
	cmp r6, #2
	beq _022009E0
	b _02200A02
_022009BE:
	add r0, r5, r4
	add r0, #0x58
	ldrb r0, [r0]
	cmp r6, r0
	beq _02200A0E
	add r7, r5, #0
	add r7, #0x4c
	mov r1, #1
	ldr r0, [r7, r4]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r7, r4]
	mov r1, #8
	bl ov96_021EB564
	b _02200A0E
_022009E0:
	add r0, r5, r4
	add r0, #0x58
	ldrb r0, [r0]
	cmp r6, r0
	beq _02200A0E
	add r7, r5, #0
	add r7, #0x4c
	mov r1, #1
	ldr r0, [r7, r4]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [r7, r4]
	mov r1, #9
	bl ov96_021EB564
	b _02200A0E
_02200A02:
	add r0, r5, r4
	ldr r0, [r0, #0x4c]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_02200A0E:
	add r0, r5, r4
	add r0, #0x58
	strb r6, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02200950

	thumb_func_start ov96_02200A18
ov96_02200A18: ; 0x02200A18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #1
	bne _02200A32
	mov r0, #0x56
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	b _02200A40
_02200A32:
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
_02200A40:
	cmp r4, #1
	bne _02200A54
	mov r0, #0x57
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	pop {r3, r4, r5, pc}
_02200A54:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_02200A18

	thumb_func_start ov96_02200A64
ov96_02200A64: ; 0x02200A64
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x64
	mul r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #0
	mov r1, #0x3c
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0x3c
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	mov r0, #0x62
	lsl r0, r0, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl Set2dSpriteAnimSeqNo
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_02200A64

	thumb_func_start ov96_02200B04
ov96_02200B04: ; 0x02200B04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #0
	add r4, r5, #0
_02200B10:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl Sprite_SetDrawPriority
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _02200B10
	mov r6, #0
	add r4, r5, #0
_02200B28:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov96_021EB5B8
	mov r1, #2
	bl Sprite_SetDrawPriority
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _02200B28
	mov r0, #1
	mov r2, #0
	add r1, sp, #4
_02200B46:
	cmp r2, r7
	bne _02200B4C
	strb r2, [r1]
_02200B4C:
	add r2, r2, #1
	cmp r2, #4
	blt _02200B46
	mov r2, #0
	add r4, sp, #4
	add r3, sp, #4
_02200B58:
	ldrb r1, [r3]
	cmp r1, r2
	beq _02200B68
	add r1, r0, #0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strb r2, [r4, r1]
_02200B68:
	add r2, r2, #1
	cmp r2, #4
	blt _02200B58
	mov r0, #4
	mov r7, #0
	mov r6, #3
	add r4, sp, #4
	str r0, [sp]
_02200B78:
	ldrb r0, [r4]
	add r1, r6, #0
	lsl r0, r0, #5
	add r0, r5, r0
	ldr r0, [r0, #0x4c]
	bl ov96_021EB630
	ldrb r0, [r4]
	add r1, r6, #0
	lsl r0, r0, #5
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	bl ov96_021EB630
	ldrb r0, [r4]
	ldr r1, [sp]
	lsl r0, r0, #5
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	bl ov96_021EB630
	ldrb r0, [r4]
	add r1, r7, #0
	add r1, #0xb
	lsl r0, r0, #5
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	bl ov96_021EB630
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #2
	add r6, r6, #2
	add r4, r4, #1
	str r0, [sp]
	cmp r7, #4
	blt _02200B78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02200B04

	thumb_func_start ov96_02200BC8
ov96_02200BC8: ; 0x02200BC8
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end ov96_02200BC8

	thumb_func_start ov96_02200BD8
ov96_02200BD8: ; 0x02200BD8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	add r0, #0xc
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #1
	lsl r2, r5, #2
	add r5, r4, r2
	mov r2, #0x17
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	lsl r2, r2, #4
	ldr r0, [r4, #0x30]
	ldr r2, [r5, r2]
	mov r1, #0
	bl BufferString
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x2c]
	ldr r3, [r4]
	mov r2, #0x9a
	bl ReadMsgData_ExpandPlaceholders
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02200C3C ; =0x000F0E00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add r4, #0xc
	add r0, r4, #0
	bl CopyWindowToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02200C3C: .word 0x000F0E00
	thumb_func_end ov96_02200BD8

	thumb_func_start ov96_02200C40
ov96_02200C40: ; 0x02200C40
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x1c
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x2c]
	ldr r1, _02200C84 ; =0x00000131
	bl NewString_ReadMsgData
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02200C88 ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x1c
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r5, #0x1c
	add r0, r5, #0
	bl CopyWindowToVram
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02200C84: .word 0x00000131
_02200C88: .word 0x000F0E00
	thumb_func_end ov96_02200C40

	thumb_func_start ov96_02200C8C
ov96_02200C8C: ; 0x02200C8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #4]
	ldr r0, _02200D78 ; =ov96_0221C728
	str r1, [sp, #8]
	ldr r2, [r0]
	ldr r1, [r0, #4]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r5, sp, #0x14
	add r4, sp, #0xc
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r6, #0
	mov r7, #3
_02200CAE:
	ldr r0, [r4]
	add r1, r7, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [sp, #4]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl ov96_021EB408
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _02200CAE
	ldr r4, [sp, #8]
	mov r5, #0
	add r7, sp, #0xc
	add r6, sp, #0x14
_02200CD8:
	ldr r1, [r6]
	ldr r2, [r7]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov96_021EB4F4
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	bl ov96_021EB5B8
	mov r1, #0
	str r1, [sp, #0x24]
	mov r1, #0xa
	lsl r1, r1, #0xe
	str r1, [sp, #0x1c]
	mov r1, #1
	sub r2, r1, r5
	mov r1, #0x58
	mul r1, r2
	add r1, #0x30
	lsl r2, r1, #0xc
	mov r1, #2
	lsl r1, r1, #0x14
	add r1, r2, r1
	str r1, [sp, #0x20]
	add r1, sp, #0x1c
	bl Sprite_SetMatrix
	mov r0, #0x15
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov96_021EB52C
	ldr r0, [sp, #4]
	mov r1, #0x65
	mov r2, #0x10
	bl ov96_021EB4F4
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #8
	bl ov96_021EB564
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x1c
	bl ov96_021EB588
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl ov96_021EB52C
	add r5, r5, #1
	add r7, r7, #4
	add r6, r6, #4
	add r4, r4, #4
	cmp r5, #2
	blt _02200CD8
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov96_02200D7C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02200D78: .word ov96_0221C728
	thumb_func_end ov96_02200C8C

	thumb_func_start ov96_02200D7C
ov96_02200D7C: ; 0x02200D7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, _02200DF4 ; =ov96_0221C728
	str r1, [sp]
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r4, #0
_02200D90:
	lsl r0, r4, #2
	add r1, sp, #0xc
	ldr r5, [r1, r0]
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0
	bl ov96_021EB5EC
	ldr r6, [r0]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #1
	bl ov96_021EB5EC
	ldr r5, [r0]
	add r0, r6, #0
	bl sub_0200AF00
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200B0F8
	str r0, [sp, #8]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r5, r1, r0
	add r0, r6, #0
	mov r1, #2
	bl NNS_G2dGetImageLocation
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, [sp, #8]
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _02200D90
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02200DF4: .word ov96_0221C728
	thumb_func_end ov96_02200D7C

	thumb_func_start ov96_02200DF8
ov96_02200DF8: ; 0x02200DF8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #8]
	ldr r2, _02200E34 ; =ov96_0221C760
	add r1, #0xc
	bl AddWindow
	add r1, r4, #0
	ldr r0, [r4, #8]
	ldr r2, _02200E38 ; =ov96_0221C768
	add r1, #0x1c
	bl AddWindow
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #8]
	mov r1, #4
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #0x1e
	ldr r2, [r4]
	mov r0, #4
	lsl r1, r1, #4
	bl LoadFontPal0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02200E34: .word ov96_0221C760
_02200E38: .word ov96_0221C768
	thumb_func_end ov96_02200DF8

	thumb_func_start ov96_02200E3C
ov96_02200E3C: ; 0x02200E3C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xfa
	lsl r1, r1, #2
	bl AllocFromHeap
	mov r2, #0xfa
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x3e
	lsl r0, r0, #4
	mov r1, #4
	sub r2, r1, r5
	strb r5, [r4, r0]
	add r1, r0, #5
	strb r2, [r4, r1]
	ldrb r2, [r4, r1]
	add r1, r0, #4
	strb r2, [r4, r1]
	add r1, r0, #3
	mov r2, #0xa
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	add r0, r0, #2
	strb r1, [r4, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_02200E3C

	thumb_func_start ov96_02200E78
ov96_02200E78: ; 0x02200E78
	lsl r1, r1, #4
	str r2, [r0, r1]
	bx lr
	.balign 4, 0
	thumb_func_end ov96_02200E78

	thumb_func_start ov96_02200E80
ov96_02200E80: ; 0x02200E80
	push {r4, r5, r6, r7}
	mov r5, #0
	mov r2, #1
_02200E86:
	ldr r3, [r1]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	str r4, [r0, #0x4c]
	ldr r3, [r1]
	asr r6, r3, #8
	asr r3, r3, #0x10
	lsl r6, r6, #0x18
	lsl r3, r3, #0x10
	lsr r6, r6, #0x18
	lsr r3, r3, #0x10
	cmp r4, #0
	beq _02200ED8
	str r2, [r0, #0x40]
	ldr r4, [r0, #0x4c]
	cmp r4, #2
	bne _02200EAE
	mov r4, #0x20
	str r4, [r0, #0x50]
	b _02200EBC
_02200EAE:
	cmp r4, #1
	bne _02200EB8
	mov r4, #0x30
	str r4, [r0, #0x50]
	b _02200EBC
_02200EB8:
	mov r4, #0x40
	str r4, [r0, #0x50]
_02200EBC:
	ldr r7, [r0, #0x50]
	add r6, #0x20
	lsr r4, r7, #0x1f
	add r4, r7, r4
	asr r4, r4, #1
	sub r3, r3, r4
	str r3, [r0, #0x44]
	ldr r4, [r0, #0x50]
	lsr r3, r4, #0x1f
	add r3, r4, r3
	asr r3, r3, #1
	sub r3, r6, r3
	str r3, [r0, #0x48]
	b _02200EDC
_02200ED8:
	mov r3, #0
	str r3, [r0, #0x40]
_02200EDC:
	add r5, r5, #1
	add r1, r1, #4
	add r0, #0x14
	cmp r5, #0x1e
	blt _02200E86
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov96_02200E80

	thumb_func_start ov96_02200EEC
ov96_02200EEC: ; 0x02200EEC
	ldr r3, _02200EF0 ; =FreeToHeap
	bx r3
	.balign 4, 0
_02200EF0: .word FreeToHeap
	thumb_func_end ov96_02200EEC

	thumb_func_start ov96_02200EF4
ov96_02200EF4: ; 0x02200EF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02200F7C ; =0x000003E5
	add r5, r1, #0
	ldrb r1, [r5, r0]
	add r7, r2, #0
	mov r2, #4
	cmp r1, #4
	bne _02200F0A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02200F0A:
	sub r1, r0, #3
	ldrb r1, [r5, r1]
	add r3, r1, #1
	sub r1, r0, #3
	strb r3, [r5, r1]
	sub r3, r0, #2
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	cmp r1, r3
	blo _02200F2C
	add r1, r0, #0
	mov r3, #1
	sub r1, #9
	str r3, [r5, r1]
	mov r1, #0
	sub r0, r0, #3
	strb r1, [r5, r0]
_02200F2C:
	mov r1, #0xf7
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _02200F76
	add r0, r1, #0
	add r0, #8
	add r1, r1, #5
	ldrb r0, [r5, r0]
	ldrb r1, [r5, r1]
	add r4, r0, r1
	cmp r4, r0
	bge _02200F4A
	bl GF_AssertFail
_02200F4A:
	lsl r2, r4, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	add r3, r7, #0
	bl ov96_02200F84
	lsl r0, r4, #0x18
	lsr r2, r0, #0x18
	ldr r0, _02200F80 ; =0x000003E1
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	sub r1, r0, #1
	ldrb r3, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r3, r1
	blo _02200F76
	mov r1, #0
	strb r1, [r5, r0]
	sub r0, r0, #5
	str r1, [r5, r0]
_02200F76:
	add r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02200F7C: .word 0x000003E5
_02200F80: .word 0x000003E1
	thumb_func_end ov96_02200EF4

	thumb_func_start ov96_02200F84
ov96_02200F84: ; 0x02200F84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xf8
	str r2, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [r1, r0]
	str r3, [sp, #0x10]
	add r1, r0, #0
	add r1, #0x9d
	ldrb r1, [r1]
	cmp r1, #0
	bne _02200FC0
	add r1, r0, #0
	add r1, #0x8b
	ldrb r2, [r1]
	mov r1, #0x1c
	mul r1, r2
	add r1, r0, r1
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, #2
	beq _02200FC0
	add r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #0
	beq _02200FC2
_02200FC0:
	b _02201444
_02200FC2:
	mov r1, #0
	add r0, r1, #0
	add r2, sp, #0x4c
	str r0, [sp, #0x2c]
_02200FCA:
	ldr r0, [sp, #0x2c]
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #4
	blt _02200FCA
	ldr r7, [sp, #8]
	add r6, r0, #0
	add r5, sp, #0x5c
_02200FDA:
	add r3, r7, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r4, [r5]
	add r0, sp, #0x44
	str r0, [sp]
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	asr r2, r1, #0xb
	lsr r2, r2, #0x14
	add r2, r1, r2
	asr r1, r2, #0xc
	add r2, r4, #0
	add r0, #0x8b
	add r2, #0x80
	ldrb r0, [r0]
	ldr r3, [r2]
	asr r2, r3, #0xb
	lsl r0, r0, #2
	lsr r2, r2, #0x14
	add r2, r3, r2
	ldr r0, [r4, r0]
	asr r2, r2, #0xc
	add r3, sp, #0x48
	bl ov96_021EB0A4
	add r0, sp, #0x3c
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x44]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	add r3, sp, #0x40
	bl ov96_021EB03C
	ldr r1, [sp, #0x40]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	ldr r1, [sp, #0x3c]
	str r0, [r5, #8]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	ldr r1, [sp, #8]
	asr r0, r0, #0xc
	str r0, [r5, #0xc]
	add r4, r1, r6
	sub r0, #0x20
	mov r1, #0x28
	bl _s32_div_f
	mov r1, #0xa6
	lsl r1, r1, #2
	strb r0, [r4, r1]
	add r0, r1, #0
	ldrb r0, [r4, r0]
	cmp r0, #4
	bls _02201066
	bl GF_AssertFail
_02201066:
	add r6, r6, #1
	add r7, #0x10
	add r5, #0x10
	cmp r6, #4
	blt _02200FDA
	ldr r0, [sp, #0x14]
	add r1, sp, #0x5c
	add r0, r1, r0
	ldr r2, [sp, #8]
	str r0, [sp, #0x28]
	mov r4, #0
	add r3, sp, #0x9c
_0220107E:
	add r6, r2, #0
	add r6, #0x40
	ldmia r6!, {r0, r1}
	add r5, r3, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r4, r4, #1
	str r0, [r5]
	add r2, #0x14
	add r3, #0x14
	cmp r4, #0x1e
	blt _0220107E
	ldr r0, [sp, #0x28]
	ldr r1, [r0, #8]
	mov r0, #0x36
	lsl r0, r0, #4
	cmp r1, r0
	blt _022010D6
	mov r5, #0
	add r6, r5, #0
	add r4, sp, #0x5c
	sub r6, #0xa0
_022010AE:
	add r0, r4, #0
	add r0, #8
	add r1, r6, #0
	bl ov96_0220144C
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #4
	blt _022010AE
	mov r5, #0
	add r4, sp, #0x9c
	mov r6, #0x50
_022010C6:
	add r0, r4, #4
	add r1, r6, #0
	bl ov96_0220144C
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #0x1e
	blt _022010C6
_022010D6:
	ldr r4, [sp, #8]
	mov r5, #0
_022010DA:
	ldr r0, _02201308 ; =0x000002AE
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1e
	strh r5, [r4, r0]
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #0x28
	add r6, r1, #0
	mul r6, r0
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #8]
	add r0, #0x14
	add r1, r0, r6
	mov r0, #0xa7
	lsl r0, r0, #2
	str r1, [r4, r0]
	asr r0, r5, #1
	lsr r0, r0, #0x1e
	add r0, r5, r0
	asr r1, r0, #2
	mov r0, #0x28
	add r7, r1, #0
	mul r7, r0
	add r1, r7, #0
	mov r0, #0x2a
	add r1, #0x34
	lsl r0, r0, #4
	str r1, [r4, r0]
	bl LCRandom
	mov r1, #0x28
	bl _s32_div_f
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #8]
	add r0, r0, r6
	add r1, r0, r1
	mov r0, #0xa9
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl LCRandom
	mov r1, #0x28
	bl _s32_div_f
	add r7, #0x20
	mov r0, #0xaa
	add r1, r7, r1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #0x10
	blt _022010DA
	ldr r2, _0220130C ; =ov96_0221C770
	ldr r3, [sp, #8]
	mov r4, #0
	add r0, r0, #4
_02201152:
	ldr r1, [r2]
	add r4, r4, #1
	strh r1, [r3, r0]
	add r2, r2, #4
	add r3, #0x14
	cmp r4, #0x10
	blt _02201152
	mov r0, #0x20
	str r0, [sp, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r6, #0
	add r0, r1, r0
	add r4, sp, #0x4c
	str r6, [sp, #0x24]
	str r0, [sp, #0x1c]
_02201172:
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	mul r1, r0
	ldr r0, [sp, #8]
	mov r5, #0
	add r0, r0, r1
	add r7, sp, #0x5c
	str r0, [sp, #0x18]
_02201182:
	ldr r0, [sp, #0xc]
	cmp r5, r0
	beq _0220121A
	ldr r1, [sp, #0x28]
	ldr r0, [r7, #8]
	ldr r2, [r1, #8]
	add r1, r2, #0
	add r1, #0xa0
	cmp r1, r0
	blt _0220121A
	sub r0, r0, r2
	bmi _022011F2
	cmp r0, #0xa0
	bge _022011F2
	ldr r1, [sp, #8]
	add r2, r1, r5
	mov r1, #0xa6
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r6, r1
	bne _022011C4
	mov r1, #0xa6
	ldr r2, [sp, #0x1c]
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r6, r1
	ldr r1, [r4]
	bne _022011C0
	sub r1, r1, #4
	str r1, [r4]
	b _022011C4
_022011C0:
	sub r1, r1, #2
	str r1, [r4]
_022011C4:
	mov r1, #0x28
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _022011D8
	bl GF_AssertFail
	b _0220121A
_022011D8:
	mov r0, #0x14
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	mov r1, #0xab
	lsl r1, r1, #2
	ldrsh r1, [r0, r1]
	sub r2, r1, #3
	mov r1, #0xab
	lsl r1, r1, #2
	strh r2, [r0, r1]
	b _0220121A
_022011F2:
	mov r1, #0x4f
	mvn r1, r1
	cmp r0, r1
	blt _0220121A
	ldr r0, [sp, #8]
	add r1, r0, r5
	mov r0, #0xa6
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r6, r0
	bne _0220121A
	mov r0, #0xa6
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r6, r0
	bne _0220121A
	ldr r0, [r4]
	add r0, r0, #2
	str r0, [r4]
_0220121A:
	add r5, r5, #1
	add r7, #0x10
	cmp r5, #4
	blt _02201182
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x20]
	add r2, sp, #0x9c
	add r0, #0x28
	mov ip, r0
	ldr r0, [sp, #0x28]
	add r3, sp, #0x4c
	ldr r5, [r0, #8]
_02201234:
	ldr r0, [r2]
	cmp r0, #0
	beq _02201280
	add r0, r5, #0
	ldr r1, [r2, #4]
	add r0, #0xa0
	cmp r0, r1
	blt _02201272
	sub r0, r1, r5
	cmp r0, #0
	ble _02201272
	cmp r0, #0xa0
	bgt _02201272
	ldr r7, [r2, #8]
	ldr r0, [r2, #0x10]
	add r1, r7, r0
	ldr r0, [sp, #0x20]
	cmp r0, r1
	bge _02201272
	mov r0, ip
	cmp r7, r0
	bge _02201272
	ldr r0, [r2, #0xc]
	cmp r0, #3
	ldr r0, [r3]
	bne _0220126E
	sub r0, r0, #1
	str r0, [r3]
	b _02201272
_0220126E:
	sub r0, r0, #6
	str r0, [r3]
_02201272:
	ldr r0, [sp, #0x30]
	add r2, #0x14
	add r0, r0, #1
	add r3, r3, #4
	str r0, [sp, #0x30]
	cmp r0, #0x1e
	blt _02201234
_02201280:
	ldr r0, [sp, #0x24]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r4, r4, #4
	add r0, #0x28
	str r0, [sp, #0x20]
	cmp r6, #4
	bge _02201296
	b _02201172
_02201296:
	mov r5, #0xab
	lsl r5, r5, #2
	ldr r3, [sp, #8]
	mov r4, #0
	add r1, sp, #0x4c
	add r0, r5, #0
_022012A2:
	asr r6, r4, #1
	lsr r6, r6, #0x1e
	add r6, r4, r6
	asr r6, r6, #2
	lsl r6, r6, #2
	ldrsh r2, [r3, r5]
	ldr r6, [r1, r6]
	add r4, r4, #1
	add r2, r2, r6
	strh r2, [r3, r0]
	add r3, #0x14
	cmp r4, #0x10
	blt _022012A2
	ldr r1, _02201310 ; =0x00000A8C
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bge _022012F0
	mov r2, #0
	mov r3, #0xab
	add r1, r2, #0
	mov r7, #0x14
	lsl r3, r3, #2
	mov r4, #0x28
	mov r5, #0x3c
_022012D2:
	add r6, r1, #0
	ldr r0, [sp, #8]
	mul r6, r7
	add r0, r0, r6
	add r0, r0, r3
	ldrsh r6, [r0, r4]
	add r2, r2, #1
	add r1, r1, #4
	add r6, r6, #3
	strh r6, [r0, #0x28]
	ldrsh r6, [r0, r5]
	add r6, r6, #3
	strh r6, [r0, #0x3c]
	cmp r2, #4
	blt _022012D2
_022012F0:
	ldr r0, [sp, #0x28]
	ldr r2, [r0]
	add r0, r2, #0
	add r0, #0x8b
	ldrb r1, [r0]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #0x24]
	ldr r1, _02201314 ; =0x41A00000
	b _02201318
	nop
_02201308: .word 0x000002AE
_0220130C: .word ov96_0221C770
_02201310: .word 0x00000A8C
_02201314: .word 0x41A00000
_02201318:
	bl _fleq
	bhi _02201350
	mov r2, #0
	mov r3, #0xab
	add r1, r2, #0
	mov r7, #0x14
	lsl r3, r3, #2
	mov r4, #0x28
	mov r5, #0x3c
_0220132C:
	add r6, r1, #0
	ldr r0, [sp, #8]
	mul r6, r7
	add r0, r0, r6
	add r0, r0, r3
	ldrsh r6, [r0, r4]
	add r2, r2, #1
	add r1, r1, #4
	sub r6, r6, #2
	strh r6, [r0, #0x28]
	ldrsh r6, [r0, r5]
	sub r6, r6, #2
	strh r6, [r0, #0x3c]
	cmp r2, #4
	blt _0220132C
	ldr r0, [sp, #0x2c]
	add r0, #8
	str r0, [sp, #0x2c]
_02201350:
	ldr r0, [sp, #0x28]
	mov r1, #3
	ldr r4, [r0]
	add r0, r4, #0
	add r0, #0x8b
	ldrb r0, [r0]
	add r0, r0, #1
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x1c
	mul r0, r1
	add r0, r4, r0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	bne _0220137A
	ldr r0, [sp, #0x2c]
	sub r0, r0, #5
	str r0, [sp, #0x2c]
_0220137A:
	ldr r0, [sp, #8]
	bl ov96_0220146C
	add r4, r0, #0
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	blt _0220140C
	mov r1, #0xf9
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _02201444
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x28]
	ldr r1, [r0]
	add r0, sp, #0x34
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x8b
	ldrb r0, [r0]
	ldr r2, [r2, #0xc]
	add r3, sp, #0x38
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x28]
	ldr r1, [r1, #8]
	bl ov96_021EB0A4
	ldr r0, [sp, #0x38]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	add r0, #0xb0
	str r1, [r0]
	ldr r0, [sp, #0x34]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	add r0, #0xb4
	str r1, [r0]
	ldr r1, [sp, #0x28]
	mov r0, #0
	ldr r1, [r1]
	add r1, #0xb8
	str r0, [r1]
	ldr r1, [r4, #8]
	lsl r2, r1, #0xc
	ldr r1, [sp, #0x28]
	ldr r1, [r1]
	add r1, #0xbc
	str r2, [r1]
	ldr r1, [r4, #0xc]
	lsl r2, r1, #0xc
	ldr r1, [sp, #0x28]
	ldr r1, [r1]
	add r1, #0xc0
	str r2, [r1]
	ldr r1, [sp, #0x28]
	ldr r1, [r1]
	add r1, #0xc4
	str r0, [r1]
	ldr r0, [sp, #0x28]
	add sp, #0x1fc
	ldr r0, [r0]
	mov r1, #1
	add r0, #0xaa
	strb r1, [r0]
	add sp, #0xf8
	pop {r4, r5, r6, r7, pc}
_0220140C:
	mov r1, #0xf9
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _02201444
	ldr r0, [sp, #0x28]
	mov r1, #1
	ldr r0, [r0]
	mov r3, #7
	add r0, #0x9d
	strb r1, [r0]
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	add r0, #0x9e
	strb r1, [r0]
	ldr r0, [sp, #0x28]
	ldr r2, [r0]
	ldr r0, [sp, #4]
	str r1, [sp]
	add r1, r2, #0
	add r1, #0xd0
	add r2, #0x8b
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl ov96_021E8228
_02201444:
	add sp, #0x1fc
	add sp, #0xf8
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_02200F84

	thumb_func_start ov96_0220144C
ov96_0220144C: ; 0x0220144C
	ldr r2, [r0]
	add r2, r2, r1
	mov r1, #1
	lsl r1, r1, #0xa
	str r2, [r0]
	cmp r2, r1
	blt _02201460
	sub r1, r2, r1
	str r1, [r0]
	bx lr
_02201460:
	cmp r2, #0
	bge _02201468
	add r1, r2, r1
	str r1, [r0]
_02201468:
	bx lr
	.balign 4, 0
	thumb_func_end ov96_0220144C

	thumb_func_start ov96_0220146C
ov96_0220146C: ; 0x0220146C
	push {r4, lr}
	sub sp, #0x80
	mov r1, #0xa7
	lsl r1, r1, #2
	add r0, r0, r1
	mov r2, #0
	add r1, sp, #0
_0220147A:
	add r2, r2, #1
	stmia r1!, {r0}
	add r0, #0x14
	cmp r2, #0x10
	blt _0220147A
	add r0, sp, #0
	add r1, sp, #0x40
	bl ov96_022014A4
	add r4, r0, #0
	bl LCRandom
	add r1, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x16
	add r0, sp, #0x40
	ldr r0, [r0, r1]
	add sp, #0x80
	pop {r4, pc}
	thumb_func_end ov96_0220146C

	thumb_func_start ov96_022014A4
ov96_022014A4: ; 0x022014A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd0
	mov ip, r0
	add r0, sp, #0x10
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r7, r1, #0
_022014BA:
	add r2, r0, #1
	mov r1, #0xc
	mul r1, r2
	add r2, sp, #4
	lsl r4, r0, #2
	mov r3, ip
	ldr r3, [r3, r4]
	add r2, r2, r1
	str r3, [r2, #8]
	mov r3, #0
	str r3, [r2, #4]
	add r4, r3, #0
	add r3, sp, #4
	str r4, [r3, r1]
	add r1, r4, #0
	cmp r0, #0
	bls _02201506
	ldr r5, [r2, #8]
	mov r4, #0x10
	ldrsh r4, [r5, r4]
	mov r6, #0x10
_022014E4:
	ldr r3, [r3, #4]
	ldr r5, [r3, #8]
	ldrsh r5, [r5, r6]
	cmp r5, r4
	bge _022014FC
	ldr r4, [r3]
	str r2, [r4, #4]
	ldr r4, [r3]
	str r4, [r2]
	str r3, [r2, #4]
	str r2, [r3]
	b _02201506
_022014FC:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	blo _022014E4
_02201506:
	cmp r1, r0
	bne _0220150E
	str r2, [r3, #4]
	str r3, [r2]
_0220150E:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x10
	blo _022014BA
	ldr r0, [sp, #8]
	mov r3, #0
	ldr r1, [r0, #8]
	mov r0, #0x10
	ldrsh r2, [r1, r0]
	add r1, sp, #4
_02201524:
	ldr r1, [r1, #4]
	lsl r5, r3, #2
	ldr r4, [r1, #8]
	str r4, [r7, r5]
	ldr r4, [r7, r5]
	ldrsh r4, [r4, r0]
	cmp r2, r4
	bne _0220153E
	ldr r4, [sp]
	add r4, r4, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp]
_0220153E:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #0x10
	blo _02201524
	ldr r0, [sp]
	cmp r0, #0
	bne _02201552
	bl GF_AssertFail
_02201552:
	ldr r0, [sp]
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov96_022014A4

	thumb_func_start ov96_02201558
ov96_02201558: ; 0x02201558
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	add r6, r0, #0
	bl ov96_021E5DC4
	add r7, r0, #0
	add r0, r6, #0
	bl ov96_021E5DD4
	cmp r0, #5
	bls _02201570
	b _02201AFE
_02201570:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0220157C: ; jump table
	.short _02201588 - _0220157C - 2 ; case 0
	.short _0220166C - _0220157C - 2 ; case 1
	.short _022016A2 - _0220157C - 2 ; case 2
	.short _0220175C - _0220157C - 2 ; case 3
	.short _02201874 - _0220157C - 2 ; case 4
	.short _02201AE2 - _0220157C - 2 ; case 5
_02201588:
	mov r2, #1
	mov r0, #0x5c
	mov r1, #0x92
	lsl r2, r2, #0x12
	bl CreateHeap
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _022018CC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _022018D0 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov96_02201C90
	ldr r1, _022018D4 ; =0x000005F4
	add r0, r6, #0
	bl ov96_021E5D94
	ldr r2, _022018D4 ; =0x000005F4
	mov r1, #0
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x92
	mov r1, #0x28
	bl AllocFromHeap
	ldr r1, _022018D8 ; =0x00000598
	mov r2, #0x28
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0x92
	bl BgConfig_Alloc
	str r0, [r4]
	add r0, r6, #0
	mov r1, #8
	bl ov96_021E6670
	mov r0, #0x73
	str r0, [sp, #0x98]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0x9c]
	lsr r0, r0, #4
	str r0, [sp, #0xa0]
	add r0, r6, #0
	bl PokeathlonOvy_GetHeapID
	str r0, [sp, #0xa4]
	ldr r3, _022018DC ; =0x00300010
	add r0, sp, #0x98
	mov r1, #0x16
	mov r2, #0x92
	str r3, [sp]
	bl ov96_021E92B0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x92
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	mov r1, #0x92
	str r1, [r4, #0x44]
	mov r0, #4
	bl FontID_Alloc
	ldr r0, [r4]
	bl ov96_02201CB0
	add r0, r4, #0
	bl ov96_02203310
	add r0, r4, #0
	add r1, r6, #0
	bl ov96_0220382C
	ldr r0, _022018E0 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	add r0, r6, #0
	bl ov96_021E5DEC
	b _02201AFE
_0220166C:
	ldr r0, [r7, #0x44]
	ldr r1, [r7]
	add r2, r6, #0
	bl ov96_02203A00
	mov r1, #0x5e
	lsl r1, r1, #4
	str r0, [r7, r1]
	add r0, r6, #0
	bl ov96_021E5D34
	add r4, r0, #0
	add r0, r6, #0
	bl ov96_021E5EE8
	add r2, r0, #0
	mov r1, #4
	ldr r0, [r7, #0x44]
	sub r1, r1, r4
	bl ov96_02204364
	ldr r1, _022018E4 ; =0x000005DC
	str r0, [r7, r1]
	add r0, r6, #0
	bl ov96_021E5DEC
	b _02201AFE
_022016A2:
	ldr r4, _022018E8 ; =ov96_0221C7B8
	add r3, sp, #0x8c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	ldr r0, [r7, #0x44]
	bl ov96_021EB180
	mov r1, #0
	str r0, [r7, #0x48]
	mov r0, #0x12
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r7, #0x48]
	add r2, r1, #0
	add r3, r1, #0
	bl ov96_021EB5C8
	ldr r0, [r7, #0x48]
	mov r1, #0
	mov r2, #0x6a
	bl ov96_021EB29C
	ldr r0, [r7, #0x48]
	mov r1, #1
	mov r2, #0x65
	bl ov96_021EB29C
	ldr r0, [r7, #0x48]
	mov r1, #2
	mov r2, #0x69
	bl ov96_021EB29C
	ldr r0, [r7, #0x48]
	bl ov96_02201E70
	mov r0, #0x5e
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	ldr r1, [r7, #0x48]
	bl ov96_02203B44
	ldr r0, [r7, #0x48]
	bl ov96_021EB3A4
	ldr r0, [r7, #0x44]
	ldr r1, _022018EC ; =0x000004E7
	mov r2, #1
	bl ov96_021E9A78
	ldr r1, _022018F0 ; =0x000005D4
	str r0, [r7, r1]
	ldr r0, [r7, #0x48]
	bl ov96_021EB5E8
	str r0, [sp]
	ldr r3, _022018F0 ; =0x000005D4
	ldr r0, [r7, #0x44]
	ldr r3, [r7, r3]
	mov r1, #9
	mov r2, #0x20
	bl ov96_021EA854
	ldr r2, _022018F4 ; =0x000005D8
	mov r1, #0
	str r0, [r7, r2]
	sub r2, r2, #4
	ldr r2, [r7, r2]
	ldr r3, [r7, #0x48]
	add r0, r6, #0
	bl ov96_021E6290
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawPriority
	add r0, r6, #0
	bl ov96_021E5F24
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r1, [r7, #0x48]
	add r0, r7, #0
	lsr r2, r2, #0x18
	bl ov96_02201EF0
	add r0, r6, #0
	bl ov96_021E5DEC
	b _02201AFE
_0220175C:
	add r0, r6, #0
	bl ov96_021E5F24
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x1c]
	add r1, r0, #1
	lsl r0, r1, #1
	add r0, r1, r0
	mov r1, #0xc
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r5, sp, #0x13c
	add r4, sp, #0xf8
_02201784:
	ldr r0, [sp, #0x24]
	mov r1, #0xc
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r1, #3
	bl _s32_div_f
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r3, r5, #0
	bl ov96_021E6168
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov96_021E60C0
	bl ov96_021E6108
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	add r5, #0x10
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x54]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x54]
	cmp r0, #0xc
	blt _02201784
	mov r0, #0x5e
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	ldr r1, [r7, #0x48]
	add r2, sp, #0x1cc
	bl ov96_02203B8C
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r5, #0x10
	lsl r1, r0, #1
	add r0, r0, r1
	lsl r0, r0, #5
	add r4, r7, r0
_022017F2:
	mov r1, #0
	add r0, sp, #0x80
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x13c
	add r0, #9
	lsl r0, r0, #4
	add r3, r1, r0
	ldr r1, [r3, #0xc]
	mov r2, #0
	str r1, [sp]
	add r1, sp, #0x13c
	ldrh r0, [r1, r0]
	ldrb r1, [r3, #7]
	ldrh r3, [r3, #2]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_020708D8
	lsl r1, r5, #0xc
	str r1, [sp, #0x80]
	mov r1, #0x5e
	lsl r1, r1, #2
	add r0, r0, r1
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0x10
	str r1, [sp, #0x84]
	sub r0, r1, r0
	str r0, [sp, #0x84]
	ldr r0, _022018F8 ; =0x00000418
	add r1, sp, #0x80
	ldr r0, [r4, r0]

