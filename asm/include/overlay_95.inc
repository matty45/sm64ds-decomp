#include <nitro/fs/overlay.h>
#pragma once
.public sub_02002B8C
.public FontID_Alloc
.public FontID_Release
.public PaletteData_Init
.public PaletteData_Free
.public PaletteData_AllocBuffers
.public PaletteData_FreeBuffers
.public PaletteData_LoadNarc
.public PaletteData_BeginPaletteFade
.public PaletteData_PushTransparentBuffers
.public PaletteData_GetSelectedBuffersBitmask
.public PaletteData_SetAutoTransparent
.public sub_02004EC4
.public Sound_Stop
.public PlaySE
.public PlayCry
.public IsCryFinished
.public PlayFanfare
.public IsFanfarePlaying
.public OverlayManager_CreateAndGetData
.public OverlayManager_GetData
.public OverlayManager_FreeData
.public OverlayManager_GetArgs
.public NARC_New
.public NARC_Delete
.public GfGfxLoader_LoadCharData
.public GfGfxLoader_LoadScrnData
.public GfGfxLoader_LoadCharDataFromOpenNarc
.public GfGfxLoader_LoadScrnDataFromOpenNarc
.public sub_02007FD4
.public sub_02008120
.public sub_02008524
.public sub_02008550
.public sub_020085DC
.public sub_020085EC
.public sub_02008780
.public sub_020087A4
.public sub_020090B4
.public sub_02009138
.public sub_02009418
.public NewMsgDataFromNarc
.public DestroyMsgData
.public NewString_ReadMsgData
.public ReadMsgData_ExpandPlaceholders
.public MessageFormat_New
.public MessageFormat_Delete
.public BufferBoxMonSpeciesName
.public StringExpandPlaceholders
.public SpriteRenderer_Create
.public SpriteRenderer_CreateGfxHandler
.public sub_0200CF70
.public sub_0200CFF4
.public sub_0200D020
.public thunk_OamManager_ApplyAndResetBuffers
.public SpriteRenderer_Delete
.public SpriteRenderer_Init2DGfxResManagersFromCountsArray
.public SpriteRenderer_LoadCharResObjFromNarcId
.public SpriteRenderer_LoadCharResObjFromOpenNarc
.public SpriteRenderer_LoadPlttResObjFromOpenNarc
.public sub_0200D644
.public SpriteRenderer_LoadCellResObjFromNarcId
.public SpriteRenderer_LoadCellResObjFromOpenNarc
.public SpriteRenderer_LoadAnimResObjFromNarcId
.public SpriteRenderer_LoadAnimResObjFromOpenNarc
.public SpriteRenderer_LoadResourcesAndCreateSprite
.public SpriteRenderer_UnloadResourcesAndRemoveGfxHandler
.public sub_0200D9DC
.public UnkImageStruct_TickSpriteAnimation1Frame
.public UnkImageStruct_SetSpriteAnimSeqNo
.public UnkImageStruct_GetSpriteCurrentAnimSeqNo
.public UnkImageStruct_SetSpriteAnimActiveFlag
.public sub_0200DCA0
.public UnkImageStruct_SetSpriteAnimCtrlCurrentFrame
.public UnkImageStruct_SetSpriteVisibleFlag
.public UnkImageStruct_SetSpritePositionXY
.public UnkImageStruct_GetSpritePositionXY
.public UnkImageStruct_AddSpritePositionXY
.public sub_0200DF98
.public sub_0200E024
.public sub_0200E3D8
.public LoadUserFrameGfx1
.public sub_0200E640
.public LoadUserFrameGfx2
.public DrawFrameAndWindow2
.public BeginNormalPaletteFade
.public IsPaletteFadeFinished
.public sub_02014DA0
.public sub_02014DB4
.public sub_02014EBC
.public sub_02015264
.public sub_0201526C
.public sub_02015354
.public sub_02015394
.public sub_0201543C
.public sub_02015460
.public sub_02015494
.public sub_020154B0
.public sub_020154D0
.public sub_02015524
.public sub_02015528
.public sub_02016EDC
.public sub_02016F2C
.public sub_02017068
.public Main_SetVBlankIntrCB
.public HBlankInterruptDisable
.public CreateHeap
.public DestroyHeap
.public AllocFromHeap
.public FreeToHeap
.public BgConfig_Alloc
.public SetBothScreensModesAndDisable
.public InitBgFromTemplate
.public FreeBgTilemapBuffer
.public ToggleBgLayer
.public BgClearTilemapBufferAndCommit
.public InitWindow
.public AddWindowParameterized
.public RemoveWindow
.public CopyWindowToVram
.public ClearWindowTilemapAndCopyToVram
.public FillWindowPixelBuffer
.public DoScheduledBgGpuUpdates
.public TextPrinterCheckActive
.public AddTextPrinterParameterized
.public AddTextPrinterParameterizedWithColor
.public GF_CreateVramTransferManager
.public GF_DestroyVramTransferManager
.public GF_RunVramTransferTasks
.public sub_02022808
.public GfGfx_SetBanks
.public GfGfx_DisableEngineAPlanes
.public GfGfx_EngineATogglePlanes
.public GfGfx_DisableEngineBPlanes
.public GfGfx_EngineBTogglePlanes
.public GfGfx_BothDispOn
.public Camera_SetPerspectiveClippingPlane
.public sub_02024B34
.public TouchscreenHitbox_FindRectAtTouchNew
.public GF_AssertFail
.public String_New
.public String_Delete
.public Thunk_G3X_Reset
.public sub_02026E50
.public GF_3DVramMan_Create
.public GF_3DVramMan_Delete
.public Options_GetTextFrameDelay
.public Options_GetFrame
.public sub_0203E354
.public GetMonData
.public SetMonData
.public GetMonNature
.public GetPokemonSpriteCharAndPlttNarcIds
.public sub_0207083C
.public Mon_GetBoxMon
.public sub_02072914
.public sub_0207294C
.public sub_020729A4
.public NNS_G2dSetupSoftwareSpriteCamera
.public G2x_SetBlendAlpha_
.public G3X_SetFog
.public G3X_SetClearColor
.public MIi_CpuClear32
.public MI_CpuFill8
.public memset
.public _fneq
.public NNS_GfdDefaultFuncAllocTexVram
.public NNS_GfdDefaultFuncAllocPlttVram
.public gSystem
.public ov95_021E6D70
.public ov95_021E6E88
.public ov95_021E6F0C