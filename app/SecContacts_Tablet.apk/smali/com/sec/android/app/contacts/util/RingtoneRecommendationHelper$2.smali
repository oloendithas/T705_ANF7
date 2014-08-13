.class Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;
.super Ljava/lang/Thread;
.source "RingtoneRecommendationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->doExtract()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 121
    const/4 v9, 0x0

    .line 123
    .local v9, "path":Ljava/lang/String;
    const-string v0, "RingtoneRecommendationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested Uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$100(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$100(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$300(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$100(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    new-instance v11, Lcom/samsung/audio/Smat;

    invoke-direct {v11}, Lcom/samsung/audio/Smat;-><init>()V

    .line 151
    .local v11, "smat":Lcom/samsung/audio/Smat;
    invoke-virtual {v11, v9, v13}, Lcom/samsung/audio/Smat;->init(Ljava/lang/String;I)I

    move-result v10

    .line 153
    .local v10, "result":I
    if-eqz v10, :cond_3

    .line 154
    invoke-virtual {v11}, Lcom/samsung/audio/Smat;->deinit()I

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 137
    .end local v10    # "result":I
    .end local v11    # "smat":Lcom/samsung/audio/Smat;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    if-eqz v6, :cond_0

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 142
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 143
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 144
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v10    # "result":I
    .restart local v11    # "smat":Lcom/samsung/audio/Smat;
    :cond_3
    invoke-virtual {v11}, Lcom/samsung/audio/Smat;->is_extractable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    invoke-virtual {v11}, Lcom/samsung/audio/Smat;->deinit()I

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {v11}, Lcom/samsung/audio/Smat;->extract()I

    move-result v10

    .line 166
    if-nez v10, :cond_6

    .line 167
    const/4 v8, 0x1

    .line 168
    .local v8, "oldStatus":I
    const/4 v12, 0x1

    .line 170
    .local v12, "status":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    :cond_5
    :goto_1
    :pswitch_0
    const-wide/16 v0, 0xc8

    :try_start_2
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    :goto_2
    invoke-virtual {v11}, Lcom/samsung/audio/Smat;->get_stat()I

    move-result v12

    .line 181
    if-eq v8, v12, :cond_5

    .line 182
    move v8, v12

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # setter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mOffset:I
    invoke-static {v0, v13}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$402(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;I)I

    .line 185
    packed-switch v12, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    .line 194
    :pswitch_2
    invoke-virtual {v11}, Lcom/samsung/audio/Smat;->deinit()I

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 175
    :catch_1
    move-exception v7

    .line 176
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 187
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    invoke-virtual {v11}, Lcom/samsung/audio/Smat;->get_info()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit16 v1, v1, 0x3e8

    # setter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mOffset:I
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$402(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;I)I

    .line 188
    invoke-virtual {v11}, Lcom/samsung/audio/Smat;->deinit()I

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 205
    .end local v8    # "oldStatus":I
    .end local v12    # "status":I
    :cond_6
    invoke-virtual {v11}, Lcom/samsung/audio/Smat;->deinit()I

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$2;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$700(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
