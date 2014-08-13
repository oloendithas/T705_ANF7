.class public Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "DeleteContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/DeleteContactsInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTaskIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 482
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->initPowerWaekLock(Landroid/app/Activity;)V

    .line 483
    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->finishPeopleActivity()V

    return-void
.end method

.method private deleteProfile(Landroid/app/Activity;J)V
    .locals 6
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "contactId"    # J

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    const-string v2, "contact_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method private finishPeopleActivity()V
    .locals 2

    .prologue
    .line 546
    iget-object v1, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 548
    .local v0, "activity":Landroid/app/Activity;
    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 549
    return-void
.end method

.method private initPowerWaekLock(Landroid/app/Activity;)V
    .locals 4
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 486
    move-object v0, p1

    .line 487
    .local v0, "context":Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 489
    .local v1, "powerManager":Landroid/os/PowerManager;
    const v2, 0x20000006

    const-string v3, "UpdateTaskIds"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 491
    return-void
.end method

.method private obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds$1;-><init>(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 502
    .local v0, "progress":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ProgressDialog;>;"
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 503
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const v2, 0x7f0e0221

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, -0x3

    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds$2;

    invoke-direct {v4, p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds$2;-><init>(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 518
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 519
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 476
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 14
    .param p1, "target"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 554
    .local p2, "params":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v10, 0x0

    aget-object v4, p2, v10

    .line 555
    .local v4, "delete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 557
    .local v0, "contactSize":I
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 559
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_5

    .line 561
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$000()Z

    move-result v10

    if-nez v10, :cond_4

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v7, "idsBuilder":Ljava/lang/StringBuilder;
    const/16 v10, 0x32

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v5

    if-ge v10, v11, :cond_1

    const/16 v3, 0x32

    .line 571
    .local v3, "count":I
    :goto_1
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v3, :cond_3

    .line 572
    if-nez v8, :cond_2

    .line 573
    const-string v10, " ( "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :goto_3
    add-int v10, v5, v8

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 579
    .local v1, "contactsId":J
    invoke-static {v1, v2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 580
    add-int v10, v5, v8

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, p1, v10, v11}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->deleteProfile(Landroid/app/Activity;J)V

    .line 583
    :cond_0
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 571
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 564
    .end local v1    # "contactsId":J
    .end local v3    # "count":I
    .end local v8    # "j":I
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v3, v10, v5

    goto :goto_1

    .line 575
    .restart local v3    # "count":I
    .restart local v8    # "j":I
    :cond_2
    const-string v10, " , "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 585
    :cond_3
    const-string v10, " ) "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    add-int v12, v5, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 590
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "contact_id in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 559
    .end local v3    # "count":I
    .end local v7    # "idsBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x32

    goto/16 :goto_0

    .line 592
    .restart local v3    # "count":I
    .restart local v7    # "idsBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "j":I
    :catch_0
    move-exception v6

    .line 593
    .local v6, "iae":Ljava/lang/IllegalArgumentException;
    const-string v10, "deleteContacts"

    const-string v11, "Error occured : "

    invoke-static {v10, v11, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    const/4 v10, 0x0

    .line 602
    .end local v3    # "count":I
    .end local v6    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v7    # "idsBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "j":I
    :goto_4
    return-object v10

    .line 595
    .restart local v3    # "count":I
    .restart local v7    # "idsBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "j":I
    :catch_1
    move-exception v9

    .line 596
    .local v9, "npe":Ljava/lang/NullPointerException;
    const-string v10, "deleteContacts"

    const-string v11, "Error occured : "

    invoke-static {v10, v11, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    const/4 v10, 0x0

    goto :goto_4

    .line 602
    .end local v3    # "count":I
    .end local v7    # "idsBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "j":I
    .end local v9    # "npe":Ljava/lang/NullPointerException;
    :cond_5
    const/4 v10, 0x0

    goto :goto_4
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V
    .locals 6
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 624
    move-object v0, p1

    .line 625
    .local v0, "context":Landroid/content/Context;
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_3

    .line 626
    const-string v2, "deleteContacts"

    const-string v3, "progress null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_0
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$200()Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$200()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$200()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 642
    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$202(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 645
    :cond_0
    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z
    invoke-static {v4}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$402(Z)Z

    .line 646
    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z
    invoke-static {v4}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$502(Z)Z

    .line 648
    instance-of v2, p1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_5

    .line 651
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$000()Z

    move-result v2

    if-nez v2, :cond_1

    .line 652
    check-cast p1, Lcom/android/contacts/activities/PeopleActivity;

    .end local p1    # "target":Landroid/app/Activity;
    invoke-virtual {p1, v4}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 661
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 665
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 666
    return-void

    .line 628
    .restart local p1    # "target":Landroid/app/Activity;
    :cond_3
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 629
    const-string v2, "deleteContacts"

    const-string v3, "progress.get null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    :cond_4
    :try_start_0
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 633
    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "deleteContacts"

    const-string v3, "Error dismissing progress dialog"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 655
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 656
    instance-of v2, p1, Lcom/android/contacts/activities/NamecardListActivity;

    if-eqz v2, :cond_6

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 657
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 476
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 3
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 525
    move-object v0, p1

    .line 527
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 529
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 530
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 534
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 535
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 476
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 606
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 608
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 610
    :cond_1
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 611
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 612
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 476
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 538
    move-object v0, p1

    .line 540
    .local v0, "context":Landroid/content/Context;
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    .line 541
    .local v1, "max":I
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 542
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 543
    return-void
.end method
