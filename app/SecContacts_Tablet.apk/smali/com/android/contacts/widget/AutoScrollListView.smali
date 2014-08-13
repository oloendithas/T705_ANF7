.class public Lcom/android/contacts/widget/AutoScrollListView;
.super Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.source "AutoScrollListView.java"


# static fields
.field private static final PREFERRED_SELECTION_OFFSET_FROM_TOP:F = 0.33f


# instance fields
.field private mForcePosition:Z

.field private mOffset:I

.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 40
    iput v1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mOffset:I

    .line 42
    iput-boolean v1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mForcePosition:Z

    .line 47
    const v0, 0x3fa66666

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/AutoScrollListView;->setVelocityScale(F)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 40
    iput v1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mOffset:I

    .line 42
    iput-boolean v1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mForcePosition:Z

    .line 53
    const v0, 0x3fa66666

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/AutoScrollListView;->setVelocityScale(F)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 40
    iput v1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mOffset:I

    .line 42
    iput-boolean v1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mForcePosition:Z

    .line 59
    const v0, 0x3fa66666

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/AutoScrollListView;->setVelocityScale(F)V

    .line 60
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 87
    :try_start_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    :goto_0
    iget v7, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    if-ne v7, v10, :cond_1

    .line 164
    :cond_0
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/database/StaleDataException;
    const-string v7, "AutoScrollListView"

    const-string v8, "layoutChildren : StaleDataException"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Landroid/database/StaleDataException;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v0    # "e":Landroid/database/StaleDataException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v7, "AutoScrollListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutChildren : IllegalStateException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    iget-boolean v7, p0, Lcom/android/contacts/widget/AutoScrollListView;->mForcePosition:Z

    if-eqz v7, :cond_2

    .line 108
    iget v4, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 109
    .local v4, "position":I
    iput v10, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 110
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/contacts/widget/AutoScrollListView;->mForcePosition:Z

    .line 112
    iget v3, p0, Lcom/android/contacts/widget/AutoScrollListView;->mOffset:I

    .line 113
    .local v3, "offset":I
    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 114
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    goto :goto_1

    .line 117
    .end local v3    # "offset":I
    .end local v4    # "position":I
    :cond_2
    iget v4, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 118
    .restart local v4    # "position":I
    iput v10, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 120
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 121
    .local v1, "firstPosition":I
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getLastVisiblePosition()I

    move-result v2

    .line 122
    .local v2, "lastPosition":I
    if-lt v4, v1, :cond_3

    if-le v4, v2, :cond_0

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ea8f5c3

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 128
    .restart local v3    # "offset":I
    iget-boolean v7, p0, Lcom/android/contacts/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v7, :cond_4

    .line 129
    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 134
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    goto :goto_1

    .line 139
    :cond_4
    sub-int v7, v2, v1

    mul-int/lit8 v6, v7, 0x2

    .line 141
    .local v6, "twoScreens":I
    if-ge v4, v1, :cond_7

    .line 142
    add-int v5, v4, v6

    .line 143
    .local v5, "preliminaryPosition":I
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_5

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 146
    :cond_5
    if-ge v5, v1, :cond_6

    .line 147
    invoke-virtual {p0, v5}, Lcom/android/contacts/widget/AutoScrollListView;->setSelection(I)V

    .line 148
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    .line 161
    :cond_6
    :goto_2
    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/widget/AutoScrollListView;->smoothScrollToPositionFromTop(II)V

    goto/16 :goto_1

    .line 151
    .end local v5    # "preliminaryPosition":I
    :cond_7
    sub-int v5, v4, v6

    .line 152
    .restart local v5    # "preliminaryPosition":I
    if-gez v5, :cond_8

    .line 153
    const/4 v5, 0x0

    .line 155
    :cond_8
    if-le v5, v2, :cond_6

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/contacts/widget/AutoScrollListView;->setSelection(I)V

    .line 157
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    goto :goto_2
.end method

.method public requestPositionToScreen(IIZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "forcePosition"    # Z

    .prologue
    .line 77
    iput p1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 78
    iput p2, p0, Lcom/android/contacts/widget/AutoScrollListView;->mOffset:I

    .line 79
    iput-boolean p3, p0, Lcom/android/contacts/widget/AutoScrollListView;->mForcePosition:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->requestLayout()V

    .line 81
    return-void
.end method

.method public requestPositionToScreen(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 70
    iput p1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 71
    iput-boolean p2, p0, Lcom/android/contacts/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mForcePosition:Z

    .line 73
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->requestLayout()V

    .line 74
    return-void
.end method
