.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openSaveToDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 2174
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2176
    packed-switch p2, :pswitch_data_0

    .line 2252
    :cond_0
    :goto_0
    return-void

    .line 2180
    :pswitch_0
    const-string v1, "feature_cnam"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->LOG_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2185
    .local v14, "cursor_cityid":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2186
    .local v6, "city_id":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 2187
    const-string v1, "type"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 2188
    .local v16, "idxCallType":I
    const-string v1, "cnap_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2190
    .local v17, "idxCnapName":I
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2191
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2192
    .local v15, "iCallType":I
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    .line 2195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    .line 2196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 2198
    const/4 v1, 0x2

    if-eq v15, v1, :cond_1

    .line 2199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    .line 2200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    .line 2201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 2204
    .end local v15    # "iCallType":I
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2205
    const/4 v14, 0x0

    .line 2206
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2207
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firstname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Lastname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CnapName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " City ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v5, v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->createContactWithCnap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2212
    .end local v6    # "city_id":Ljava/lang/String;
    .end local v14    # "cursor_cityid":Landroid/database/Cursor;
    .end local v16    # "idxCallType":I
    .end local v17    # "idxCnapName":I
    :cond_3
    const-string v1, "feature_cnap"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v1, "content://logs/call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->LOG_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2218
    .local v13, "cursorCnap":Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 2219
    const-string v1, "type"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 2220
    .restart local v16    # "idxCallType":I
    const-string v1, "cnap_name"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2221
    .restart local v17    # "idxCnapName":I
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2222
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2223
    .restart local v15    # "iCallType":I
    const/4 v1, 0x2

    if-eq v15, v1, :cond_4

    .line 2224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 2227
    .end local v15    # "iCallType":I
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2228
    const/4 v13, 0x0

    .line 2230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->createContactWithCnap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2233
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->createContact(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2239
    .end local v13    # "cursorCnap":Landroid/database/Cursor;
    .end local v16    # "idxCallType":I
    .end local v17    # "idxCnapName":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->createContact(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2246
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->updateContact(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
