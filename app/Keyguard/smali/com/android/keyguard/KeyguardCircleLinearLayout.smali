.class public Lcom/android/keyguard/KeyguardCircleLinearLayout;
.super Landroid/widget/FrameLayout;
.source "KeyguardCircleLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;
    }
.end annotation


# instance fields
.field private animBigCircle:Landroid/view/animation/Animation;

.field private animSideButton:Landroid/view/animation/Animation;

.field private coreView:Landroid/widget/FrameLayout;

.field private enablePosition:[[I

.field private mBigCircle:Landroid/widget/ImageView;

.field private mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

.field private mChildViewNumber:I

.field private mCount:I

.field private mExpandButton:[Landroid/widget/FrameLayout;

.field private mExpandLayout:Landroid/widget/FrameLayout;

.field private mFirstBorder:D

.field private mPosStartX:I

.field private mPosStartY:I

.field private mPositionButton:[[I

.field private mSecondBorder:D

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

.field final scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardCircleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardCircleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x3

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->scale:F

    .line 62
    new-array v0, v1, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    .line 66
    const/4 v0, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->enablePosition:[[I

    .line 89
    return-void
.end method

.method private PressButton(I)V
    .registers 4
    .param p1, "num"    # I

    .prologue
    .line 300
    if-ltz p1, :cond_10

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mChildViewNumber:I

    if-ge p1, v0, :cond_10

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;->Unlock(Landroid/widget/FrameLayout;)V

    .line 307
    :goto_f
    return-void

    .line 302
    :cond_10
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1b

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;->Unlock(Landroid/widget/FrameLayout;)V

    goto :goto_f

    .line 305
    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;->Unlock(Landroid/widget/FrameLayout;)V

    goto :goto_f
.end method

.method private SetCoreView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    new-instance v0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;-><init>(Lcom/android/keyguard/KeyguardCircleLinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    :cond_11
    return-void
.end method

.method private SetSideView(Landroid/view/View;III)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "num"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "SelectView":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    aget-object v0, v2, p4

    .line 266
    if-eqz v0, :cond_1b

    .line 267
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 268
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 269
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 270
    invoke-virtual {v1, p2, v4, v4, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1b
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardCircleLinearLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartX:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCircleLinearLayout;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartX:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardCircleLinearLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartY:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCircleLinearLayout;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartY:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCircleLinearLayout;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->PressButton(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardCircleLinearLayout;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mSecondBorder:D

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardCircleLinearLayout;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mFirstBorder:D

    return-wide v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 154
    const v1, 0x7f0b00a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    .local v0, "tv":Landroid/widget/TextView;
    iget v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mChildViewNumber:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1a

    .line 156
    if-eqz v0, :cond_16

    .line 157
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->SetCoreView(Landroid/view/View;)V

    .line 168
    :goto_19
    return-void

    .line 161
    :cond_1a
    if-eqz v0, :cond_1f

    .line 162
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_1f
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    aget-object v1, v1, v2

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    iget v3, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->SetSideView(Landroid/view/View;III)V

    .line 166
    iget v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    goto :goto_19
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 94
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    .line 96
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    .line 97
    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandLayout:Landroid/widget/FrameLayout;

    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->animBigCircle:Landroid/view/animation/Animation;

    .line 100
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->animSideButton:Landroid/view/animation/Animation;

    .line 102
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mFirstBorder:D

    .line 103
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mSecondBorder:D

    .line 105
    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mBigCircle:Landroid/widget/ImageView;

    .line 106
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v2

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v2

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v3

    .line 110
    const/4 v0, 0x3

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    .line 112
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 113
    return-void
.end method

.method public setButtonPosition(III)V
    .registers 6
    .param p1, "num"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 145
    return-void
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    .line 311
    return-void
.end method
