.class public Lcom/android/keyguard/sec/KeyguardMultiUserManager;
.super Ljava/lang/Object;
.source "KeyguardMultiUserManager.java"


# static fields
.field private static sInstance:Lcom/android/keyguard/sec/KeyguardMultiUserManager;


# instance fields
.field private final ACTION_LOCALE_CHANGED:Ljava/lang/String;

.field private final ACTION_SHOW_KEYGUARD_TO_CHANGE_USER:Ljava/lang/String;

.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private final ACTION_USER_REMOVED:Ljava/lang/String;

.field private final DEBUG:Z

.field private final KNOX_USER_ID:I

.field private final TAG:Ljava/lang/String;

.field private mActiveUser:Landroid/content/pm/UserInfo;

.field private mContext:Landroid/content/Context;

.field private mIsOngoingNotificationEnabled:Z

.field private mIsSupportMultiUser:Z

.field private mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mMumReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->sInstance:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardCallback"    # Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "KeyguardMultiUserManager"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->DEBUG:Z

    .line 34
    const-string v0, "com.android.Keyguard.SHOW_KEYGUARD_TO_CHANGE_USER"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->ACTION_SHOW_KEYGUARD_TO_CHANGE_USER:Ljava/lang/String;

    .line 35
    const-string v0, "android.intent.action.USER_ADDED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->ACTION_USER_ADDED:Ljava/lang/String;

    .line 36
    const-string v0, "android.intent.action.USER_REMOVED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->ACTION_USER_REMOVED:Ljava/lang/String;

    .line 37
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->ACTION_LOCALE_CHANGED:Ljava/lang/String;

    .line 38
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->KNOX_USER_ID:I

    .line 45
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 47
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mUserManager:Landroid/os/UserManager;

    .line 48
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mActiveUser:Landroid/content/pm/UserInfo;

    .line 49
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsSupportMultiUser:Z

    .line 50
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsOngoingNotificationEnabled:Z

    .line 76
    new-instance v0, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;-><init>(Lcom/android/keyguard/sec/KeyguardMultiUserManager;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mMumReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4d

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mUserManager:Landroid/os/UserManager;

    .line 58
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsSupportMultiUser:Z

    .line 60
    :cond_4d
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardMultiUserManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method private notifyMultiUserInfo()V
    .registers 1

    .prologue
    .line 140
    return-void
.end method

.method private registerMumBroadcastReceiver()V
    .registers 4

    .prologue
    .line 97
    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "registerMumBroadcastReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsSupportMultiUser:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_10

    .line 109
    :cond_f
    :goto_f
    return-void

    .line 102
    :cond_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.Keyguard.SHOW_KEYGUARD_TO_CHANGE_USER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mMumReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_f
.end method

.method private updateMultiUserInfo()V
    .registers 4

    .prologue
    .line 129
    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "updateMultiUserInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mActiveUser:Landroid/content/pm/UserInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 136
    :goto_11
    return-void

    .line 133
    :catch_12
    move-exception v0

    .line 134
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mActiveUser:Landroid/content/pm/UserInfo;

    goto :goto_11
.end method


# virtual methods
.method public onKeyguardHided()V
    .registers 4

    .prologue
    .line 220
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 221
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 222
    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "don\'t nofity on owner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->notifyMultiUserInfo()V

    .line 226
    :cond_15
    return-void
.end method

.method public onKeyguardShowed()V
    .registers 4

    .prologue
    .line 230
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 231
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 232
    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "don\'t nofity on owner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->notifyMultiUserInfo()V

    .line 235
    :cond_15
    return-void
.end method

.method public onUserInfoChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 214
    const-string v0, "KeyguardMultiUserManager"

    const-string v1, "onUserInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateAndNotifyMultiUserInfo()V

    .line 216
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateAndNotifyMultiUserInfo()V

    .line 211
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateAndNotifyMultiUserInfo()V

    .line 203
    return-void
.end method

.method public setupOngoingNotification()V
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsOngoingNotificationEnabled:Z

    if-nez v0, :cond_a

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsOngoingNotificationEnabled:Z

    .line 72
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->registerMumBroadcastReceiver()V

    .line 74
    :cond_a
    return-void
.end method

.method public updateAndNotifyMultiUserInfo()V
    .registers 4

    .prologue
    .line 113
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 114
    .local v0, "currentUserId":I
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsSupportMultiUser:Z

    if-eqz v1, :cond_c

    const/16 v1, 0x64

    if-lt v0, v1, :cond_14

    .line 115
    :cond_c
    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "not support multi user"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_13
    return-void

    .line 119
    :cond_14
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 120
    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "don\'t nofity on owner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 124
    :cond_23
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateMultiUserInfo()V

    .line 125
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->notifyMultiUserInfo()V

    goto :goto_13
.end method
