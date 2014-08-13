.class Lcom/touchtype/personalizer/ContactsParser$1;
.super Landroid/os/AsyncTask;
.source "ContactsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/ContactsParser;
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
.field final synthetic this$0:Lcom/touchtype/personalizer/ContactsParser;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/ContactsParser;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/ContactsParser$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 33
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 34
    .local v3, "contactsURI":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    # getter for: Lcom/touchtype/personalizer/ContactsParser;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/touchtype/personalizer/ContactsParser;->access$000(Lcom/touchtype/personalizer/ContactsParser;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 35
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    move-result-object v17

    .line 36
    .local v17, "swiftkyManager":Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    if-eqz v10, :cond_8

    .line 37
    const/4 v14, 0x0

    .line 38
    .local v14, "index":I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 39
    .local v19, "total":I
    if-nez v19, :cond_3

    .line 40
    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "No messages to parse!"

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 90
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 109
    .end local v3    # "contactsURI":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "index":I
    .end local v17    # "swiftkyManager":Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .end local v19    # "total":I
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 57
    .restart local v3    # "contactsURI":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "index":I
    .local v15, "name":Ljava/lang/String;
    .restart local v17    # "swiftkyManager":Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .restart local v19    # "total":I
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v15, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnFieldSpecificContext(Ljava/lang/String;I)V

    .line 63
    :cond_2
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    .line 64
    rem-int/lit8 v2, v14, 0xa

    if-nez v2, :cond_3

    .line 65
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 44
    .end local v15    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 45
    const-string v2, "display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 47
    .restart local v15    # "name":Ljava/lang/String;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 48
    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v2, " "

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v16, "stk":Ljava/util/StringTokenizer;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 53
    .local v18, "token":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnFieldSpecificContext(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 96
    .end local v3    # "contactsURI":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "index":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "stk":Ljava/util/StringTokenizer;
    .end local v17    # "swiftkyManager":Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .end local v18    # "token":Ljava/lang/String;
    .end local v19    # "total":I
    :catch_0
    move-exception v11

    .line 99
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error building Contacts query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 60
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v3    # "contactsURI":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "index":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "swiftkyManager":Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .restart local v19    # "total":I
    :cond_4
    :try_start_1
    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Null message found. Ignoring..."

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 102
    .end local v3    # "contactsURI":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v14    # "index":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "swiftkyManager":Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .end local v19    # "total":I
    :catch_1
    move-exception v11

    .line 105
    .local v11, "e":Ljava/lang/SecurityException;
    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contacts read permission denied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 69
    .end local v11    # "e":Ljava/lang/SecurityException;
    .restart local v3    # "contactsURI":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "index":I
    .restart local v17    # "swiftkyManager":Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .restart local v19    # "total":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    # getter for: Lcom/touchtype/personalizer/ContactsParser;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/touchtype/personalizer/ContactsParser;->access$000(Lcom/touchtype/personalizer/ContactsParser;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 70
    .local v4, "cr":Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 71
    .local v13, "emailCur":Landroid/database/Cursor;
    :cond_6
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 72
    const-string v2, "data1"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "email":Ljava/lang/String;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 74
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v12, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnFieldSpecificContext(Ljava/lang/String;I)V

    goto :goto_4

    .line 77
    .end local v12    # "email":Ljava/lang/String;
    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 78
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    add-int/lit8 v6, v14, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 83
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    # getter for: Lcom/touchtype/personalizer/ContactsParser;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {v2}, Lcom/touchtype/personalizer/ContactsParser;->access$200(Lcom/touchtype/personalizer/ContactsParser;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->writeDynamicModel()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 84
    :catch_2
    move-exception v11

    .line 85
    .local v11, "e":Ljava/io/IOException;
    const/4 v2, 0x2

    :try_start_4
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 93
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "emailCur":Landroid/database/Cursor;
    .end local v14    # "index":I
    .end local v19    # "total":I
    :cond_8
    # getter for: Lcom/touchtype/personalizer/ContactsParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/ContactsParser;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Contacts Parsing cursor was null"

    invoke-static {v2, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/ContactsParser$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/ContactsParser;->onComplete()V

    .line 120
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/touchtype/personalizer/ContactsParser$1;->this$0:Lcom/touchtype/personalizer/ContactsParser;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/touchtype/personalizer/ContactsParser;->onProgress(II)V

    .line 115
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/touchtype/personalizer/ContactsParser$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
