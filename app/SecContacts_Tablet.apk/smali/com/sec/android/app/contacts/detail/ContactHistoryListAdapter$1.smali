.class Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;
.super Ljava/lang/Object;
.source "ContactHistoryListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 281
    .local v14, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 395
    :goto_0
    return-void

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 286
    .local v4, "fragment":Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    invoke-virtual {v4, v14}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setCheckPosition(I)V

    .line 287
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateAllCheckState()V

    goto :goto_0

    .line 291
    .end local v4    # "fragment":Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x6

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, "messageId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 294
    .local v8, "logType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x3

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 295
    .local v13, "nametext":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 296
    .local v10, "messageLongId":J
    if-eqz v9, :cond_2

    .line 298
    :try_start_0
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 305
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 306
    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 309
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x4

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "logNumber":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.CALL_PRIVILEGED"

    const-string v19, "tel"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    .local v6, "intent":Landroid/content/Intent;
    const v18, 0x10008000

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 299
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "logNumber":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300()Ljava/lang/String;

    move-result-object v18

    const-string v19, "NumberFormatException while parsing messageId"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x4

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 318
    .local v16, "vtcall_logNumber":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.CALL_PRIVILEGED"

    const-string v19, "tel"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 320
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v18, "videocall"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const v18, 0x10008000

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 325
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v16    # "vtcall_logNumber":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x4

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 326
    .local v15, "vopicall_logNumber":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.CALL_PRIVILEGED"

    const-string v19, "tel"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v15, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 328
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v18, "voipcall"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    const v18, 0x10008000

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 334
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v15    # "vopicall_logNumber":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v20

    const/16 v21, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    # invokes: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMmsForTablet(IJLjava/lang/String;)V
    invoke-static {v0, v1, v10, v11, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0xc8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v20

    const/16 v21, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    # invokes: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMmsForTablet(IJLjava/lang/String;)V
    invoke-static {v0, v1, v10, v11, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V
    invoke-static {v0, v10, v11}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;J)V

    goto/16 :goto_0

    .line 344
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x6

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 345
    .local v12, "message_id":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v19, "voicemail"

    const-string v20, ""

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 346
    .local v17, "vvmIntent":Landroid/content/Intent;
    const-string v18, "MESSAGE_ID"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 354
    .end local v12    # "message_id":Ljava/lang/String;
    .end local v17    # "vvmIntent":Landroid/content/Intent;
    :cond_3
    sparse-switch v8, :sswitch_data_1

    goto/16 :goto_0

    .line 359
    :sswitch_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    .local v5, "idsStr":Ljava/lang/StringBuffer;
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v18

    const-class v19, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v18, "_id="

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const-string v18, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v18, "EXTRA_CALL_LOG_CONTACT"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 369
    .end local v5    # "idsStr":Ljava/lang/StringBuffer;
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x6

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 370
    .restart local v12    # "message_id":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v19, "voicemail"

    const-string v20, ""

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 371
    .restart local v17    # "vvmIntent":Landroid/content/Intent;
    const-string v18, "MESSAGE_ID"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 378
    .end local v12    # "message_id":Ljava/lang/String;
    .end local v17    # "vvmIntent":Landroid/content/Intent;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x12c

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(IJ)V
    invoke-static {v0, v1, v10, v11}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V

    goto/16 :goto_0

    .line 385
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0xc8

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(IJ)V
    invoke-static {v0, v1, v10, v11}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V

    goto/16 :goto_0

    .line 389
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V
    invoke-static {v0, v10, v11}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;J)V

    goto/16 :goto_0

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_3
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
        0x384 -> :sswitch_6
        0x3e8 -> :sswitch_0
    .end sparse-switch

    .line 354
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_a
        0x12c -> :sswitch_9
        0x190 -> :sswitch_b
        0x1f4 -> :sswitch_7
        0x320 -> :sswitch_7
        0x384 -> :sswitch_8
        0x3e8 -> :sswitch_7
    .end sparse-switch
.end method
