.class public Lcom/android/contacts/detail/CarouselTab;
.super Landroid/widget/RelativeLayout;
.source "CarouselTab.java"

# interfaces
.implements Lcom/android/contacts/detail/ViewOverlay;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlphaLayer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLabelView:Landroid/widget/TextView;

.field private mTouchInterceptLayer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/CarouselTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object p1, p0, Lcom/android/contacts/detail/CarouselTab;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public disableTouchInterceptor()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public enableTouchInterceptor(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 58
    const v0, 0x7f09010e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 61
    const v0, 0x7f09010d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mAlphaLayer:Landroid/view/View;

    .line 62
    const v0, 0x7f09010f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    .line 63
    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mAlphaLayer:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 96
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public showDeselectedState()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/detail/CarouselTab;->mContext:Landroid/content/Context;

    const v2, 0x7f11002a

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 77
    return-void
.end method

.method public showSelectedState()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/detail/CarouselTab;->mContext:Landroid/content/Context;

    const v2, 0x7f110029

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 72
    return-void
.end method
