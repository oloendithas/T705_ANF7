.class public Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "LocationQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;
    }
.end annotation


# static fields
.field private static final CURRENT_MODE_KEY:Ljava/lang/String; = "CURRENT_MODE"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-LocationQuickSettingButton"

.field private static final VZW_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field private mDeviceType:Ljava/lang/String;

.field private mDisabledByUserRestrictions:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mGpsActivated:Z

.field private mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPrefChecked:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b010a

    const v1, 0x7f0b00e3

    const/4 v6, 0x0

    .line 155
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    .line 80
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    .line 96
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 158
    const v3, 0x7f0201c6

    const v4, 0x7f0201c5

    const v5, 0x7f0201c4

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 170
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 171
    return-void

    .line 166
    :cond_0
    const v0, 0x7f0201c7

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->readLocationMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->isGpsOn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->isUserLocationRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setGpsMode(Z)V

    return-void
.end method

.method private collapseIfNeeded()V
    .locals 0

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 524
    return-void
.end method

.method private isGpsOn(I)Z
    .locals 1
    .param p1, "locationMode"    # I

    .prologue
    .line 509
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 382
    :goto_0
    return v0

    .line 381
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserLocationRestricted()Z
    .locals 4

    .prologue
    .line 501
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 502
    .local v0, "currentUserId":I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 503
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_share_location"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    return v2
.end method

.method private readLocationMode()I
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setGpsMode(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    const/4 v5, -0x2

    .line 476
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 478
    if-eqz p1, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->collapseIfNeeded()V

    .line 480
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 491
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 493
    return-void

    .line 483
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    .line 488
    .local v1, "newMode":I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setVzwProviderAndMode()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method private showConfirmPopup(Z)V
    .locals 13
    .param p1, "state"    # Z

    .prologue
    const/4 v12, 0x0

    const/high16 v11, -0x1000000

    .line 387
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 389
    .local v1, "mGpsAlertLayoutInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f040026

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 392
    .local v2, "mGpsAlertView":Landroid/view/View;
    const v9, 0x7f0800cd

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 395
    .local v3, "mGpsCheckBox":Landroid/widget/CheckBox;
    const v9, 0x7f0800c9

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 396
    .local v7, "mVzwText":Landroid/widget/TextView;
    const v9, 0x7f0800ca

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 397
    .local v6, "mUsccTitle":Landroid/widget/TextView;
    const v9, 0x7f0800cb

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 398
    .local v4, "mUsccBody":Landroid/widget/TextView;
    const v9, 0x7f0800cc

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 400
    .local v5, "mUsccBottom":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z

    .line 402
    new-instance v9, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$5;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 412
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v9, :cond_0

    .line 413
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 421
    .local v8, "value":Z
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v10, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v9, :cond_1

    const v9, 0x7f0b01cd

    :goto_0
    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0b01bc

    new-instance v11, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$7;

    invoke-direct {v11, p0, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$7;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$6;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 445
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$8;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$8;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 453
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v9, :cond_2

    .line 454
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 455
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 456
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 457
    const/high16 v9, 0x41600000

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 462
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 465
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 466
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 467
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 471
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 472
    return-void

    .line 421
    .end local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_1
    const v9, 0x7f0b01ba

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 469
    .restart local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 199
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->readLocationMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->isGpsOn(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->isUserLocationRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    .line 185
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    if-eqz v1, :cond_0

    .line 186
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 193
    :goto_0
    const-string v1, "STATUSBAR-LocationQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() - mGpsActivated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 188
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public onClick(Z)V
    .locals 10
    .param p1, "state"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 203
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v4, :cond_1

    .line 204
    const-string v4, "STATUSBAR-LocationQuickSettingButton"

    const-string v5, "onClick(): Processing..."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->isUserLocationRestricted()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    .line 210
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    if-eqz v4, :cond_2

    .line 211
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 212
    const-string v4, "STATUSBAR-LocationQuickSettingButton"

    const-string v5, "onClick(): mDisabledByUserRestrictions..."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_2
    const-string v4, "STATUSBAR-LocationQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPS onClick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") mGpsActivated="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 219
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 220
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4, v8}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 221
    const-string v4, "STATUSBAR-LocationQuickSettingButton"

    const-string v5, "onClick(): Location state change is not allowed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 226
    .local v2, "lp":Landroid/app/enterprise/LocationPolicy;
    if-eqz v2, :cond_4

    const-string v4, "gps"

    invoke-virtual {v2, v4}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "network"

    invoke-virtual {v2, v4}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    const-string v4, "STATUSBAR-LocationQuickSettingButton"

    const-string v5, "onClick(): Location provider is blocked"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_4
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v4, :cond_6

    .line 259
    if-eqz p1, :cond_5

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "gps_alert_pref"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 260
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 261
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->showConfirmPopup(Z)V

    goto/16 :goto_0

    .line 263
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setGpsMode(Z)V

    goto/16 :goto_0

    .line 267
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    if-eq p1, v4, :cond_0

    .line 269
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 270
    const/4 v3, 0x0

    .line 271
    .local v3, "newMode":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->readLocationMode()I

    move-result v0

    .line 273
    .local v0, "currMode":I
    if-eqz p1, :cond_8

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->collapseIfNeeded()V

    .line 275
    const/4 v3, 0x3

    .line 276
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 286
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mEnableNLPAlertForCHN:Z

    if-eqz v4, :cond_7

    .line 289
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "CURRENT_MODE"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v4, "NEW_MODE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    :cond_7
    const-string v4, "STATUSBAR-LocationQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPS set("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    const/4 v3, 0x0

    .line 283
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method public onDimClick()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public showVzwLocationConsentDialog()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;->onChange(Z)V

    .line 498
    return-void
.end method
