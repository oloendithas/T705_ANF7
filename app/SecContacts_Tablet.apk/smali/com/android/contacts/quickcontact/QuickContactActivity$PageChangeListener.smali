.class Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .prologue
    .line 2736
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p2, "x1"    # Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    .prologue
    .line 2736
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 2746
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2748
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2749
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v5, 0x7f0c0008

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I
    invoke-static {v4, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3500(Lcom/android/contacts/quickcontact/QuickContactActivity;I)I

    move-result v1

    .line 2750
    .local v1, "vertical_divider_width":I
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2751
    .local v2, "vertical_left_padding":I
    int-to-float v4, p1

    add-float/2addr v4, p2

    int-to-float v5, v3

    mul-float/2addr v4, v5

    mul-int v5, p1, v1

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2752
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2753
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 2739
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    invoke-static {v1, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3200(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    .line 2740
    .local v0, "actionView":Lcom/android/contacts/quickcontact/CheckableImageView;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v2, v5}, Landroid/widget/HorizontalScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2742
    return-void
.end method
