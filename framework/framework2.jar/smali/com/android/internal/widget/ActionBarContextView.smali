.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field private mIsActionBarNonExtended:Z

.field private mIsExtendActionBar:Z

.field private mIsExtendedActionBarContextView:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mIsStatusbarVisible:Z

.field private mIsgetScrollingTabExtended:Z

.field private mOldActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mOldContentHeight:I

.field private mOldContentWidth:I

.field private mOldPaddingLeft:I

.field private mOldPaddingRight:I

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mWM:Landroid/view/WindowManager;

.field private mWindow:Landroid/view/Window;

.field private mWindowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mOldContentWidth:I

    .line 108
    iput-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsActionBarNonExtended:Z

    .line 110
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mWM:Landroid/view/WindowManager;

    .line 111
    iput v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mWindowHeight:I

    .line 130
    sget-object v4, Lcom/android/internal/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 135
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 138
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 141
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 148
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101046e

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 149
    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_53

    .line 150
    iput-boolean v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    .line 155
    :cond_53
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_67

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_67

    .line 156
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mWindow:Landroid/view/Window;

    .line 158
    :cond_67
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mWM:Landroid/view/WindowManager;

    .line 159
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mWM:Landroid/view/WindowManager;

    if-eqz v4, :cond_88

    .line 160
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 161
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 162
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mWindowHeight:I

    .line 164
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_88
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mStatusHeight:I

    .line 165
    iget v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iget v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mStatusHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentMaxHeight:I

    .line 166
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsExtendActionBar:Z

    .line 167
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 168
    .local v3, "outValue2":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010466

    invoke-virtual {v4, v5, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 169
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_c6

    .line 170
    iput-boolean v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsActionBarNonExtended:Z

    .line 171
    :cond_c6
    iput-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsExtendedActionBarContextView:Z

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarContextView;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarContextView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private finishAnimation()V
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 524
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_a

    .line 525
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 526
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 528
    :cond_a
    return-void
.end method

.method private initClose()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 324
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v3, :cond_63

    .line 325
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 327
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_59

    .line 328
    const v3, 0x10900e4

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 333
    :goto_19
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 339
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Landroid/view/View;->getHoverUIFeatureLevel()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_29

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_2e

    .line 340
    :cond_29
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 344
    :cond_2e
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v4, 0x10202ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 346
    .local v1, "closeButton":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_43

    .line 347
    new-instance v3, Lcom/android/internal/widget/ActionBarContextView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    :cond_43
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_58

    move-object v3, v1

    .line 356
    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 357
    .local v0, "childCount":I
    if-gt v0, v5, :cond_58

    .line 359
    new-instance v3, Lcom/android/internal/widget/ActionBarContextView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ActionBarContextView$2;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 389
    .end local v0    # "childCount":I
    :cond_58
    return-void

    .line 330
    .end local v1    # "closeButton":Landroid/view/View;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_59
    const v3, 0x109001f

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    goto :goto_19

    .line 334
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_63
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 335
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1e
.end method

.method private initTitle()V
    .registers 10

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 296
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_58

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 298
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109001a

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 299
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 300
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x10202cc

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 301
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x10202cd

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 302
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_4b

    .line 303
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 305
    :cond_4b
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_58

    .line 306
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 310
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_58
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_98

    move v1, v4

    .line 314
    .local v1, "hasTitle":Z
    :goto_6f
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9a

    move v0, v4

    .line 315
    .local v0, "hasSubtitle":Z
    :goto_78
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9c

    move v3, v5

    :goto_7d
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_86

    if-eqz v0, :cond_87

    :cond_86
    move v6, v5

    :cond_87
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_97

    .line 318
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 320
    :cond_97
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_98
    move v1, v5

    .line 313
    goto :goto_6f

    .restart local v1    # "hasTitle":Z
    :cond_9a
    move v0, v5

    .line 314
    goto :goto_78

    .restart local v0    # "hasSubtitle":Z
    :cond_9c
    move v3, v6

    .line 315
    goto :goto_7d
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 733
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v10, v8

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v10, v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 735
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 736
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 737
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 738
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 740
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 741
    .local v7, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 743
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v8, :cond_76

    .line 744
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 745
    .local v4, "count":I
    if-lez v4, :cond_76

    .line 746
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_51
    if-ltz v5, :cond_76

    .line 747
    iget-object v8, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 748
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 749
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_78

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 750
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 751
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 746
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 756
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_76
    return-object v7

    .line 749
    nop

    :array_78
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 760
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    new-array v10, v14, [F

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v11, v7

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v11, v7

    int-to-float v7, v7

    aput v7, v10, v13

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 762
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0xc8

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 763
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 764
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 766
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 767
    .local v6, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 769
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v7, :cond_6b

    .line 770
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 771
    .local v4, "count":I
    if-lez v4, :cond_6b

    .line 772
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4a
    if-gez v5, :cond_6b

    .line 773
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 774
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 775
    const-string/jumbo v7, "scaleY"

    new-array v8, v14, [F

    aput v12, v8, v13

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 776
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 777
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 772
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 782
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_6b
    return-object v6
.end method


# virtual methods
.method public closeMode()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 507
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_6

    .line 520
    :goto_5
    return-void

    .line 511
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_e

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_5

    .line 516
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 517
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 518
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 519
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_5
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 569
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 574
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 554
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .registers 15
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 393
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v6, :cond_ba

    .line 394
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 396
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v6, :cond_af

    .line 397
    const v6, 0x10900e4

    invoke-virtual {v3, v6, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 402
    :goto_1b
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_20
    :goto_20
    invoke-virtual {p0}, Landroid/view/View;->getHoverUIFeatureLevel()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2b

    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v6, :cond_30

    .line 409
    :cond_2b
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setHoverPopupType(I)V

    .line 414
    :cond_30
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMode:Landroid/view/ActionMode;

    .line 417
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v7, 0x10202ce

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 418
    .local v2, "closeButton":Landroid/view/View;
    new-instance v6, Lcom/android/internal/widget/ActionBarContextView$3;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$3;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    if-eqz v6, :cond_58

    move-object v6, v2

    .line 426
    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 427
    .local v1, "childCount":I
    if-gt v1, v9, :cond_58

    .line 429
    new-instance v6, Lcom/android/internal/widget/ActionBarContextView$4;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ActionBarContextView$4;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 469
    .end local v1    # "childCount":I
    :cond_58
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/R$styleable;->ActionMode:[I

    const v8, 0x1010394

    invoke-virtual {v6, v12, v7, v8, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 470
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 471
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 474
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuBuilder;

    .line 475
    .local v5, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v6, :cond_7b

    .line 476
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 478
    :cond_7b
    new-instance v6, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 479
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v9}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 481
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 483
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v6, :cond_c9

    .line 484
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 485
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 486
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v6, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    :goto_ac
    iput-boolean v9, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 504
    return-void

    .line 399
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "closeButton":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_af
    const v6, 0x109001f

    invoke-virtual {v3, v6, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    goto/16 :goto_1b

    .line 403
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_ba
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_20

    .line 404
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_20

    .line 490
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "closeButton":Landroid/view/View;
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_c9
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7, v9}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 493
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v7, 0x7fffffff

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 495
    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 496
    iget v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 497
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 498
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 499
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v6, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 560
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 562
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isTitleOptional()Z
    .registers 2

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 531
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 532
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_12

    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 536
    :cond_12
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 537
    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 539
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 840
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 832
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 833
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 835
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 836
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 844
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 828
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 180
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_15

    .line 181
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 183
    :cond_15
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 185
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initClose()V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 189
    .local v1, "vp":Landroid/view/ViewParent;
    if-eqz v1, :cond_57

    instance-of v2, v1, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_57

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsExtendActionBar:Z

    if-eqz v2, :cond_57

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsActionBarNonExtended:Z

    if-nez v2, :cond_57

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 193
    iput-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsExtendedActionBarContextView:Z

    .line 194
    iget v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iget v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mStatusHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentMaxHeight:I

    .line 196
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mWM:Landroid/view/WindowManager;

    if-eqz v2, :cond_57

    .line 197
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 198
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 199
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mWindowHeight:I

    .line 203
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_57
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_11

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 214
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_22

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 217
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 219
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 853
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    .line 855
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 857
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 862
    :goto_26
    return-void

    .line 860
    :cond_27
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_26
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 787
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v5

    .line 788
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_b7

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 789
    .local v2, "x":I
    :goto_e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 790
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 792
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_62

    .line 793
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 794
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_bd

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 795
    .local v14, "startMargin":I
    :goto_39
    if-eqz v5, :cond_c1

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 796
    .local v12, "endMargin":I
    :goto_3d
    invoke-static {v2, v14, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 797
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 798
    invoke-static {v2, v12, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 800
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_62

    .line 801
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 802
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->makeInAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 803
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 808
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_62
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7c

    .line 809
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 812
    :cond_7c
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_88

    .line 813
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 816
    :cond_88
    if-eqz v5, :cond_c5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 818
    :goto_8e
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_b6

    .line 819
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mIsExtendedActionBarContextView:Z

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_d0

    .line 820
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v9, 0x0

    if-nez v5, :cond_ce

    const/4 v11, 0x1

    :goto_ae
    move-object v6, p0

    move v8, v2

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 824
    :cond_b6
    :goto_b6
    return-void

    .line 788
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_b7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_e

    .line 794
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_bd
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_39

    .line 795
    .restart local v14    # "startMargin":I
    :cond_c1
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_3d

    .line 816
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_c5
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_8e

    .line 820
    :cond_ce
    const/4 v11, 0x0

    goto :goto_ae

    .line 822
    :cond_d0
    iget-object v7, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-nez v5, :cond_df

    const/4 v11, 0x1

    :goto_d5
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_b6

    :cond_df
    const/4 v11, 0x0

    goto :goto_d5
.end method

.method protected onMeasure(II)V
    .registers 36
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 588
    const/16 v16, 0x0

    .line 589
    .local v16, "isKitKatUi":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mIsExtendActionBar:Z

    move/from16 v29, v0

    if-eqz v29, :cond_11f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mIsActionBarNonExtended:Z

    move/from16 v29, v0

    if-nez v29, :cond_11f

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mWindow:Landroid/view/Window;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7e

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mWindow:Landroid/view/Window;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v28

    .line 592
    .local v28, "winLp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v28, :cond_153

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x400

    move/from16 v29, v0

    if-nez v29, :cond_153

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v29, v0

    if-ltz v29, :cond_76

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mWindowHeight:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_76

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    if-nez v29, :cond_153

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v29, v0

    shr-int/lit8 v29, v29, 0x4

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_153

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v29, v0

    shr-int/lit8 v29, v29, 0x4

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_153

    .line 596
    :cond_76
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarContextView;->mIsStatusbarVisible:Z

    .line 601
    .end local v28    # "winLp":Landroid/view/WindowManager$LayoutParams;
    :cond_7e
    :goto_7e
    const/16 v20, 0x0

    .line 602
    .local v20, "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v29, v0

    if-eqz v29, :cond_15d

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    check-cast v29, Landroid/app/Activity;

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    .line 608
    :cond_9a
    :goto_9a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    move/from16 v29, v0

    if-eqz v29, :cond_177

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mIsStatusbarVisible:Z

    move/from16 v29, v0

    if-eqz v29, :cond_177

    if-eqz v20, :cond_177

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    if-nez v29, :cond_177

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v29

    const/high16 v30, 0x40000000

    and-int v29, v29, v30

    const/high16 v30, 0x40000000

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_177

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    if-eqz v29, :cond_177

    .line 612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarContextView;->mOldContentHeight:I

    .line 613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentMaxHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 615
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarContextView;->mOldPaddingLeft:I

    .line 616
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarContextView;->mOldPaddingRight:I

    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldPaddingLeft:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mStatusHeight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldPaddingRight:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 619
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarContextView;->mIsExtendedActionBarContextView:Z

    .line 637
    .end local v20    # "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_11f
    :goto_11f
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    .line 638
    .local v27, "widthMode":I
    const/high16 v29, 0x40000000

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_1b2

    .line 639
    new-instance v29, Ljava/lang/IllegalStateException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " can only be used "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 598
    .end local v27    # "widthMode":I
    .restart local v28    # "winLp":Landroid/view/WindowManager$LayoutParams;
    :cond_153
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarContextView;->mIsStatusbarVisible:Z

    goto/16 :goto_7e

    .line 604
    .end local v28    # "winLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v20    # "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/content/ContextWrapper;

    move/from16 v29, v0

    if-eqz v29, :cond_9a

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    goto/16 :goto_9a

    .line 626
    :cond_177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mIsExtendedActionBarContextView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_11f

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldContentHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldPaddingLeft:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldPaddingRight:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 632
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarContextView;->mIsExtendedActionBarContextView:Z

    goto/16 :goto_11f

    .line 643
    .end local v20    # "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v27    # "widthMode":I
    :cond_1b2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 644
    .local v14, "heightMode":I
    if-nez v14, :cond_1e0

    .line 645
    new-instance v29, Ljava/lang/IllegalStateException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " can only be used "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 649
    :cond_1e0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 652
    .local v7, "contentWidth":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    move/from16 v29, v0

    if-nez v29, :cond_22d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mIsParentThemeDeviceDefault:Z

    move/from16 v29, v0

    if-eqz v29, :cond_22d

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_210

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldContentWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v7, :cond_22d

    .line 654
    :cond_210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ActionBarContextView;->mOldActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 655
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/widget/ActionBarContextView;->mOldContentWidth:I

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v29, v0

    div-int/lit8 v30, v7, 0x2

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateWidthLimit(IZ)V

    .line 661
    :cond_22d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v29, v0

    if-lez v29, :cond_3b2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v18, v0

    .line 664
    .local v18, "maxHeight":I
    :goto_23b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v30

    add-int v26, v29, v30

    .line 665
    .local v26, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v29

    sub-int v29, v7, v29

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v30

    sub-int v5, v29, v30

    .line 666
    .local v5, "availableWidth":I
    sub-int v13, v18, v26

    .line 667
    .local v13, "height":I
    const/high16 v29, -0x80000000

    move/from16 v0, v29

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 669
    .local v6, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2a3

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 672
    .local v17, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v29, v29, v30

    sub-int v5, v5, v29

    .line 682
    .end local v17    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2cd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_2cd

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 687
    :cond_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    if-eqz v29, :cond_31f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v29, v0

    if-nez v29, :cond_31f

    .line 688
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3c0

    .line 689
    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 690
    .local v24, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->measure(II)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 692
    .local v23, "titleWidth":I
    move/from16 v0, v23

    if-gt v0, v5, :cond_3b8

    const/16 v22, 0x1

    .line 693
    .local v22, "titleFits":Z
    :goto_30a
    if-eqz v22, :cond_30e

    .line 694
    sub-int v5, v5, v23

    .line 696
    :cond_30e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    if-eqz v22, :cond_3bc

    const/16 v29, 0x0

    :goto_318
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 702
    .end local v22    # "titleFits":Z
    .end local v23    # "titleWidth":I
    .end local v24    # "titleWidthSpec":I
    :cond_31f
    :goto_31f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v29, v0

    if-eqz v29, :cond_38a

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 704
    .local v17, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_3d4

    const/high16 v12, 0x40000000

    .line 706
    .local v12, "customWidthMode":I
    :goto_341
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v29, v0

    if-ltz v29, :cond_3d8

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 708
    .local v11, "customWidth":I
    :goto_355
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_3db

    const/high16 v10, 0x40000000

    .line 710
    .local v10, "customHeightMode":I
    :goto_365
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v29, v0

    if-ltz v29, :cond_3de

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 712
    .local v9, "customHeight":I
    :goto_379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Landroid/view/View;->measure(II)V

    .line 716
    .end local v9    # "customHeight":I
    .end local v10    # "customHeightMode":I
    .end local v11    # "customWidth":I
    .end local v12    # "customWidthMode":I
    .end local v17    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_38a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v29, v0

    if-gtz v29, :cond_3e8

    .line 717
    const/16 v19, 0x0

    .line 718
    .local v19, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 719
    .local v8, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_399
    if-ge v15, v8, :cond_3e0

    .line 720
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 721
    .local v25, "v":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    add-int v21, v29, v26

    .line 722
    .local v21, "paddedViewHeight":I
    move/from16 v0, v21

    move/from16 v1, v19

    if-le v0, v1, :cond_3af

    .line 723
    move/from16 v19, v21

    .line 719
    :cond_3af
    add-int/lit8 v15, v15, 0x1

    goto :goto_399

    .line 661
    .end local v5    # "availableWidth":I
    .end local v6    # "childSpecHeight":I
    .end local v8    # "count":I
    .end local v13    # "height":I
    .end local v15    # "i":I
    .end local v18    # "maxHeight":I
    .end local v19    # "measuredHeight":I
    .end local v21    # "paddedViewHeight":I
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "verticalPadding":I
    :cond_3b2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    goto/16 :goto_23b

    .line 692
    .restart local v5    # "availableWidth":I
    .restart local v6    # "childSpecHeight":I
    .restart local v13    # "height":I
    .restart local v18    # "maxHeight":I
    .restart local v23    # "titleWidth":I
    .restart local v24    # "titleWidthSpec":I
    .restart local v26    # "verticalPadding":I
    :cond_3b8
    const/16 v22, 0x0

    goto/16 :goto_30a

    .line 696
    .restart local v22    # "titleFits":Z
    :cond_3bc
    const/16 v29, 0x8

    goto/16 :goto_318

    .line 698
    .end local v22    # "titleFits":Z
    .end local v23    # "titleWidth":I
    .end local v24    # "titleWidthSpec":I
    :cond_3c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    goto/16 :goto_31f

    .line 704
    .restart local v17    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3d4
    const/high16 v12, -0x80000000

    goto/16 :goto_341

    .restart local v12    # "customWidthMode":I
    :cond_3d8
    move v11, v5

    .line 706
    goto/16 :goto_355

    .line 708
    .restart local v11    # "customWidth":I
    :cond_3db
    const/high16 v10, -0x80000000

    goto :goto_365

    .restart local v10    # "customHeightMode":I
    :cond_3de
    move v9, v13

    .line 710
    goto :goto_379

    .line 726
    .end local v10    # "customHeightMode":I
    .end local v11    # "customWidth":I
    .end local v12    # "customWidthMode":I
    .end local v17    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v8    # "count":I
    .restart local v15    # "i":I
    .restart local v19    # "measuredHeight":I
    :cond_3e0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 730
    .end local v8    # "count":I
    .end local v15    # "i":I
    .end local v19    # "measuredHeight":I
    :goto_3e7
    return-void

    .line 728
    :cond_3e8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_3e7
.end method

.method public setContentHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 260
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 264
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 266
    :cond_9
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 271
    :cond_17
    if-eqz p1, :cond_1c

    .line 272
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 275
    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 8
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 223
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_43

    .line 224
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_40

    .line 226
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 228
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_44

    .line 229
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 230
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v4, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimitSet(ZZ)V

    .line 233
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setMaxItemsSet(Z)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 236
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3b

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 237
    :cond_3b
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_40
    :goto_40
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 256
    :cond_43
    return-void

    .line 240
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_44
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 243
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 245
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 246
    iget v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 248
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 250
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_86

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 251
    :cond_86
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_40
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 284
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 285
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 279
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 280
    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3
    .param p1, "titleOptional"    # Z

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_7

    .line 866
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 868
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 869
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 546
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 581
    const/4 v0, 0x0

    return-object v0
.end method
