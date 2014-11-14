.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x14

.field static final TRANSACTION_addWindowToken:I = 0x12

.field static final TRANSACTION_changeDisplayScale:I = 0x61

.field static final TRANSACTION_clearForcedDisplayDensity:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_closeSystemDialogs:I = 0x31

.field static final TRANSACTION_disableKeyguard:I = 0x29

.field static final TRANSACTION_dismissKeyguard:I = 0x30

.field static final TRANSACTION_dispatchAirButtonHitTest:I = 0x59

.field static final TRANSACTION_dispatchSmartClipDataExtractionEvent:I = 0x58

.field static final TRANSACTION_executeAppTransition:I = 0x1e

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x2b

.field static final TRANSACTION_freezeRotation:I = 0x3f

.field static final TRANSACTION_getAnimationScale:I = 0x32

.field static final TRANSACTION_getAnimationScales:I = 0x33

.field static final TRANSACTION_getAppOrientation:I = 0x17

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCompatibleMagnificationSpecForWindow:I = 0x4d

.field static final TRANSACTION_getFocusedWindowToken:I = 0x47

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x1a

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x3d

.field static final TRANSACTION_getPreferredOptionsPanelGravityTablet:I = 0x3e

.field static final TRANSACTION_getRotation:I = 0x3a

.field static final TRANSACTION_getWindowFrame:I = 0x49

.field static final TRANSACTION_hasCocktailBar:I = 0x52

.field static final TRANSACTION_hasNavigationBar:I = 0x45

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x2e

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isCoverOpen:I = 0x53

.field static final TRANSACTION_isGloveModeEnabled:I = 0x54

.field static final TRANSACTION_isKeyguardHidden:I = 0x2f

.field static final TRANSACTION_isKeyguardLocked:I = 0x2c

.field static final TRANSACTION_isKeyguardSecure:I = 0x2d

.field static final TRANSACTION_isNavigationBarVisible:I = 0x51

.field static final TRANSACTION_isRotationFrozen:I = 0x41

.field static final TRANSACTION_isSafeModeEnabled:I = 0x4a

.field static final TRANSACTION_isStatusBarVisible:I = 0x50

.field static final TRANSACTION_isSystemKeyEventRequested:I = 0x56

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_lockNow:I = 0x46

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1b

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1c

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x1d

.field static final TRANSACTION_pauseKeyDispatching:I = 0xf

.field static final TRANSACTION_prepareAppTransition:I = 0x19

.field static final TRANSACTION_reenableKeyguard:I = 0x2a

.field static final TRANSACTION_registerEasyOneHandWatcher:I = 0x62

.field static final TRANSACTION_removeAdaptiveEvent:I = 0x5f

.field static final TRANSACTION_removeAppToken:I = 0x24

.field static final TRANSACTION_removeContextualEvent:I = 0x5c

.field static final TRANSACTION_removeRotationWatcher:I = 0x3c

.field static final TRANSACTION_removeWindowToken:I = 0x13

.field static final TRANSACTION_requestSystemKeyEvent:I = 0x55

.field static final TRANSACTION_resumeKeyDispatching:I = 0x10

.field static final TRANSACTION_screenshotApplications:I = 0x42

.field static final TRANSACTION_setAdaptiveEvent:I = 0x5e

.field static final TRANSACTION_setAnimationScale:I = 0x34

.field static final TRANSACTION_setAnimationScales:I = 0x35

.field static final TRANSACTION_setAppGroupId:I = 0x15

.field static final TRANSACTION_setAppOrientation:I = 0x16

.field static final TRANSACTION_setAppStartingWindow:I = 0x1f

.field static final TRANSACTION_setAppVisibility:I = 0x21

.field static final TRANSACTION_setAppWillBeHidden:I = 0x20

.field static final TRANSACTION_setContextualEvent:I = 0x5b

.field static final TRANSACTION_setCurrentInputMethodClient:I = 0x5a

.field static final TRANSACTION_setEventDispatching:I = 0x11

.field static final TRANSACTION_setFocusedApp:I = 0x18

.field static final TRANSACTION_setForcedDisplayDensity:I = 0xc

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x36

.field static final TRANSACTION_setInputFilter:I = 0x48

.field static final TRANSACTION_setMagnificationCallbacks:I = 0x4b

.field static final TRANSACTION_setMagnificationSpec:I = 0x4c

.field static final TRANSACTION_setNewConfiguration:I = 0x26

.field static final TRANSACTION_setOverscan:I = 0xe

.field static final TRANSACTION_setSpecialKeysFilter:I = 0x4e

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x38

.field static final TRANSACTION_setTouchExplorationEnabled:I = 0x4f

.field static final TRANSACTION_showStrictModeViolation:I = 0x37

.field static final TRANSACTION_startAppFreezingScreen:I = 0x22

.field static final TRANSACTION_startFreezingScreen:I = 0x27

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x43

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x23

.field static final TRANSACTION_stopFreezingScreen:I = 0x28

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x40

.field static final TRANSACTION_unregisterEasyOneHandWatcher:I = 0x63

.field static final TRANSACTION_updateAdaptiveEvent:I = 0x60

.field static final TRANSACTION_updateContextualEvent:I = 0x5d

.field static final TRANSACTION_updateCoverManagerDisableState:I = 0x57

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x25

.field static final TRANSACTION_updateRotation:I = 0x39

.field static final TRANSACTION_waitForWindowDrawn:I = 0x44

.field static final TRANSACTION_watchRotation:I = 0x3b


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/view/IWindowManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_ba6

    .line 1190
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 47
    :sswitch_8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_7

    .line 52
    :sswitch_11
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v13

    .line 56
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v13, :cond_2d

    const/4 v1, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v1, 0x1

    goto :goto_7

    .line 57
    :cond_2d
    const/4 v1, 0x0

    goto :goto_26

    .line 62
    .end local v2    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_2f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v13

    .line 64
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v13, :cond_47

    const/4 v1, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v1, 0x1

    goto :goto_7

    .line 65
    :cond_47
    const/4 v1, 0x0

    goto :goto_40

    .line 70
    .end local v13    # "_result":Z
    :sswitch_49
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v13

    .line 72
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v13, :cond_61

    const/4 v1, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v1, 0x1

    goto :goto_7

    .line 73
    :cond_61
    const/4 v1, 0x0

    goto :goto_5a

    .line 78
    .end local v13    # "_result":Z
    :sswitch_63
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 82
    .local v2, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v3

    .line 83
    .local v3, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v13

    .line 84
    .local v13, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v13, :cond_8f

    invoke-interface {v13}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 86
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 85
    :cond_8f
    const/4 v1, 0x0

    goto :goto_87

    .line 90
    .end local v2    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v3    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_result":Landroid/view/IWindowSession;
    :sswitch_91
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 93
    .restart local v2    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v13

    .line 94
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v13, :cond_b2

    const/4 v1, 0x1

    :goto_aa
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 95
    :cond_b2
    const/4 v1, 0x0

    goto :goto_aa

    .line 100
    .end local v2    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v13    # "_result":Z
    :sswitch_b4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .local v2, "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 105
    .local v3, "_arg1":Landroid/graphics/Point;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v3, :cond_db

    .line 108
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    :goto_d8
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 112
    :cond_db
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d8

    .line 118
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :sswitch_e2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .restart local v2    # "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 123
    .restart local v3    # "_arg1":Landroid/graphics/Point;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v3, :cond_109

    .line 126
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    :goto_106
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 130
    :cond_109
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_106

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :sswitch_110
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 143
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 149
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_12c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 158
    .end local v2    # "_arg0":I
    :sswitch_140
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v13

    .line 162
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 168
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_15a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v13

    .line 172
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 178
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_174
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensity(II)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_18c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensity(I)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 198
    .end local v2    # "_arg0":I
    :sswitch_1a0
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 204
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 206
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 208
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    move-object v1, p0

    .line 209
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 215
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    :sswitch_1c5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 218
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 224
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_1d9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 233
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_1ed
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_204

    const/4 v2, 0x1

    .line 236
    .local v2, "_arg0":Z
    :goto_1fb
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 235
    .end local v2    # "_arg0":Z
    :cond_204
    const/4 v2, 0x0

    goto :goto_1fb

    .line 242
    :sswitch_206
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 253
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_21e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 256
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 262
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_232
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v3

    .line 268
    .local v3, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 270
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 272
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 274
    .restart local v6    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_271

    const/4 v7, 0x1

    .line 276
    .local v7, "_arg5":Z
    :goto_258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_273

    const/4 v8, 0x1

    .line 278
    .local v8, "_arg6":Z
    :goto_25f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 280
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg8":I
    move-object v1, p0

    .line 281
    invoke-virtual/range {v1 .. v10}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZII)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 274
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":Z
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    :cond_271
    const/4 v7, 0x0

    goto :goto_258

    .line 276
    .restart local v7    # "_arg5":Z
    :cond_273
    const/4 v8, 0x0

    goto :goto_25f

    .line 287
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IApplicationToken;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Z
    :sswitch_275
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 291
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 298
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_28d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 302
    .local v2, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 303
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 309
    .end local v2    # "_arg0":Landroid/view/IApplicationToken;
    .end local v3    # "_arg1":I
    :sswitch_2a9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 312
    .restart local v2    # "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v13

    .line 313
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 319
    .end local v2    # "_arg0":Landroid/view/IApplicationToken;
    .end local v13    # "_result":I
    :sswitch_2c7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 323
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e2

    const/4 v3, 0x1

    .line 324
    .local v3, "_arg1":Z
    :goto_2d9
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 323
    .end local v3    # "_arg1":Z
    :cond_2e2
    const/4 v3, 0x0

    goto :goto_2d9

    .line 330
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_2e4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2ff

    const/4 v3, 0x1

    .line 335
    .restart local v3    # "_arg1":Z
    :goto_2f6
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 334
    .end local v3    # "_arg1":Z
    :cond_2ff
    const/4 v3, 0x0

    goto :goto_2f6

    .line 341
    .end local v2    # "_arg0":I
    :sswitch_301
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v13

    .line 343
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 349
    .end local v13    # "_result":I
    :sswitch_317
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 355
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 357
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v5

    .line 358
    .local v5, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 364
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_33b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 372
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 373
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 379
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :sswitch_35b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_393

    .line 382
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 388
    .local v2, "_arg0":Landroid/graphics/Bitmap;
    :goto_372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 390
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 392
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v5

    .line 394
    .local v5, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_395

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_389
    move-object v1, p0

    .line 395
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 385
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v6    # "_arg4":Z
    :cond_393
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_372

    .line 394
    .restart local v3    # "_arg1":I
    .restart local v4    # "_arg2":I
    .restart local v5    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_395
    const/4 v6, 0x0

    goto :goto_389

    .line 401
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_397
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 408
    :sswitch_3a7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 412
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 416
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3ff

    .line 417
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/CompatibilityInfo;

    .line 423
    .local v5, "_arg3":Landroid/content/res/CompatibilityInfo;
    :goto_3ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_401

    .line 424
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 430
    .local v6, "_arg4":Ljava/lang/CharSequence;
    :goto_3da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 432
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 434
    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 436
    .restart local v9    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 438
    .restart local v10    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 440
    .local v11, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_403

    const/4 v12, 0x1

    .local v12, "_arg10":Z
    :goto_3f5
    move-object v1, p0

    .line 441
    invoke-virtual/range {v1 .. v12}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 420
    .end local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "_arg4":Ljava/lang/CharSequence;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Landroid/os/IBinder;
    .end local v12    # "_arg10":Z
    :cond_3ff
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_3ca

    .line 427
    :cond_401
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Ljava/lang/CharSequence;
    goto :goto_3da

    .line 440
    .restart local v7    # "_arg5":I
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":I
    .restart local v10    # "_arg8":I
    .restart local v11    # "_arg9":Landroid/os/IBinder;
    :cond_403
    const/4 v12, 0x0

    goto :goto_3f5

    .line 447
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "_arg4":Ljava/lang/CharSequence;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":Landroid/os/IBinder;
    :sswitch_405
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 450
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 456
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_419
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 460
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_434

    const/4 v3, 0x1

    .line 461
    .local v3, "_arg1":Z
    :goto_42b
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 460
    .end local v3    # "_arg1":Z
    :cond_434
    const/4 v3, 0x0

    goto :goto_42b

    .line 467
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_436
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 471
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 472
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 478
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_44e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 482
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_469

    const/4 v3, 0x1

    .line 483
    .local v3, "_arg1":Z
    :goto_460
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 482
    .end local v3    # "_arg1":Z
    :cond_469
    const/4 v3, 0x0

    goto :goto_460

    .line 489
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_46b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 492
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 498
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_47f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4b2

    .line 501
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 507
    .local v2, "_arg0":Landroid/content/res/Configuration;
    :goto_496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 508
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v13

    .line 509
    .local v13, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v13, :cond_4b4

    .line 511
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 517
    :goto_4af
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 504
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/content/res/Configuration;
    :cond_4b2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_496

    .line 515
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    .restart local v13    # "_result":Landroid/content/res/Configuration;
    :cond_4b4
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4af

    .line 521
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/content/res/Configuration;
    :sswitch_4bb
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4db

    .line 524
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 529
    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    :goto_4d2
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 527
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :cond_4db
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_4d2

    .line 535
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_4dd
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 540
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 546
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_4f5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 553
    :sswitch_505
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 557
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 564
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_51d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 567
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 573
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_531
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 576
    .local v2, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 582
    .end local v2    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_549
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v13

    .line 584
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    if-eqz v13, :cond_562

    const/4 v1, 0x1

    :goto_55a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 585
    :cond_562
    const/4 v1, 0x0

    goto :goto_55a

    .line 590
    .end local v13    # "_result":Z
    :sswitch_564
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v13

    .line 592
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    if-eqz v13, :cond_57d

    const/4 v1, 0x1

    :goto_575
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 593
    :cond_57d
    const/4 v1, 0x0

    goto :goto_575

    .line 598
    .end local v13    # "_result":Z
    :sswitch_57f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v13

    .line 600
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    if-eqz v13, :cond_598

    const/4 v1, 0x1

    :goto_590
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 601
    :cond_598
    const/4 v1, 0x0

    goto :goto_590

    .line 606
    .end local v13    # "_result":Z
    :sswitch_59a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardHidden()Z

    move-result v13

    .line 608
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    if-eqz v13, :cond_5b3

    const/4 v1, 0x1

    :goto_5ab
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 609
    :cond_5b3
    const/4 v1, 0x0

    goto :goto_5ab

    .line 614
    .end local v13    # "_result":Z
    :sswitch_5b5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 621
    :sswitch_5c5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 630
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_5d9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 633
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v13

    .line 634
    .local v13, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloat(F)V

    .line 636
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 640
    .end local v2    # "_arg0":I
    .end local v13    # "_result":F
    :sswitch_5f3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v13

    .line 642
    .local v13, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 644
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 648
    .end local v13    # "_result":[F
    :sswitch_609
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 652
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 653
    .local v3, "_arg1":F
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 659
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :sswitch_621
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 662
    .local v2, "_arg0":[F
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 668
    .end local v2    # "_arg0":[F
    :sswitch_635
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_64c

    const/4 v2, 0x1

    .line 671
    .local v2, "_arg0":Z
    :goto_643
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 670
    .end local v2    # "_arg0":Z
    :cond_64c
    const/4 v2, 0x0

    goto :goto_643

    .line 677
    :sswitch_64e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_665

    const/4 v2, 0x1

    .line 680
    .restart local v2    # "_arg0":Z
    :goto_65c
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 679
    .end local v2    # "_arg0":Z
    :cond_665
    const/4 v2, 0x0

    goto :goto_65c

    .line 686
    :sswitch_667
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 695
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_67b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_699

    const/4 v2, 0x1

    .line 699
    .local v2, "_arg0":Z
    :goto_689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_69b

    const/4 v3, 0x1

    .line 700
    .local v3, "_arg1":Z
    :goto_690
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 697
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :cond_699
    const/4 v2, 0x0

    goto :goto_689

    .line 699
    .restart local v2    # "_arg0":Z
    :cond_69b
    const/4 v3, 0x0

    goto :goto_690

    .line 706
    .end local v2    # "_arg0":Z
    :sswitch_69d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v13

    .line 708
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 714
    .end local v13    # "_result":I
    :sswitch_6b3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 717
    .local v2, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v13

    .line 718
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 724
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v13    # "_result":I
    :sswitch_6d1
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 727
    .restart local v2    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 733
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_6e9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v13

    .line 735
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 741
    .end local v13    # "_result":I
    :sswitch_6ff
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravityTablet()I

    move-result v13

    .line 743
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 749
    .end local v13    # "_result":I
    :sswitch_715
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 752
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 758
    .end local v2    # "_arg0":I
    :sswitch_729
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 765
    :sswitch_739
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v13

    .line 767
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    if-eqz v13, :cond_752

    const/4 v1, 0x1

    :goto_74a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 768
    :cond_752
    const/4 v1, 0x0

    goto :goto_74a

    .line 773
    .end local v13    # "_result":Z
    :sswitch_754
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 777
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 779
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 781
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 783
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_78b

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_772
    move-object v1, p0

    .line 784
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 785
    .local v13, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    if-eqz v13, :cond_78d

    .line 787
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 793
    :goto_788
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 783
    .end local v6    # "_arg4":Z
    .end local v13    # "_result":Landroid/graphics/Bitmap;
    :cond_78b
    const/4 v6, 0x0

    goto :goto_772

    .line 791
    .restart local v6    # "_arg4":Z
    .restart local v13    # "_result":Landroid/graphics/Bitmap;
    :cond_78d
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_788

    .line 797
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Z
    .end local v13    # "_result":Landroid/graphics/Bitmap;
    :sswitch_794
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 800
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 801
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 805
    .end local v2    # "_arg0":I
    :sswitch_7a5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 809
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 810
    .local v3, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z

    move-result v13

    .line 811
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    if-eqz v13, :cond_7ca

    const/4 v1, 0x1

    :goto_7c2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 812
    :cond_7ca
    const/4 v1, 0x0

    goto :goto_7c2

    .line 817
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v13    # "_result":Z
    :sswitch_7cc
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v13

    .line 819
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    if-eqz v13, :cond_7e5

    const/4 v1, 0x1

    :goto_7dd
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 820
    :cond_7e5
    const/4 v1, 0x0

    goto :goto_7dd

    .line 825
    .end local v13    # "_result":Z
    :sswitch_7e7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_807

    .line 828
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 833
    .local v2, "_arg0":Landroid/os/Bundle;
    :goto_7fe
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 831
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_807
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_7fe

    .line 839
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_809
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v13

    .line 841
    .local v13, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 843
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 847
    .end local v13    # "_result":Landroid/os/IBinder;
    :sswitch_81f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IInputFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;

    move-result-object v2

    .line 850
    .local v2, "_arg0":Landroid/view/IInputFilter;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 856
    .end local v2    # "_arg0":Landroid/view/IInputFilter;
    :sswitch_837
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 860
    .local v2, "_arg0":Landroid/os/IBinder;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 861
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    if-eqz v3, :cond_85e

    .line 864
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 870
    :goto_85b
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 868
    :cond_85e
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_85b

    .line 874
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :sswitch_865
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v13

    .line 876
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    if-eqz v13, :cond_87e

    const/4 v1, 0x1

    :goto_876
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 877
    :cond_87e
    const/4 v1, 0x0

    goto :goto_876

    .line 882
    .end local v13    # "_result":Z
    :sswitch_880
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IMagnificationCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IMagnificationCallbacks;

    move-result-object v2

    .line 885
    .local v2, "_arg0":Landroid/view/IMagnificationCallbacks;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setMagnificationCallbacks(Landroid/view/IMagnificationCallbacks;)V

    .line 886
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 891
    .end local v2    # "_arg0":Landroid/view/IMagnificationCallbacks;
    :sswitch_898
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8b8

    .line 894
    sget-object v1, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MagnificationSpec;

    .line 899
    .local v2, "_arg0":Landroid/view/MagnificationSpec;
    :goto_8af
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 897
    .end local v2    # "_arg0":Landroid/view/MagnificationSpec;
    :cond_8b8
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/view/MagnificationSpec;
    goto :goto_8af

    .line 905
    .end local v2    # "_arg0":Landroid/view/MagnificationSpec;
    :sswitch_8ba
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 908
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;

    move-result-object v13

    .line 909
    .local v13, "_result":Landroid/view/MagnificationSpec;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    if-eqz v13, :cond_8dd

    .line 911
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    .line 917
    :goto_8da
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 915
    :cond_8dd
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8da

    .line 921
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_result":Landroid/view/MagnificationSpec;
    :sswitch_8e4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 924
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setSpecialKeysFilter(Landroid/os/IBinder;)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 930
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_8f8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_90f

    const/4 v2, 0x1

    .line 933
    .local v2, "_arg0":Z
    :goto_906
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTouchExplorationEnabled(Z)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 932
    .end local v2    # "_arg0":Z
    :cond_90f
    const/4 v2, 0x0

    goto :goto_906

    .line 939
    :sswitch_911
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isStatusBarVisible()Z

    move-result v13

    .line 941
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    if-eqz v13, :cond_92a

    const/4 v1, 0x1

    :goto_922
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 942
    :cond_92a
    const/4 v1, 0x0

    goto :goto_922

    .line 947
    .end local v13    # "_result":Z
    :sswitch_92c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isNavigationBarVisible()Z

    move-result v13

    .line 949
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    if-eqz v13, :cond_945

    const/4 v1, 0x1

    :goto_93d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 950
    :cond_945
    const/4 v1, 0x0

    goto :goto_93d

    .line 955
    .end local v13    # "_result":Z
    :sswitch_947
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->hasCocktailBar()Z

    move-result v13

    .line 957
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    if-eqz v13, :cond_960

    const/4 v1, 0x1

    :goto_958
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 958
    :cond_960
    const/4 v1, 0x0

    goto :goto_958

    .line 963
    .end local v13    # "_result":Z
    :sswitch_962
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isCoverOpen()Z

    move-result v13

    .line 965
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    if-eqz v13, :cond_97b

    const/4 v1, 0x1

    :goto_973
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 966
    :cond_97b
    const/4 v1, 0x0

    goto :goto_973

    .line 971
    .end local v13    # "_result":Z
    :sswitch_97d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isGloveModeEnabled()Z

    move-result v13

    .line 973
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v13, :cond_996

    const/4 v1, 0x1

    :goto_98e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 974
    :cond_996
    const/4 v1, 0x0

    goto :goto_98e

    .line 979
    .end local v13    # "_result":Z
    :sswitch_998
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 983
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9cc

    .line 984
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 990
    .local v3, "_arg1":Landroid/content/ComponentName;
    :goto_9b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9ce

    const/4 v4, 0x1

    .line 991
    .local v4, "_arg2":Z
    :goto_9ba
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v13

    .line 992
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    if-eqz v13, :cond_9d0

    const/4 v1, 0x1

    :goto_9c4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 987
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Z
    .end local v13    # "_result":Z
    :cond_9cc
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    goto :goto_9b3

    .line 990
    :cond_9ce
    const/4 v4, 0x0

    goto :goto_9ba

    .line 993
    .restart local v4    # "_arg2":Z
    .restart local v13    # "_result":Z
    :cond_9d0
    const/4 v1, 0x0

    goto :goto_9c4

    .line 998
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Z
    .end local v13    # "_result":Z
    :sswitch_9d2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1002
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9ff

    .line 1003
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1008
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    :goto_9ed
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v13

    .line 1009
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    if-eqz v13, :cond_a01

    const/4 v1, 0x1

    :goto_9f7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1006
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :cond_9ff
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    goto :goto_9ed

    .line 1010
    .restart local v13    # "_result":Z
    :cond_a01
    const/4 v1, 0x0

    goto :goto_9f7

    .line 1015
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v13    # "_result":Z
    :sswitch_a03
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a1a

    const/4 v2, 0x1

    .line 1018
    .local v2, "_arg0":Z
    :goto_a11
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->updateCoverManagerDisableState(Z)V

    .line 1019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1017
    .end local v2    # "_arg0":Z
    :cond_a1a
    const/4 v2, 0x0

    goto :goto_a11

    .line 1024
    :sswitch_a1c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a40

    .line 1027
    sget-object v1, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 1033
    .local v2, "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    :goto_a33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1034
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->dispatchSmartClipDataExtractionEvent(Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/os/IBinder;)V

    .line 1035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1030
    .end local v2    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :cond_a40
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    goto :goto_a33

    .line 1040
    .end local v2    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    :sswitch_a42
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1044
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1046
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1047
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->dispatchAirButtonHitTest(III)V

    .line 1048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1053
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_a5e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1056
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1062
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_a72
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1066
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a96

    .line 1067
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1072
    .local v3, "_arg1":Landroid/widget/RemoteViews;
    :goto_a8d
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1070
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    :cond_a96
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_a8d

    .line 1078
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_a98
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1081
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeContextualEvent(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1087
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_aac
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1091
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ad0

    .line 1092
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1097
    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    :goto_ac7
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 1098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1095
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    :cond_ad0
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_ac7

    .line 1103
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_ad2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1107
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b06

    .line 1108
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1114
    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    :goto_aed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b08

    .line 1115
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 1120
    .local v4, "_arg2":Landroid/widget/RemoteViews;
    :goto_afd
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1111
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_b06
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_aed

    .line 1118
    :cond_b08
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_afd

    .line 1126
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_b0a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1129
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1135
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_b1e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1139
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b52

    .line 1140
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1146
    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    :goto_b39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b54

    .line 1147
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 1152
    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    :goto_b49
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1143
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :cond_b52
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_b39

    .line 1150
    :cond_b54
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_b49

    .line 1158
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_b56
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1162
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 1164
    .local v3, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 1166
    .local v4, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 1167
    .local v5, "_arg3":F
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->changeDisplayScale(IFFF)V

    .line 1168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1173
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":F
    :sswitch_b76
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/easyonehand/IEasyOneHandWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/easyonehand/IEasyOneHandWatcher;

    move-result-object v2

    .line 1176
    .local v2, "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerEasyOneHandWatcher(Landroid/sec/easyonehand/IEasyOneHandWatcher;)V

    .line 1177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 1182
    .end local v2    # "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    :sswitch_b8e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/easyonehand/IEasyOneHandWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/easyonehand/IEasyOneHandWatcher;

    move-result-object v2

    .line 1185
    .restart local v2    # "_arg0":Landroid/sec/easyonehand/IEasyOneHandWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterEasyOneHandWatcher(Landroid/sec/easyonehand/IEasyOneHandWatcher;)V

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 43
    :sswitch_data_ba6
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_49
        0x4 -> :sswitch_63
        0x5 -> :sswitch_91
        0x6 -> :sswitch_b4
        0x7 -> :sswitch_e2
        0x8 -> :sswitch_110
        0x9 -> :sswitch_12c
        0xa -> :sswitch_140
        0xb -> :sswitch_15a
        0xc -> :sswitch_174
        0xd -> :sswitch_18c
        0xe -> :sswitch_1a0
        0xf -> :sswitch_1c5
        0x10 -> :sswitch_1d9
        0x11 -> :sswitch_1ed
        0x12 -> :sswitch_206
        0x13 -> :sswitch_21e
        0x14 -> :sswitch_232
        0x15 -> :sswitch_275
        0x16 -> :sswitch_28d
        0x17 -> :sswitch_2a9
        0x18 -> :sswitch_2c7
        0x19 -> :sswitch_2e4
        0x1a -> :sswitch_301
        0x1b -> :sswitch_317
        0x1c -> :sswitch_33b
        0x1d -> :sswitch_35b
        0x1e -> :sswitch_397
        0x1f -> :sswitch_3a7
        0x20 -> :sswitch_405
        0x21 -> :sswitch_419
        0x22 -> :sswitch_436
        0x23 -> :sswitch_44e
        0x24 -> :sswitch_46b
        0x25 -> :sswitch_47f
        0x26 -> :sswitch_4bb
        0x27 -> :sswitch_4dd
        0x28 -> :sswitch_4f5
        0x29 -> :sswitch_505
        0x2a -> :sswitch_51d
        0x2b -> :sswitch_531
        0x2c -> :sswitch_549
        0x2d -> :sswitch_564
        0x2e -> :sswitch_57f
        0x2f -> :sswitch_59a
        0x30 -> :sswitch_5b5
        0x31 -> :sswitch_5c5
        0x32 -> :sswitch_5d9
        0x33 -> :sswitch_5f3
        0x34 -> :sswitch_609
        0x35 -> :sswitch_621
        0x36 -> :sswitch_635
        0x37 -> :sswitch_64e
        0x38 -> :sswitch_667
        0x39 -> :sswitch_67b
        0x3a -> :sswitch_69d
        0x3b -> :sswitch_6b3
        0x3c -> :sswitch_6d1
        0x3d -> :sswitch_6e9
        0x3e -> :sswitch_6ff
        0x3f -> :sswitch_715
        0x40 -> :sswitch_729
        0x41 -> :sswitch_739
        0x42 -> :sswitch_754
        0x43 -> :sswitch_794
        0x44 -> :sswitch_7a5
        0x45 -> :sswitch_7cc
        0x46 -> :sswitch_7e7
        0x47 -> :sswitch_809
        0x48 -> :sswitch_81f
        0x49 -> :sswitch_837
        0x4a -> :sswitch_865
        0x4b -> :sswitch_880
        0x4c -> :sswitch_898
        0x4d -> :sswitch_8ba
        0x4e -> :sswitch_8e4
        0x4f -> :sswitch_8f8
        0x50 -> :sswitch_911
        0x51 -> :sswitch_92c
        0x52 -> :sswitch_947
        0x53 -> :sswitch_962
        0x54 -> :sswitch_97d
        0x55 -> :sswitch_998
        0x56 -> :sswitch_9d2
        0x57 -> :sswitch_a03
        0x58 -> :sswitch_a1c
        0x59 -> :sswitch_a42
        0x5a -> :sswitch_a5e
        0x5b -> :sswitch_a72
        0x5c -> :sswitch_a98
        0x5d -> :sswitch_aac
        0x5e -> :sswitch_ad2
        0x5f -> :sswitch_b0a
        0x60 -> :sswitch_b1e
        0x61 -> :sswitch_b56
        0x62 -> :sswitch_b76
        0x63 -> :sswitch_b8e
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
