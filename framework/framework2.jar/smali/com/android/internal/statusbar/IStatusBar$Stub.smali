.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addNotification:I = 0x3

.field static final TRANSACTION_animateCollapsePanels:I = 0x9

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x7

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x8

.field static final TRANSACTION_applyEDMPolicy:I = 0x16

.field static final TRANSACTION_blockRecentWindow:I = 0x1d

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x10

.field static final TRANSACTION_disable:I = 0x6

.field static final TRANSACTION_hideCallOnGoingView:I = 0x15

.field static final TRANSACTION_preloadRecentApps:I = 0xf

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_removeNotification:I = 0x5

.field static final TRANSACTION_setCallBackground:I = 0x1e

.field static final TRANSACTION_setHardKeyboardStatus:I = 0xd

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0xc

.field static final TRANSACTION_setMaxBrightness:I = 0x13

.field static final TRANSACTION_setMultiWindowBg:I = 0x1c

.field static final TRANSACTION_setSemiTransparentMode:I = 0x18

.field static final TRANSACTION_setSystemUiVisibility:I = 0xa

.field static final TRANSACTION_setTransGradationMode:I = 0x17

.field static final TRANSACTION_setUseWindowTrans:I = 0x19

.field static final TRANSACTION_setWindowSemiTransparentMode:I = 0x1b

.field static final TRANSACTION_setWindowState:I = 0x11

.field static final TRANSACTION_setWindowTransGradationMode:I = 0x1a

.field static final TRANSACTION_showCallOnGoingView:I = 0x14

.field static final TRANSACTION_toggleNotificationPanel:I = 0x12

.field static final TRANSACTION_toggleRecentApps:I = 0xe

.field static final TRANSACTION_topAppWindowChanged:I = 0xb

.field static final TRANSACTION_updateNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
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
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_1fe

    .line 298
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 43
    :sswitch_a
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 53
    sget-object v4, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 58
    .local v1, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_27
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_9

    .line 56
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_2b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_27

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2d
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":I
    :sswitch_3a
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 75
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    .line 76
    sget-object v4, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 81
    .local v1, "_arg1":Landroid/service/notification/StatusBarNotification;
    :goto_51
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_9

    .line 79
    .end local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :cond_55
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    goto :goto_51

    .line 86
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :sswitch_57
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    .line 91
    sget-object v4, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 96
    .restart local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :goto_6e
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_9

    .line 94
    .end local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :cond_72
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    goto :goto_6e

    .line 101
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/service/notification/StatusBarNotification;
    :sswitch_74
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeNotification(Landroid/os/IBinder;)V

    goto :goto_9

    .line 109
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_81
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(I)V

    goto/16 :goto_9

    .line 117
    .end local v0    # "_arg0":I
    :sswitch_8f
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    goto/16 :goto_9

    .line 123
    :sswitch_99
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    goto/16 :goto_9

    .line 129
    :sswitch_a3
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    goto/16 :goto_9

    .line 135
    :sswitch_ad
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    goto/16 :goto_9

    .line 145
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_bf
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d0

    move v0, v3

    .line 148
    .local v0, "_arg0":Z
    :goto_cb
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_d0
    move v0, v4

    .line 147
    goto :goto_cb

    .line 153
    :sswitch_d2
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 157
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;II)V

    goto/16 :goto_9

    .line 165
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_e8
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_100

    move v0, v3

    .line 169
    .local v0, "_arg0":Z
    :goto_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_102

    move v1, v3

    .line 170
    .local v1, "_arg1":Z
    :goto_fb
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setHardKeyboardStatus(ZZ)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_100
    move v0, v4

    .line 167
    goto :goto_f4

    .restart local v0    # "_arg0":Z
    :cond_102
    move v1, v4

    .line 169
    goto :goto_fb

    .line 175
    .end local v0    # "_arg0":Z
    :sswitch_104
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    goto/16 :goto_9

    .line 181
    :sswitch_10e
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    goto/16 :goto_9

    .line 187
    :sswitch_118
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    goto/16 :goto_9

    .line 193
    :sswitch_122
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    goto/16 :goto_9

    .line 203
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_134
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationPanel()V

    goto/16 :goto_9

    .line 209
    :sswitch_13e
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setMaxBrightness(I)V

    goto/16 :goto_9

    .line 217
    .end local v0    # "_arg0":I
    :sswitch_14c
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showCallOnGoingView()V

    goto/16 :goto_9

    .line 223
    :sswitch_156
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideCallOnGoingView()V

    goto/16 :goto_9

    .line 229
    :sswitch_160
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->applyEDMPolicy()V

    goto/16 :goto_9

    .line 235
    :sswitch_16a
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17b

    move v0, v3

    .line 238
    .local v0, "_arg0":Z
    :goto_176
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTransGradationMode(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_17b
    move v0, v4

    .line 237
    goto :goto_176

    .line 243
    :sswitch_17d
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18e

    move v0, v3

    .line 246
    .restart local v0    # "_arg0":Z
    :goto_189
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSemiTransparentMode(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_18e
    move v0, v4

    .line 245
    goto :goto_189

    .line 251
    :sswitch_190
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a1

    move v0, v3

    .line 254
    .restart local v0    # "_arg0":Z
    :goto_19c
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUseWindowTrans(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1a1
    move v0, v4

    .line 253
    goto :goto_19c

    .line 259
    :sswitch_1a3
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b4

    move v0, v3

    .line 262
    .restart local v0    # "_arg0":Z
    :goto_1af
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowTransGradationMode(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1b4
    move v0, v4

    .line 261
    goto :goto_1af

    .line 267
    :sswitch_1b6
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c7

    move v0, v3

    .line 270
    .restart local v0    # "_arg0":Z
    :goto_1c2
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowSemiTransparentMode(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1c7
    move v0, v4

    .line 269
    goto :goto_1c2

    .line 275
    :sswitch_1c9
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1da

    move v0, v3

    .line 278
    .restart local v0    # "_arg0":Z
    :goto_1d5
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setMultiWindowBg(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1da
    move v0, v4

    .line 277
    goto :goto_1d5

    .line 283
    :sswitch_1dc
    const-string v5, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1ed

    move v0, v3

    .line 286
    .restart local v0    # "_arg0":Z
    :goto_1e8
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->blockRecentWindow(Z)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1ed
    move v0, v4

    .line 285
    goto :goto_1e8

    .line 291
    :sswitch_1ef
    const-string v4, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setCallBackground(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_1fe
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_57
        0x5 -> :sswitch_74
        0x6 -> :sswitch_81
        0x7 -> :sswitch_8f
        0x8 -> :sswitch_99
        0x9 -> :sswitch_a3
        0xa -> :sswitch_ad
        0xb -> :sswitch_bf
        0xc -> :sswitch_d2
        0xd -> :sswitch_e8
        0xe -> :sswitch_104
        0xf -> :sswitch_10e
        0x10 -> :sswitch_118
        0x11 -> :sswitch_122
        0x12 -> :sswitch_134
        0x13 -> :sswitch_13e
        0x14 -> :sswitch_14c
        0x15 -> :sswitch_156
        0x16 -> :sswitch_160
        0x17 -> :sswitch_16a
        0x18 -> :sswitch_17d
        0x19 -> :sswitch_190
        0x1a -> :sswitch_1a3
        0x1b -> :sswitch_1b6
        0x1c -> :sswitch_1c9
        0x1d -> :sswitch_1dc
        0x1e -> :sswitch_1ef
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
