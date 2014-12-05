.class public Lcom/android/keyguard/KeyguardSecurityViewHelper;
.super Ljava/lang/Object;
.source "KeyguardSecurityViewHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mCanceled:Z

.field private static mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

.field private static mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "KeyguardSecurityViewHelper"

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 34
    sput-boolean p0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    return p0
.end method

.method public static hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .registers 9
    .param p0, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "bouncerFrame"    # Landroid/graphics/drawable/Drawable;
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    .line 87
    if-eqz p0, :cond_9

    .line 88
    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->hideBouncer(I)V

    .line 90
    :cond_9
    if-eqz p1, :cond_23

    .line 91
    sput-boolean v2, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    .line 92
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    if-lez p3, :cond_47

    .line 94
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 95
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 96
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 101
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_23
    :goto_23
    if-eqz p2, :cond_46

    .line 102
    if-lez p3, :cond_4b

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 103
    :cond_33
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_50

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 104
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 105
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 110
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_46
    :goto_46
    return-void

    .line 98
    :cond_47
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_23

    .line 107
    :cond_4b
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_46

    .line 103
    nop

    :array_50
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private static setScaleAnimation()V
    .registers 16

    .prologue
    const v2, 0x3f83d70a

    const/high16 v1, 0x3f800000

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 153
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    .line 155
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 156
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 157
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v3, 0x14d

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v5

    move v13, v6

    move v14, v5

    move v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v7, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    .line 161
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 162
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 163
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1d3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    return-void
.end method

.method public static showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .registers 9
    .param p0, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "bouncerFrame"    # Landroid/graphics/drawable/Drawable;
    .param p3, "duration"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 47
    if-eqz p0, :cond_7

    .line 48
    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    .line 50
    :cond_7
    if-eqz p1, :cond_27

    .line 51
    if-lez p3, :cond_4b

    .line 52
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 53
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 54
    sput-boolean v4, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    .line 55
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 74
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_27
    :goto_27
    if-eqz p2, :cond_4a

    .line 75
    if-lez p3, :cond_53

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 76
    :cond_37
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_5a

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 77
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 78
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 83
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_4a
    :goto_4a
    return-void

    .line 70
    :cond_4b
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 71
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27

    .line 80
    :cond_53
    const/16 v1, 0xff

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4a

    .line 76
    nop

    :array_5a
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public static startAnimationView(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V
    .registers 9
    .param p0, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "animationView"    # Landroid/view/View;
    .param p3, "duration"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 114
    if-eqz p0, :cond_7

    .line 115
    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    .line 117
    :cond_7
    if-eqz p1, :cond_27

    .line 118
    if-lez p3, :cond_3d

    .line 119
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 120
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 121
    sput-boolean v4, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    .line 122
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 141
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_27
    :goto_27
    if-eqz p2, :cond_3c

    .line 142
    if-lez p3, :cond_45

    .line 143
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->setScaleAnimation()V

    .line 144
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    const/16 v2, 0x10b

    invoke-static {p2, v1, v2}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V

    .line 145
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    const/16 v2, 0x258

    invoke-static {p2, v1, v2}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V

    .line 150
    :cond_3c
    :goto_3c
    return-void

    .line 137
    :cond_3d
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 138
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27

    .line 147
    :cond_45
    const/high16 v1, 0x437f0000

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3c
.end method

.method private static startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V
    .registers 7
    .param p0, "animationView"    # Landroid/view/View;
    .param p1, "Anim"    # Landroid/view/animation/ScaleAnimation;
    .param p2, "offset"    # I

    .prologue
    .line 167
    if-eqz p1, :cond_4

    if-nez p0, :cond_c

    .line 168
    :cond_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityViewHelper;->TAG:Ljava/lang/String;

    const-string v2, "Anim or View is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_b
    return-void

    .line 170
    :cond_c
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 171
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;-><init>(Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method
