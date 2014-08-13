.class public Lcom/diotek/ime/framework/view/emoticon/EmoticonTextView;
.super Landroid/widget/TextView;
.source "EmoticonTextView.java"


# instance fields
.field private mUTF16:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonTextView;->mUTF16:[I

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonTextView;->mUTF16:[I

    .line 18
    return-void
.end method


# virtual methods
.method public isSameEmoticon(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "code"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 31
    iget-object v2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonTextView;->mUTF16:[I

    aget v2, v2, v1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonTextView;->mUTF16:[I

    aget v2, v2, v0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 33
    iget-object v2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonTextView;->mUTF16:[I

    aget v2, v2, v1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 35
    goto :goto_0
.end method

.method public setUTF16Code(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 22
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonTextView;->mUTF16:[I

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput v1, v0, v2

    .line 23
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonTextView;->mUTF16:[I

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput v1, v0, v3

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 25
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonTextView;->mUTF16:[I

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput v1, v0, v2

    goto :goto_0
.end method
