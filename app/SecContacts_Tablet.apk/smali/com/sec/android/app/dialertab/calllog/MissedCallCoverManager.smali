.class public Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;
.super Ljava/lang/Object;
.source "MissedCallCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_CLEAR_COVER_STOP:Ljava/lang/String; = "suppressCoverUI"

.field private static final COVEROPEN:Ljava/lang/String; = "coverOpen"

.field private static final SCREEN_OFF_INTENT:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final TAG:Ljava/lang/String; = "MissedCallCoverManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverOpen:Z

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mInitCoverOpenState:Z

.field private mInitDialogDismissState:Z

.field private mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

.field private mReceiver:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    .line 35
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverOpen:Z

    .line 37
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitCoverOpenState:Z

    .line 39
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitDialogDismissState:Z

    .line 54
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;

    .line 56
    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :goto_0
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 65
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    .line 66
    .local v1, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 67
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverOpen:Z

    .line 68
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverOpen:Z

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitCoverOpenState:Z

    .line 70
    :cond_0
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 99
    return-void

    .line 59
    .end local v1    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitCoverOpenState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitCoverOpenState:Z

    return p1
.end method

.method private startMissedCallDialog()V
    .locals 4

    .prologue
    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 170
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$2;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method


# virtual methods
.method public dismissMissedCallCover()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->dismissDialog()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitDialogDismissState:Z

    .line 107
    :cond_0
    return-void
.end method

.method public getMissedCallCover()Lcom/sec/android/app/dialertab/calllog/MissedCallCover;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 182
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mReceiver:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;

    .line 183
    const-string v1, "MissedCallCoverManager"

    const-string v2, "registerReceiver ClearCover"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mReceiver:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 190
    :cond_0
    return-void
.end method

.method public resumeMissedCallDialog()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "MissedCallCoverManager"

    const-string v1, "KeepMissedCallDialog  Keep Dialong"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->startMissedCallDialog()V

    .line 166
    :cond_0
    return-void
.end method

.method public showMissedCallDialog()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "MissedCallCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMissedCallDialog  Dialong is showing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->isDialogShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    const-string v0, "MissedCallCoverManager"

    const-string v1, "showMissedCallDialog  Show Dialong"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->startMissedCallDialog()V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->displayDialog(Landroid/content/Context;)V

    .line 158
    :cond_1
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mReceiver:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mReceiver:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mReceiver:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$MissedCallCoverReceiver;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 200
    :cond_1
    return-void
.end method

.method public updateMissedCallDialog(ZLcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Ljava/lang/String;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)Z
    .locals 4
    .param p1, "isResumed"    # Z
    .param p2, "phoneNumberHelper"    # Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .param p3, "callUris"    # Ljava/lang/String;
    .param p4, "details"    # [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    const/4 v0, 0x1

    .line 115
    const-string v1, "MissedCallCoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post, mCoverOpen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isResumed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mInitDialogDismissState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitDialogDismissState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz p1, :cond_2

    .line 118
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverOpen:Z

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitDialogDismissState:Z

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2, p3, p4}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Ljava/lang/String;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    .line 124
    const-string v1, "MissedCallCoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post, create MissedCallCover : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->showMissedCallDialog()V

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->dismissDialog()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mMissedCallCover:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
