#include <nitro/fs/overlay.h>
#pragma once
.public Std_CreateYesNoMenu
.public Handle2dMenuInput_DeleteOnFinish
.public Clear2dMenuWindowAndDelete
.public FontID_String_GetWidth
.public LoadFontPal1
.public FontID_String_GetCenterAlignmentX
.public PaletteData_Init
.public PaletteData_Free
.public PaletteData_AllocBuffers
.public PaletteData_FreeBuffers
.public PaletteData_LoadPalette
.public PaletteData_LoadNarc
.public PaletteData_PushTransparentBuffers
.public PaletteData_SetAutoTransparent
.public PaletteData_BlendPalettes
.public GF_GetCurrentPlayingBGM
.public sub_02004EC4
.public PlaySE
.public StopSE
.public PlayFanfare
.public IsFanfarePlaying
.public OverlayManager_CreateAndGetData
.public OverlayManager_GetData
.public OverlayManager_FreeData
.public OverlayManager_GetArgs
.public NARC_New
.public NARC_Delete
.public NARC_ReadWholeMember
.public NARC_GetMemberSize
.public GfGfxLoader_LoadCharData
.public GfGfxLoader_LoadScrnData
.public GfGfxLoader_GXLoadPal
.public GfGfxLoader_GetCharData
.public GfGfxLoader_GetPlttData
.public GfGfxLoader_LoadCharDataFromOpenNarc
.public GfGfxLoader_LoadScrnDataFromOpenNarc
.public GfGfxLoader_GXLoadPalFromOpenNarc
.public GfGfxLoader_GetCharDataFromOpenNarc
.public GfGfxLoader_GetPlttDataFromOpenNarc
.public CreateSpriteResourcesHeader
.public G2dRenderer_Init
.public G2dRenderer_SetSubSurfaceCoords
.public sub_0200A080
.public Create2DGfxResObjMan
.public Destroy2DGfxResObjMan
.public AddCharResObjFromOpenNarc
.public AddPlttResObjFromOpenNarc
.public AddCellOrAnimResObjFromOpenNarc
.public sub_0200ACF0
.public sub_0200AEB0
.public sub_0200AF94
.public sub_0200B0A8
.public OamManager_Create
.public OamManager_ApplyAndResetBuffers
.public OamManager_Free
.public NewMsgDataFromNarc
.public DestroyMsgData
.public ReadMsgDataIntoString
.public ReadMsgData_ExpandPlaceholders
.public MessageFormat_New
.public MessageFormat_Delete
.public BufferPlayersName
.public BufferIntegerAsString
.public BufferItemName
.public StringExpandPlaceholders
.public SpriteRenderer_Create
.public SpriteRenderer_CreateGfxHandler
.public sub_0200CF70
.public sub_0200CFF4
.public sub_0200D020
.public thunk_OamManager_ApplyAndResetBuffers
.public SpriteRenderer_Delete
.public SpriteRenderer_Init2DGfxResManagersFromCountsArray
.public SpriteRenderer_LoadCharResObjFromOpenNarc
.public sub_0200D68C
.public SpriteRenderer_LoadCellResObjFromOpenNarc
.public SpriteRenderer_LoadAnimResObjFromOpenNarc
.public SpriteRenderer_LoadResourcesAndCreateSprite
.public SpriteRenderer_UnloadResourcesAndRemoveGfxHandler
.public sub_0200D9DC
.public UnkImageStruct_TickSpriteAnimation1Frame
.public UnkImageStruct_TickSpriteAnimationNFrames
.public sub_0200DCA0
.public SysTask_CreateOnMainQueue
.public SysTask_CreateOnVBlankQueue
.public SysTask_Destroy
.public LoadUserFrameGfx1
.public DrawFrameAndWindow1
.public sub_0200E640
.public LoadUserFrameGfx2
.public DrawFrameAndWindow2
.public ClearFrameAndWindow2
.public WaitingIcon_New
.public sub_0200F450
.public BeginNormalPaletteFade
.public IsPaletteFadeFinished
.public Main_SetVBlankIntrCB
.public HBlankInterruptDisable
.public SetKeyRepeatTimers
.public sub_0201A728
.public sub_0201A738
.public CreateHeap
.public DestroyHeap
.public AllocFromHeap
.public AllocFromHeapAtEnd
.public FreeToHeap
.public BgConfig_Alloc
.public SetBothScreensModesAndDisable
.public InitBgFromTemplate
.public FreeBgTilemapBuffer
.public BgCommitTilemapBufferToVram
.public BG_LoadScreenTilemapData
.public BG_LoadCharTilesData
.public BG_ClearCharDataRange
.public BgClearTilemapBufferAndCommit
.public AddWindowParameterized
.public AddWindow
.public RemoveWindow
.public CopyWindowToVram
.public ScheduleWindowCopyToVram
.public ClearWindowTilemapAndCopyToVram
.public FillWindowPixelBuffer
.public DoScheduledBgGpuUpdates
.public GF_SinDegNoWrap
.public GF_CosDegNoWrap
.public GF_SinDeg
.public LCRandom
.public TextPrinterCheckActive
.public RemoveTextPrinter
.public AddTextPrinterParameterized
.public AddTextPrinterParameterizedWithColor
.public GF_CreateVramTransferManager
.public GF_DestroyVramTransferManager
.public GF_RunVramTransferTasks
.public sub_020210BC
.public sub_02021148
.public sub_02021238
.public sub_02021280
.public sub_020215A0
.public sub_0202168C
.public sub_020216C8
.public sub_02022588
.public sub_02022608
.public sub_02022638
.public GfGfx_SetBanks
.public GfGfx_DisableEngineAPlanes
.public GfGfx_EngineATogglePlanes
.public GfGfx_DisableEngineBPlanes
.public GfGfx_EngineBTogglePlanes
.public Camera_New
.public Camera_Delete
.public Camera_SetStaticPtr
.public Camera_PushLookAtToNNSGlb
.public Camera_SetLookAtCamUp
.public Camera_Init_FromTargetDistanceAndAngle
.public SpriteList_Delete
.public sub_0202457C
.public CreateSprite
.public Set2dSpriteVisibleFlag
.public Set2dSpriteAnimActiveFlag
.public Set2dSpriteAnimSeqNo
.public System_GetTouchNew
.public GF_AssertFail
.public String_New
.public String_Delete
.public Thunk_G3X_Reset
.public sub_02026E50
.public GF_3DVramMan_InitFrameTexVramManager
.public GF_3DVramMan_InitFramePlttVramManager
.public PlayerName_FlatToString
.public PlayerProfile_GetTrainerID
.public PlayerProfile_GetTrainerID_VisibleHalf
.public PlayerProfile_GetTrainerGender
.public PlayerProfile_GetAvatar
.public Options_GetFrame
.public GameStats_Inc
.public GameStats_AddSpecial
.public sub_02033250
.public sub_02034818
.public sub_02036FD8
.public sub_02037454
.public sub_0203769C
.public sub_02037AC0
.public sub_02037B38
.public sub_02037FF0
.public sub_0203897C
.public sub_02038C1C
.public sub_020398D4
.public sub_02039EAC
.public sub_02039EB4
.public sub_0203A4AC
.public sub_0203A880
.public sub_02055198
.public sub_0205A904
.public SpriteToUnionRoomAvatarIdx
.public sub_0205B4A4
.public sub_020696C4
.public sub_02069714
.public sub_02069784
.public sub_020697DC
.public sub_02069818
.public sub_02069864
.public sub_02069884
.public sub_020698E8
.public sub_02069978
.public sub_02069998
.public sub_020699BC
.public sub_020699D0
.public GetMonData
.public CopyPokemonToPokemon
.public Party_GetCount
.public Party_GetMonByIndex
.public SaveArray_Party_Get
.public Bag_AddItem
.public Save_Bag_Get
.public MonSetTrainerMemo
.public sub_02096CE0
.public sub_02096D4C
.public sub_02097018
.public NNS_G2dGetUnpackedCharacterData
.public NNS_G2dGetUnpackedPaletteData
.public NNS_G2dGetUnpackedScreenData
.public NNS_G2dInitOamManagerModule
.public NNS_G3dGlbLightVector
.public NNS_G3dGlbLightColor
.public NNS_G3dGlbMaterialColorDiffAmb
.public NNS_G3dGlbMaterialColorSpecEmi
.public NNS_G3dInit
.public G2x_SetBlendAlpha_
.public G3X_InitMtxStack
.public G3X_SetEdgeColorTable
.public G3X_SetClearColor
.public GX_LoadOBJPltt
.public GX_LoadOBJ
.public MI_CpuFill8
.public memset
.public _s32_div_f
.public _u32_div_f
.public gSystem
.public ov85_021E5900
.public ov85_021E5A34
.public ov85_021E5AAC
.public ov85_021E85C4
.public ov85_021E85CC
.public ov85_021E8680
.public ov85_021E86AC
.public ov85_021E8740
.public ov85_021E8748
.public ov85_021E88AC
.public ov85_021E8A08
.public ov85_021E8B08
.public ov85_021E9C84
.public ov85_021E9D9C