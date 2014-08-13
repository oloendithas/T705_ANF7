.class public Lcom/android/systemui/recent/RecentsWindow;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Lcom/android/systemui/recent/IRecentsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsWindow$TouchOutsideListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final RECENTWINDOW_SHOW:Ljava/lang/String; = "com.sec.android.RECENTSWINDOW_SHOWING"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mShowing:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/systemui/recent/RecentsWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    .line 32
    new-instance v0, Lcom/android/systemui/recent/RecentsWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsWindow$1;-><init>(Lcom/android/systemui/recent/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    .line 75
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 81
    .local v2, "trayHeight":I
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->getShowRecentApplicationShortCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentsWindow : KT/LGT - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->getShowRecentApplicationShortCut()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 88
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x82f

    const v4, 0x1000100

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "RecentsWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 99
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v0, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsWindow;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsWindow;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsWindow;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V

    return-void
.end method

.method private initRecentPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f04001d

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setMinSwipeAlpha(F)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v1, Lcom/android/systemui/recent/RecentsWindow$TouchOutsideListener;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recent/RecentsWindow$TouchOutsideListener;-><init>(Lcom/android/systemui/recent/RecentsWindow;Lcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 122
    return-void
.end method

.method private isShowing(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.RECENTSWINDOW_SHOWING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isShowing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    return-void
.end method


# virtual methods
.method public dismissAndGoBack()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    .line 183
    return-void
.end method

.method public dismissAndGoHome()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    .line 127
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 194
    return-void
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    sget-object v0, Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide mShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    if-eqz v0, :cond_1

    .line 132
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    .line 133
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissHelpPopupWindowTraybar()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingRecentTasksList()V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 144
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/RecentsWindow;->isShowing(Z)V

    .line 146
    :cond_1
    return-void
.end method

.method public isActivityShowing()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    return v0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 149
    sget-object v1, Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show mShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 152
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    if-nez v1, :cond_2

    .line 159
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    .line 161
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 164
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->showTraybarHelpPopup()V

    .line 167
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/recent/RecentsWindow;->isShowing(Z)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    goto :goto_0
.end method
