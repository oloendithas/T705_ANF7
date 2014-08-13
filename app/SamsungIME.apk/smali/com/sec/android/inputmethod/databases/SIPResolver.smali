.class public Lcom/sec/android/inputmethod/databases/SIPResolver;
.super Ljava/lang/Object;
.source "SIPResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;,
        Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;
    }
.end annotation


# instance fields
.field ProviderAuth:Ljava/lang/String;

.field context:Landroid/content/Context;

.field cr:Landroid/content/ContentResolver;

.field cursor:Landroid/database/Cursor;

.field hanja_db:Landroid/database/sqlite/SQLiteDatabase;

.field private mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mLastHangle:Ljava/lang/String;

.field private mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

.field m_query:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "content://com.sec.android.inputmethod.databases.SipProvider"

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->ProviderAuth:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mLastHangle:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->context:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cr:Landroid/content/ContentResolver;

    .line 36
    return-void
.end method


# virtual methods
.method public FrequencyUpdateHanja(Ljava/lang/String;)V
    .locals 3
    .param p1, "hanja"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 59
    :cond_0
    new-instance v1, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;-><init>(Lcom/sec/android/inputmethod/databases/SIPResolver;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mFrequencyUpdateTask:Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    goto :goto_0
.end method

.method public FrequencyUpdateHanjaDB(Ljava/lang/String;)Ljava/lang/Void;
    .locals 10
    .param p1, "hanja"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 117
    iget-object v7, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->ProviderAuth:Ljava/lang/String;

    .line 118
    .local v7, "url":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "usedNum"

    aput-object v0, v2, v9

    .line 121
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hanja like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "Selection":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v8, "values":Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 125
    .local v6, "mUsedNum":I
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cr:Landroid/content/ContentResolver;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    .line 127
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 129
    add-int/lit8 v6, v6, 0x1

    .line 132
    :cond_0
    const-string v0, "usedNum"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cr:Landroid/content/ContentResolver;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    return-object v4
.end method

.method public SearchHanja(Ljava/lang/String;)V
    .locals 3
    .param p1, "Hangle"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 45
    :cond_0
    new-instance v1, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;-><init>(Lcom/sec/android/inputmethod/databases/SIPResolver;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mTask:Lcom/sec/android/inputmethod/databases/SIPResolver$SearchTask;

    goto :goto_0
.end method

.method public SearchHanjaDB(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "Hangle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 67
    if-eqz p1, :cond_0

    .line 68
    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mLastHangle:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v9, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->ProviderAuth:Ljava/lang/String;

    .line 72
    .local v9, "url":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "hanja"

    aput-object v0, v2, v10

    const-string v0, "mean"

    aput-object v0, v2, v11

    .line 75
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->mLastHangle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "Selection":Ljava/lang/String;
    const-string v5, "usedNum DESC"

    .line 80
    .local v5, "OrderBy":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    .line 82
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cr:Landroid/content/ContentResolver;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "hanja":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "mean":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, "result":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 93
    .end local v8    # "result":Ljava/lang/String;
    :cond_1
    move-object v8, v6

    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_1

    .line 100
    .end local v6    # "hanja":Ljava/lang/String;
    .end local v7    # "mean":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHanjaCandidate()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver;->m_query:Ljava/util/ArrayList;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
