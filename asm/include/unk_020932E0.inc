#include <nitro/fs/overlay.h>
#pragma once
.public FontID_Alloc
.public FontID_Release
.public LoadFontPal0
.public FontID_String_GetCenterAlignmentX
.public PlaySE
.public NARC_New
.public NARC_Delete
.public NARC_ReadWholeMember
.public GfGfxLoader_LoadCharData
.public GfGfxLoader_LoadScrnData
.public GfGfxLoader_GXLoadPal
.public GfGfxLoader_GetScrnData
.public CreateSpriteResourcesHeader
.public G2dRenderer_Init
.public G2dRenderer_SetSubSurfaceCoords
.public Create2DGfxResObjMan
.public Destroy2DGfxResObjMan
.public AddCharResObjFromNarc
.public AddPlttResObjFromNarc
.public AddCellOrAnimResObjFromNarc
.public sub_0200ADA4
.public sub_0200AEB0
.public sub_0200AF94
.public sub_0200B0A8
.public OamManager_ApplyAndResetBuffers
.public NewMsgDataFromNarc
.public DestroyMsgData
.public NewString_ReadMsgData
.public LoadUserFrameGfx2
.public YesNoPrompt_Create
.public YesNoPrompt_Destroy
.public YesNoPrompt_InitFromTemplate
.public YesNoPrompt_HandleInput
.public YesNoPrompt_Reset
.public AllocFromHeap
.public AllocFromHeapAtEnd
.public FreeToHeap
.public InitBgFromTemplate
.public FreeBgTilemapBuffer
.public BgCommitTilemapBufferToVram
.public BG_FillCharDataRange
.public CopyRectToBgTilemapRect
.public BgTilemapRectChangePalette
.public BgClearTilemapBufferAndCommit
.public AddWindowParameterized
.public RemoveWindow
.public CopyWindowToVram
.public ClearWindowTilemapAndCopyToVram
.public FillWindowPixelBuffer
.public GetWindowBgConfig
.public GetWindowWidth
.public DoScheduledBgGpuUpdates
.public ScheduleBgTilemapBufferTransfer
.public AddTextPrinterParameterizedWithColor
.public GF_RunVramTransferTasks
.public GfGfx_EngineATogglePlanes
.public GfGfx_SwapDisplay
.public SpriteList_Delete
.public sub_0202457C
.public CreateSprite
.public Sprite_Delete
.public Sprite_SetMatrix
.public Set2dSpriteVisibleFlag
.public Set2dSpriteAnimActiveFlag
.public Sprite_GetMatrixPtr
.public Get2dSpriteVisibleFlag
.public Set2dSpriteAnimSeqNo
.public Sprite_SetPriority
.public Sprite_SetPalIndex
.public Sprite_SetDrawPriority
.public sub_02024B78
.public TouchscreenHitbox_FindRectAtTouchNew
.public System_GetTouchHeld
.public System_GetTouchNew
.public System_GetTouchHeldCoords
.public GF_AssertFail
.public String_New
.public String_Delete
.public GetMonData
.public GetMonIconNaixEx
.public GetMonIconPaletteEx
.public sub_02074490
.public Party_GetCount
.public Party_GetMonByIndex
.public sub_020932E0
.public sub_02093354
.public sub_02093440
.public sub_02093594
.public sub_020935E0
.public sub_02093A40
.public sub_02095CE0
.public sub_02095D1C
.public sub_02095D2C
.public sub_02095D40
.public sub_02095D88
.public sub_02095DD8
.public sub_02095DE8
.public NNS_G2dGetUnpackedBGCharacterData
.public G2x_SetBlendAlpha_
.public G2x_SetBlendBrightness_
.public GX_LoadOBJ
.public DC_FlushRange
.public MIi_CpuCopyFast
.public MI_CpuFill8
.public memset
.public _s32_div_f
.public gSystem
.public OS_IRQTable