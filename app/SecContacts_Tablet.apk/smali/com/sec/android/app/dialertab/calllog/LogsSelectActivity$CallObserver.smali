.class Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;
.super Landroid/database/ContentObserver;
.source "LogsSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    .line 430
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 431
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "b"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 435
    const-string v0, "LogsSelectActivity"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x1

    # setter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$002(Z)Z

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_0
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 443
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->selection:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->sortOrder:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    # setter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$202(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 453
    :cond_2
    return-void

    .line 446
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    # setter for: Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->access$202(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method
