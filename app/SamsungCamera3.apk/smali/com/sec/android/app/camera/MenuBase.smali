.class public Lcom/sec/android/app/camera/MenuBase;
.super Ljava/lang/Object;
.source "MenuBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuBase$OnHideListener;,
        Lcom/sec/android/app/camera/MenuBase$OnShowListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MenuBase"

.field public static final Z_LEVEL_0:I = 0x0

.field public static final Z_LEVEL_1:I = 0x1

.field public static final Z_LEVEL_10:I = 0xb

.field public static final Z_LEVEL_11:I = 0xc

.field public static final Z_LEVEL_12:I = 0xd

.field public static final Z_LEVEL_13:I = 0xe

.field public static final Z_LEVEL_14:I = 0xf

.field public static final Z_LEVEL_2:I = 0x2

.field public static final Z_LEVEL_3:I = 0x3

.field public static final Z_LEVEL_4:I = 0x5

.field public static final Z_LEVEL_5:I = 0x6

.field public static final Z_LEVEL_6:I = 0x7

.field public static final Z_LEVEL_7:I = 0x8

.field public static final Z_LEVEL_8:I = 0x9

.field public static final Z_LEVEL_9:I = 0xa

.field public static final Z_LEVEL_FULLSCREEN:I = 0x11

.field public static final Z_LEVEL_TOP:I = 0x10

.field public static final Z_LEVEL_TOUCH_FOCUS:I = 0x4


# instance fields
.field private mActive:Z

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field protected mAnchor:Lcom/sec/android/glview/TwGLImage;

.field protected mBaseView:Landroid/view/ViewGroup;

.field private mCaptureEnabled:Z

.field protected mChild:Lcom/sec/android/app/camera/MenuBase;

.field private mEffect:Z

.field private mGLActive:Z

.field protected mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHasShowViewMsg:Z

.field private mHideAnimation:Landroid/view/animation/Animation;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLaunchX:F

.field protected mLaunchY:F

.field public mLayoutId:I

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

.field private mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

.field private mPreviewTouchEnabled:Z

.field protected mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field public mViewId:I

.field protected mVisibility:Z

.field protected mZorder:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "layoutId"    # I
    .param p3, "viewId"    # I
    .param p4, "baseLayout"    # Landroid/view/ViewGroup;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I

    .prologue
    .line 138
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V
    .locals 11
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "layoutId"    # I
    .param p3, "viewId"    # I
    .param p4, "baseLayout"    # Landroid/view/ViewGroup;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "effect"    # Z

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    .line 88
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 89
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666

    const/high16 v3, 0x3f800000

    const v4, 0x3f666666

    const/high16 v5, 0x3f800000

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 90
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 105
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 106
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    .line 107
    iput p3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 108
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 109
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 110
    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    invoke-virtual {v1, v2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 118
    .local v10, "baseView":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 119
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 122
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 124
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 134
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "zOrder"    # I
    .param p6, "effect"    # Z

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    .line 88
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 89
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666

    const/high16 v2, 0x3f800000

    const v3, 0x3f666666

    const/high16 v4, 0x3f800000

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 90
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 144
    iput-object p3, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 146
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 147
    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 148
    iput p5, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 149
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 152
    iput-boolean p6, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 154
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 164
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IZ)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "resource"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p6, "zOrder"    # I
    .param p7, "effect"    # Z

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    .line 88
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 89
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666

    const/high16 v3, 0x3f800000

    const v4, 0x3f666666

    const/high16 v5, 0x3f800000

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 90
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    .line 169
    iput-object p3, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 171
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 172
    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 173
    iput-object p5, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 174
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 175
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 178
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 180
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 391
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    .line 393
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 394
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 395
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 396
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    .line 397
    return-void
.end method

.method public clearGLView()V
    .locals 3

    .prologue
    .line 377
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 379
    .local v0, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 381
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 384
    .end local v0    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_0
    return-void
.end method

.method public final getBaseResourceId()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    return v0
.end method

.method public final getBaseViewId()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    return v0
.end method

.method public final getVisibility()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    return v0
.end method

.method public final getZorder()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public hasShowNextViewMsg()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    return v0
.end method

.method public hideMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_0

    .line 263
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-eqz v2, :cond_2

    .line 232
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-nez v2, :cond_5

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "baseView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 235
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .end local v0    # "baseView":Landroid/view/View;
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    if-eqz v2, :cond_4

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/MenuBase$OnHideListener;->onHide(Lcom/sec/android/app/camera/MenuBase;)V

    .line 262
    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    goto :goto_0

    .line 237
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 239
    .local v1, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_1

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_6

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 242
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_1

    .line 244
    :cond_6
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_1
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    return v0
.end method

.method public isAnimationFinished()Z
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 419
    .local v0, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v0, :cond_0

    .line 420
    const/4 v1, 0x1

    .line 421
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isAnimationFinished()Z

    move-result v1

    goto :goto_0
.end method

.method public final isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    return v0
.end method

.method public final isFullScreen()Z
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public onAutoFocusCompleted()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 370
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public onStartingPreviewCompleted()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method protected resourceChanged(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 0
    .param p1, "resource"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 194
    return-void
.end method

.method public restoreMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 266
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-nez v2, :cond_1

    .line 267
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-nez v2, :cond_4

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "baseView":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 270
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    .end local v0    # "baseView":Landroid/view/View;
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    if-eqz v2, :cond_3

    .line 294
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/MenuBase$OnShowListener;->onShow(Lcom/sec/android/app/camera/MenuBase;)V

    .line 296
    :cond_3
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    .line 297
    return-void

    .line 274
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 275
    .local v1, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_0

    .line 276
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_5

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 279
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 281
    :cond_5
    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .param p1, "anchor"    # Lcom/sec/android/glview/TwGLImage;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 342
    return-void
.end method

.method public final setBaseResourceId(I)V
    .locals 0
    .param p1, "layoutId"    # I

    .prologue
    .line 313
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    .line 314
    return-void
.end method

.method public final setBaseViewId(I)V
    .locals 0
    .param p1, "viewId"    # I

    .prologue
    .line 321
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    .line 322
    return-void
.end method

.method protected setCaptureEnabled(Z)V
    .locals 0
    .param p1, "capture"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 367
    return-void
.end method

.method public final setChild(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .param p1, "child"    # Lcom/sec/android/app/camera/MenuBase;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 330
    return-void
.end method

.method public final setDim(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    .line 300
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 302
    .local v0, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 303
    if-eqz p1, :cond_1

    const/16 v1, 0x20

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 306
    .end local v0    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_0
    return-void

    .line 303
    .restart local v0    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    .line 214
    return-void
.end method

.method public final setLaunchPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 345
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchX:F

    .line 346
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    .line 347
    return-void
.end method

.method public setOnHideListener(Lcom/sec/android/app/camera/MenuBase$OnHideListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    .line 206
    return-void
.end method

.method public setOnShowListener(Lcom/sec/android/app/camera/MenuBase$OnShowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    .line 202
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    .line 210
    return-void
.end method

.method public setShowNextViewMsg(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    .line 448
    return-void
.end method

.method protected setTouchHandled(Z)V
    .locals 0
    .param p1, "handle"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 363
    return-void
.end method

.method public final setZorder(I)V
    .locals 1
    .param p1, "zOrder"    # I

    .prologue
    .line 337
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 338
    return-void
.end method

.method public showMenu()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/Camera;->pushMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 222
    .local v0, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method
