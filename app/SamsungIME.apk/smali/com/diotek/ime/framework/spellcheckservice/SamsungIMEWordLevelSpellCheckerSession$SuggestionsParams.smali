.class final Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;
.super Ljava/lang/Object;
.source "SamsungIMEWordLevelSpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestionsParams"
.end annotation


# instance fields
.field public final mFlags:I

.field public final mSuggestions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0
    .param p1, "suggestions"    # [Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;->mSuggestions:[Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;->mFlags:I

    .line 34
    return-void
.end method
