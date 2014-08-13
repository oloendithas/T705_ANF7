.class public Lcom/sec/android/app/contacts/widget/TutorialPopupView;
.super Landroid/widget/RelativeLayout;
.source "TutorialPopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/widget/TutorialPopupView$14;,
        Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;,
        Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;
    }
.end annotation


# static fields
.field private static final ANIMATIOT_START_OFFSET:I = 0x2bc

.field private static X:I

.field private static Y:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isSimAccountMode:Z

.field private mAnchor:Landroid/view/View;

.field private mArrowIndicator:Landroid/widget/ImageView;

.field private mArrowIndicatorWidth:I

.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mBubbleView:Landroid/view/View;

.field private mCircleSize:I

.field private mContainer:Landroid/view/View;

.field private mCurrentPointAnimation:I

.field private mIgnoreTouchEventOutOfIndicator:Z

.field private mIndicator:Landroid/widget/LinearLayout;

.field private mIndicatorCircle:Landroid/widget/ImageView;

.field private mIndicatorCircle2nd:Landroid/widget/ImageView;

.field private mIsMenu:Z

.field private mIsSmallWindow:Z

.field private mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

.field private mLeftPosition:I

.field private mMainView:Landroid/view/View;

.field private mOnIndicatorTouchListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

.field private mOnIndicatorTouchListenerSecond:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

.field private mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mTextGravity:I

.field private mTouchArea:Landroid/view/View;

.field private mTutorialTextContainer:Landroid/widget/LinearLayout;

.field private mTutorialTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->X:I

    .line 49
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->Y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    sget-object v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_BASIC:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "layoutType"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;
    .param p5, "anchorView"    # Landroid/view/View;

    .prologue
    const v5, 0x7f040213

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const-string v2, "TutorialPopupView"

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->TAG:Ljava/lang/String;

    .line 68
    iput v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I

    .line 73
    iput v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I

    .line 75
    iput v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    .line 76
    iput v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTextGravity:I

    .line 81
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    .line 82
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->isSimAccountMode:Z

    .line 84
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIsSmallWindow:Z

    .line 398
    new-instance v2, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$11;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 416
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIsMenu:Z

    .line 110
    iput-object p4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    .line 111
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 114
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v2, Lcom/sec/android/app/contacts/widget/TutorialPopupView$14;->$SwitchMap$com$sec$android$app$contacts$widget$TutorialPopupView$LAYOUT_TYPE:[I

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    if-nez v2, :cond_3

    .line 235
    const-string v2, "TutorialPopupView"

    const-string v3, "mMainView is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_1
    return-void

    .line 116
    :pswitch_0
    const v2, 0x7f040212

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$1;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 149
    :pswitch_1
    const v2, 0x7f040216

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    .line 150
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$2;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 182
    :pswitch_2
    const v2, 0x7f040215

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$3;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_QUICKCONTACT:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v2, v3, :cond_1

    .line 216
    const v2, 0x7f040214

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    .line 223
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$4;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v0, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    goto :goto_2

    .line 221
    :cond_2
    invoke-virtual {v0, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    goto :goto_2

    .line 239
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    const v3, 0x7f09047e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    const v3, 0x7f09047f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    const v3, 0x7f090486

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    const v3, 0x7f090480

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    .line 243
    const v2, 0x7f090489

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    .line 245
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    const v3, 0x7f090487

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTouchArea:Landroid/view/View;

    .line 247
    sget-object v2, Lcom/sec/android/app/contacts/widget/TutorialPopupView$14;->$SwitchMap$com$sec$android$app$contacts$widget$TutorialPopupView$LAYOUT_TYPE:[I

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 315
    :cond_4
    :goto_3
    iput-object p5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;

    .line 316
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    const v3, 0x7f090482

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleView:Landroid/view/View;

    .line 317
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    const v3, 0x7f090483

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextContainer:Landroid/widget/LinearLayout;

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    const v3, 0x7f090485

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    .line 320
    iget v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_4
    iput v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I

    .line 322
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02065e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicatorWidth:I

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 326
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$10;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 364
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->initAnimations()V

    goto/16 :goto_1

    .line 250
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTouchArea:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTouchArea:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$5;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3

    .line 265
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 266
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTouchArea:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$6;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTouchArea:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$7;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 290
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$8;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 301
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$9;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 320
    :cond_6
    iget v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I

    goto :goto_4

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 247
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "layoutType"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;
    .param p4, "anchorView"    # Landroid/view/View;

    .prologue
    .line 103
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutType"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mOnIndicatorTouchListenerSecond:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->Y:I

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->X:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/contacts/widget/TutorialPopupView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setArrow(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/widget/TutorialPopupView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$2008(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 420
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 421
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    .line 422
    .local v1, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 423
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIsMenu:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 424
    check-cast v3, Lcom/android/contacts/activities/PeopleActivity;

    iget-object v2, v3, Lcom/android/contacts/activities/PeopleActivity;->speedDialHelpMenu:Landroid/view/MenuItem;

    .line 425
    .local v2, "speedDialHelpMenu":Landroid/view/MenuItem;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 426
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIsMenu:Z

    .line 441
    .end local v2    # "speedDialHelpMenu":Landroid/view/MenuItem;
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 443
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "newEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void

    .line 428
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "newEvent":Landroid/view/MotionEvent;
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIsSmallWindow:Z

    if-eqz v3, :cond_2

    .line 430
    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 432
    :cond_2
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v4, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v3, v4, :cond_3

    .line 436
    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 438
    :cond_3
    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private getDefaultDisplayWidthPixels()I
    .locals 4

    .prologue
    .line 829
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 830
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 831
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 832
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method private initAnimations()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x2bc

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    .line 371
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f05000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 372
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f05000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f050010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f050011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f050012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f050008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    iget v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 396
    return-void
.end method

.method private setArrow(I)V
    .locals 6
    .param p1, "x"    # I

    .prologue
    const/16 v2, 0x3c

    const/16 v5, 0x11

    .line 583
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_6

    .line 584
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v4, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_CREATE_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v3, v4, :cond_5

    .line 585
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 588
    .local v1, "circleOffset":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iget v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicatorWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 596
    .local v0, "arrowOffset":I
    :goto_1
    if-ge v0, v2, :cond_1

    move v0, v2

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 600
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 602
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 603
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_QUICKCONTACT:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v2, v3, :cond_7

    .line 604
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 605
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 615
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 618
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_CREATE_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v2, v3, :cond_4

    .line 619
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setCircles(I)V

    .line 621
    :cond_4
    return-void

    .line 587
    .end local v0    # "arrowOffset":I
    .end local v1    # "circleOffset":I
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iget v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCircleSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .restart local v1    # "circleOffset":I
    goto :goto_0

    .line 591
    .end local v1    # "circleOffset":I
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 592
    .restart local v1    # "circleOffset":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iget v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicatorWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .restart local v0    # "arrowOffset":I
    goto/16 :goto_1

    .line 606
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_CREATE_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v2, v3, :cond_2

    .line 607
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    .line 610
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_QUICKCONTACT:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_CREATE_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v2, v3, :cond_2

    .line 611
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2
.end method

.method private setCircles(I)V
    .locals 5
    .param p1, "circleOffset"    # I

    .prologue
    const v4, 0x7f0c0194

    const/4 v3, 0x0

    .line 624
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 634
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method


# virtual methods
.method public dispatchActionMenu(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIsMenu:Z

    .line 447
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 967
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 969
    .local v0, "wm":Landroid/view/WindowManager;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 863
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 865
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorLeftPosition(I)V

    .line 866
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    .line 867
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorVisibility(Z)V

    .line 868
    iput v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I

    .line 869
    return-void
.end method

.method public setArrowVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 837
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    return-void

    .line 837
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setDynamicTopPosition()V
    .locals 2

    .prologue
    .line 466
    sget-object v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$14;->$SwitchMap$com$sec$android$app$contacts$widget$TutorialPopupView$LAYOUT_TYPE:[I

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 527
    :goto_0
    return-void

    .line 470
    :pswitch_0
    new-instance v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$12;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 490
    :pswitch_1
    new-instance v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView$13;-><init>(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIndicatorLeftPosition(I)V
    .locals 2
    .param p1, "left"    # I

    .prologue
    .line 562
    iput p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    .line 564
    sget-object v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$14;->$SwitchMap$com$sec$android$app$contacts$widget$TutorialPopupView$LAYOUT_TYPE:[I

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 577
    :goto_0
    return-void

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 568
    iget v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTextGravity:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    goto :goto_0

    .line 573
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setIndicatorSoundEffects(Z)V
    .locals 1
    .param p1, "setEffect"    # Z

    .prologue
    .line 553
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 559
    :cond_1
    return-void
.end method

.method public setIndicatorVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 844
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 845
    return-void

    .line 844
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setIsSmallWindow(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1064
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIsSmallWindow:Z

    .line 1065
    return-void
.end method

.method public setOnIndicatorTouchListener(Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    .line 849
    return-void
.end method

.method public setOnSecondIndicatorTouchListener(Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mOnIndicatorTouchListenerSecond:Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;

    .line 853
    return-void
.end method

.method public setSimAccountMode(Z)V
    .locals 0
    .param p1, "isSimAccountMode"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->isSimAccountMode:Z

    .line 88
    return-void
.end method

.method public setSoundDisable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 550
    :cond_1
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 459
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    return-void
.end method

.method public setTextGravity(I)V
    .locals 18
    .param p1, "gravity"    # I

    .prologue
    .line 637
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTextGravity:I

    .line 643
    sget-object v14, Lcom/sec/android/app/contacts/widget/TutorialPopupView$14;->$SwitchMap$com$sec$android$app$contacts$widget$TutorialPopupView$LAYOUT_TYPE:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 646
    :pswitch_0
    const v14, 0x7f090481

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 647
    .local v2, "bubbleContainer":Landroid/widget/LinearLayout;
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 649
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 653
    const v14, 0x7f090484

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 654
    .local v5, "indicatorContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 656
    .local v9, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v15, 0x0

    iput v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 657
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v15, 0x0

    iput v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 659
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->getDefaultDisplayWidthPixels()I

    move-result v4

    .line 660
    .local v4, "defaultDisplayWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0192

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 662
    .local v13, "widthOfIndicatorCircle":I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 669
    :sswitch_0
    const/16 v14, 0xe

    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 672
    div-int/lit8 v14, v4, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    div-int/lit8 v16, v13, 0x2

    add-int v15, v15, v16

    sub-int v6, v14, v15

    .line 673
    .local v6, "margin":I
    if-lez v6, :cond_2

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v15, v6, 0x2

    iput v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 664
    .end local v6    # "margin":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    iput v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 676
    .restart local v6    # "margin":I
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    div-int/lit8 v15, v13, 0x2

    add-int/2addr v14, v15

    div-int/lit8 v15, v4, 0x2

    sub-int v7, v14, v15

    .line 677
    .local v7, "padding":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v15, v6, -0x2

    iput v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 682
    .end local v6    # "margin":I
    .end local v7    # "padding":I
    :sswitch_2
    const/4 v14, 0x7

    const v15, 0x7f090483

    invoke-virtual {v9, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->getDefaultDisplayWidthPixels()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    add-int/2addr v15, v13

    sub-int v10, v14, v15

    .line 685
    .local v10, "rightMargin":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 693
    .end local v2    # "bubbleContainer":Landroid/widget/LinearLayout;
    .end local v4    # "defaultDisplayWidth":I
    .end local v5    # "indicatorContainer":Landroid/widget/LinearLayout;
    .end local v9    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "rightMargin":I
    .end local v13    # "widthOfIndicatorCircle":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextContainer:Landroid/widget/LinearLayout;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 694
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_0

    .line 695
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    div-int/lit8 v15, v15, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c01b1

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    iput v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 701
    :pswitch_2
    const v14, 0x7f090483

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 702
    .local v11, "textContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 703
    .local v12, "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    .line 716
    :sswitch_3
    const v14, 0x7f090481

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 717
    .restart local v2    # "bubbleContainer":Landroid/widget/LinearLayout;
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 718
    const v14, 0x7f090484

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 719
    .restart local v5    # "indicatorContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 720
    .restart local v9    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xe

    invoke-virtual {v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    iput v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v15, 0x0

    iput v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 724
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v15, 0x0

    iput v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 726
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v15, :cond_0

    .line 728
    const/4 v14, 0x0

    iput v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 705
    .end local v2    # "bubbleContainer":Landroid/widget/LinearLayout;
    .end local v5    # "indicatorContainer":Landroid/widget/LinearLayout;
    .end local v9    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c01ad

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v15, :cond_0

    .line 710
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c01b0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 732
    :sswitch_5
    const v14, 0x7f090484

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 733
    .local v8, "param":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0192

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 734
    .local v3, "circleWidth":I
    const/4 v14, 0x7

    const v15, 0x7f090483

    invoke-virtual {v8, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->getDefaultDisplayWidthPixels()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    add-int/2addr v15, v3

    sub-int v10, v14, v15

    .line 737
    .restart local v10    # "rightMargin":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 662
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch

    .line 703
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_4
        0x5 -> :sswitch_5
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method public setTextGravityNoPadding(I)V
    .locals 17
    .param p1, "gravity"    # I

    .prologue
    .line 745
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTextGravity:I

    .line 752
    const v13, 0x7f090481

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 753
    .local v3, "bubbleContainer":Landroid/widget/LinearLayout;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 755
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 759
    const v13, 0x7f090484

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 760
    .local v5, "indicatorContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 762
    .local v9, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v14, 0x0

    iput v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 763
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v14, 0x0

    iput v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->getDefaultDisplayWidthPixels()I

    move-result v4

    .line 766
    .local v4, "defaultDisplayWidth":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0192

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 768
    .local v12, "widthOfIndicatorCircle":I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 775
    :sswitch_0
    const/16 v13, 0xe

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 777
    div-int/lit8 v13, v4, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    div-int/lit8 v15, v12, 0x2

    add-int/2addr v14, v15

    sub-int v6, v13, v14

    .line 779
    .local v6, "margin":I
    if-lez v6, :cond_2

    .line 780
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v14, v6, 0x2

    iput v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 770
    .end local v6    # "margin":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    iput v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 782
    .restart local v6    # "margin":I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    div-int/lit8 v14, v12, 0x2

    add-int/2addr v13, v14

    div-int/lit8 v14, v4, 0x2

    sub-int v8, v13, v14

    .line 784
    .local v8, "padding":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v14, v6, -0x2

    iput v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 791
    .end local v6    # "margin":I
    .end local v8    # "padding":I
    :sswitch_2
    const v13, 0x7f090483

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 792
    .local v11, "textContainer":Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 794
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->isSimAccountMode:Z

    if-eqz v13, :cond_3

    .line 795
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 797
    .local v2, "aLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c01b4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 799
    .local v7, "margin_left_sim":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v7, v13, v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 800
    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    const/16 v13, 0x12

    const v14, 0x7f090483

    invoke-virtual {v9, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 805
    .end local v2    # "aLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "margin_left_sim":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v14, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_WRITINGBUDDY:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v13, v14, :cond_5

    .line 806
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_4

    .line 807
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    div-int/lit8 v13, v13, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c01b1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int v10, v13, v14

    .line 817
    .local v10, "rightMargin":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_6

    .line 818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 803
    .end local v10    # "rightMargin":I
    :cond_3
    const/4 v13, 0x7

    const v14, 0x7f090483

    invoke-virtual {v9, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 810
    :cond_4
    div-int/lit8 v13, v4, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    div-int/lit8 v15, v12, 0x2

    add-int/2addr v14, v15

    sub-int v10, v13, v14

    .restart local v10    # "rightMargin":I
    goto :goto_2

    .line 814
    .end local v10    # "rightMargin":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->getDefaultDisplayWidthPixels()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLeftPosition:I

    add-int/2addr v14, v12

    sub-int v10, v13, v14

    .restart local v10    # "rightMargin":I
    goto :goto_2

    .line 820
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 768
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 463
    return-void
.end method

.method public setTextViewGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 451
    return-void
.end method

.method public setTextViewVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 841
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 842
    return-void

    .line 841
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTopPostion(I)V
    .locals 3
    .param p1, "top"    # I

    .prologue
    const/4 v2, 0x0

    .line 530
    sget-object v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView$14;->$SwitchMap$com$sec$android$app$contacts$widget$TutorialPopupView$LAYOUT_TYPE:[I

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 541
    :goto_0
    return-void

    .line 532
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 538
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchableArea(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 860
    return-void
.end method

.method public setVisibilityPopupView(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    return-void

    .line 1060
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 872
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    .line 874
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 875
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 876
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 899
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 881
    :cond_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 882
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 883
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 884
    const/16 v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 885
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 886
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 889
    :cond_1
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 890
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 891
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 892
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 893
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 894
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 895
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 898
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 5
    .param p1, "ignoreTouchEventOutOfIndicator"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 902
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    .line 904
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 905
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 906
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 907
    const/16 v2, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 908
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 909
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 912
    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 913
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 914
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 915
    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 916
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 917
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 919
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 920
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 923
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 924
    return-void
.end method

.method public showWithUntouchable(Z)V
    .locals 7
    .param p1, "ignoreTouchEventOutOfIndicator"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 928
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    .line 930
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 931
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 932
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 964
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 937
    :cond_0
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 938
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 939
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 940
    const/16 v4, 0x18

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 942
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 943
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 946
    :cond_1
    const/4 v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 947
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 948
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 949
    const/16 v4, 0x33

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 950
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x100000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 951
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 953
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 955
    .local v3, "wm":Landroid/view/WindowManager;
    :try_start_0
    invoke-interface {v3, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 962
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    iget v6, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mCurrentPointAnimation:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 963
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 956
    :catch_0
    move-exception v1

    .line 957
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 958
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 959
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public showWithUntouchableWithoutCir(Z)V
    .locals 7
    .param p1, "ignoreTouchEventOutOfIndicator"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 1021
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    .line 1023
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 1024
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1025
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1057
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 1030
    :cond_0
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1031
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1032
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1033
    const/16 v4, 0x18

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1035
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1036
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1039
    :cond_1
    const/4 v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1040
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1041
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1042
    const/16 v4, 0x33

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1043
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x100000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1044
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 1046
    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorVisibility(Z)V

    .line 1047
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1049
    .local v3, "wm":Landroid/view/WindowManager;
    :try_start_0
    invoke-interface {v3, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1056
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v1

    .line 1051
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1052
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1053
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public showWithoutCir(Z)V
    .locals 8
    .param p1, "ignoreTouchEventOutOfIndicator"    # Z

    .prologue
    const v7, 0x7f0c01d2

    const v6, 0x7f0c0106

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 975
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    .line 977
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 978
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 979
    const/16 v2, 0x18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 981
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 982
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 985
    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 986
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 987
    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 988
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 990
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mIsSmallWindow:Z

    if-eqz v2, :cond_1

    .line 992
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->getDefaultDisplayWidthPixels()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 994
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 996
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1011
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 1012
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorVisibility(Z)V

    .line 1013
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1014
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1017
    return-void

    .line 999
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->mLayoutType:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    sget-object v3, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    if-ne v2, v3, :cond_2

    .line 1002
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1004
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->getDefaultDisplayWidthPixels()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 1007
    :cond_2
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1008
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method
