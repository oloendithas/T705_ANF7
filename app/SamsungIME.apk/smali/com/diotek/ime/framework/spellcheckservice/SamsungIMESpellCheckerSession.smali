.class public Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerSession;
.super Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;
.source "SamsungIMESpellCheckerSession.java"


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)V
    .locals 0
    .param p1, "service"    # Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;-><init>(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .locals 8
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    .prologue
    .line 15
    array-length v1, p1

    .line 16
    .local v1, "length":I
    new-array v4, v1, [Landroid/view/textservice/SuggestionsInfo;

    .line 17
    .local v4, "retval":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 19
    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 20
    add-int/lit8 v5, v0, -0x1

    aget-object v5, p1, v5

    invoke-virtual {v5}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "prevWordCandidate":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    .line 27
    .end local v3    # "prevWordCandidate":Ljava/lang/String;
    .local v2, "prevWord":Ljava/lang/String;
    :goto_1
    aget-object v5, p1, v0

    invoke-virtual {p0, v5, v2, p2}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v5

    aput-object v5, v4, v0

    .line 28
    aget-object v5, v4, v0

    aget-object v6, p1, v0

    invoke-virtual {v6}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v6

    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "prevWord":Ljava/lang/String;
    .restart local v3    # "prevWordCandidate":Ljava/lang/String;
    :cond_0
    move-object v2, v3

    .line 23
    goto :goto_1

    .line 25
    .end local v3    # "prevWordCandidate":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "prevWord":Ljava/lang/String;
    goto :goto_1

    .line 32
    .end local v2    # "prevWord":Ljava/lang/String;
    :cond_2
    return-object v4
.end method
