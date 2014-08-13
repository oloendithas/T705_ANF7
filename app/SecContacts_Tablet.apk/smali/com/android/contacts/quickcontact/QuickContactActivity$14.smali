.class Lcom/android/contacts/quickcontact/QuickContactActivity$14;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1254
    monitor-enter p0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    .line 1255
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->bindLinkedInInfo(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V

    .line 1257
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1259
    const/4 p3, 0x0

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1263
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindDataForShowOrCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    :goto_0
    if-eqz p3, :cond_1

    .line 1340
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1343
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 1265
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2200(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1339
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_3

    .line 1340
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1254
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1270
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1271
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1272
    const-string v0, "QuickContact"

    const-string v1, "cursor == null. It is a rcs contact"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->onServiceQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2300(Lcom/android/contacts/quickcontact/QuickContactActivity;ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 1275
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mFirstQuery:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1277
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1339
    if-eqz p3, :cond_1

    .line 1340
    :try_start_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 1280
    :cond_5
    if-eqz p3, :cond_6

    :try_start_6
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1281
    :cond_6
    const-string v0, "QuickContact"

    const-string v1, "cursor == null. It is not a rcs contact"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1339
    if-eqz p3, :cond_1

    .line 1340
    :try_start_7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1286
    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1287
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1339
    if-eqz p3, :cond_1

    .line 1340
    :try_start_9
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 1289
    :cond_8
    if-eqz p3, :cond_9

    :try_start_a
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 1290
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1291
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1339
    if-eqz p3, :cond_1

    .line 1340
    :try_start_b
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 1294
    :cond_a
    :try_start_c
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v1, 0x7f0e006b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1296
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1339
    if-eqz p3, :cond_1

    .line 1340
    :try_start_d
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    .line 1302
    :cond_b
    :try_start_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1303
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 1304
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->bindPhotoData(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2500(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1339
    if-eqz p3, :cond_1

    .line 1340
    :try_start_f
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_1

    .line 1309
    :cond_c
    :try_start_10
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v0

    if-nez v0, :cond_d

    .line 1339
    if-eqz p3, :cond_1

    .line 1340
    :try_start_11
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_1

    .line 1311
    :cond_d
    :try_start_12
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1312
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASDataLoaded:Z
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1302(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 1314
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2200(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V

    .line 1315
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1316
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1325
    :cond_f
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$14$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$14$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$14;)V

    invoke-static {v0, v1}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1337
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->queryLinkedInInfo()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2700(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1339
    if-eqz p3, :cond_1

    .line 1340
    :try_start_13
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_1
.end method
