.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.super Landroid/widget/LinearLayout;
.source "QuickSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREENREADER_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field public static final DIFF_VALUE:I = -0x3

.field public static final DISABLE_ALPHA:F = 0.4f

.field private static final ENABLED_SERVICES_SEPARATOR:C = ':'

.field public static final ENABLE_ALPHA:F = 1.0f

.field public static final LINE_RESTRICTION:I = 0xc

.field public static final MIDIUM_DENSITY:I = 0xa0

.field public static final STATUS_DIM:I = 0x3

.field public static final STATUS_OFF:I = 0x2

.field public static final STATUS_OFF2:I = 0x5

.field public static final STATUS_ON:I = 0x1

.field public static final STATUS_ON2:I = 0x4

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-QuickSettingButton"

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private buttonDivider:Landroid/view/View;

.field private mActivateStatus:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtnImage:Landroid/widget/ImageView;

.field private mBtnLED:Landroid/widget/ImageView;

.field private mBtnText:Landroid/widget/TextView;

.field private mContentTextID:I

.field private mDeviceProvisioned:Z

.field private mDimIconID:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mIconID:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsProcessing:Z

.field private final mIsRoundButtonUX:Z

.field private mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

.field private mOffIconID:I

.field private mOffIconID2:I

.field private mOnIconID:I

.field private mOnIconID2:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mText:Ljava/lang/String;

.field private mTextID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 572
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "isRoundUX"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 64
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    .line 576
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsRoundButtonUX:Z

    .line 112
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 114
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private checkContentDescription()V
    .locals 8

    .prologue
    const v5, 0x7f0b013d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 526
    const-string v1, ""

    .line 527
    .local v1, "str":Ljava/lang/String;
    const-string v2, ""

    .line 528
    .local v2, "str1":Ljava/lang/String;
    const/4 v0, -0x1

    .line 529
    .local v0, "hasNewLine":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContentTextID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 530
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 531
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 532
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v3, :pswitch_data_0

    .line 560
    :goto_1
    return-void

    .line 536
    :cond_0
    move-object v2, v1

    goto :goto_0

    .line 541
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 546
    :pswitch_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b013e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 556
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b013f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public applySsid(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/CharSequence;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 567
    return-void
.end method

.method protected callActivity(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 431
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 436
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 437
    .local v0, "mIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 432
    .end local v0    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected callActivity(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 417
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "mIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 418
    .end local v0    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected callActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 402
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 407
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 408
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 403
    .end local v0    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public changeTextSize(I)V
    .locals 7
    .param p1, "diff"    # I

    .prologue
    .line 457
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 458
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 460
    const-string v1, "STATUSBAR-QuickSettingButton"

    const-string v2, "changeTextSize"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    int-to-float v4, p1

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x43200000

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 464
    return-void
.end method

.method public checkTextLengthForApn()V
    .locals 6

    .prologue
    const/16 v3, 0xa

    .line 468
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "str":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_1

    :cond_0
    const/16 v2, 0xc

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    if-le v2, v3, :cond_2

    .line 471
    :cond_1
    const/4 v2, -0x3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->changeTextSize(I)V

    .line 472
    const-string v2, "STATUSBAR-QuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeTextSize: length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void

    .line 474
    :cond_2
    const-string v2, "STATUSBAR-QuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public doNext()V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method public dynamicallyReduceTextSize(I)V
    .locals 13
    .param p1, "buttonWidth"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 481
    const-string v7, "STATUSBAR-QuickSettingButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dynamicallyReduceTextSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0077

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 483
    .local v0, "defaultTextSize":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v7, v11, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 487
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    if-eqz v7, :cond_0

    .line 488
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 489
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    .line 492
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0xa

    if-ge v2, v7, :cond_4

    .line 493
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 496
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x0

    .line 497
    .local v5, "textWidth":I
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 499
    .local v1, "enterIndex":I
    const-string v7, "DCM"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "KDDI"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 500
    :cond_1
    if-ne v1, v12, :cond_2

    .line 501
    const-string v7, "\u200b"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 505
    :cond_2
    if-ne v1, v12, :cond_5

    .line 506
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v5, v7

    .line 515
    :cond_3
    :goto_1
    if-lt p1, v5, :cond_6

    .line 522
    .end local v1    # "enterIndex":I
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "textWidth":I
    :cond_4
    return-void

    .line 508
    .restart local v1    # "enterIndex":I
    .restart local v3    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "str":Ljava/lang/String;
    .restart local v5    # "textWidth":I
    :cond_5
    invoke-virtual {v4, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v5, v7

    .line 509
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v6, v7

    .line 510
    .local v6, "textWidth2":I
    if-ge v5, v6, :cond_3

    .line 511
    move v5, v6

    goto :goto_1

    .line 518
    .end local v6    # "textWidth2":I
    :cond_6
    const-string v7, "STATUSBAR-QuickSettingButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reduce text : ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] - buttonWidth:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], textWidth["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    add-int/lit8 v8, v2, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    const/high16 v10, 0x43200000

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    sub-float v8, v0, v8

    invoke-virtual {v7, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public getActivateStatus()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    return v0
.end method

.method public initLayout(III)V
    .locals 2
    .param p1, "textId"    # I
    .param p2, "contentTextId"    # I
    .param p3, "iconId"    # I

    .prologue
    .line 163
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f040023

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 164
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 168
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 169
    iput p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContentTextID:I

    .line 171
    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIconID:I

    .line 172
    const v0, 0x7f02024e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    .line 173
    const v0, 0x7f02024d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    .line 174
    const v0, 0x7f02024a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 179
    return-void
.end method

.method public initLayout(IIIIIII)V
    .locals 2
    .param p1, "textId"    # I
    .param p2, "contentTextId"    # I
    .param p3, "onIconId"    # I
    .param p4, "offIconId"    # I
    .param p5, "dimIconId"    # I
    .param p6, "onIconId2"    # I
    .param p7, "offIconId2"    # I

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f040022

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 130
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->buttonDivider:Landroid/view/View;

    .line 134
    :goto_0
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 140
    iput p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContentTextID:I

    .line 141
    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    .line 142
    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    .line 143
    iput p5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    .line 144
    iput p6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 145
    iput p7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 147
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 149
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_1

    .line 150
    const v0, 0x7f020061

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 158
    :goto_1
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f040023

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 152
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsMacchiato:Z

    if-eqz v0, :cond_2

    .line 153
    const v0, -0xfa893f

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 155
    :cond_2
    const v0, 0x7f020246

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 390
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 392
    .local v0, "provisioned":Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_1

    .line 393
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    .line 395
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    return v1
.end method

.method protected isEnabledScreenReaderService()Z
    .locals 7

    .prologue
    .line 588
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 592
    const-string v3, ""

    .line 595
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 596
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 598
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 599
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 601
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 602
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 603
    const/4 v4, 0x1

    .line 606
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 198
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->onDimClick()V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 454
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->deinit()V

    .line 213
    return-void
.end method

.method public onDimClick()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const v2, 0x7f02024b

    const v1, 0x7f020249

    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsRoundButtonUX:Z

    if-eqz v0, :cond_1

    .line 249
    if-eqz p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 269
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 255
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_3

    .line 256
    if-eqz p2, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->buttonDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->buttonDivider:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 262
    :cond_3
    if-eqz p2, :cond_4

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onLongClick()V

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method protected removeEnabledScreenReaderValue()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 610
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 619
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 621
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 622
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 624
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    :cond_3
    if-eqz v2, :cond_2

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 627
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 630
    .end local v2    # "componentNameString":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 633
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setActivateStatus(I)V
    .locals 4
    .param p1, "activateStatus"    # I

    .prologue
    const v3, 0x7f020242

    const v2, 0x7f020243

    .line 276
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    .line 278
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    .line 285
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 359
    :cond_0
    :goto_1
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsRoundButtonUX:Z

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 300
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsRoundButtonUX:Z

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 313
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsRoundButtonUX:Z

    if-eqz v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const v1, 0x7f020195

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 324
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsRoundButtonUX:Z

    if-eqz v0, :cond_5

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 330
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 337
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsRoundButtonUX:Z

    if-eqz v0, :cond_7

    .line 338
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v0, :cond_6

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 341
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 347
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_0

    .line 349
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v0, :cond_8

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 352
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setAltIcon(II)V
    .locals 0
    .param p1, "onIconId2"    # I
    .param p2, "offIconId2"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 192
    iput p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 193
    return-void
.end method

.method public setContextTextId(I)V
    .locals 0
    .param p1, "contextTextID"    # I

    .prologue
    .line 372
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContentTextID:I

    .line 373
    return-void
.end method

.method public setIcon(IIIIII)V
    .locals 0
    .param p1, "textId"    # I
    .param p2, "onIconId"    # I
    .param p3, "offIconId"    # I
    .param p4, "dimIconId"    # I
    .param p5, "onIconId2"    # I
    .param p6, "offIconId2"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 183
    iput p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    .line 184
    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    .line 185
    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    .line 186
    iput p5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 187
    iput p6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 188
    return-void
.end method

.method public setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    .line 217
    return-void
.end method

.method public setOffIconId2(I)V
    .locals 0
    .param p1, "offIcon"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 377
    return-void
.end method

.method public setOnIconId2(I)V
    .locals 0
    .param p1, "onIcon"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 381
    return-void
.end method

.method public setTextId(I)V
    .locals 0
    .param p1, "textID"    # I

    .prologue
    .line 363
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 364
    return-void
.end method

.method public setTextId(ILjava/lang/String;)V
    .locals 0
    .param p1, "textID"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 367
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 368
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    .line 369
    return-void
.end method

.method protected showTalkBackDisablePopup(II)V
    .locals 4
    .param p1, "titleRes"    # I
    .param p2, "messageRes"    # I

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 641
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 656
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 657
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 662
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 664
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 665
    return-void

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method protected statusBarCollapse()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 387
    :cond_0
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method
