.class public Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;
.super Landroid/service/textservice/SpellCheckerService$Session;
.source "SamsungIMEWordLevelSpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;,
        Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungIMEWordLevelSpellCheckerSession"


# instance fields
.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mService:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;

.field private mSuggestions:[Ljava/lang/String;

.field protected final mSuggestionsCache:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)V
    .locals 6
    .param p1, "service"    # Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService$Session;-><init>()V

    .line 21
    iput-object v4, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 24
    iput-object v4, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    .line 26
    new-instance v1, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;

    invoke-direct {v1}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;

    .line 68
    iput-object p1, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mService:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;

    .line 70
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 73
    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " "

    aput-object v3, v1, v2

    .line 76
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 78
    .local v0, "cres":Landroid/content/ContentResolver;
    new-instance v1, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$1;

    invoke-direct {v1, p0, v4}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$1;-><init>(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mObserver:Landroid/database/ContentObserver;

    .line 84
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    invoke-direct {p0}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->clearTypoListAndCache()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->clearTypoListAndCache()V

    return-void
.end method

.method private clearTypoListAndCache()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->clearCache()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->clearTypoList()V

    .line 204
    :cond_1
    return-void
.end method

.method private isContainLanguageDB(Ljava/lang/String;)Z
    .locals 6
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 176
    new-instance v1, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;)V

    .line 177
    .local v1, "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSpellCheckHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x64

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 179
    monitor-enter v1

    .line 180
    :goto_0
    :try_start_0
    iget-boolean v2, v1, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->mCheckedDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_0

    .line 182
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "SamsungIMEWordLevelSpellCheckerSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to wait - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    iget-boolean v2, v1, Lcom/diotek/ime/framework/common/InputManagerImpl$SpellCheck;->mMissSpell:Z

    if-eqz v2, :cond_1

    .line 190
    const/4 v2, 0x0

    .line 193
    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private isContainTypoList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->isContainInTypoList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
    .locals 1
    .param p1, "textInfo"    # Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;
    .locals 7
    .param p1, "textInfo"    # Landroid/view/textservice/TextInfo;
    .param p2, "prevWord"    # Ljava/lang/String;
    .param p3, "suggestionsLimit"    # I

    .prologue
    .line 100
    const-string v5, "SamsungIMEWordLevelSpellCheckerSession"

    const-string v6, "[SamsungIMEWordLevelSpellCheckerSession-onGetSuggestions]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v5, :cond_0

    .line 103
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 121
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "inText":Ljava/lang/String;
    const-string v5, "\u2019"

    const-string v6, "\'"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    iget-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;

    invoke-virtual {v5, v3, p2}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->getSuggestionsFromCache(Ljava/lang/String;Ljava/lang/String;)Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;

    move-result-object v0

    .line 127
    .local v0, "cachedSuggestionsParams":Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;
    if-eqz v0, :cond_1

    .line 129
    new-instance v4, Landroid/view/textservice/SuggestionsInfo;

    iget v5, v0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;->mFlags:I

    iget-object v6, v0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;->mSuggestions:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 162
    .end local v0    # "cachedSuggestionsParams":Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;
    .end local v3    # "inText":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 132
    .restart local v0    # "cachedSuggestionsParams":Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;
    .restart local v3    # "inText":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    .line 134
    const/4 v2, 0x1

    .line 135
    .local v2, "flags":I
    iget-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;

    iget-object v6, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {v5, v3, p2, v6, v2}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->putSuggestionsToCache(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 136
    new-instance v4, Landroid/view/textservice/SuggestionsInfo;

    iget-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .local v4, "retval":Landroid/view/textservice/SuggestionsInfo;
    goto :goto_0

    .line 139
    .end local v2    # "flags":I
    .end local v4    # "retval":Landroid/view/textservice/SuggestionsInfo;
    :cond_2
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->isContainTypoList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    const/4 v2, 0x2

    .line 142
    .restart local v2    # "flags":I
    iget-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;

    iget-object v6, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {v5, v3, p2, v6, v2}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->putSuggestionsToCache(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 144
    new-instance v4, Landroid/view/textservice/SuggestionsInfo;

    iget-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .restart local v4    # "retval":Landroid/view/textservice/SuggestionsInfo;
    goto :goto_0

    .line 147
    .end local v2    # "flags":I
    .end local v4    # "retval":Landroid/view/textservice/SuggestionsInfo;
    :cond_3
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->isContainLanguageDB(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 149
    const/4 v2, 0x2

    .line 150
    .restart local v2    # "flags":I
    iget-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestionsCache:Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;

    iget-object v6, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {v5, v3, p2, v6, v2}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsCache;->putSuggestionsToCache(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 152
    new-instance v4, Landroid/view/textservice/SuggestionsInfo;

    iget-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .restart local v4    # "retval":Landroid/view/textservice/SuggestionsInfo;
    goto :goto_0

    .line 156
    .end local v2    # "flags":I
    .end local v4    # "retval":Landroid/view/textservice/SuggestionsInfo;
    :cond_4
    const/4 v2, 0x1

    .line 157
    .restart local v2    # "flags":I
    new-instance v4, Landroid/view/textservice/SuggestionsInfo;

    iget-object v5, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "retval":Landroid/view/textservice/SuggestionsInfo;
    goto :goto_0

    .line 161
    .end local v0    # "cachedSuggestionsParams":Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession$SuggestionsParams;
    .end local v2    # "flags":I
    .end local v3    # "inText":Ljava/lang/String;
    .end local v4    # "retval":Landroid/view/textservice/SuggestionsInfo;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v4, Landroid/view/textservice/SuggestionsInfo;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->mSuggestions:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    goto :goto_0
.end method
