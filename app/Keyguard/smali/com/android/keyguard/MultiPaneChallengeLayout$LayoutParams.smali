.class public Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MultiPaneChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MultiPaneChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public centerWithinArea:F

.field public childType:I

.field public gravity:I

.field public maxHeight:I

.field public maxWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x2

    .line 636
    invoke-direct {p0, v0, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(II)V

    .line 637
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 695
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 620
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 630
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 632
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 633
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 696
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/MultiPaneChallengeLayout;)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Lcom/android/keyguard/MultiPaneChallengeLayout;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0x51

    const/4 v2, 0x0

    .line 640
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 618
    iput v5, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 620
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 630
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 632
    iput v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 633
    iput v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 642
    sget-object v1, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 645
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 647
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 649
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 651
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 653
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 657
    iget v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    if-nez v1, :cond_47

    .line 658
    iget v1, p3, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v1, :cond_5b

    .line 659
    iget v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_70

    .line 691
    :cond_47
    :goto_47
    :pswitch_47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 692
    return-void

    .line 661
    :pswitch_4b
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 664
    :pswitch_50
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 667
    :pswitch_55
    iput v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 670
    :pswitch_58
    iput v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 674
    :cond_5b
    iget v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_84

    :pswitch_60
    goto :goto_47

    .line 676
    :pswitch_61
    const/16 v1, 0x31

    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 679
    :pswitch_66
    iput v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 682
    :pswitch_69
    iput v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 685
    :pswitch_6c
    iput v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 659
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_50
        :pswitch_55
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_58
    .end packed-switch

    .line 674
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_61
        :pswitch_66
        :pswitch_69
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_6c
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 699
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 620
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 630
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 632
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 633
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 700
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 5
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 703
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 620
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 630
    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 632
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 633
    iput v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 704
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 709
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 710
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 711
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 712
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 713
    iget v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    iput v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 714
    return-void
.end method
