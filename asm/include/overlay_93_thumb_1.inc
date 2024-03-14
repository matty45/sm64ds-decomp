#include <nitro/fs/overlay.h>
#pragma once
.public TextFlags_SetCanABSpeedUpPrint
.public sub_02002B50
.public sub_02002B8C
.public FontID_String_GetWidth
.public PaletteData_Init
.public PaletteData_Free
.public PaletteData_AllocBuffers
.public PaletteData_FreeBuffers
.public PaletteData_LoadFromNarc
.public PaletteData_LoadNarc
.public PaletteData_LoadPaletteSlotFromHardware
.public PaletteData_PushTransparentBuffers
.public PaletteData_SetAutoTransparent
.public PaletteData_FillPaletteInBuffer
.public BlendPalette
.public PlaySE
.public OverlayManager_New
.public OverlayManager_Delete
.public OverlayManager_CreateAndGetData
.public OverlayManager_GetData
.public OverlayManager_FreeData
.public OverlayManager_GetArgs
.public OverlayManager_Run
.public AllocAndReadWholeNarcMemberByIdPair
.public NARC_New
.public NARC_Delete
.public GfGfxLoader_LoadCharDataFromOpenNarc
.public GfGfxLoader_LoadScrnDataFromOpenNarc
.public G2dRenderer_SetSubSurfaceCoords
.public sub_02009FE8
.public sub_0200A080
.public NewMsgDataFromNarc
.public DestroyMsgData
.public NewString_ReadMsgData
.public MessageFormat_New
.public MessageFormat_Delete
.public SpriteRenderer_Create
.public SpriteRenderer_CreateGfxHandler
.public SpriteRenderer_GetG2dRendererPtr
.public sub_0200CF70
.public sub_0200CFF4
.public sub_0200D020
.public thunk_OamManager_ApplyAndResetBuffers
.public sub_0200D03C
.public SpriteRenderer_Delete
.public SpriteRenderer_Init2DGfxResManagersFromCountsArray
.public SpriteRenderer_LoadCharResObjFromNarcId
.public SpriteRenderer_LoadCharResObjFromOpenNarc
.public sub_0200D644
.public sub_0200D68C
.public SpriteRenderer_LoadCellResObjFromNarcId
.public SpriteRenderer_LoadCellResObjFromOpenNarc
.public SpriteRenderer_LoadAnimResObjFromNarcId
.public SpriteRenderer_LoadAnimResObjFromOpenNarc
.public SpriteRenderer_UnloadResourcesAndRemoveGfxHandler
.public sub_0200E2B0
.public SysTask_CreateOnMainQueue
.public SysTask_Destroy
.public LoadUserFrameGfx1
.public DrawFrameAndWindow1
.public BeginNormalPaletteFade
.public IsPaletteFadeFinished
.public sub_0200FB70
.public sub_0200FC20
.public sub_02013534
.public sub_020135AC
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
.public sub_020154D0
.public sub_02015524
.public sub_02018030
.public sub_02018068
.public sub_020180BC
.public sub_020180E8
.public sub_020180F8
.public sub_0201815C
.public sub_02018198
.public sub_020181B0
.public sub_020181D4
.public sub_020181E0
.public sub_020181EC
.public sub_020182A0
.public sub_020182A8
.public sub_020182C4
.public Main_SetVBlankIntrCB
.public SetKeyRepeatTimers
.public CreateHeap
.public DestroyHeap
.public AllocFromHeap
.public FreeToHeap
.public GF_ExpHeap_FndInitAllocator
.public ReallocFromHeap
.public BgConfig_Alloc
.public SetBothScreensModesAndDisable
.public InitBgFromTemplate
.public FreeBgTilemapBuffer
.public ToggleBgLayer
.public BgSetPosTextAndCommit
.public BG_ClearCharDataRange
.public FillBgTilemapRect
.public BgClearTilemapBufferAndCommit
.public AddWindowParameterized
.public RemoveWindow
.public ScheduleWindowCopyToVram
.public FillWindowPixelBuffer
.public DoScheduledBgGpuUpdates
.public ScheduleBgTilemapBufferTransfer
.public GF3dRender_AllocAndLoadTexResources
.public AddTextPrinterParameterizedWithColor
.public GF_CreateVramTransferManager
.public GF_DestroyVramTransferManager
.public GF_RunVramTransferTasks
.public sub_020210BC
.public sub_02021148
.public sub_02021238
.public GfGfx_SetBanks
.public GfGfx_DisableEngineAPlanes
.public GfGfx_EngineATogglePlanes
.public GfGfx_DisableEngineBPlanes
.public GfGfx_EngineBTogglePlanes
.public GfGfx_BothDispOn
.public GfGfx_SwapDisplay
.public Camera_New
.public Camera_Delete
.public Camera_SetStaticPtr
.public Camera_PushLookAtToNNSGlb
.public Camera_SetPerspectiveClippingPlane
.public Camera_Init_FromTargetDistanceAndAngle
.public Camera_ApplyPerspectiveType
.public GF_AssertFail
.public String_New
.public String_Delete
.public Thunk_G3X_Reset
.public sub_02026E50
.public GF_3DVramMan_Create
.public GF_3DVramMan_Delete
.public PlayerProfile_GetPlayerName_NewString
.public sub_020347A0
.public sub_02034818
.public sub_02037454
.public sub_0203769C
.public sub_02037AC0
.public sub_02037B38
.public sub_020398D4
.public sub_020399FC
.public sub_0203A880
.public sub_0203A914
.public NNS_G3dGlbFlushP
.public NNS_G3dGlbSetBaseTrans
.public NNS_G3dGlbSetBaseScale
.public NNS_G3dGlbLightVector
.public NNS_G3dGlbLightColor
.public NNS_G3dGlbMaterialColorDiffAmb
.public NNS_G3dGlbMaterialColorSpecEmi
.public NNS_G3dGeFlushBuffer
.public NNS_G3dGeBufferOP_N
.public NNS_G3dGetTex
.public MTX_Identity33_
.public G2x_SetBlendAlpha_
.public G3X_SetFog
.public G3X_SetClearColor
.public GX_BeginLoadTexPltt
.public GX_LoadTexPltt
.public GX_EndLoadTexPltt
.public DC_FlushRange
.public MIi_CpuClear32
.public MI_Copy36B
.public MI_CpuFill8
.public MI_CpuCopy8
.public _s32_div_f
.public NNS_GfdDefaultFuncAllocTexVram
.public NNS_GfdDefaultFuncAllocPlttVram
.public gSystem
.public NNS_G3dGlb
.public ov00_021E69A8
.public ov00_021E6A4C
.public ov90_02258800
.public ov90_022588A4
.public ov90_022588CC
.public ov90_02258B54
.public ov90_02258B98
.public ov90_02258BD4
.public ov90_02258C38
.public ov90_02258C74
.public ov90_02258C8C
.public ov90_02258CB0
.public ov90_02258CE0
.public ov93_0225C540
.public ov93_0225C574
.public ov93_0225C6C0
.public ov93_0225DF38
.public ov93_0225E144
.public ov93_0225E230
.public ov93_0225E3C4
.public ov93_0225E48C
.public ov93_0225EB38
.public ov93_0225EE98
.public ov93_0225EF0C
.public ov93_0225EF5C
.public ov93_0225EFAC
.public ov93_0225F370
.public ov93_0225F44C
.public ov93_0225F9AC
.public ov93_0225F9D8
.public ov93_0225FABC
.public ov93_0225FB00
.public ov93_0225FB6C
.public ov93_0225FBE4
.public ov93_0225FDF4
.public ov93_0225FE80
.public ov93_0225FEC4
.public ov93_0225FFF8
.public ov93_022602E4
.public ov93_02260608
.public ov93_02260660
.public ov93_022609E0
.public ov93_02260A14
.public ov93_02260A30
.public ov93_02260BB0
.public ov93_02260BF0
.public ov93_02260CF8
.public ov93_02260E1C
.public ov93_02260F14
.public ov93_02260F3C
.public ov93_022610B0
.public ov93_0226114C
.public ov93_02261164
.public ov93_022612E0
.public ov93_02261310
.public ov93_02261354
.public ov93_02261BBC
.public ov93_02261C3C
.public ov93_02261D1C
.public ov93_02261EB8
.public ov93_02261FB0
.public ov93_02261FC8
.public ov93_02262034
.public ov93_02262230
.public ov93_02262250
.public ov93_02262310
.public ov93_02262338
.public ov93_02262344
.public ov93_02262368
.public ov93_02262374
.public ov93_02262598
.public ov93_022625BC
.public ov93_022626E8
.public ov93_022626FC
.public ov93_02262724
.public ov93_02262748
.public ov93_022627A4
.public ov93_022627C0
.public ov93_02262830
.public ov93_02262884
.public ov93_022628F4
.public ov93_02262934
.public ov93_0226297C
.public ov93_022629B8
.public ov93_022630D8