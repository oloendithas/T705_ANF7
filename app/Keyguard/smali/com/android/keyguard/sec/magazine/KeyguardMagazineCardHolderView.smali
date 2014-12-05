.class public Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMagazineCardHolderView.java"


# instance fields
.field private final CARD_FADING_ANIM_DURATION:I

.field private final CARD_FADING_ANIM_START_DELAY:I

.field private final CARD_RESIZE_ANIM_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private mCardFadingAnimator:Landroid/animation/ValueAnimator;

.field private mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

.field private mCardResizeAnimator:Landroid/animation/ValueAnimator;

.field private mExpandedCard:Landroid/view/View;

.field private mIsAnimating:Z

.field private mIsCardSelected:Z

.field private mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

.field private mNormalCard:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xfa

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v0, "KeyguardMagazineCardHolderView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->TAG:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_RESIZE_ANIM_DURATION:I

    .line 49
    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_DURATION:I

    .line 50
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_START_DELAY:I

    .line 53
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    .line 54
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 55
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    .line 56
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    .line 58
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    .line 61
    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0xfa

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-string v0, "KeyguardMagazineCardHolderView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->TAG:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_RESIZE_ANIM_DURATION:I

    .line 49
    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_DURATION:I

    .line 50
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_START_DELAY:I

    .line 53
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    .line 54
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 55
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    .line 56
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    .line 58
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    .line 61
    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    .line 71
    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "KeyguardMagazineCardHolderView(context, attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v3, 0xfa

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const-string v0, "KeyguardMagazineCardHolderView"

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->TAG:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_RESIZE_ANIM_DURATION:I

    .line 49
    iput v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_DURATION:I

    .line 50
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->CARD_FADING_ANIM_START_DELAY:I

    .line 53
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    .line 54
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 55
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    .line 56
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    .line 58
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    .line 61
    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    .line 77
    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "KeyguardMagazineCardHolderView(context, attrs, defStyle)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->init()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->setCardScale(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->startCardFadeAnim(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    return p1
.end method

.method private createChildren(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V
    .registers 7
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .prologue
    .line 276
    if-nez p1, :cond_a

    .line 277
    const-string v3, "KeyguardMagazineCardHolderView"

    const-string v4, "Card is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_9
    :goto_9
    return-void

    .line 281
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    iget-object v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget-object v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 286
    iput-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    .line 289
    iget-object v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget-object v3, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_9

    .line 290
    iget-object v3, p1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget-object v0, v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    .line 291
    .local v0, "expanded":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "expandedView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    .line 294
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method

.method private expandAnimation()V
    .registers 3

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->stopAnimation()V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsAnimating:Z

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->startCardResizeAnim(Landroid/view/View;Landroid/view/View;)V

    .line 500
    return-void
.end method

.method private init()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method private setCardScale(Z)V
    .registers 5
    .param p1, "isScaleDown"    # Z

    .prologue
    .line 260
    const-string v1, "KeyguardMagazineCardHolderView"

    const-string v2, "setCardScale"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/high16 v0, 0x3f800000

    .line 264
    .local v0, "scale":F
    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    .line 265
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 266
    const v0, 0x3f666666

    .line 271
    :cond_15
    :goto_15
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 272
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 273
    return-void

    .line 268
    :cond_1c
    const v0, 0x3f70a3d7

    goto :goto_15
.end method

.method private startCardFadeAnim(Landroid/view/View;Landroid/view/View;)V
    .registers 8
    .param p1, "currentView"    # Landroid/view/View;
    .param p2, "nextView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 375
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 376
    const/high16 v2, 0x3f800000

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 377
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 380
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_4a

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 381
    .local v1, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    .line 384
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$5;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 396
    new-instance v2, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$6;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 426
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 427
    new-instance v2, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 428
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 429
    return-void

    .line 380
    :array_4a
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private startCardResizeAnim(Landroid/view/View;Landroid/view/View;)V
    .registers 12
    .param p1, "currentView"    # Landroid/view/View;
    .param p2, "resizedView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 301
    .local v1, "initHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    .local v3, "resizedHeight":I
    const-string v4, "resizeY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    int-to-float v6, v1

    aput v6, v5, v7

    int-to-float v6, v3

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 304
    .local v2, "pvhTr":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 305
    const/high16 v4, 0x3f800000

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 306
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 307
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 309
    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    .line 312
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut90;

    invoke-direct {v4}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    new-instance v4, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$3;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    new-instance v4, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$4;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 370
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 371
    return-void
.end method

.method private stopAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 513
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 514
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardResizeAnimator:Landroid/animation/ValueAnimator;

    .line 517
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    .line 518
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 519
    iput-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardFadingAnimator:Landroid/animation/ValueAnimator;

    .line 521
    :cond_17
    return-void
.end method


# virtual methods
.method public build(Lcom/samsung/android/magazinecard/MagazineCardRecord;Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V
    .registers 4
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .param p2, "mainView"    # Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    .prologue
    .line 210
    iput-object p2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    .line 211
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    .line 213
    new-instance v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$2;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->createChildren(Lcom/samsung/android/magazinecard/MagazineCardRecord;)V

    .line 253
    return-void
.end method

.method public collapseCard()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f800000

    .line 129
    const-string v0, "KeyguardMagazineCardHolderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collapseCard : RID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v2, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpanded()Z

    move-result v0

    if-nez v0, :cond_25

    .line 146
    :cond_24
    :goto_24
    return-void

    .line 135
    :cond_25
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->stopAnimation()V

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 142
    :cond_38
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    if-eqz v0, :cond_24

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mNormalCard:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_24
.end method

.method public expandCard()V
    .registers 5

    .prologue
    .line 114
    const-string v1, "KeyguardMagazineCardHolderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expandCard : RID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->isCardExpanded()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 126
    :cond_27
    :goto_27
    return-void

    .line 120
    :cond_28
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getFocusedCard()Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    move-result-object v0

    .line 121
    .local v0, "focused":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;
    if-eqz v0, :cond_35

    if-eq v0, p0, :cond_35

    .line 122
    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->restoreDefaultCardState()V

    .line 125
    :cond_35
    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->expandAnimation()V

    goto :goto_27
.end method

.method public getCardCategory()I
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v0, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    if-nez v0, :cond_14

    .line 99
    :cond_a
    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "getCardCategory : record is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NONE:I

    .line 102
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v0, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget v0, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    goto :goto_13
.end method

.method public getCardRecordId()I
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-nez v0, :cond_d

    .line 87
    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "getRecordId : record is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, -0x1

    .line 90
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v0, v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    goto :goto_c
.end method

.method public isCardExpandable()Z
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isCardExpanded()Z
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mExpandedCard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isCardScaleDown()Z
    .registers 3

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public restoreDefaultCardState()V
    .registers 3

    .prologue
    .line 157
    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "restoreDefaultCardState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->setCardScale(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->collapseCard()V

    .line 160
    return-void
.end method

.method public unlockAndLaunchApplication()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 163
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget-object v1, v1, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    if-nez v1, :cond_14

    .line 164
    :cond_b
    const-string v0, "KeyguardMagazineCardHolderView"

    const-string v1, "unlockAndLaunchApplication : record or card is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    .line 206
    :cond_13
    :goto_13
    return v0

    .line 168
    :cond_14
    const-string v1, "KeyguardMagazineCardHolderView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockAndLaunchApplication : RID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;

    iget v3, v3, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    if-eqz v1, :cond_13

    .line 171
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    new-instance v2, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;-><init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setOnKeyguardDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    .line 197
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 198
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->showBouncer(Z)V

    goto :goto_13

    .line 200
    :cond_4e
    iget-object v1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mMainView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->getKeyguardHostView()Lcom/android/keyguard/KeyguardHostView;

    move-result-object v1

    const/16 v2, 0xfa

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/KeyguardHostView;->showBouncerFrameOnly(ZI)V

    .line 201
    iput-boolean v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z

    goto :goto_13
.end method
