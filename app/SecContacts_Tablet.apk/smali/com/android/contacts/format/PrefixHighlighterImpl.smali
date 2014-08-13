.class public Lcom/android/contacts/format/PrefixHighlighterImpl;
.super Ljava/lang/Object;
.source "PrefixHighlighterImpl.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isIndianUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p1, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 82
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->DEVANAGARI:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BENGALI:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GUJARATI:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GURMUKHI:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->MALAYALAM:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->TELUGU:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KANNADA:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->ORIYA:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->TAMIL:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doApply(Ljava/lang/CharSequence;[CI)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # [C
    .param p3, "prefixHighlightColor"    # I

    .prologue
    const/4 v6, -0x1

    .line 42
    invoke-static {p1, p2}, Lcom/android/contacts/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v1

    .line 43
    .local v1, "index":I
    const/4 v3, 0x0

    .line 44
    .local v3, "specialCharacterLength":I
    if-ne v1, v6, :cond_0

    .line 45
    new-instance v4, Landroid/database/CharArrayBuffer;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 46
    .local v4, "textBuffer":Landroid/database/CharArrayBuffer;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/contacts/format/FormatUtils;->copyToCharArrayBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    .line 47
    invoke-static {v4, p2}, Lcom/sec/android/app/contacts/list/KoreanConsonantPattern;->indexOfWord(Landroid/database/CharArrayBuffer;[C)I

    move-result v1

    .line 49
    .end local v4    # "textBuffer":Landroid/database/CharArrayBuffer;
    :cond_0
    if-eq v1, v6, :cond_5

    .line 50
    iget-object v5, p0, Lcom/android/contacts/format/PrefixHighlighterImpl;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v5, :cond_1

    .line 51
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/android/contacts/format/PrefixHighlighterImpl;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 54
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 55
    .local v2, "result":Landroid/text/SpannableString;
    array-length v5, p2

    add-int v0, v1, v5

    .line 57
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 58
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 59
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/format/PrefixHighlighterImpl;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    array-length v6, p2

    add-int/2addr v6, v1

    add-int/2addr v6, v3

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 76
    .end local v0    # "i":I
    .end local v2    # "result":Landroid/text/SpannableString;
    :goto_1
    return-object v2

    .line 62
    .restart local v0    # "i":I
    .restart local v2    # "result":Landroid/text/SpannableString;
    :cond_3
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/contacts/format/PrefixHighlighterImpl;->isIndianUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 65
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "result":Landroid/text/SpannableString;
    :cond_5
    move-object v2, p1

    .line 76
    goto :goto_1
.end method
