.class public Lcom/android/contacts/widget/ContactsGridView;
.super Landroid/widget/GridView;
.source "ContactsGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000

    .line 30
    invoke-super {p0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v0

    .line 31
    .local v0, "columnWidth":I
    invoke-super {p0}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v1

    .line 32
    .local v1, "itemSpace":I
    invoke-super {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v2

    .line 33
    .local v2, "numColumn":I
    mul-int v4, v0, v2

    add-int/lit8 v5, v2, -0x1

    mul-int/2addr v5, v1

    add-int v3, v4, v5

    .line 35
    .local v3, "widthSize":I
    if-ltz v2, :cond_0

    .line 36
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 45
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 46
    return-void

    .line 38
    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getRequestedColumnWidth()I

    move-result v0

    .line 39
    invoke-super {p0}, Landroid/widget/GridView;->getRequestedHorizontalSpacing()I

    move-result v1

    .line 40
    const/4 v2, 0x3

    .line 41
    mul-int v4, v0, v2

    mul-int/lit8 v5, v1, 0x2

    add-int v3, v4, v5

    .line 43
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method
