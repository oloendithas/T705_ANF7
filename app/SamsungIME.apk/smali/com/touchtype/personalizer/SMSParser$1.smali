.class Lcom/touchtype/personalizer/SMSParser$1;
.super Landroid/os/AsyncTask;
.source "SMSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/SMSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/SMSParser;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/SMSParser;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/touchtype/personalizer/SMSParser$1;->this$0:Lcom/touchtype/personalizer/SMSParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/SMSParser$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 28
    :try_start_0
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 29
    .local v1, "smsURI":Landroid/net/Uri;
    iget-object v0, p0, Lcom/touchtype/personalizer/SMSParser$1;->this$0:Lcom/touchtype/personalizer/SMSParser;

    # getter for: Lcom/touchtype/personalizer/SMSParser;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/touchtype/personalizer/SMSParser;->access$000(Lcom/touchtype/personalizer/SMSParser;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "body"

    aput-object v4, v2, v3

    const-string v3, "person is NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 31
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 33
    const/4 v8, 0x0

    .line 34
    .local v8, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 36
    .local v10, "total":I
    if-nez v10, :cond_1

    .line 37
    # getter for: Lcom/touchtype/personalizer/SMSParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/SMSParser;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No messages to parse!"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 68
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 87
    .end local v1    # "smsURI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "index":I
    .end local v10    # "total":I
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 42
    .restart local v1    # "smsURI":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "index":I
    .restart local v10    # "total":I
    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 44
    .local v9, "msgText":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/touchtype/personalizer/SMSParser$1;->this$0:Lcom/touchtype/personalizer/SMSParser;

    # getter for: Lcom/touchtype/personalizer/SMSParser;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {v0}, Lcom/touchtype/personalizer/SMSParser;->access$200(Lcom/touchtype/personalizer/SMSParser;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    sget-object v2, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v9, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V

    .line 50
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 51
    rem-int/lit8 v0, v8, 0xa

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 74
    .end local v1    # "smsURI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "index":I
    .end local v9    # "msgText":Ljava/lang/String;
    .end local v10    # "total":I
    :catch_0
    move-exception v7

    .line 77
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    # getter for: Lcom/touchtype/personalizer/SMSParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/SMSParser;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error building SMS query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "smsURI":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "index":I
    .restart local v9    # "msgText":Ljava/lang/String;
    .restart local v10    # "total":I
    :cond_2
    :try_start_1
    # getter for: Lcom/touchtype/personalizer/SMSParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/SMSParser;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Null message found. Ignoring..."

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 80
    .end local v1    # "smsURI":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "index":I
    .end local v9    # "msgText":Ljava/lang/String;
    .end local v10    # "total":I
    :catch_1
    move-exception v7

    .line 83
    .local v7, "e":Ljava/lang/SecurityException;
    # getter for: Lcom/touchtype/personalizer/SMSParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/SMSParser;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS read permission denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 56
    .end local v7    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "smsURI":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "index":I
    .restart local v10    # "total":I
    :cond_3
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :try_start_3
    iget-object v0, p0, Lcom/touchtype/personalizer/SMSParser$1;->this$0:Lcom/touchtype/personalizer/SMSParser;

    # getter for: Lcom/touchtype/personalizer/SMSParser;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {v0}, Lcom/touchtype/personalizer/SMSParser;->access$200(Lcom/touchtype/personalizer/SMSParser;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->writeDynamicModel()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 62
    :catch_2
    move-exception v7

    .line 63
    .local v7, "e":Ljava/io/IOException;
    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 71
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "index":I
    .end local v10    # "total":I
    :cond_4
    # getter for: Lcom/touchtype/personalizer/SMSParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/SMSParser;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SMS Parsing cursor was null"

    invoke-static {v0, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/SMSParser$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/touchtype/personalizer/SMSParser$1;->this$0:Lcom/touchtype/personalizer/SMSParser;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/SMSParser;->onComplete()V

    .line 98
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/touchtype/personalizer/SMSParser$1;->this$0:Lcom/touchtype/personalizer/SMSParser;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/touchtype/personalizer/SMSParser;->onProgress(II)V

    .line 93
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/SMSParser$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
