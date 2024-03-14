#include <nitro/fs/overlay.h>
#pragma once
.public BlendPalette
.public TintPalette_GrayScale
.public TintPalette_CustomTone
.public UnloadOverlayByID
.public HandleLoadOverlay
.public NARC_AllocAndReadWholeMember
.public SysTask_CreateOnVWaitQueue
.public SysTask_Destroy
.public AllocFromHeapAtEnd
.public FreeToHeap
.public GF_CreateNewVramTransferTask
.public GF_GetNumPendingVramTransferTasks
.public sub_02020838
.public sub_02020888
.public sub_02023E78
.public sub_02023EC8
.public sub_02023EE0
.public sub_02023F40
.public sub_02023FA0
.public sub_02023FB0
.public GF_AssertFail
.public sub_02026E18
.public ScriptReadHalfword
.public FieldSystem_VarGet
.public TaskManager_Call
.public TaskManager_GetFieldSystem
.public TaskManager_GetEnvironment
.public TaskManager_GetStatePtr
.public GetIdxOfFirstAliveMonInParty_CrashIfNone
.public GetMetatileBehaviorAt
.public PlayerAvatar_GetFacingDirection
.public GetPlayerXCoord
.public GetPlayerYCoord
.public PlayerAvatar_GetMapObject
.public MapObject_Remove
.public sub_0205F1A0
.public FldObjSys_GetMModelNarc
.public MapObject_GetID
.public MapObject_GetGfxID
.public MapObject_SetFacingDirection
.public MapObject_GetFacingDirection
.public MapObject_GetParam
.public MapObject_GetManager
.public sub_0205F484
.public MapObject_GetFieldSysPtr
.public MapObject_CheckVisible
.public MapObject_PauseMovement
.public MapObject_UnpauseMovement
.public sub_0205F714
.public MapObject_GetPrevX
.public MapObject_GetPrevY
.public MapObject_GetCurrentX
.public MapObject_GetCurrentY
.public MapObject_GetPositionVec
.public MapObject_SetPositionVec
.public sub_0205FBC0
.public MapObject_AreBitsSetForMovementScriptInit
.public MapObject_SetHeldMovement
.public MapObject_IsMovementPaused
.public sub_0206234C
.public sub_0206599C
.public sub_020659A8
.public sub_020659B8
.public sub_020659CC
.public FollowMon_InitMapObject
.public FollowMon_GetMapObject
.public sub_02069E28
.public sub_02069E84
.public FollowMon_GetSpecies
.public FollowMon_IsActive
.public FollowMon_IsVisible
.public FollowMon_GetPermissionBySpeciesAndMap
.public sub_0206A040
.public sub_0206A054
.public SaveArray_Party_Get
.public NNS_G3dGetTex
.public MIi_CpuCopy16
.public MI_CpuFill8
.public ov01_021F771C
.public ov01_021F9048
.public GetMoveModelNoBySpriteId
.public ov01_021F9744
.public ov01_021FA44C
.public ov01_021FC5A4
.public ov01_0220329C
.public ov01_02205424
.public ov01_0220542C
.public ov01_022054E0
.public ov01_0220553C
.public ov01_02205564
.public ov01_022055B0
.public ov01_022055DC
.public ov01_02205604
.public ov01_02205664
.public ov01_022056C4
.public ov01_02205720
.public ov01_02205784
.public ov01_02205790
.public ov01_022057C4
.public ov01_022057D0
.public ov01_022057DC
.public ov01_02205808
.public ov01_02205870
.public ov01_0220589C
.public ov01_02205990
.public ov01_022059AC
.public ov01_02205A34
.public ov01_02205A60
.public ov01_02205AEC
.public ov01_02205D68
.public ov01_02205EE0
.public ov01_0220609C
.public ov01_022060B8
.public ov01_02206268
.public ov01_022062CC
.public TrainerHouse_StartBattle