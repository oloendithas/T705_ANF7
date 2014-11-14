.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STYLE_ATTR:[I

.field private static final TAG:Ljava/lang/String; = "TabWidget"

.field private static mtwEnablePreDraw:Z

.field private static mtwEnableStartAnimation:Z

.field private static final mtwIsCapuccino:Z


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z

.field private mTabWidgetMoveAniEnabled:Z

.field private mtwChildCount:I

.field private mtwColor:I

.field private mtwInterpolator:Landroid/view/animation/Interpolator;

.field private mtwIsParentThemeDeviceDefault:Z

.field private mtwOutSize:Landroid/graphics/Point;

.field private mtwShadowDx:F

.field private mtwShadowDy:F

.field private mtwShadowRadius:F

.field private mtwTypefacezSelected:Landroid/graphics/Typeface;

.field private mtwTypefacezUnseleted:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 89
    sput-boolean v0, Landroid/widget/TabWidget;->mtwEnableStartAnimation:Z

    .line 90
    sput-boolean v0, Landroid/widget/TabWidget;->mtwEnablePreDraw:Z

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Landroid/widget/TabWidget;->STYLE_ATTR:[I

    .line 108
    const-string v0, "capuccino"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/TabWidget;->mtwIsCapuccino:Z

    return-void

    .line 99
    nop

    :array_1e
    .array-data 4
        0x1010161
        0x1010162
        0x1010163
        0x1010164
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput v6, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 78
    iput-boolean v7, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 81
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 84
    iput v6, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 88
    iput-boolean v8, p0, Landroid/widget/TabWidget;->mTabWidgetMoveAniEnabled:Z

    .line 91
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iput-object v5, p0, Landroid/widget/TabWidget;->mtwOutSize:Landroid/graphics/Point;

    .line 92
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, p0, Landroid/widget/TabWidget;->mtwInterpolator:Landroid/view/animation/Interpolator;

    .line 95
    iput v8, p0, Landroid/widget/TabWidget;->mtwChildCount:I

    .line 121
    sget-object v5, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v5, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 125
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 131
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x101046e

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 132
    iget v5, v3, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_5b

    .line 133
    iput-boolean v7, p0, Landroid/widget/TabWidget;->mtwIsParentThemeDeviceDefault:Z

    .line 136
    :cond_5b
    invoke-direct {p0}, Landroid/widget/TabWidget;->initTabWidget()V

    .line 141
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mtwIsParentThemeDeviceDefault:Z

    if-eqz v5, :cond_b7

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-nez v5, :cond_b7

    sget-boolean v5, Landroid/widget/TabWidget;->mtwIsCapuccino:Z

    if-eqz v5, :cond_b7

    .line 142
    const-string/jumbo v5, "sec-roboto-light"

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabWidget;->mtwTypefacezUnseleted:Landroid/graphics/Typeface;

    .line 143
    const-string/jumbo v5, "sans-serif"

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TabWidget;->mtwTypefacezSelected:Landroid/graphics/Typeface;

    .line 145
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 146
    .local v1, "actionbarTabText":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10102f5

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 148
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    sget-object v6, Landroid/widget/TabWidget;->STYLE_ATTR:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 150
    .local v2, "attr":Landroid/content/res/TypedArray;
    const/high16 v5, -0x1000000

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Landroid/widget/TabWidget;->mtwColor:I

    .line 151
    invoke-virtual {v2, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/widget/TabWidget;->mtwShadowDx:F

    .line 152
    invoke-virtual {v2, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/widget/TabWidget;->mtwShadowDy:F

    .line 153
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/widget/TabWidget;->mtwShadowRadius:F

    .line 160
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    .end local v1    # "actionbarTabText":Landroid/util/TypedValue;
    .end local v2    # "attr":Landroid/content/res/TypedArray;
    :cond_b7
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 166
    .local v4, "vto":Landroid/view/ViewTreeObserver;
    new-instance v5, Landroid/widget/TabWidget$1;

    invoke-direct {v5, p0}, Landroid/widget/TabWidget$1;-><init>(Landroid/widget/TabWidget;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TabWidget;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/TabWidget;

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mTabWidgetMoveAniEnabled:Z

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 66
    sget-boolean v0, Landroid/widget/TabWidget;->mtwEnablePreDraw:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Landroid/widget/TabWidget;->mtwEnablePreDraw:Z

    return p0
.end method

.method static synthetic access$300(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TabWidget;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 250
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 252
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 253
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_34

    .line 259
    iget-object v2, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_20

    .line 260
    const v2, 0x10808db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 263
    :cond_20
    iget-object v2, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2d

    .line 264
    const v2, 0x10808dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 281
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 282
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 283
    return-void

    .line 269
    :cond_34
    iget-object v2, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_41

    .line 270
    const v2, 0x10808da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 273
    :cond_41
    iget-object v2, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2d

    .line 274
    const v2, 0x10808dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_2d
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-nez v5, :cond_16

    .line 655
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000

    invoke-direct {v3, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 658
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 659
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_16
    invoke-virtual {p1, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 664
    invoke-virtual {p1, v8}, Landroid/view/View;->setClickable(Z)V

    .line 666
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 668
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mtwIsParentThemeDeviceDefault:Z

    if-eqz v5, :cond_5c

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-nez v5, :cond_5c

    sget-boolean v5, Landroid/widget/TabWidget;->mtwIsCapuccino:Z

    if-eqz v5, :cond_5c

    .line 672
    iget v5, p0, Landroid/widget/TabWidget;->mtwChildCount:I

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 673
    .local v0, "childView":Landroid/view/View;
    instance-of v5, v0, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_56

    move-object v5, v0

    .line 674
    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 675
    .local v1, "childcount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    if-ge v2, v1, :cond_56

    move-object v5, v0

    .line 676
    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 677
    .local v4, "tv":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_53

    .line 680
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "tv":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/TabWidget;->mtwTypefacezUnseleted:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 675
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 686
    .end local v1    # "childcount":I
    .end local v2    # "i":I
    :cond_56
    iget v5, p0, Landroid/widget/TabWidget;->mtwChildCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/widget/TabWidget;->mtwChildCount:I

    .line 692
    .end local v0    # "childView":Landroid/view/View;
    :cond_5c
    new-instance v5, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$1;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 694
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_11

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_11

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 450
    :cond_11
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->childDrawableStateChanged(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 455
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 458
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-nez v5, :cond_b

    .line 491
    :cond_a
    :goto_a
    return-void

    .line 462
    :cond_b
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    if-eqz v5, :cond_a

    .line 467
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    .line 468
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 470
    .local v4, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 471
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 473
    .local v3, "rightStrip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 474
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 476
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    if-eqz v5, :cond_74

    .line 477
    iget-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 478
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 479
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 481
    .local v2, "myHeight":I
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    iput-boolean v10, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 488
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "myHeight":I
    :cond_74
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 581
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 582
    iget v1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 583
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 584
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 587
    .end local v0    # "tabView":Landroid/view/View;
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public focusCurrentTab(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 630
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 633
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 636
    if-eq v0, p1, :cond_e

    .line 637
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 639
    :cond_e
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 234
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 244
    .end local p2    # "i":I
    :cond_5
    :goto_5
    return p2

    .line 239
    .restart local p2    # "i":I
    :cond_6
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_d

    .line 240
    iget p2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    goto :goto_5

    .line 241
    :cond_d
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_5

    .line 242
    add-int/lit8 p2, p2, 0x1

    goto :goto_5
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .registers 2

    .prologue
    .line 441
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    const/high16 v1, 0x40000000

    .line 289
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_1b

    .line 290
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 292
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 296
    :cond_1b
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 298
    return-void
.end method

.method measureHorizontal(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 302
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-nez v9, :cond_d

    .line 303
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 344
    :goto_c
    return-void

    .line 308
    :cond_d
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 309
    .local v8, "unspecifiedWidth":I
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 310
    invoke-super {p0, v8, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int v5, v9, v10

    .line 313
    .local v5, "extraWidth":I
    if-lez v5, :cond_7c

    .line 314
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 316
    .local v3, "count":I
    const/4 v1, 0x0

    .line 317
    .local v1, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    if-ge v6, v3, :cond_3b

    .line 318
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_38

    .line 317
    :goto_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 320
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 323
    .end local v0    # "child":Landroid/view/View;
    :cond_3b
    if-lez v1, :cond_7c

    .line 324
    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v9, :cond_46

    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    array-length v9, v9

    if-eq v9, v3, :cond_4a

    .line 325
    :cond_46
    new-array v9, v3, [I

    iput-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    .line 327
    :cond_4a
    const/4 v6, 0x0

    :goto_4b
    if-ge v6, v3, :cond_7c

    .line 328
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_5a

    .line 327
    :goto_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 330
    :cond_5a
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 331
    .local v2, "childWidth":I
    div-int v4, v5, v1

    .line 332
    .local v4, "delta":I
    sub-int v9, v2, v4

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 333
    .local v7, "newWidth":I
    iget-object v9, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v7, v9, v6

    .line 335
    sub-int v9, v2, v7

    sub-int/2addr v5, v9

    .line 336
    add-int/lit8 v1, v1, -0x1

    .line 337
    iget v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    goto :goto_57

    .line 343
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childWidth":I
    .end local v3    # "count":I
    .end local v4    # "delta":I
    .end local v6    # "i":I
    .end local v7    # "newWidth":I
    :cond_7c
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_c
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 711
    if-ne p1, p0, :cond_19

    if-eqz p2, :cond_19

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_19

    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 712
    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 732
    :cond_18
    :goto_18
    return-void

    .line 716
    :cond_19
    if-eqz p2, :cond_18

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 719
    .local v1, "numTabs":I
    :goto_20
    if-ge v0, v1, :cond_18

    .line 720
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_3d

    .line 721
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 722
    iget-object v2, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 725
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_18

    .line 729
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 592
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 593
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 594
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 595
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 596
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 611
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 612
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 613
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 214
    iput-boolean v2, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 217
    iget-boolean v1, p0, Landroid/widget/TabWidget;->mTabWidgetMoveAniEnabled:Z

    if-eqz v1, :cond_2e

    sget-boolean v1, Landroid/widget/TabWidget;->mtwEnableStartAnimation:Z

    if-eqz v1, :cond_2e

    .line 218
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 219
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 222
    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    sput-boolean v4, Landroid/widget/TabWidget;->mtwEnableStartAnimation:Z

    .line 229
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 230
    return-void
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 698
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 699
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 700
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 603
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 607
    :goto_11
    return-void

    .line 606
    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_11
.end method

.method public setCurrentTab(I)V
    .registers 10
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x1

    .line 521
    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 523
    .local v2, "previousTab":I
    if-ltz p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-ge p1, v5, :cond_f

    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-ne p1, v5, :cond_10

    .line 575
    :cond_f
    :goto_f
    return-void

    .line 527
    :cond_10
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1f

    .line 528
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 530
    :cond_1f
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 531
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 532
    iput-boolean v7, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 534
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 535
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 541
    :cond_36
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mtwIsParentThemeDeviceDefault:Z

    if-eqz v5, :cond_f

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-nez v5, :cond_f

    sget-boolean v5, Landroid/widget/TabWidget;->mtwIsCapuccino:Z

    if-eqz v5, :cond_f

    .line 542
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 543
    .local v3, "tabView":Landroid/view/View;
    instance-of v5, v3, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_68

    move-object v5, v3

    .line 544
    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 545
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_54
    if-ge v1, v0, :cond_68

    move-object v5, v3

    .line 546
    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 547
    .local v4, "tv":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_8d

    .line 550
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "tv":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/TabWidget;->mtwTypefacezUnseleted:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 558
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_68
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 559
    instance-of v5, v3, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_f

    move-object v5, v3

    .line 560
    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 561
    .restart local v0    # "childCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_78
    if-ge v1, v0, :cond_f

    move-object v5, v3

    .line 562
    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 563
    .restart local v4    # "tv":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_90

    .line 566
    check-cast v4, Landroid/widget/TextView;

    .end local v4    # "tv":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/TabWidget;->mtwTypefacezSelected:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_f

    .line 545
    .restart local v4    # "tv":Landroid/view/View;
    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 561
    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_78
.end method

.method public setDividerDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 643
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 645
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 646
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 647
    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 648
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 646
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 650
    .end local v0    # "child":Landroid/view/View;
    :cond_14
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 388
    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 391
    return-void
.end method

.method public setRightStripDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 409
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 411
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 412
    return-void
.end method

.method public setStripEnabled(Z)V
    .registers 2
    .param p1, "stripEnabled"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 434
    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    .prologue
    .line 706
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 707
    return-void
.end method

.method public twGetMoveLength()I
    .registers 7

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "screenWidth":I
    const/4 v1, 0x0

    .line 193
    .local v1, "movingLength":I
    const/4 v3, 0x0

    .line 195
    .local v3, "tabwidgetWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 196
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 197
    .local v0, "display":Landroid/view/Display;
    iget-object v4, p0, Landroid/widget/TabWidget;->mtwOutSize:Landroid/graphics/Point;

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 198
    iget-object v4, p0, Landroid/widget/TabWidget;->mtwOutSize:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 199
    sub-int v1, v3, v2

    .line 201
    return v1
.end method

.method public twSetTabMoveAnimationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mTabWidgetMoveAniEnabled:Z

    .line 209
    return-void
.end method
