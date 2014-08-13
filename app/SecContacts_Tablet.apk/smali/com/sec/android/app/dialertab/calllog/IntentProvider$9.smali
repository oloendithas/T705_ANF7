.class final Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;
.super Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field final synthetic val$groupSize:I

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$adapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$position:I

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$number:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$groupSize:I

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v3, v4

    .line 305
    .local v3, "PHONES_PROJECTION":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 306
    .local v1, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$adapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v4}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 307
    .local v7, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$position:I

    invoke-interface {v7, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 309
    new-instance v12, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v12, "intent":Landroid/content/Intent;
    const/4 v4, 0x6

    :try_start_0
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 313
    .local v17, "voicemailUri":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 314
    const-string v4, "EXTRA_VOICEMAIL_URI"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 318
    :cond_0
    const-string v4, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const/16 v4, 0xf

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 322
    .local v13, "log_type":I
    const/16 v4, 0x20

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 324
    .local v18, "vvm_id":I
    const/16 v4, 0x3b6

    if-ne v13, v4, :cond_1

    .line 325
    const-string v4, "EXTRA_VVM_ID"

    move/from16 v0, v18

    invoke-virtual {v12, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 330
    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v5, "phone_lookup_with_profile"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$number:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 334
    .local v2, "phoneUri":Landroid/net/Uri;
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 335
    .local v16, "phonesCursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 338
    .local v15, "nameText":Ljava/lang/String;
    if-eqz v16, :cond_2

    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 342
    :cond_2
    if-eqz v16, :cond_3

    .line 343
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$groupSize:I

    new-array v9, v4, [J

    .line 348
    .local v9, "ids":[J
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    .local v10, "idsStr":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$groupSize:I

    if-ge v11, v4, :cond_7

    .line 351
    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 353
    .local v14, "mId":Ljava/lang/String;
    if-nez v11, :cond_6

    .line 354
    const-string v4, "_id="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 350
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 332
    .end local v2    # "phoneUri":Landroid/net/Uri;
    .end local v9    # "ids":[J
    .end local v10    # "idsStr":Ljava/lang/StringBuffer;
    .end local v11    # "index":I
    .end local v14    # "mId":Ljava/lang/String;
    .end local v15    # "nameText":Ljava/lang/String;
    .end local v16    # "phonesCursor":Landroid/database/Cursor;
    :cond_4
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$9;->val$number:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "phoneUri":Landroid/net/Uri;
    goto :goto_0

    .line 342
    .restart local v15    # "nameText":Ljava/lang/String;
    .restart local v16    # "phonesCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_5

    .line 343
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 366
    .end local v2    # "phoneUri":Landroid/net/Uri;
    .end local v13    # "log_type":I
    .end local v15    # "nameText":Ljava/lang/String;
    .end local v16    # "phonesCursor":Landroid/database/Cursor;
    .end local v17    # "voicemailUri":Ljava/lang/String;
    .end local v18    # "vvm_id":I
    :catch_0
    move-exception v8

    .line 367
    .local v8, "e":Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 369
    .end local v8    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :goto_3
    return-object v12

    .line 358
    .restart local v2    # "phoneUri":Landroid/net/Uri;
    .restart local v9    # "ids":[J
    .restart local v10    # "idsStr":Ljava/lang/StringBuffer;
    .restart local v11    # "index":I
    .restart local v13    # "log_type":I
    .restart local v14    # "mId":Ljava/lang/String;
    .restart local v15    # "nameText":Ljava/lang/String;
    .restart local v16    # "phonesCursor":Landroid/database/Cursor;
    .restart local v17    # "voicemailUri":Ljava/lang/String;
    .restart local v18    # "vvm_id":I
    :cond_6
    :try_start_3
    const-string v4, " OR _id= "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 364
    .end local v14    # "mId":Ljava/lang/String;
    :cond_7
    const-string v4, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v4, "EXTRA_CALL_LOG_CONTACT"

    invoke-virtual {v12, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method
