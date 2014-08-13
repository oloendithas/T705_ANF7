.class public Lcom/android/systemui/recent/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/systemui/recent/IRecentsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;,
        Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;
    }
.end annotation


# static fields
.field public static final CANCEL_PRELOAD_INTENT:Ljava/lang/String; = "com.android.systemui.recent.CANCEL_PRELOAD"

.field public static final CLOSE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.CLOSE"

.field public static final DB_PRIVATE_MODE_ON:Ljava/lang/String; = "personal_mode_enabled"

.field public static final DEBUG:Z

.field public static final PRELOAD_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.PRELOAD"

.field public static final PRELOAD_PERMISSION:Ljava/lang/String; = "com.android.systemui.recent.permission.PRELOAD"

.field static final TAG:Ljava/lang/String; = "RecentsPanel"

.field public static final TOGGLE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.TOGGLE_RECENTS"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-RecentsPanel"

.field public static final WAITING_FOR_WINDOW_ANIMATION_PARAM:Ljava/lang/String; = "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

.field private static final WAS_SHOWING:Ljava/lang/String; = "was_showing"

.field public static final WINDOW_ANIMATION_START_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.WINDOW_ANIMATION_START"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mForeground:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonalModeObserver:Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;

.field private mPreviousPrivateMode:I

.field private mPrivateModeState:Z

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/recent/RecentsActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mPreviousPrivateMode:I

    .line 67
    new-instance v0, Lcom/android/systemui/recent/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsActivity$1;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/recent/RecentsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsActivity;->updateState()V

    return-void
.end method

.method public static forceOpaqueBackground(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "checkWaitingForAnimationParam"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 340
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 341
    const-string v3, "STATUSBAR-RecentsPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIntent(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-string v3, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    if-eqz v3, :cond_2

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    goto :goto_0

    .line 349
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 350
    .local v0, "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    if-eqz p2, :cond_3

    const-string v3, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 352
    .local v1, "waitingForWindowAnimation":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    .line 355
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->showTraybarHelpPopup()V

    goto :goto_0
.end method

.method private initState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 386
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "personal_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 387
    .local v0, "state":I
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mPrivateModeState:Z

    .line 388
    iput v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mPreviousPrivateMode:I

    .line 389
    const-string v1, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivateMode  initState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mPrivateModeState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    :cond_0
    move v1, v2

    .line 387
    goto :goto_0
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 393
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "personal_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 394
    .local v0, "state":I
    if-ne v0, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mPrivateModeState:Z

    .line 395
    const-string v1, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivateMode  updateState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mPrivateModeState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mPreviousPrivateMode:I

    if-eq v1, v0, :cond_0

    .line 400
    const-string v1, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivateMode  PreviousPersonalMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mPreviousPrivateMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iput v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mPreviousPrivateMode:I

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoHome()V

    .line 404
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 394
    goto :goto_0
.end method

.method private updateWallpaperVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/high16 v2, 0x100000

    .line 161
    if-eqz p1, :cond_1

    move v1, v2

    .line 162
    .local v1, "wpflags":I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 164
    .local v0, "curflags":I
    if-eq v1, v0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 167
    :cond_0
    return-void

    .line 161
    .end local v0    # "curflags":I
    .end local v1    # "wpflags":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissAndGoBack()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 228
    const-string v2, "STATUSBAR-RecentsPanel"

    const-string v3, "dismissAndGoBack()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v2, :cond_4

    .line 230
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 232
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 236
    .local v1, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    sget-boolean v2, Lcom/android/systemui/recent/RecentsActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 237
    const-string v2, "STATUSBAR-RecentsPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoBack recentTasks.size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    sget-boolean v2, Lcom/android/systemui/recent/RecentsActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 239
    const-string v3, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoBack recentTasks 2-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v3, v2}, Lcom/android/systemui/recent/RecentsPanelView;->simulateClick(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    sget-boolean v2, Lcom/android/systemui/recent/RecentsActivity;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 244
    const-string v3, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoBack simulateClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    :goto_0
    return-void

    .line 247
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 249
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v2, :cond_4

    .line 250
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->dismissHelpPopupWindowTraybar()V

    .line 253
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public dismissAndGoHome()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "dismissAndGoHome()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 220
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissHelpPopupWindowTraybar()V

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 224
    return-void
.end method

.method public isActivityShowing()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method isForeground()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 202
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/16 v8, 0x400

    const/4 v4, 0x0

    .line 258
    const-string v2, "STATUSBAR-RecentsPanel"

    const-string v5, "onCreate()"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 316
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 317
    return-void

    .line 264
    :cond_0
    const v2, 0x7f04001c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 266
    const v2, 0x7f080094

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 267
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v5, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;-><init>(Lcom/android/systemui/recent/RecentsActivity;Lcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    new-instance v2, Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mPersonalModeObserver:Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;

    .line 269
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsActivity;->initState()V

    .line 271
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "personal_mode_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsActivity;->mPersonalModeObserver:Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;

    const/4 v7, -0x2

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 276
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v2, :cond_5

    .line 277
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 299
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    .line 300
    .local v1, "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000

    div-float/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setMinSwipeAlpha(F)V

    .line 303
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V

    .line 305
    if-eqz p1, :cond_3

    const-string v2, "was_showing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez p1, :cond_6

    move v2, v3

    :goto_2
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 309
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 310
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 282
    .end local v1    # "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 292
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8, v8}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "recentTasksLoader":Lcom/android/systemui/recent/RecentTasksLoader;
    :cond_6
    move v2, v4

    .line 307
    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 325
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v0, :cond_0

    .line 327
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mPersonalModeObserver:Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 331
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 332
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 337
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 147
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 197
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    const-string v0, "was_showing"

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 175
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {p0}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    .line 182
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 183
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList()V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 189
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 190
    return-void

    .line 180
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 154
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 158
    return-void
.end method
