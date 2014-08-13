.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "QuickConnectQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;
    }
.end annotation


# static fields
.field private static final DB_QUICK_CONNECT_ON:Ljava/lang/String; = "scon_is_running"

.field private static final Q_CONNECT_ENABLE:Ljava/lang/String; = "com.sec.android.sconnect.service.ENABLED"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-QuickConnectQuickSettingButton"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQconnectEnable:Z

.field private mQuickConnectObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7f0b0105

    const v2, 0x7f0b00a8

    const v3, 0x7f0201f3

    const/4 v6, 0x0

    .line 75
    const/4 v0, 0x0

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 43
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mQconnectEnable:Z

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 78
    const v4, 0x7f0201f2

    const v5, 0x7f0201f1

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 91
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mQuickConnectObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;

    .line 94
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 95
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->showHideQConnectLayout()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mQconnectEnable:Z

    return p1
.end method

.method private getQuickConnectSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "scon_is_running"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showHideQConnectLayout()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 147
    const-string v2, "BezelInteractionService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 150
    .local v0, "qconnectServiceEnabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mQconnectEnable:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->getQuickConnectSetting()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 155
    :goto_2
    return-void

    .line 147
    .end local v0    # "qconnectServiceEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    .restart local v0    # "qconnectServiceEnabled":Z
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 153
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_2
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mQuickConnectObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.sconnect.service.ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "scon_is_running"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mQuickConnectObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 108
    const-string v1, "BezelInteractionService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "STATUSBAR-QuickConnectQuickSettingButton"

    const-string v2, "init():true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mQconnectEnable:Z

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->showHideQConnectLayout()V

    .line 115
    return-void
.end method

.method public onClick(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V

    .line 127
    const-string v3, "BezelInteractionService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v1

    .line 130
    .local v1, "bm":Lcom/samsung/android/bezelinteraction/IBezelManager;
    new-instance v0, Lcom/samsung/android/bezelinteraction/BezelEvent;

    invoke-direct {v0}, Lcom/samsung/android/bezelinteraction/BezelEvent;-><init>()V

    .line 132
    .local v0, "bezelEvent":Lcom/samsung/android/bezelinteraction/BezelEvent;
    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/bezelinteraction/BezelEvent;->type:I

    .line 133
    invoke-interface {v1, v0}, Lcom/samsung/android/bezelinteraction/IBezelManager;->selectedItemCallback(Lcom/samsung/android/bezelinteraction/BezelEvent;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "bezelEvent":Lcom/samsung/android/bezelinteraction/BezelEvent;
    .end local v1    # "bm":Lcom/samsung/android/bezelinteraction/IBezelManager;
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "STATUSBAR-QuickConnectQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot launch activity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
