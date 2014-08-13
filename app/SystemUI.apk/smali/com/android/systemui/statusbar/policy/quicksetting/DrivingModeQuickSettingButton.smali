.class public Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "DrivingModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;
    }
.end annotation


# static fields
.field private static final DB_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DRIVINGMODE_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_drivingmode_checked"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-DrivingModeController"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDrivingModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b0119

    const v1, 0x7f0b00f1

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 84
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 87
    const v3, 0x7f0201bf

    const v4, 0x7f0201be

    const v5, 0x7f0201bd

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 99
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mDrivingModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

    .line 101
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    invoke-static {v0, v1, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    invoke-static {v0, v1, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_2

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mState:Z

    .line 106
    return-void

    .line 95
    :cond_0
    const v0, 0x7f0201c0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v8, v6

    .line 104
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private areAllDrivingModeOptionsDisabled()Z
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/4 v9, 0x0

    .line 313
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_incoming_call_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 314
    .local v4, "incomingCall":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_chaton_call_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 315
    .local v2, "chatOn":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_message_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 316
    .local v5, "message":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_email_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 317
    .local v3, "email":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_voice_mail_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 318
    .local v8, "voiceMail":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_alarm_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 319
    .local v1, "alarm":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_schedule_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 320
    .local v6, "scheduleNotification":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_unlock_screen_contents"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 321
    .local v7, "unlockScreen":I
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_air_call_accept"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 323
    .local v0, "aircallaccept":I
    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    if-nez v8, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    .line 325
    const/4 v9, 0x1

    .line 327
    :cond_0
    return v9
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const/4 v1, 0x1

    .line 162
    .local v1, "isSVoiceInstalled":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDisplayDrivingModeAlert()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const v11, 0x7f0800c7

    const/high16 v10, -0x1000000

    .line 173
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 174
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 175
    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 177
    :cond_0
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 179
    .local v2, "mDrivingModeAlertLayout":Landroid/view/LayoutInflater;
    const v7, 0x7f040025

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 181
    .local v3, "mDrivingModeAlertView":Landroid/view/View;
    const v7, 0x7f0800c8

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 183
    .local v4, "mDrivingModeCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 185
    .local v5, "mDrivingModeTextView":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0160

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0161

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "messageString":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$2;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0b015f

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 205
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v7, :cond_1

    .line 212
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 221
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 227
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 228
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 229
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 233
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 234
    return-void

    .line 231
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 243
    return-void
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "theme":I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 275
    const/4 v1, 0x5

    .line 277
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b016d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 303
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 304
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 310
    return-void

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mDrivingModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mDrivingModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

    const/4 v6, -0x2

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 114
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public onClick(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "STATUSBAR-DrivingModeController"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v1, "STATUSBAR-DrivingModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrivingMode onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    const-string v1, "STATUSBAR-DrivingModeController"

    const-string v2, "onClick(): DrivingMode state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mState:Z

    if-eq v1, p1, :cond_0

    .line 145
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mState:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->areAllDrivingModeOptionsDisabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 148
    :cond_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 149
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "quickpanel_drivingmode_checked"

    const/4 v4, -0x2

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 151
    .local v0, "mChecked":I
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->setMode(I)V

    .line 152
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->onDisplayDrivingModeAlert()V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 151
    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 337
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DrivingModeSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mDrivingModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;->onChange(Z)V

    .line 345
    return-void
.end method
