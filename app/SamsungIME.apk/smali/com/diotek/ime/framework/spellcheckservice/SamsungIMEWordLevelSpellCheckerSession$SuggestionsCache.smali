.class public final Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;
.super Ljava/lang/Object;
.source "SamsungIMEWordLevelSpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SuggestionsCache"
.end annotation


# static fields
.field private static final CHAR_DELIMITER:C = '\ufffc'

.field private static final MAX_CACHE_SIZE:I = 0x32


# instance fields
.field private final mUnigramSuggestionsInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    return-void
.end method

.method private static generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "prevWord"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    .end local p0    # "query":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "query":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xfffc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 64
    return-void
.end method

.method public getSuggestionsFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "prevWord"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    invoke-static {p1, p2}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;

    return-object v0
.end method

.method public putSuggestionsToCache(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "prevWord"    # Ljava/lang/String;
    .param p3, "suggestions"    # [Ljava/lang/String;
    .param p4, "flags"    # I

    .prologue
    .line 55
    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->mUnigramSuggestionsInfoCache:Landroid/util/LruCache;

    invoke-static {p1, p2}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;

    invoke-direct {v2, p3, p4}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;-><init>([Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
