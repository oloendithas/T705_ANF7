.class public final Lcom/android/contacts/format/DisplayNameFormatter;
.super Ljava/lang/Object;
.source "DisplayNameFormatter.java"


# instance fields
.field private final mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

.field private final mNameBuffer:Landroid/database/CharArrayBuffer;

.field private final mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

.field private mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

.field private mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/contacts/format/PrefixHighlighter;)V
    .locals 2
    .param p1, "prefixHighlighter"    # Lcom/android/contacts/format/PrefixHighlighter;

    .prologue
    const/16 v1, 0x80

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    .line 32
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    .line 40
    iput-object p1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

    .line 41
    return-void
.end method


# virtual methods
.method public getAlternateNameBuffer()Landroid/database/CharArrayBuffer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method public getDisplayName(IZ[C)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "displayOrder"    # I
    .param p2, "highlightingEnabled"    # Z
    .param p3, "highlightedPrefix"    # [C

    .prologue
    .line 62
    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 63
    .local v0, "size":I
    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 64
    .local v1, "size_Alt":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 65
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 90
    :cond_0
    :goto_0
    return-object v2

    .line 69
    :cond_1
    if-eqz p2, :cond_4

    .line 70
    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

    if-eqz v3, :cond_3

    .line 71
    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    if-nez v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

    invoke-interface {v3}, Lcom/android/contacts/widget/TextWithHighlightingFactory;->createTextWithHighlighting()Lcom/android/contacts/widget/TextWithHighlighting;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    .line 75
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    iget-object v4, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v5, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {v3, v4, v5}, Lcom/android/contacts/widget/TextWithHighlighting;->setText(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)V

    .line 77
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    .line 87
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_1
    if-eqz p3, :cond_0

    const/4 v3, 0x0

    aget-char v3, p3, v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-virtual {v3, v2, p3}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 79
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v0, :cond_5

    .line 80
    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-static {v3}, Lcom/android/contacts/format/FormatUtils;->charArrayBufferToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 82
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-static {v3}, Lcom/android/contacts/format/FormatUtils;->charArrayBufferToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public getNameBuffer()Landroid/database/CharArrayBuffer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method public setDisplayName(Landroid/widget/TextView;IZ[C)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "displayOrder"    # I
    .param p3, "highlightingEnabled"    # Z
    .param p4, "highlightedPrefix"    # [C

    .prologue
    .line 57
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/contacts/format/DisplayNameFormatter;->getDisplayName(IZ[C)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "unknownNameText"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 53
    return-void
.end method
