.class public Lcom/android/contacts/detail/ContactDetailTabCarousel;
.super Landroid/widget/HorizontalScrollView;
.source "ContactDetailTabCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:F = 0.5f

.field private static final TAB_COUNT:I = 0x2

.field private static final TAB_INDEX_ABOUT:I = 0x0

.field private static final TAB_INDEX_UPDATES:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAboutTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mAboutTabTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private mAllowedHorizontalScrollLength:I

.field private mAllowedVerticalScrollLength:I

.field private mCurrentTab:I

.field private mLastScrollPosition:I

.field private mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

.field private final mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

.field private mPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

.field private mScrollToCurrentTab:Z

.field private mStatusPhotoView:Landroid/widget/ImageView;

.field private mStatusView:Landroid/widget/TextView;

.field private mTabDisplayLabelHeight:I

.field private mTabHeightScreenWidthFraction:F

.field private mTabWidthScreenWidthFraction:F

.field private mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

.field private final mUpdatesTabTouchInterceptListener:Landroid/view/View$OnClickListener;

.field private final mYCoordinateArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x80000000

    const/4 v2, 0x1

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v1, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 61
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    .line 67
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    .line 71
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 74
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 75
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 162
    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v1, Lcom/android/contacts/detail/ContactDetailTabCarousel$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel$2;-><init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    .line 96
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    .line 101
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    .line 103
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactDetailTabCarousel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactDetailTabCarousel;)Lcom/sec/android/app/contacts/widget/AnimatableImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailTabCarousel;)Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailTabCarousel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    return-object v0
.end method

.method private updateAlphaLayers()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000

    .line 183
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setAlphaLayerValue(F)V

    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setAlphaLayerValue(F)V

    .line 187
    return-void
.end method


# virtual methods
.method public getAllowedHorizontalScrollLength()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    return v0
.end method

.method public getAllowedVerticalScrollLength()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    return v0
.end method

.method public getStoredYCoordinateForTab(I)F
    .locals 1
    .param p1, "tabIndex"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aget v0, v0, p1

    return v0
.end method

.method public loadData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 7
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Lcom/sec/android/app/contacts/widget/AnimatableImageView;ZLcom/android/contacts/editor/PhotoActionPopup$Listener;)Landroid/view/View$OnClickListener;

    move-result-object v6

    .line 289
    .local v6, "listener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public moveToYCoordinate(IF)V
    .locals 0
    .param p1, "tabIndex"    # I
    .param p2, "y"    # F

    .prologue
    .line 222
    invoke-virtual {p0, p2}, Landroid/view/View;->setY(F)V

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->storeYCoordinate(IF)V

    .line 224
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 110
    const v0, 0x7f09016d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    .line 111
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 113
    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/CarouselTab;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    .line 114
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->setLabel(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTabTouchInterceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/CarouselTab;->enableTouchInterceptor(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mPhotoView:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    .line 123
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusView:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mStatusPhotoView:Landroid/widget/ImageView;

    .line 125
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 319
    .local v0, "interceptTouch":Z
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    .line 322
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 155
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    if-eqz v0, :cond_0

    .line 156
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 157
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 158
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    .line 160
    :cond_0
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 131
    .local v1, "screenWidth":I
    iget v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabWidthScreenWidthFraction:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 135
    .local v3, "tabWidth":I
    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I

    .line 137
    int-to-float v4, v1

    iget v5, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabHeightScreenWidthFraction:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 140
    .local v2, "tabHeight":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 141
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "child":Landroid/view/View;
    mul-int/lit8 v4, v3, 0x2

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 146
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mTabDisplayLabelHeight:I

    sub-int v4, v2, v4

    iput v4, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedVerticalScrollLength:I

    .line 147
    invoke-static {v1, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v4

    invoke-static {v2, p2}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 150
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 192
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onScrollChanged(IIII)V

    .line 193
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mLastScrollPosition:I

    .line 194
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->updateAlphaLayers()V

    .line 195
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 313
    invoke-super {p0, p2}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 304
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchDown()V

    .line 305
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    invoke-interface {v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTouchUp()V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public restoreCurrentTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->setCurrentTab(I)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mScrollToCurrentTab:Z

    .line 206
    return-void
.end method

.method public restoreYCoordinate()V
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->getStoredYCoordinateForTab(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    .line 215
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 260
    packed-switch p1, :pswitch_data_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tab position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showSelectedState()V

    .line 263
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    .line 272
    :goto_0
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I

    .line 273
    return-void

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mUpdatesTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showSelectedState()V

    .line 267
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAboutTab:Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Lcom/android/contacts/detail/CarouselTab;->showDeselectedState()V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    .line 298
    return-void
.end method

.method public storeYCoordinate(IF)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "y"    # F

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel;->mYCoordinateArray:[F

    aput p2, v0, p1

    .line 231
    return-void
.end method
