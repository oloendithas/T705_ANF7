.class public Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;
.super Ljava/lang/Object;
.source "KeyguardMagazineAnimationController.java"


# instance fields
.field private mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    .line 18
    return-void
.end method

.method private getAppearingLayoutTransitionAnimation()Landroid/animation/ObjectAnimator;
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "mAppearingLayoutTransitionAnim":Landroid/animation/ObjectAnimator;
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_3c

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 55
    .local v2, "pvhScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_44

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 56
    .local v3, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_4c

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 57
    .local v1, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 59
    new-instance v4, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;

    invoke-direct {v4}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    return-object v0

    .line 54
    nop

    :array_3c
    .array-data 4
        0x3f666666
        0x3f800000
    .end array-data

    .line 55
    :array_44
    .array-data 4
        0x3f666666
        0x3f800000
    .end array-data

    .line 56
    :array_4c
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private getDisappearingLayoutTransitionAnimation()Landroid/animation/ObjectAnimator;
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "mDisappearingLayoutTransitionAnim":Landroid/animation/ObjectAnimator;
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_3c

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 68
    .local v2, "pvhScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_44

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 69
    .local v3, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_4c

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 70
    .local v1, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 72
    new-instance v4, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;

    invoke-direct {v4}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    return-object v0

    .line 67
    nop

    :array_3c
    .array-data 4
        0x3f800000
        0x3f666666
    .end array-data

    .line 68
    :array_44
    .array-data 4
        0x3f800000
        0x3f666666
    .end array-data

    .line 69
    :array_4c
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method


# virtual methods
.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .registers 13

    .prologue
    const/4 v11, 0x3

    const-wide/16 v9, 0x1f4

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 21
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    if-nez v3, :cond_81

    .line 22
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    .line 24
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v8, v4, v5}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 25
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v6, v4, v5}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 26
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v7, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 27
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v11, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 28
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v8, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 29
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v6, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 30
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v6}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 32
    const-string v3, "left"

    new-array v4, v7, [I

    fill-array-data v4, :array_84

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 33
    .local v1, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    const-string v3, "right"

    new-array v4, v7, [I

    fill-array-data v4, :array_8c

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 34
    .local v2, "pvhRight":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v8

    aput-object v2, v3, v6

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 36
    .local v0, "animChangeAppearing":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    new-instance v3, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;

    invoke-direct {v3}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v8, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 40
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v6, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 43
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->getAppearingLayoutTransitionAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 45
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->getDisappearingLayoutTransitionAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 48
    .end local v0    # "animChangeAppearing":Landroid/animation/ObjectAnimator;
    .end local v1    # "pvhLeft":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhRight":Landroid/animation/PropertyValuesHolder;
    :cond_81
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    return-object v3

    .line 32
    :array_84
    .array-data 4
        0x0
        0x64
    .end array-data

    .line 33
    :array_8c
    .array-data 4
        0x0
        0x64
    .end array-data
.end method
