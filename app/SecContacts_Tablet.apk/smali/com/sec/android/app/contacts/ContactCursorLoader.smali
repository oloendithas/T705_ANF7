.class public Lcom/sec/android/app/contacts/ContactCursorLoader;
.super Landroid/content/CursorLoader;
.source "ContactCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroid/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 168
    iput-object p2, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    .line 169
    iput-object p3, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    .line 171
    iput-object p5, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 172
    iput-object p6, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/content/CursorLoader;->cancelLoadInBackground()V

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 108
    :cond_0
    monitor-exit p0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/content/Loader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const-string v1, "ContactCursorLoader"

    const-string v2, "delivered cursor is already closed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 137
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 139
    invoke-virtual {p0}, Landroid/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 143
    :cond_3
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/ContactCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/CursorLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 273
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 84
    const/4 v6, 0x0

    .line 86
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 91
    :goto_0
    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p0, v6, v0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 96
    :cond_0
    return-object v6

    .line 88
    :catch_0
    move-exception v7

    .line 89
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "ContactCursorLoader"

    const-string v1, "IllegalArgumentException occurs"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mOnLoadCanceledListener:Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "ContactCursorLoader"

    const-string v1, "query is canceled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mOnLoadCanceledListener:Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;->onLoadCanceled()V

    .line 214
    :cond_1
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/ContactCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/content/CursorLoader;->onReset()V

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->onStopLoading()V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->unregisterOnLoadCanceledListener()V

    .line 228
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 188
    :cond_1
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 190
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 199
    return-void
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    return-void
.end method

.method public registerOnLoadCanceledListener(Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mOnLoadCanceledListener:Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->unregisterOnLoadCanceledListener()V

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mOnLoadCanceledListener:Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;

    .line 72
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mProjection:[Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelection:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mUri:Landroid/net/Uri;

    .line 236
    return-void
.end method

.method public unregisterOnLoadCanceledListener()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mOnLoadCanceledListener:Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/ContactCursorLoader;->mOnLoadCanceledListener:Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;

    .line 78
    :cond_0
    return-void
.end method
