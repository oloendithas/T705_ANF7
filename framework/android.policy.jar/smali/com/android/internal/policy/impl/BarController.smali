.class public Lcom/android/internal/policy/impl/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mState:I

.field private final mStatusBarManagerId:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mUnhideFlag:I

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    .line 66
    iput p3, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    .line 67
    iput p4, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    .line 68
    iput p5, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarManagerId:I

    .line 69
    iput p6, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentWmFlag:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BarController;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/BarController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/BarController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/BarController;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;
    .param p1, "x1"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p1
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .registers 11
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 150
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .line 151
    .local v1, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 152
    .local v0, "anim":Z
    iget v5, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    if-ne v5, v4, :cond_1a

    if-nez p4, :cond_1a

    if-nez v1, :cond_1a

    .line 164
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :goto_19
    return v2

    .line 154
    .restart local v0    # "anim":Z
    .restart local v1    # "vis":Z
    :cond_1a
    iget v5, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    if-ne v5, v2, :cond_22

    if-eqz v1, :cond_22

    move v2, v3

    .line 155
    goto :goto_19

    .line 156
    :cond_22
    if-eqz p4, :cond_30

    .line 157
    if-eqz p1, :cond_2e

    if-eqz v1, :cond_2e

    if-nez p2, :cond_2e

    if-eqz v0, :cond_2e

    move v2, v4

    .line 158
    goto :goto_19

    :cond_2e
    move v2, v3

    .line 160
    goto :goto_19

    .line 164
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :cond_30
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    goto :goto_19
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 265
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 268
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 269
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private setTransientBarState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_33

    .line 254
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-eq v0, v1, :cond_f

    if-ne p1, v1, :cond_15

    .line 255
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    .line 257
    :cond_15
    iput p1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTransientBarState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/policy/impl/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_33
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .prologue
    .line 273
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const-string v0, "TRANSIENT_BAR_HIDING"

    .line 276
    :goto_5
    return-object v0

    .line 274
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "TRANSIENT_BAR_SHOWING"

    goto :goto_5

    .line 275
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    goto :goto_5

    .line 276
    :cond_12
    if-nez p0, :cond_17

    const-string v0, "TRANSIENT_BAR_NONE"

    goto :goto_5

    .line 277
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 168
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    if-eq p1, v0, :cond_2e

    .line 169
    iput p1, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/BarController$1;-><init>(Lcom/android/internal/policy/impl/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .registers 6
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "isPanelExpanded":Z
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandState()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_35

    move-result v0

    .line 107
    :goto_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_22

    if-nez v0, :cond_22

    .line 110
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 116
    :cond_21
    :goto_21
    return-void

    .line 112
    :cond_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_21

    .line 114
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto :goto_21

    .line 104
    :catch_35
    move-exception v1

    goto :goto_9
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .registers 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1e

    .line 120
    if-eqz p1, :cond_25

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_25

    .line 122
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentWmFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 123
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v0

    .line 131
    :cond_1e
    :goto_1e
    return p2

    .line 125
    :cond_1f
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    goto :goto_1e

    .line 128
    :cond_25
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    or-int p2, v0, v1

    goto :goto_1e
.end method

.method public checkHiddenLw()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_22

    .line 194
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/BarController;->updateStateLw(I)Z

    .line 196
    :cond_22
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3c

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 198
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 199
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    if-eqz v2, :cond_3b

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 201
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    .line 206
    :cond_3b
    :goto_3b
    return v0

    :cond_3c
    move v0, v1

    goto :goto_3b
.end method

.method public checkShowTransientBarLw()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 210
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 211
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, already shown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_e
    return v0

    .line 213
    :cond_f
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v2, v1, :cond_1b

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, already requested"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 216
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_27

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, bar doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 219
    :cond_27
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, bar already visible"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_37
    move v0, v1

    .line 223
    goto :goto_e
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_40

    .line 282
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 284
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 286
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/internal/policy/impl/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    :cond_40
    return-void
.end method

.method public isTransientHiding()Z
    .registers 3

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTransientShowRequested()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTransientShowing()Z
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setBarShowingLw(Z)Z
    .registers 11
    .param p1, "show"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 135
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_7

    .line 145
    :cond_6
    :goto_6
    return v5

    .line 136
    :cond_7
    if-eqz p1, :cond_11

    iget v7, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_11

    .line 137
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    goto :goto_6

    .line 140
    :cond_11
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    .line 141
    .local v4, "wasVis":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 142
    .local v3, "wasAnim":Z
    if-eqz p1, :cond_35

    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .line 143
    .local v0, "change":Z
    :goto_25
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v4, v3, v7, v0}, Lcom/android/internal/policy/impl/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    move-result v1

    .line 144
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->updateStateLw(I)Z

    move-result v2

    .line 145
    .local v2, "stateChanged":Z
    if-nez v0, :cond_33

    if-eqz v2, :cond_6

    :cond_33
    move v5, v6

    goto :goto_6

    .line 142
    .end local v0    # "change":Z
    .end local v1    # "state":I
    .end local v2    # "stateChanged":Z
    :cond_35
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    goto :goto_25
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 75
    return-void
.end method

.method public showTransient()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 81
    :cond_8
    return-void
.end method

.method public updateVisibilityLw(ZII)I
    .registers 7
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_7

    move v0, p3

    .line 249
    .end local p3    # "vis":I
    .local v0, "vis":I
    :goto_6
    return v0

    .line 229
    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 230
    :cond_13
    if-eqz p1, :cond_3f

    .line 231
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 232
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_20

    .line 233
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    or-int/2addr p3, v1

    .line 235
    :cond_20
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 242
    :cond_24
    :goto_24
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-eqz v1, :cond_2d

    .line 243
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 244
    and-int/lit8 p3, p3, -0x2

    .line 246
    :cond_2d
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    if-nez v1, :cond_37

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_3d

    .line 247
    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    :cond_3d
    move v0, p3

    .line 249
    .end local p3    # "vis":I
    .restart local v0    # "vis":I
    goto :goto_6

    .line 237
    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_3f
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_24

    .line 239
    :cond_43
    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientHiding()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 240
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_24
.end method

.method public wasRecentlyTranslucent()Z
    .registers 5

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
