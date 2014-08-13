.class public Lcom/diotek/ime/framework/sidesync/SideSyncManager;
.super Ljava/lang/Object;
.source "SideSyncManager.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;


# instance fields
.field private mExistTextBeforeCursor:Z

.field private mGuestInputMode:I

.field private mHostInputMode:I

.field private mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

.field private mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

.field private mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mPreShiftPressed:Z

.field private mShiftState:Z

.field private mSideSyncBinder:Landroid/os/IBinder;

.field private mSideSyncBroadcast:Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 60
    iput-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    .line 61
    iput-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mPreShiftPressed:Z

    .line 63
    iput-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mExistTextBeforeCursor:Z

    .line 72
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 78
    :cond_0
    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    .line 79
    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    .line 80
    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mHostInputMode:I

    .line 84
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mGuestInputMode:I

    .line 87
    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 89
    new-instance v0, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;

    sget-object v1, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;-><init>(Landroid/content/Context;Lcom/diotek/ime/framework/sidesync/SideSyncManager;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBroadcast:Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;

    .line 90
    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    .line 117
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    return-object v0
.end method

.method private getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 10
    .param p1, "charCode"    # I

    .prologue
    const/4 v9, 0x0

    .line 753
    iget-object v7, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v6

    .line 754
    .local v6, "repository":Lcom/diotek/ime/framework/repository/Repository;
    const-string v7, "INPUT_LANGUAGE"

    const/high16 v8, 0x656e0000

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 755
    .local v2, "inputLanguage":I
    iget-object v7, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/diotek/ime/framework/common/InputManager;->getKeyboardKeyList(Z)Ljava/util/List;

    move-result-object v3

    .line 756
    .local v3, "keyList":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    const/4 v5, 0x0

    .line 757
    .local v5, "popupKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v3, :cond_2

    .line 758
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    const/high16 v7, 0x656c0000

    if-eq v2, v7, :cond_0

    const/high16 v7, 0x66720000

    if-eq v2, v7, :cond_0

    const v7, 0x66724652

    if-eq v2, v7, :cond_0

    const v7, 0x66724341

    if-ne v2, v7, :cond_3

    .line 764
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 765
    .local v0, "aKeyList":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 766
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 767
    move-object v5, v0

    .line 780
    .end local v0    # "aKeyList":Lcom/diotek/ime/framework/view/Keyboard$Key;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-object v5

    .line 772
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 773
    .restart local v0    # "aKeyList":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget-object v7, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v7, v7, v9

    if-ne v7, p1, :cond_4

    .line 774
    move-object v5, v0

    .line 775
    goto :goto_0
.end method

.method public static isSideSyncSinkConnect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    sget-object v2, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_sink_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 160
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSideSyncSourceConnect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    sget-object v2, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_tablet_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 171
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/sidesync/SideSyncManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 101
    :cond_0
    sput-object p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    .line 103
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    .line 106
    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sInstance:Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    goto :goto_0
.end method

.method private sendExistTextBeforeCursor(Z)V
    .locals 5
    .param p1, "existTextBeforeCursor"    # Z

    .prologue
    .line 955
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 956
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSM] sendExistTextBeforeCursor - existTextBeforeCursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v1, :cond_1

    .line 969
    :goto_0
    return-void

    .line 962
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    const-string v2, "SIDESYNC.action.EXIST_TEXT_BEFORE_CURSOR_STATE_EVENT"

    const-string v3, "SIDESYNC.extra.EXIST_TEXT_BEFORE_CURSOR_STATE"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->sendIntentToSink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendExistTextBeforeCursor : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendIntentToSink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 292
    :cond_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 293
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSB] sendIntentToSink : key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->sendIntentToSink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendIntentToSink : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 279
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSB] sendIntentToSource : key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendIntentToSource : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendKeyCode(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 788
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v1, :cond_0

    .line 799
    :goto_0
    return-void

    .line 792
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 793
    const-string v1, "SamsungIME"

    const-string v2, "[SSM] sendKeyCode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    invoke-interface {v1, p1}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->sendKeyCode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendKeyCode : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendLangID(I)V
    .locals 3
    .param p1, "languageID"    # I

    .prologue
    .line 838
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v1, :cond_0

    .line 849
    :goto_0
    return-void

    .line 842
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 843
    const-string v1, "SamsungIME"

    const-string v2, "[SSM] sendLangID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    invoke-interface {v1, p1}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->sendLangID(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendLangID : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendShiftState(Z)V
    .locals 4
    .param p1, "shifted"    # Z

    .prologue
    .line 520
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSM] sendShiftState - shifted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v1, :cond_1

    .line 531
    :goto_0
    return-void

    .line 527
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    invoke-interface {v1, p1}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->sendShiftState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SamsungIME"

    const-string v2, "[SSB] sendShiftState : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getGuestInputMode()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mGuestInputMode:I

    return v0
.end method

.method public getHostInputMode()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mHostInputMode:I

    return v0
.end method

.method public getSideSyncBroadcast()Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBroadcast:Lcom/diotek/ime/framework/sidesync/SideSyncBroadcast;

    return-object v0
.end method

.method public getSideSyncEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getSideSyncExistTextBeforeCursor()Z
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mExistTextBeforeCursor:Z

    return v0
.end method

.method public getSideSyncPreShiftPressed()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mPreShiftPressed:Z

    return v0
.end method

.method public getSideSyncShiftState()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    return v0
.end method

.method public isALL()Z
    .locals 2

    .prologue
    .line 137
    const-string v0, "ALL"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPlayerOnly()Z
    .locals 2

    .prologue
    .line 147
    const-string v0, "ALL"

    const-string v1, "PLAYER_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSideSyncKeyboardConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 179
    sget-object v4, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 181
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 182
    .local v1, "mKeyboard":I
    and-int/lit8 v4, v1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 185
    :cond_1
    and-int/lit8 v4, v1, 0x20

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    .line 188
    sget-object v4, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sidesync_hwkeyboard_connect"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    move v2, v3

    .line 192
    goto :goto_0
.end method

.method public isSideSyncWorkingOnSink()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v2, :cond_0

    .line 271
    :goto_0
    return v1

    .line 267
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    invoke-interface {v2}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->isSideSyncWorking()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungIME"

    const-string v3, "[SSB] isSideSyncWorkingOnSink : RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSideSyncWorkingOnSource()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v2, :cond_0

    .line 254
    :goto_0
    return v1

    .line 250
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    invoke-interface {v2}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->isSideSyncWorking()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungIME"

    const-string v3, "[SSB] isSideSyncWorkingOnSource : RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSourceOnly()Z
    .locals 2

    .prologue
    .line 127
    const-string v0, "ALL"

    const-string v1, "SOURCE_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public movePopupKeyboard(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 426
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v0

    .line 427
    .local v0, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0, p1, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateKeyboardSideSync(II)V

    .line 430
    :cond_0
    return-void
.end method

.method public sendFloatingKeyboardSize()V
    .locals 8

    .prologue
    .line 325
    const/4 v5, 0x0

    .line 326
    .local v5, "floatingWidth":I
    const/4 v3, 0x0

    .line 327
    .local v3, "floatingHeight":I
    const/4 v4, 0x0

    .line 328
    .local v4, "floatingMoveHandlerHeight":I
    const/4 v2, 0x0

    .line 331
    .local v2, "floatingCandidateHeight":I
    :try_start_0
    const-string v6, "floating_keyboard_width"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    float-to-int v5, v6

    .line 337
    :goto_0
    :try_start_1
    const-string v6, "floating_keyboard_height"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    float-to-int v3, v6

    .line 343
    :goto_1
    :try_start_2
    const-string v6, "popup_candidate_view_handler_height"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    float-to-int v4, v6

    .line 349
    :goto_2
    :try_start_3
    const-string v6, "popup_candidate_view_height"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    float-to-int v2, v6

    .line 354
    :goto_3
    iget-object v6, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    if-nez v6, :cond_1

    .line 366
    :cond_0
    :goto_4
    return-void

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v5, 0x0

    goto :goto_0

    .line 338
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 339
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    goto :goto_1

    .line 344
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v1

    .line 345
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    goto :goto_2

    .line 350
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v1

    .line 351
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    goto :goto_3

    .line 358
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_4
    iget-object v6, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    add-int v7, v3, v4

    invoke-interface {v6, v5, v7}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;->returnKeyboardSize(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 363
    :goto_5
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 364
    const-string v6, "SamsungIME"

    const-string v7, "[SSM] sendFloatingKeyboardSize"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 359
    :catch_4
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "SamsungIME"

    const-string v7, "[SSB] sendFloatingKeyboardSize : RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public sendSideSyncCtrlPressedState(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 899
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncCtrlPressedState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    const-string v0, "SIDESYNC.action.CTRL_PRESSED_STATE_EVENT"

    const-string v1, "SIDESYNC.extra.CTRL_PRESSED_STATE"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_1
    return-void
.end method

.method public sendSideSyncEdiorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 549
    const-string v2, "SamsungIME"

    const-string v3, "[SSM] sendEditorInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 552
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "SIDESYNC.extra.EDITOR_INFO"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 553
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    if-nez v2, :cond_2

    .line 562
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 557
    .restart local v0    # "data":Landroid/os/Bundle;
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    invoke-interface {v2, v0}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;->sendEditorInfo(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v1

    .line 559
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungIME"

    const-string v3, "[SSB] sendSideSyncEdiorInfo : RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendSideSyncExistTextBeforeCursor(Z)V
    .locals 1
    .param p1, "existTextBeforeCursor"    # Z

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendExistTextBeforeCursor(Z)V

    .line 948
    :cond_0
    return-void
.end method

.method public sendSideSyncInputText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncInputText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    const-string v0, "SIDESYNC.action.INPUT_TEXT_EVENT"

    const-string v1, "SIDESYNC.extra.INPUT_TEXT"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_1
    return-void
.end method

.method public sendSideSyncKeyCode(I)V
    .locals 14
    .param p1, "keyCode"    # I

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 616
    invoke-static {p1}, Lcom/diotek/ime/framework/sidesync/SideSyncUtils;->isThisKeyEnable(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    move v7, p1

    .line 621
    .local v7, "modifiedKeyCode":I
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v3

    .line 622
    .local v3, "isTabletMode":Z
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v9

    .line 624
    .local v9, "repository":Lcom/diotek/ime/framework/repository/Repository;
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v10

    .line 625
    .local v10, "shiftStateController":Lcom/diotek/ime/framework/common/ShiftStateController;
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    .line 627
    .local v2, "inputModeManager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 628
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    iget v12, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v11, v12, 0xff0

    .line 630
    .local v11, "variation":I
    packed-switch p1, :pswitch_data_0

    .line 734
    :pswitch_0
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ko"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 735
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result v7

    .line 744
    :goto_1
    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendKeyCode(I)V

    goto :goto_0

    .line 632
    :pswitch_1
    if-eqz v3, :cond_9

    .line 633
    const-string v12, "INPUT_LANGUAGE"

    const/high16 v13, 0x656e0000

    invoke-interface {v9, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    .line 634
    .local v5, "languageIDForExclamation":I
    const/4 v4, 0x0

    .line 635
    .local v4, "isUrlEdit":Z
    const/16 v12, 0xd0

    if-eq v11, v12, :cond_2

    const/16 v12, 0x20

    if-eq v11, v12, :cond_2

    const/16 v12, 0x10

    if-ne v11, v12, :cond_3

    .line 638
    :cond_2
    const/4 v4, 0x1

    .line 640
    :cond_3
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v12

    if-nez v12, :cond_6

    .line 641
    if-eqz v4, :cond_4

    .line 642
    const/16 v7, 0x5f

    goto :goto_1

    .line 644
    :cond_4
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 645
    const/16 v7, 0x21

    goto :goto_1

    .line 647
    :cond_5
    const/16 v7, 0x21

    goto :goto_1

    .line 651
    :cond_6
    if-eqz v4, :cond_7

    .line 652
    const/16 v7, 0x2c

    goto :goto_1

    .line 654
    :cond_7
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 655
    const/16 v7, 0x60c

    goto :goto_1

    .line 657
    :cond_8
    const/16 v7, 0x2c

    goto :goto_1

    .line 662
    .end local v4    # "isUrlEdit":Z
    .end local v5    # "languageIDForExclamation":I
    :cond_9
    const-string v12, "INPUT_LANGUAGE"

    const/high16 v13, 0x656e0000

    invoke-interface {v9, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    .line 663
    .restart local v5    # "languageIDForExclamation":I
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 664
    const/16 v7, 0x60c

    goto :goto_1

    .line 666
    :cond_a
    const/16 v7, 0x2c

    goto :goto_1

    .line 671
    .end local v5    # "languageIDForExclamation":I
    :pswitch_2
    if-eqz v3, :cond_11

    .line 672
    const-string v12, "INPUT_LANGUAGE"

    const/high16 v13, 0x656e0000

    invoke-interface {v9, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    .line 673
    .local v6, "languageIDForQuestion":I
    const/4 v4, 0x0

    .line 674
    .restart local v4    # "isUrlEdit":Z
    const/16 v12, 0xd0

    if-eq v11, v12, :cond_b

    const/16 v12, 0x20

    if-eq v11, v12, :cond_b

    const/16 v12, 0x10

    if-ne v11, v12, :cond_c

    .line 677
    :cond_b
    const/4 v4, 0x1

    .line 679
    :cond_c
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v12

    if-nez v12, :cond_f

    .line 680
    if-eqz v4, :cond_d

    .line 681
    const/16 v7, 0x2d

    goto/16 :goto_1

    .line 683
    :cond_d
    invoke-static {v6}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 684
    const/16 v7, 0x61f

    goto/16 :goto_1

    .line 686
    :cond_e
    const/16 v7, 0x3f

    goto/16 :goto_1

    .line 689
    :cond_f
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 690
    const/16 v7, 0x3002

    goto/16 :goto_1

    .line 692
    :cond_10
    const/16 v7, 0x2e

    goto/16 :goto_1

    .line 695
    .end local v4    # "isUrlEdit":Z
    .end local v6    # "languageIDForQuestion":I
    :cond_11
    const-string v12, "INPUT_LANGUAGE"

    const/high16 v13, 0x656e0000

    invoke-interface {v9, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    .line 696
    .restart local v6    # "languageIDForQuestion":I
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 697
    const/16 v7, 0x3002

    goto/16 :goto_1

    .line 698
    :cond_12
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 699
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 700
    .local v0, "currentKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v0, :cond_13

    iget-object v12, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v12, :cond_13

    .line 701
    iget-object v12, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    goto/16 :goto_1

    .line 703
    :cond_13
    const/16 v7, 0x2e

    goto/16 :goto_1

    .line 707
    .end local v0    # "currentKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_14
    invoke-static {v6}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 708
    const/16 v7, 0x2e

    goto/16 :goto_1

    .line 709
    :cond_15
    const/high16 v12, 0x6b6d0000

    if-ne v6, v12, :cond_17

    .line 710
    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v12

    if-eqz v12, :cond_16

    .line 711
    const/16 v7, 0x17d4

    goto/16 :goto_1

    .line 713
    :cond_16
    const/16 v7, 0x2e

    goto/16 :goto_1

    .line 715
    :cond_17
    const v12, 0x6d795a57

    if-ne v6, v12, :cond_1a

    .line 716
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v8

    .line 717
    .local v8, "range":I
    if-nez v8, :cond_18

    .line 718
    const/16 v7, 0x104a

    goto/16 :goto_1

    .line 719
    :cond_18
    const/4 v12, 0x2

    if-ne v8, v12, :cond_19

    .line 720
    const/16 v7, 0x104b

    goto/16 :goto_1

    .line 722
    :cond_19
    const/16 v7, 0x2e

    goto/16 :goto_1

    .line 724
    .end local v8    # "range":I
    :cond_1a
    const/high16 v12, 0x68690000

    if-eq v6, v12, :cond_1b

    const/high16 v12, 0x626e0000

    if-eq v6, v12, :cond_1b

    const/high16 v12, 0x6d720000

    if-ne v6, v12, :cond_1c

    .line 725
    :cond_1b
    const/16 v7, 0x964

    goto/16 :goto_1

    .line 728
    :cond_1c
    const/16 v7, 0x2e

    goto/16 :goto_1

    .end local v6    # "languageIDForQuestion":I
    :cond_1d
    move v7, p1

    .line 735
    goto/16 :goto_1

    .line 736
    :cond_1e
    iget-object v12, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ja"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 737
    move v7, p1

    goto/16 :goto_1

    .line 739
    :cond_1f
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v7

    :goto_2
    goto/16 :goto_1

    :cond_20
    move v7, p1

    goto :goto_2

    .line 630
    :pswitch_data_0
    .packed-switch -0x7c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public sendSideSyncKeyLanguage(I)V
    .locals 2
    .param p1, "languageID"    # I

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 827
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncKeyLanguage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendLangID(I)V

    .line 831
    :cond_1
    return-void
.end method

.method public sendSideSyncPredictiveText(Ljava/lang/String;)V
    .locals 2
    .param p1, "predictiveText"    # Ljava/lang/String;

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 870
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncPredictiveText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    const-string v0, "SIDESYNC.action.PREDICTIVE_TEXT_EVENT"

    const-string v1, "SIDESYNC.extra.PREDICTIVE_TEXT"

    invoke-direct {p0, v0, v1, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_1
    return-void
.end method

.method public sendSideSyncShiftPressedState(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 917
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncShiftPressedState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_0
    const-string v0, "SIDESYNC.action.SHIFT_PRESSED_STATE_EVENT"

    const-string v1, "SIDESYNC.extra.SHIFT_PRESSED_STATE"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendIntentToSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_1
    return-void
.end method

.method public sendSideSyncShiftState(Z)V
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendShiftState(Z)V

    .line 513
    :cond_0
    return-void
.end method

.method public sendSideSyncSinkFloatingKeyboardSize(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 394
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] sendSideSyncSinkFloatingKeyboardSize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendFloatingKeyboardSize()V

    .line 398
    return-void
.end method

.method public setGuestInputMode(I)V
    .locals 0
    .param p1, "inputMode"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mGuestInputMode:I

    .line 231
    return-void
.end method

.method public setHostInputMode(I)V
    .locals 0
    .param p1, "inputMode"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mHostInputMode:I

    .line 212
    return-void
.end method

.method public setSideSyncCtrlPressedState(Ljava/lang/String;)V
    .locals 2
    .param p1, "pressed"    # Ljava/lang/String;

    .prologue
    .line 907
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 908
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncCtrlPressedState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    .line 911
    return-void
.end method

.method public setSideSyncEdiorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 571
    return-void
.end method

.method public setSideSyncExistTextBeforeCursorState(Ljava/lang/String;)V
    .locals 4
    .param p1, "existTextBeforeCursor"    # Ljava/lang/String;

    .prologue
    .line 976
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 977
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSM] setSideSyncExistTextBeforeCursorState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 980
    .local v0, "currentExistTextBeforeCursor":Z
    iget-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mExistTextBeforeCursor:Z

    if-eq v1, v0, :cond_1

    .line 981
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mExistTextBeforeCursor:Z

    .line 982
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    .line 984
    :cond_1
    return-void
.end method

.method public setSideSyncInputText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 603
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 604
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncInputText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    .line 607
    return-void
.end method

.method public setSideSyncKeyCode(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 806
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 807
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncKeyCode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 814
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    .line 817
    :goto_0
    return-void

    .line 811
    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->requestHideSelf(I)V

    goto :goto_0

    .line 809
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setSideSyncLanguage(I)V
    .locals 2
    .param p1, "languageID"    # I

    .prologue
    .line 856
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 857
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncLanguage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->setSideSyncKeyLanguage(I)V

    .line 860
    return-void
.end method

.method public setSideSyncPreShiftPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 932
    iput-boolean p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mPreShiftPressed:Z

    .line 933
    return-void
.end method

.method public setSideSyncPredictiveText(Ljava/lang/String;)V
    .locals 2
    .param p1, "predictiveText"    # Ljava/lang/String;

    .prologue
    .line 881
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 882
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncPredictiveText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->setSideSyncPredictiveText(Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method public setSideSyncShiftPressedState(Ljava/lang/String;)V
    .locals 2
    .param p1, "pressed"    # Ljava/lang/String;

    .prologue
    .line 925
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 926
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncShiftPressedState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setSideSyncShiftPressedState(Z)V

    .line 929
    return-void
.end method

.method public setSideSyncShiftState(Z)V
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 538
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->setSideSynShiftState(Z)V

    .line 539
    return-void
.end method

.method public setSideSyncSinkBinder(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 377
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 378
    const-string v1, "SamsungIME"

    const-string v2, "[SSM] setSideSyncSinkBinder"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    :try_start_0
    const-string v1, "SIDESYNC.bundle.BINDER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    .line 382
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSinkSIP:Lcom/sec/android/sidesync/sink/model/ISideSyncSinkSIP;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SamsungIME"

    const-string v2, "[SSB] setSideSyncSinkBinder : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSideSyncSinkEditorInfo(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 438
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 439
    const-string v2, "SamsungIME"

    const-string v3, "[SSM] setSideSyncSinkEditorInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    :try_start_0
    const-string v2, "SIDESYNC.bundle.EDITOR_INFO"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 443
    .local v1, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncEdiorInfo(Landroid/view/inputmethod/EditorInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SamsungIME"

    const-string v3, "[SSB] setSideSyncSinkEditorInfo : NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSideSyncSinkFloatingKeyboardPostion(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 406
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 407
    const-string v3, "SamsungIME"

    const-string v4, "[SSM] setSideSyncSinkFloatingKeyboardPostion"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    :try_start_0
    const-string v3, "SIDESYNC.bundle.POSITION_X"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 411
    .local v1, "x":I
    const-string v3, "SIDESYNC.bundle.POSITION_Y"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 413
    .local v2, "y":I
    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->movePopupKeyboard(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "SamsungIME"

    const-string v4, "[SSB] setSideSyncSinkFloatingKeyboardPostion : NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSideSyncSinkShiftState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 455
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSM] setSideSyncSinkShiftState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SIDESYNC.bundle.SHIFT_STATE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    :try_start_0
    const-string v1, "SIDESYNC.bundle.SHIFT_STATE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    .line 460
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getShiftState()Z

    move-result v1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    if-eq v1, v2, :cond_1

    .line 461
    iget-object v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    if-eqz v1, :cond_2

    .line 462
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 463
    const-string v1, "SamsungIME"

    const-string v2, "[SSM] setSideSyncSinkShiftState : this method would be skipped in kor if mShiftState is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 466
    :cond_2
    iget-boolean v1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mShiftState:Z

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setSideSyncShiftState(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SamsungIME"

    const-string v2, "[SSB] setSideSyncSinkShiftState : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSideSyncSourceBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 494
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncSourceBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iput-object p1, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    .line 498
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mSideSyncBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mISideSyncSourceSIP:Lcom/sec/android/sidesync/source/model/ISideSyncSourceSIP;

    .line 499
    return-void
.end method

.method public setSideSyncSourceHideSoftINput()V
    .locals 2

    .prologue
    .line 482
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] setSideSyncSourceHideSoftINput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->requestHideSelf(I)V

    .line 486
    return-void
.end method

.method public showSideSyncSoftInput()V
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "SamsungIME"

    const-string v1, "[SSM] showSideSyncSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.sidesync.source.SHOW_SIP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    :cond_1
    return-void
.end method
