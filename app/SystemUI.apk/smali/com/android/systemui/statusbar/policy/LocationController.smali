.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;,
        Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_STOP_GPS_TONE:I = 0x40

.field private static final GPS_NOTIFICATION_ID:I = 0x3d8d7

.field public static final LOCATION_STATUS_ICON_ID:I = 0x7f020113

.field public static final LOCATION_STATUS_ICON_PLACEHOLDER:Ljava/lang/String; = "location"

.field private static final TAG:Ljava/lang/String; = "StatusBar.LocationController"

.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private mContext:Landroid/content/Context;

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mHandler:Landroid/os/Handler;

.field private mNotificationService:Landroid/app/INotificationManager;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 65
    new-array v2, v1, [I

    const/16 v3, 0x2a

    aput v3, v2, v0

    sput-object v2, Lcom/android/systemui/statusbar/policy/LocationController;->mHighPowerRequestAppOpArray:[I

    .line 74
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/LocationController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    .line 104
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, p0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 112
    .local v7, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    .line 115
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 116
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 120
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.location.MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/LocationController$1;-><init>(Lcom/android/systemui/statusbar/policy/LocationController;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->updateActiveLocationRequests()V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->refreshViews()V

    .line 135
    return-void
.end method

.method private GenerateBeep()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 146
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "StatusBar.LocationController"

    const-string v8, "GenerateBeep Method call"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "MIN_VOLUME_LEV":I
    const/4 v1, 0x7

    .line 150
    .local v1, "MAX_VOLUME_LEV":I
    const/16 v3, 0xe

    .line 151
    .local v3, "VOLUME_STEP":I
    const/16 v0, 0x64

    .line 152
    .local v0, "MAX_VOLUME":I
    move v6, v0

    .line 154
    .local v6, "mCurVol":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 155
    .local v4, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v4, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 156
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "StatusBar.LocationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenerateBeep: Volumei Level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    if-lt v6, v2, :cond_5

    if-gt v6, v1, :cond_5

    .line 159
    if-ne v6, v1, :cond_4

    .line 160
    move v6, v0

    .line 165
    :goto_0
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "StatusBar.LocationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenerateBeep: valid Volume:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    :goto_1
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v10, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 173
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v7, :cond_3

    .line 174
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 175
    .local v5, "m":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    const/16 v8, 0x1c

    invoke-virtual {v7, v8}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 176
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 178
    .end local v5    # "m":Landroid/os/Message;
    :cond_3
    return-void

    .line 162
    :cond_4
    mul-int/2addr v6, v3

    goto :goto_0

    .line 167
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v7, :cond_6

    const-string v7, "StatusBar.LocationController"

    const-string v8, "Error getting current volume: Setting volume as max volume"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_6
    move v6, v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/LocationController;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->locationSettingsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/media/ToneGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/LocationController;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/LocationController;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/LocationController;
    .param p1, "x1"    # Landroid/media/ToneGenerator;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method private areActiveHighPowerLocationRequests()Z
    .locals 10

    .prologue
    .line 234
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v9, Lcom/android/systemui/statusbar/policy/LocationController;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {v8, v9}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 237
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_2

    .line 238
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 239
    .local v1, "numPackages":I
    const/4 v5, 0x0

    .local v5, "packageInd":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 240
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 241
    .local v6, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 244
    .local v0, "numOps":I
    const/4 v4, 0x0

    .local v4, "opInd":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 245
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 248
    .local v3, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_0

    .line 249
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 250
    const/4 v8, 0x1

    .line 258
    .end local v0    # "numOps":I
    .end local v1    # "numPackages":I
    .end local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "opInd":I
    .end local v5    # "packageInd":I
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :goto_2
    return v8

    .line 244
    .restart local v0    # "numOps":I
    .restart local v1    # "numPackages":I
    .restart local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .restart local v4    # "opInd":I
    .restart local v5    # "packageInd":I
    .restart local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    .end local v0    # "numOps":I
    .end local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "opInd":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "numPackages":I
    .end local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v5    # "packageInd":I
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isUserLocationRestricted(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 225
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_share_location"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private locationSettingsChanged()V
    .locals 4

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v2

    .line 282
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .line 283
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V

    goto :goto_0

    .line 285
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private refreshViews()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method private updateActiveLocationRequests()V
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    .line 274
    .local v0, "hadActiveLocationRequests":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->areActiveHighPowerLocationRequests()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    .line 275
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationController;->refreshViews()V

    .line 278
    :cond_0
    return-void
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public isLocationEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 215
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 217
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 290
    .local v12, "action":Ljava/lang/String;
    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 299
    .local v14, "enabled":Z
    const/16 v20, 0x0

    .line 300
    .local v20, "valueFromPrefs":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v1, :cond_0

    .line 304
    :cond_0
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v14, :cond_4

    .line 306
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v1, :cond_1

    .line 309
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseLocationIcon:Z

    if-eqz v1, :cond_3

    .line 310
    const v16, 0x7f020120

    .line 314
    .local v16, "iconId":I
    :goto_0
    const v19, 0x7f0b00b5

    .line 315
    .local v19, "textResId":I
    const/16 v21, 0x1

    .line 348
    .local v21, "visible":Z
    :goto_1
    if-eqz v21, :cond_9

    .line 349
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v3, "gpsIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v17

    .line 354
    .local v17, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 356
    .local v18, "text":Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 364
    .local v9, "n":Landroid/app/Notification;
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 365
    const/4 v1, 0x0

    iput-object v1, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 367
    const/4 v1, 0x1

    iput v1, v9, Landroid/app/Notification;->priority:I

    .line 369
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 370
    .local v10, "idOut":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x3d8d7

    const/4 v11, -0x1

    invoke-interface/range {v4 .. v11}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .line 379
    .local v13, "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 390
    .end local v3    # "gpsIntent":Landroid/content/Intent;
    .end local v9    # "n":Landroid/app/Notification;
    .end local v10    # "idOut":[I
    .end local v13    # "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v18    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 394
    :cond_2
    return-void

    .line 312
    .end local v16    # "iconId":I
    .end local v19    # "textResId":I
    .end local v21    # "visible":Z
    :cond_3
    const v16, 0x1080838

    .restart local v16    # "iconId":I
    goto/16 :goto_0

    .line 316
    .end local v16    # "iconId":I
    :cond_4
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v14, :cond_6

    .line 318
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v1, :cond_5

    .line 321
    :cond_5
    const/16 v21, 0x0

    .line 322
    .restart local v21    # "visible":Z
    const/16 v19, 0x0

    .restart local v19    # "textResId":I
    move/from16 v16, v19

    .restart local v16    # "iconId":I
    goto/16 :goto_1

    .line 325
    .end local v16    # "iconId":I
    .end local v19    # "textResId":I
    .end local v21    # "visible":Z
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/LocationController;->DBG:Z

    if-eqz v1, :cond_7

    .line 328
    :cond_7
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseLocationIcon:Z

    if-eqz v1, :cond_8

    .line 329
    const v16, 0x7f02011c

    .line 333
    .restart local v16    # "iconId":I
    :goto_3
    const v19, 0x7f0b00b4

    .line 334
    .restart local v19    # "textResId":I
    const/16 v21, 0x1

    .restart local v21    # "visible":Z
    goto/16 :goto_1

    .line 331
    .end local v16    # "iconId":I
    .end local v19    # "textResId":I
    .end local v21    # "visible":Z
    :cond_8
    const v16, 0x7f020118

    .restart local v16    # "iconId":I
    goto :goto_3

    .line 382
    .restart local v19    # "textResId":I
    .restart local v21    # "visible":Z
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x3d8d7

    const/4 v6, -0x1

    invoke-interface {v1, v2, v4, v5, v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;

    .line 387
    .restart local v13    # "cb":Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;->onLocationSettingsChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public setLocationEnabled(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 194
    .local v1, "currentUserId":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->isUserLocationRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    :goto_0
    return v2

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    const/4 v2, 0x3

    .line 204
    .local v2, "mode":I
    :cond_1
    const-string v3, "location_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v2

    goto :goto_0
.end method
