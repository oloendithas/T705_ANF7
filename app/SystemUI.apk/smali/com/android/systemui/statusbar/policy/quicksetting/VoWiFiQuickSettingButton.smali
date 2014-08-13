.class public Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "VoWiFiQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;,
        Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;,
        Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;,
        Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;
    }
.end annotation


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final TRANSITIONING_TO_OFF:I = 0x2

.field private static final TRANSITIONING_TO_ON:I = 0x3

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-VoWiFiQuickSettingButton"


# instance fields
.field private mIsWfcProvisioned:Z

.field private mWfcStateObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b0128

    const v1, 0x7f0b0100

    const/4 v6, 0x0

    .line 120
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 32
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mWfcStateObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;

    .line 122
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 123
    const v3, 0x7f020238

    const v4, 0x7f020237

    const v5, 0x7f020236

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 133
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 134
    const-string v0, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v1, "VoWiFi Quick Button create."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 129
    :cond_0
    const v0, 0x7f020239

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->isWfcProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->updateWfcState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->queryWfcState()I

    move-result v0

    return v0
.end method

.method private isWfcProvisioned()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 88
    .local v7, "isProvisioned":Ljava/lang/Boolean;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_is_provisioned"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 96
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private queryWfcState()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 103
    const/4 v7, 0x0

    .line 105
    .local v7, "state":I
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 113
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_1
    return v7
.end method

.method private updateWfcState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x0

    .line 167
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    return-void

    .line 168
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mWfcStateObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mWfcStateObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    const-string v0, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v1, "VoWiFi Quick Button initial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v2, 0x1

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;)V

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 161
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->updateWfcState(Z)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 3

    .prologue
    .line 175
    :try_start_0
    const-string v1, "com.oem.smartwifi.WIFI_CALLING_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v2, "Cannot find WfcSettings!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
