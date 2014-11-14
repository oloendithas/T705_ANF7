.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_applyEDMPolicy:I = 0x1f

.field static final TRANSACTION_blockRecentWindow:I = 0x2a

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x16

.field static final TRANSACTION_collapsePanels:I = 0x2

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_disableAsUser:I = 0x4

.field static final TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final TRANSACTION_expandSettingsPanel:I = 0xa

.field static final TRANSACTION_getAllNotifications:I = 0x20

.field static final TRANSACTION_getAllNotificationsForBridge:I = 0x21

.field static final TRANSACTION_getPanelExpandState:I = 0x29

.field static final TRANSACTION_hideCallView:I = 0x1b

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x1c

.field static final TRANSACTION_isStatusBarExpandEnabled:I = 0x1d

.field static final TRANSACTION_onClearAllNotifications:I = 0x10

.field static final TRANSACTION_onNotificationClear:I = 0x11

.field static final TRANSACTION_onNotificationClick:I = 0xe

.field static final TRANSACTION_onNotificationError:I = 0xf

.field static final TRANSACTION_onPanelRevealed:I = 0xd

.field static final TRANSACTION_preloadRecentApps:I = 0x15

.field static final TRANSACTION_registerStatusBar:I = 0xc

.field static final TRANSACTION_removeIcon:I = 0x7

.field static final TRANSACTION_setCallBackground:I = 0x2b

.field static final TRANSACTION_setCurrentUser:I = 0xb

.field static final TRANSACTION_setHardKeyboardEnabled:I = 0x13

.field static final TRANSACTION_setIcon:I = 0x5

.field static final TRANSACTION_setIconVisibility:I = 0x6

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setMaxBrightness:I = 0x19

.field static final TRANSACTION_setMultiWindowBg:I = 0x27

.field static final TRANSACTION_setPanelExpandState:I = 0x28

.field static final TRANSACTION_setSemiTransparentMode:I = 0x23

.field static final TRANSACTION_setSystemUiVisibility:I = 0x12

.field static final TRANSACTION_setTransGradationMode:I = 0x22

.field static final TRANSACTION_setUseWindowTrans:I = 0x24

.field static final TRANSACTION_setWindowSemiTransparentMode:I = 0x26

.field static final TRANSACTION_setWindowState:I = 0x17

.field static final TRANSACTION_setWindowTransGradationMode:I = 0x25

.field static final TRANSACTION_showCallView:I = 0x1a

.field static final TRANSACTION_toggleNotificationPanel:I = 0x18

.field static final TRANSACTION_toggleRecentApps:I = 0x14

.field static final TRANSACTION_topAppWindowChanged:I = 0x8

.field static final TRANSACTION_triggerNotificationClick:I = 0x1e


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
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
    .line 39
    sparse-switch p1, :sswitch_data_47e

    .line 484
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 43
    :sswitch_8
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    goto :goto_7

    .line 48
    :sswitch_11
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/4 v2, 0x1

    goto :goto_7

    .line 55
    :sswitch_20
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v2, 0x1

    goto :goto_7

    .line 62
    :sswitch_2f
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 66
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 68
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v2, 0x1

    goto :goto_7

    .line 75
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_4c
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 83
    .local v5, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableAsUser(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v2, 0x1

    goto :goto_7

    .line 90
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/os/IBinder;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_6d
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 98
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 100
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 101
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 107
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    :sswitch_93
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b0

    const/4 v4, 0x1

    .line 112
    .local v4, "_arg1":Z
    :goto_a5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 111
    .end local v4    # "_arg1":Z
    :cond_b0
    const/4 v4, 0x0

    goto :goto_a5

    .line 118
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_b2
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 127
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_c8
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e1

    const/4 v3, 0x1

    .line 130
    .local v3, "_arg0":Z
    :goto_d6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->topAppWindowChanged(Z)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 129
    .end local v3    # "_arg0":Z
    :cond_e1
    const/4 v3, 0x0

    goto :goto_d6

    .line 136
    :sswitch_e3
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 140
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 143
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 149
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_101
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel()V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 156
    :sswitch_111
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCurrentUser(I)V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 165
    .end local v3    # "_arg0":I
    :sswitch_127
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v3

    .line 169
    .local v3, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v4}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 171
    .local v4, "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v11, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v12, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 176
    .local v15, "_arg4_length":I
    if-gez v15, :cond_181

    .line 177
    const/4 v7, 0x0

    .line 183
    .local v7, "_arg4":[I
    :goto_14c
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v13, v7

    .line 184
    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v4, :cond_184

    .line 187
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 193
    :goto_16a
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 194
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 195
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 196
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 197
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 180
    .end local v7    # "_arg4":[I
    .end local v14    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_181
    new-array v7, v15, [I

    .restart local v7    # "_arg4":[I
    goto :goto_14c

    .line 191
    .restart local v14    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_184
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16a

    .line 201
    .end local v3    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v4    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v7    # "_arg4":[I
    .end local v11    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v12    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v14    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v15    # "_arg4_length":I
    :sswitch_18b
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed()V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 208
    :sswitch_19b
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 215
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 221
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_1b9
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 225
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 227
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 229
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 231
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 233
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 234
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 240
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    :sswitch_1e3
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications()V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 247
    :sswitch_1f3
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 253
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 254
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 260
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_211
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 264
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 265
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(II)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 271
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_22b
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_244

    const/4 v3, 0x1

    .line 274
    .local v3, "_arg0":Z
    :goto_239
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setHardKeyboardEnabled(Z)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 273
    .end local v3    # "_arg0":Z
    :cond_244
    const/4 v3, 0x0

    goto :goto_239

    .line 280
    :sswitch_246
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleRecentApps()V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 287
    :sswitch_256
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->preloadRecentApps()V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 294
    :sswitch_266
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelPreloadRecentApps()V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 301
    :sswitch_276
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 306
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowState(II)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 312
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_290
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleNotificationPanel()V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 319
    :sswitch_2a0
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 322
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setMaxBrightness(I)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 328
    .end local v3    # "_arg0":I
    :sswitch_2b6
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showCallView()V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 335
    :sswitch_2c6
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideCallView()V

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 342
    :sswitch_2d6
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isScreenCaptureEnabled()Z

    move-result v16

    .line 344
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    if-eqz v16, :cond_2ef

    const/4 v2, 0x1

    :goto_2e7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 345
    :cond_2ef
    const/4 v2, 0x0

    goto :goto_2e7

    .line 350
    .end local v16    # "_result":Z
    :sswitch_2f1
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isStatusBarExpandEnabled()Z

    move-result v16

    .line 352
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v16, :cond_30a

    const/4 v2, 0x1

    :goto_302
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 353
    :cond_30a
    const/4 v2, 0x0

    goto :goto_302

    .line 358
    .end local v16    # "_result":Z
    :sswitch_30c
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 365
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->triggerNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 371
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_32a
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->applyEDMPolicy()V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 378
    :sswitch_33a
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getAllNotifications()Ljava/util/List;

    move-result-object v17

    .line 380
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 382
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 386
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    :sswitch_352
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_373

    const/4 v3, 0x1

    .line 389
    .local v3, "_arg0":Z
    :goto_360
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getAllNotificationsForBridge(Z)Ljava/util/List;

    move-result-object v17

    .line 390
    .restart local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 392
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 388
    .end local v3    # "_arg0":Z
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    :cond_373
    const/4 v3, 0x0

    goto :goto_360

    .line 396
    :sswitch_375
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38e

    const/4 v3, 0x1

    .line 399
    .restart local v3    # "_arg0":Z
    :goto_383
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setTransGradationMode(Z)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 398
    .end local v3    # "_arg0":Z
    :cond_38e
    const/4 v3, 0x0

    goto :goto_383

    .line 405
    :sswitch_390
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3a9

    const/4 v3, 0x1

    .line 408
    .restart local v3    # "_arg0":Z
    :goto_39e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSemiTransparentMode(Z)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 407
    .end local v3    # "_arg0":Z
    :cond_3a9
    const/4 v3, 0x0

    goto :goto_39e

    .line 414
    :sswitch_3ab
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c4

    const/4 v3, 0x1

    .line 417
    .restart local v3    # "_arg0":Z
    :goto_3b9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setUseWindowTrans(Z)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 416
    .end local v3    # "_arg0":Z
    :cond_3c4
    const/4 v3, 0x0

    goto :goto_3b9

    .line 423
    :sswitch_3c6
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3df

    const/4 v3, 0x1

    .line 426
    .restart local v3    # "_arg0":Z
    :goto_3d4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowTransGradationMode(Z)V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 425
    .end local v3    # "_arg0":Z
    :cond_3df
    const/4 v3, 0x0

    goto :goto_3d4

    .line 432
    :sswitch_3e1
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3fa

    const/4 v3, 0x1

    .line 435
    .restart local v3    # "_arg0":Z
    :goto_3ef
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowSemiTransparentMode(Z)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 434
    .end local v3    # "_arg0":Z
    :cond_3fa
    const/4 v3, 0x0

    goto :goto_3ef

    .line 441
    :sswitch_3fc
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_415

    const/4 v3, 0x1

    .line 444
    .restart local v3    # "_arg0":Z
    :goto_40a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setMultiWindowBg(Z)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 443
    .end local v3    # "_arg0":Z
    :cond_415
    const/4 v3, 0x0

    goto :goto_40a

    .line 450
    :sswitch_417
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_430

    const/4 v3, 0x1

    .line 453
    .restart local v3    # "_arg0":Z
    :goto_425
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setPanelExpandState(Z)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 452
    .end local v3    # "_arg0":Z
    :cond_430
    const/4 v3, 0x0

    goto :goto_425

    .line 459
    :sswitch_432
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getPanelExpandState()Z

    move-result v16

    .line 461
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    if-eqz v16, :cond_44b

    const/4 v2, 0x1

    :goto_443
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 462
    :cond_44b
    const/4 v2, 0x0

    goto :goto_443

    .line 467
    .end local v16    # "_result":Z
    :sswitch_44d
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_466

    const/4 v3, 0x1

    .line 470
    .restart local v3    # "_arg0":Z
    :goto_45b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->blockRecentWindow(Z)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 469
    .end local v3    # "_arg0":Z
    :cond_466
    const/4 v3, 0x0

    goto :goto_45b

    .line 476
    :sswitch_468
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 479
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCallBackground(I)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 39
    :sswitch_data_47e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_20
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_93
        0x7 -> :sswitch_b2
        0x8 -> :sswitch_c8
        0x9 -> :sswitch_e3
        0xa -> :sswitch_101
        0xb -> :sswitch_111
        0xc -> :sswitch_127
        0xd -> :sswitch_18b
        0xe -> :sswitch_19b
        0xf -> :sswitch_1b9
        0x10 -> :sswitch_1e3
        0x11 -> :sswitch_1f3
        0x12 -> :sswitch_211
        0x13 -> :sswitch_22b
        0x14 -> :sswitch_246
        0x15 -> :sswitch_256
        0x16 -> :sswitch_266
        0x17 -> :sswitch_276
        0x18 -> :sswitch_290
        0x19 -> :sswitch_2a0
        0x1a -> :sswitch_2b6
        0x1b -> :sswitch_2c6
        0x1c -> :sswitch_2d6
        0x1d -> :sswitch_2f1
        0x1e -> :sswitch_30c
        0x1f -> :sswitch_32a
        0x20 -> :sswitch_33a
        0x21 -> :sswitch_352
        0x22 -> :sswitch_375
        0x23 -> :sswitch_390
        0x24 -> :sswitch_3ab
        0x25 -> :sswitch_3c6
        0x26 -> :sswitch_3e1
        0x27 -> :sswitch_3fc
        0x28 -> :sswitch_417
        0x29 -> :sswitch_432
        0x2a -> :sswitch_44d
        0x2b -> :sswitch_468
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
