.class public Lcom/sec/android/app/contacts/AnimationAdapter;
.super Ljava/lang/Object;
.source "AnimationAdapter.java"

# interfaces
.implements Lcom/sec/android/app/contacts/IAnimationAdapter;


# static fields
.field private static final ANIMATION_DUMMY_VIEW_ID:I = 0x99

.field private static final ANIMATION_WINDOW_AND_VIEW:I = 0x1

.field private static final ANIMATION_WINDOW_ONLY:I = 0x0

.field private static final CONTAINER_INDEX:I = 0x0

.field public static final FADE_IN:I = 0x1

.field public static final FADE_NO_OPERATION:I = 0x0

.field public static final FADE_OUT:I = 0x2


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAnimationEnabled:I

.field private final mAnimationHandler:Landroid/os/Handler;

.field public mAnimationType:I

.field private mDummyView:Landroid/view/View;

.field private mSelectedView:Landroid/view/View;

.field private mTransitionScale:F

.field private mViewDuration:J

.field private mViewFadeType:I

.field private mViewGlobalPosition:Landroid/graphics/Rect;

.field private mViewHeight:I

.field private mViewScaleFrom:F

.field private mViewScaleTo:F

.field private mViewStartOffset:I

.field private mViewTranslateFrom:F

.field private mViewTranslateTo:F

.field private mWindow:Landroid/view/View;

.field private mWindowDuration:J

.field private mWindowFadeType:I

.field private mWindowScaleFrom:F

.field private mWindowScaleTo:F

.field private mWindowStartOffset:I

.field private mWindowTranslateFrom:F

.field private mWindowTranslateTo:F


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationType:I

    .line 59
    iput-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 60
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationEnabled:I

    .line 61
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mTransitionScale:F

    .line 66
    iput-wide v4, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowDuration:J

    .line 68
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleFrom:F

    .line 69
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleTo:F

    .line 70
    iput v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateFrom:F

    .line 71
    iput v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateTo:F

    .line 72
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowFadeType:I

    .line 73
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowStartOffset:I

    .line 74
    iput-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    .line 79
    iput-wide v4, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewDuration:J

    .line 81
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleFrom:F

    .line 82
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleTo:F

    .line 83
    iput v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateFrom:F

    .line 84
    iput v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateTo:F

    .line 85
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewFadeType:I

    .line 86
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewStartOffset:I

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    .line 88
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewHeight:I

    .line 89
    iput-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    .line 90
    iput-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 92
    new-instance v0, Lcom/sec/android/app/contacts/AnimationAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/AnimationAdapter$1;-><init>(Lcom/sec/android/app/contacts/AnimationAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationType:I

    .line 59
    iput-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 60
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationEnabled:I

    .line 61
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mTransitionScale:F

    .line 66
    iput-wide v4, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowDuration:J

    .line 68
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleFrom:F

    .line 69
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleTo:F

    .line 70
    iput v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateFrom:F

    .line 71
    iput v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateTo:F

    .line 72
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowFadeType:I

    .line 73
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowStartOffset:I

    .line 74
    iput-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    .line 79
    iput-wide v4, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewDuration:J

    .line 81
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleFrom:F

    .line 82
    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleTo:F

    .line 83
    iput v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateFrom:F

    .line 84
    iput v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateTo:F

    .line 85
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewFadeType:I

    .line 86
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewStartOffset:I

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    .line 88
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewHeight:I

    .line 89
    iput-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    .line 90
    iput-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 92
    new-instance v0, Lcom/sec/android/app/contacts/AnimationAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/AnimationAdapter$1;-><init>(Lcom/sec/android/app/contacts/AnimationAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    .line 106
    if-nez p1, :cond_0

    .line 107
    const-string v0, "AnimationLoader"

    const-string v1, "Construct : Activity is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/AnimationAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/AnimationAdapter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/contacts/AnimationAdapter;->startAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/AnimationAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/AnimationAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    return-object v0
.end method

.method private getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;
    .locals 4
    .param p1, "fadeType"    # I
    .param p2, "duration"    # J

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 305
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 306
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 307
    return-object v0

    .line 305
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private getAlphaAnimation(IJF)Landroid/view/animation/AlphaAnimation;
    .locals 3
    .param p1, "fadeType"    # I
    .param p2, "duration"    # J
    .param p4, "alpha"    # F

    .prologue
    const/high16 v2, 0x3f800000

    .line 318
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 319
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 320
    return-object v0

    .line 318
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private getAlphaAnimation(IJI)Landroid/view/animation/AlphaAnimation;
    .locals 4
    .param p1, "fadeType"    # I
    .param p2, "duration"    # J
    .param p4, "startOffSet"    # I

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 311
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 312
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 313
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 314
    return-object v0

    .line 311
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private getDummyViewFromView(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x2

    .line 401
    if-nez p1, :cond_1

    move-object v2, v3

    .line 419
    :cond_0
    :goto_0
    return-object v2

    .line 403
    :cond_1
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 404
    .local v2, "rImage":Landroid/widget/ImageView;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 408
    .local v1, "drawingCache":Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    move-object v2, v3

    goto :goto_0

    .line 410
    :cond_2
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 411
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 412
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 414
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewHeight:I

    .line 415
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    .line 416
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method private getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;
    .locals 9
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "duration"    # J

    .prologue
    const/4 v5, 0x2

    const/high16 v6, 0x3f000000

    .line 324
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 327
    .local v0, "animation":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 328
    return-object v0
.end method

.method private getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;
    .locals 9
    .param p1, "type"    # I
    .param p2, "from"    # F
    .param p3, "to"    # F
    .param p4, "duration"    # J

    .prologue
    const/4 v2, 0x0

    .line 299
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v1, p1

    move v3, p1

    move v4, v2

    move v5, p1

    move v6, p2

    move v7, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 300
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 301
    return-object v0
.end method

.method private initValues(I)V
    .locals 9
    .param p1, "animationType"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    .line 133
    iput p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationType:I

    .line 136
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 137
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mTransitionScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "mWindowManager":Landroid/view/IWindowManager;
    :goto_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowDuration(J)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 143
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewDuration(J)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 144
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowStartOffset(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 145
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewStartOffset(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 146
    invoke-direct {p0, v4, v4}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowScale(FF)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 147
    invoke-direct {p0, v4, v4}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewScale(FF)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 148
    invoke-direct {p0, v5, v5}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowTranslate(FF)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 149
    invoke-direct {p0, v5, v5}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewTranslate(FF)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 150
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowFadeType(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 151
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewFadeType(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 153
    if-ne p1, v7, :cond_1

    .line 154
    const/high16 v2, 0x43550000

    iget v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowDuration(J)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 155
    const v2, 0x3f8ccccd

    invoke-direct {p0, v4, v2}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowScale(FF)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 156
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowFadeType(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 158
    const v2, 0x3f866666

    invoke-direct {p0, v4, v2}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewScale(FF)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 159
    const/high16 v2, 0x42c80000

    iget v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewDuration(J)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 160
    const/high16 v2, 0x42f00000

    iget v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewStartOffset(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 161
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewFadeType(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 172
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/AnimationAdapter;->setOverridePendingTransition(I)Z

    .line 173
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AnimationLoader"

    const-string v3, "can\'t access WindowManger for getAnimationScale"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    if-ne p1, v8, :cond_0

    .line 164
    const/high16 v2, 0x43480000

    iget v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowDuration(J)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 165
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/AnimationAdapter;->setWindowFadeType(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 167
    const/high16 v2, 0x43480000

    iget v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewDuration(J)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 168
    const/high16 v2, 0x42340000

    iget v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewStartOffset(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    .line 169
    invoke-direct {p0, v7}, Lcom/sec/android/app/contacts/AnimationAdapter;->setViewFadeType(I)Lcom/sec/android/app/contacts/AnimationAdapter;

    goto :goto_1
.end method

.method private setViewDuration(J)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 366
    iput-wide p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewDuration:J

    .line 367
    return-object p0
.end method

.method private setViewFadeType(I)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "fadeType"    # I

    .prologue
    .line 391
    iput p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewFadeType:I

    .line 392
    return-object p0
.end method

.method private setViewScale(FF)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "scaleFrom"    # F
    .param p2, "scaleTo"    # F

    .prologue
    .line 378
    iput p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleFrom:F

    .line 379
    iput p2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleTo:F

    .line 380
    return-object p0
.end method

.method private setViewStartOffset(I)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "startOffset"    # I

    .prologue
    .line 396
    iput p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewStartOffset:I

    .line 397
    return-object p0
.end method

.method private setViewTranslate(FF)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "translateFrom"    # F
    .param p2, "translateTo"    # F

    .prologue
    .line 385
    iput p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateFrom:F

    .line 386
    iput p2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateTo:F

    .line 387
    return-object p0
.end method

.method private setWindowDuration(J)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 332
    iput-wide p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowDuration:J

    .line 333
    return-object p0
.end method

.method private setWindowFadeType(I)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "fadeType"    # I

    .prologue
    .line 356
    iput p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowFadeType:I

    .line 357
    return-object p0
.end method

.method private setWindowScale(FF)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "scaleFrom"    # F
    .param p2, "scaleTo"    # F

    .prologue
    .line 344
    iput p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleFrom:F

    .line 345
    iput p2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleTo:F

    .line 346
    return-object p0
.end method

.method private setWindowStartOffset(I)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "startOffset"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowStartOffset:I

    .line 362
    return-object p0
.end method

.method private setWindowTranslate(FF)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 0
    .param p1, "translateFrom"    # F
    .param p2, "translateTo"    # F

    .prologue
    .line 350
    iput p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateFrom:F

    .line 351
    iput p2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateTo:F

    .line 352
    return-object p0
.end method

.method private startAnimation()Z
    .locals 14

    .prologue
    const/16 v13, 0x99

    const/high16 v12, 0x3f800000

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    if-nez v0, :cond_1

    move v1, v11

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationEnabled:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationEnabled:I

    if-nez v0, :cond_8

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 207
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 209
    .local v9, "WindowAnimationSet":Landroid/view/animation/AnimationSet;
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateFrom:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateTo:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_4

    .line 210
    :cond_3
    iget v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateFrom:F

    iget v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowTranslateTo:F

    iget-wide v4, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowDuration:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/AnimationAdapter;->getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 213
    :cond_4
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleFrom:F

    cmpl-float v0, v0, v12

    if-nez v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleTo:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_6

    .line 214
    :cond_5
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleFrom:F

    iget v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowScaleTo:F

    iget-wide v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowDuration:J

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sec/android/app/contacts/AnimationAdapter;->getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 216
    :cond_6
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowFadeType:I

    if-eqz v0, :cond_7

    .line 217
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowFadeType:I

    iget-wide v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowDuration:J

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/app/contacts/AnimationAdapter;->getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 219
    :cond_7
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 220
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindowStartOffset:I

    int-to-long v2, v0

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 221
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 226
    .end local v9    # "WindowAnimationSet":Landroid/view/animation/AnimationSet;
    :cond_8
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationEnabled:I

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/AnimationAdapter;->getDummyViewFromView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mDummyView:Landroid/view/View;

    if-nez v0, :cond_9

    move v1, v11

    .line 231
    goto :goto_0

    .line 232
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 234
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewHeight:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_b

    .line 235
    :cond_a
    const-string v0, "AnimationLoader"

    const-string v1, "WindowAnimation only play."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v11

    .line 236
    goto/16 :goto_0

    .line 238
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 239
    const-string v0, "AnimationLoader"

    const-string v1, "WindowAnimation only play."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v11

    .line 240
    goto/16 :goto_0

    .line 243
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 245
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationType:I

    if-ne v0, v1, :cond_d

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setId(I)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mDummyView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v3, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_d
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 254
    .local v8, "ViewAnimationSet":Landroid/view/animation/AnimationSet;
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateFrom:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_e

    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateTo:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_f

    .line 255
    :cond_e
    iget v4, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateFrom:F

    iget v5, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewTranslateTo:F

    iget-wide v6, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewDuration:J

    move-object v2, p0

    move v3, v11

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/contacts/AnimationAdapter;->getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 258
    :cond_f
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleFrom:F

    cmpl-float v0, v0, v12

    if-nez v0, :cond_10

    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleTo:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_11

    .line 259
    :cond_10
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleFrom:F

    iget v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewScaleTo:F

    iget-wide v3, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewDuration:J

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sec/android/app/contacts/AnimationAdapter;->getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 262
    :cond_11
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewFadeType:I

    if-eqz v0, :cond_12

    .line 263
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationType:I

    if-ne v0, v1, :cond_13

    .line 264
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewFadeType:I

    iget-wide v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewDuration:J

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/app/contacts/AnimationAdapter;->getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 269
    :cond_12
    :goto_1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 270
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewStartOffset:I

    int-to-long v2, v0

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 271
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 272
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 279
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v10, v0, :cond_14

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 279
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 266
    .end local v10    # "i":I
    :cond_13
    iget v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewFadeType:I

    iget-wide v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewDuration:J

    iget v4, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mViewStartOffset:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sec/android/app/contacts/AnimationAdapter;->getAlphaAnimation(IJI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 283
    :cond_14
    new-instance v0, Lcom/sec/android/app/contacts/AnimationAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/AnimationAdapter$2;-><init>(Lcom/sec/android/app/contacts/AnimationAdapter;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 293
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_1
    return-void
.end method

.method public setAnimation(Landroid/view/View;I)Lcom/sec/android/app/contacts/AnimationAdapter;
    .locals 2
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "animationType"    # I

    .prologue
    const/4 v1, 0x0

    .line 119
    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationEnabled:I

    .line 123
    iput-object p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mSelectedView:Landroid/view/View;

    .line 128
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/AnimationAdapter;->initValues(I)V

    .line 129
    return-object p0

    .line 126
    :cond_1
    iput v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationEnabled:I

    goto :goto_0
.end method

.method public bridge synthetic setAnimation(Landroid/view/View;I)Lcom/sec/android/app/contacts/IAnimationAdapter;
    .locals 1
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/AnimationAdapter;->setAnimation(Landroid/view/View;I)Lcom/sec/android/app/contacts/AnimationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setOverridePendingTransition(I)Z
    .locals 4
    .param p1, "animationType"    # I

    .prologue
    const/4 v3, 0x1

    .line 193
    if-ne p1, v3, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f050009

    const v2, 0x7f05000a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 197
    :cond_0
    :goto_0
    return v3

    .line 195
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f05000b

    const v2, 0x7f05000c

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public start()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 181
    iget v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationType:I

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/contacts/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method
