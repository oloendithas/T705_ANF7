.class public Lcom/android/keyguard/sec/SecKeyguardFlightModeView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardFlightModeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private AIRPLANE_ANIMATION_LANDING_DURATION:I

.field private TAG:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mFlightModeIcon:Landroid/widget/ImageView;

.field private mFlightTextView:Landroid/widget/TextView;

.field private mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

.field private mTurnOffButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, "SecKeyguardFlightModeView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->AIRPLANE_ANIMATION_LANDING_DURATION:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 45
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-string v0, "SecKeyguardFlightModeView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->AIRPLANE_ANIMATION_LANDING_DURATION:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 45
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-string v0, "SecKeyguardFlightModeView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->AIRPLANE_ANIMATION_LANDING_DURATION:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 45
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/view/animation/ScaleAnimation;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;Landroid/view/animation/ScaleAnimation;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;
    .param p1, "x1"    # Landroid/view/animation/ScaleAnimation;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->startFlightAnimation(Landroid/view/animation/ScaleAnimation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightModeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildDisableDialog()V
    .registers 6

    .prologue
    .line 111
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mDialogTheme:I

    .line 116
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 118
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v3

    if-eqz v3, :cond_5d

    const/4 v1, 0x1

    .line 120
    .local v1, "isUsb3Enabled":Z
    :goto_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mDialogTheme:I

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 121
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_5f

    .line 122
    const v3, 0x10401f3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 123
    const v3, 0x10401ed

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 129
    :goto_33
    if-eqz v1, :cond_6c

    const v3, 0x10401f4

    :goto_38
    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;ZLandroid/hardware/usb/UsbManager;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    const v3, 0x1040009

    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 153
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 154
    return-void

    .line 118
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "isUsb3Enabled":Z
    :cond_5d
    const/4 v1, 0x0

    goto :goto_1c

    .line 125
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "isUsb3Enabled":Z
    :cond_5f
    const v3, 0x10401eb

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 126
    const v3, 0x10401f2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_33

    .line 129
    :cond_6c
    const v3, 0x104000a

    goto :goto_38
.end method

.method private buildFlightAnimaion()V
    .registers 10

    .prologue
    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f800000

    const/4 v5, 0x1

    .line 102
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x0

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->AIRPLANE_ANIMATION_LANDING_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 107
    return-void
.end method

.method private startFlightAnimation(Landroid/view/animation/ScaleAnimation;)V
    .registers 6
    .param p1, "Anim"    # Landroid/view/animation/ScaleAnimation;

    .prologue
    .line 157
    if-nez p1, :cond_a

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    const-string v2, "Anim is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_9
    return-void

    .line 160
    :cond_a
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;Landroid/view/animation/ScaleAnimation;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method


# virtual methods
.method public isTabletModel()Z
    .registers 3

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 172
    .local v0, "deviceSW":I
    const/16 v1, 0x258

    if-ge v0, v1, :cond_10

    .line 173
    const/4 v1, 0x0

    .line 175
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 181
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightTextView:Landroid/widget/TextView;

    const v1, 0x7f060120

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    const v1, 0x7f060122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->buildDisableDialog()V

    .line 187
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 99
    :cond_2b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 197
    :cond_1b
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 75
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    const v1, 0x7f0b0126

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    .line 85
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f0b0124

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightModeIcon:Landroid/widget/ImageView;

    .line 87
    const v1, 0x7f0b0125

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightTextView:Landroid/widget/TextView;

    .line 89
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->buildFlightAnimaion()V

    .line 90
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->buildDisableDialog()V

    .line 91
    return-void
.end method
