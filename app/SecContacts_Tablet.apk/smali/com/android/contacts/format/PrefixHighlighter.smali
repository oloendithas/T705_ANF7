.class public Lcom/android/contacts/format/PrefixHighlighter;
.super Ljava/lang/Object;
.source "PrefixHighlighter.java"


# instance fields
.field private mImpl:Lcom/android/contacts/format/PrefixHighlighterImpl;

.field private final mPrefixHighlightColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "prefixHighlightColor"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/contacts/format/PrefixHighlighterImpl;

    invoke-direct {v0}, Lcom/android/contacts/format/PrefixHighlighterImpl;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/format/PrefixHighlighter;->mImpl:Lcom/android/contacts/format/PrefixHighlighterImpl;

    .line 30
    iput p1, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    .line 31
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # [C

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/format/PrefixHighlighter;->mImpl:Lcom/android/contacts/format/PrefixHighlighterImpl;

    iget v1, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/contacts/format/PrefixHighlighterImpl;->doApply(Ljava/lang/CharSequence;[CI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setText(Landroid/widget/TextView;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "prefix"    # [C

    .prologue
    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
