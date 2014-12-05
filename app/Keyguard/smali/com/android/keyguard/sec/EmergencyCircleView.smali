.class public Lcom/android/keyguard/sec/EmergencyCircleView;
.super Landroid/widget/FrameLayout;
.source "EmergencyCircleView.java"


# instance fields
.field private isIgnoreTouch:Z

.field private mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsFirst:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    .line 85
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 89
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 90
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 91
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mFirstBorder:I

    .line 93
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    .line 95
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 116
    iget-boolean v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    if-eqz v5, :cond_17

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_10

    .line 118
    iput-boolean v9, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    .line 120
    :cond_10
    iget-object v4, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v4, p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    .line 162
    :goto_16
    return v4

    .line 123
    :cond_17
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 124
    .local v2, "touchedEventX":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 126
    .local v3, "touchedEventY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_8e

    .line 161
    :cond_26
    :goto_26
    :pswitch_26
    iget-object v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v5, p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_16

    .line 128
    :pswitch_2c
    const-string v5, "EmergencyCircleView"

    const-string v6, "onTouchEvent - DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput v2, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartX:F

    .line 130
    iput v3, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartY:F

    .line 131
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    .line 134
    :pswitch_3b
    const-string v5, "EmergencyCircleView"

    const-string v6, "onTouchEvent - MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartX:F

    sub-float v5, v2, v5

    float-to-int v0, v5

    .line 136
    .local v0, "diffX":I
    iget v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartY:F

    sub-float v5, v3, v5

    float-to-int v1, v5

    .line 138
    .local v1, "diffY":I
    int-to-double v5, v0

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-double v7, v1

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    .line 140
    iget-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget v7, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_26

    .line 141
    iput-boolean v9, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->takeEmergencyCallList()V

    goto :goto_26

    .line 146
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :pswitch_6c
    iput-boolean v4, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    .line 150
    :pswitch_6e
    const-string v5, "EmergencyCircleView"

    const-string v6, "onTouchEvent - UP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mFirstBorder:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_26

    iget-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget v7, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_26

    .line 152
    iput-boolean v9, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    .line 153
    invoke-virtual {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->takeEmergencyCallList()V

    goto :goto_26

    .line 126
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_6e
        :pswitch_3b
        :pswitch_6e
        :pswitch_26
        :pswitch_26
        :pswitch_6c
    .end packed-switch
.end method

.method public takeEmergencyCallList()V
    .registers 6

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 167
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 180
    :goto_1a
    return-void

    .line 175
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a
.end method
