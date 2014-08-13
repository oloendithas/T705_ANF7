.class public final Lcom/diotek/ime/framework/util/ViewLayoutUtils;
.super Ljava/lang/Object;
.source "ViewLayoutUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static newLayoutParam(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 3
    .param p0, "placer"    # Landroid/view/ViewGroup;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 35
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    instance-of v0, p0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 39
    :cond_1
    if-nez p0, :cond_2

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "placer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placer is neither FrameLayout nor RelativeLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static placeViewAt(Landroid/view/View;IIII)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    .line 49
    .local v2, "windowWidth":I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 53
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 54
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 58
    invoke-virtual {v1, p1, p2, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 63
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 60
    .restart local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    sub-int v3, v2, p1

    sub-int/2addr v3, p3

    invoke-virtual {v1, v5, p2, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method
