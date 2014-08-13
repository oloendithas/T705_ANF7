.class public Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "GlassMsgQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;
    }
.end annotation


# static fields
.field private static final AIRMESSAGE_STATUS:Ljava/lang/String; = "airmessage_on"

.field private static final ASG_SETTING_CHANGE_ACTION:Ljava/lang/String; = "android.settings.AIRMESSAGE_SWITCH_CHANGED"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AirMsgSettingButton"


# instance fields
.field public BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

.field private mAirMsgModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b002b

    const v1, 0x7f0b002a

    const/4 v6, 0x0

    .line 135
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 101
    const-string v0, "com.bst.airmessage.quickpanel.onff"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    .line 137
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 138
    const v3, 0x7f0201a4

    const v4, 0x7f0201a3

    const v5, 0x7f0201a2

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 150
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAirMsgModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;

    .line 153
    return-void

    .line 146
    :cond_0
    const v0, 0x7f02019d

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->changeStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->updateActivateStatus(Z)V

    return-void
.end method

.method private changeStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airmessage_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 259
    .local v0, "isOn":I
    if-ne v0, v3, :cond_0

    .line 260
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method private isWlanAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, "isAvailable":Z
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 377
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 379
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    const/4 v2, 0x1

    .line 383
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method private setAirMessageData(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x1

    .line 270
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 272
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_alert"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 275
    .local v0, "do_not_show_again":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, "isOn":I
    if-nez v0, :cond_1

    .line 279
    if-nez v1, :cond_0

    .line 281
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->showGuideDialog(I)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->updateActivateStatus(Z)V

    goto :goto_0
.end method

.method private showGuideDialog(I)V
    .locals 9
    .param p1, "showagain_checkbox_flag"    # I

    .prologue
    const/high16 v8, -0x1000000

    .line 295
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 297
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04002b

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 300
    .local v4, "mAirMessageDataAlertView":Landroid/view/View;
    const v6, 0x7f0800d5

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 301
    .local v1, "contentText":Landroid/widget/TextView;
    const v6, 0x7f0800d6

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 305
    .local v5, "mDisableAlertCheckBox":Landroid/widget/CheckBox;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->isWlanAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    const v6, 0x7f0b0157

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 309
    const v6, 0x7f0b0156

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 315
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 316
    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$2;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v6, :cond_0

    .line 340
    const v6, 0x7f0800ce

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 348
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 351
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 357
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 358
    .local v3, "kgm":Landroid/app/KeyguardManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 359
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 363
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 364
    return-void

    .line 311
    .end local v3    # "kgm":Landroid/app/KeyguardManager;
    :cond_1
    const v6, 0x7f0b0159

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 312
    const v6, 0x7f0b0158

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 361
    .restart local v3    # "kgm":Landroid/app/KeyguardManager;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private updateActivateStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 369
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 371
    .local v0, "state":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 372
    return-void

    .line 369
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAirMsgModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 186
    return-void
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.settings.AIRMESSAGE_SWITCH_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 159
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "airmessage_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAirMsgModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$AirMsgModeObserver;

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v8, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 163
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 166
    .local v2, "isOn":I
    if-ne v2, v7, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "airmessage_on"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 181
    :goto_0
    return-void

    .line 175
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "airmessage_on"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 8
    .param p1, "state"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 190
    const-string v3, "STATUSBAR-AirMsgSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move v0, p1

    .line 194
    .local v0, "buttonStatus":Z
    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->setAirMessageData(Z)V

    .line 198
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 202
    .local v2, "isOn":I
    if-ne v2, v6, :cond_0

    .line 203
    const-string v3, "STATUSBAR-AirMsgSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "on !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "airmessage_on"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isOn":I
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "airmessage_on"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    const-string v3, "STATUSBAR-AirMsgSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "off !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    const-string v3, "STATUSBAR-AirMsgSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save SharedPreferences: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 225
    const-string v3, "STATUSBAR-AirMsgSettingButton"

    const-string v4, "setActivateStatus: STATUS_OFF"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "com.bst.airmessage"

    const-string v1, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method
