.class public Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "DeleteContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/DeleteContactsInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/net/Uri;",
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
    .line 285
    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->initPowerWaekLock(Landroid/app/Activity;)V

    .line 287
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->finishPeopleActivity()V

    return-void
.end method

.method private deleteProfile(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 424
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method private finishPeopleActivity()V
    .locals 2

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 352
    .local v0, "activity":Landroid/app/Activity;
    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 353
    return-void
.end method

.method private initPowerWaekLock(Landroid/app/Activity;)V
    .locals 4
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 290
    move-object v0, p1

    .line 291
    .local v0, "context":Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 293
    .local v1, "powerManager":Landroid/os/PowerManager;
    const v2, 0x20000006

    const-string v3, "UpdateTask"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 295
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
    .line 298
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$1;-><init>(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 306
    .local v0, "progress":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ProgressDialog;>;"
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const v2, 0x7f0e0221

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, -0x3

    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;

    invoke-direct {v4, p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;-><init>(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 322
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 323
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 280
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 13
    .param p1, "target"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 358
    .local p2, "params":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v9, 0x0

    aget-object v3, p2, v9

    .line 359
    .local v3, "delete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 361
    .local v0, "contactSize":I
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 363
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 365
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$000()Z

    move-result v9

    if-nez v9, :cond_4

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v6, "idsBuilder":Ljava/lang/StringBuilder;
    const/16 v9, 0x32

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v4

    if-ge v9, v10, :cond_1

    const/16 v2, 0x32

    .line 375
    .local v2, "count":I
    :goto_1
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v2, :cond_3

    .line 376
    if-nez v7, :cond_2

    .line 377
    const-string v9, " ( "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :goto_3
    add-int v9, v4, v7

    :try_start_0
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 388
    .local v1, "contactsId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 389
    add-int v9, v4, v7

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-direct {p0, p1, v9}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->deleteProfile(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 392
    :cond_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 368
    .end local v1    # "contactsId":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v7    # "j":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v2, v9, v4

    goto :goto_1

    .line 379
    .restart local v2    # "count":I
    .restart local v7    # "j":I
    :cond_2
    const-string v9, " , "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 384
    :catch_0
    move-exception v8

    .line 385
    .local v8, "npe":Ljava/lang/NullPointerException;
    const-string v9, "deleteContacts"

    const-string v10, "Error occured : "

    invoke-static {v9, v10, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    const/4 v9, 0x0

    .line 411
    .end local v2    # "count":I
    .end local v6    # "idsBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "j":I
    .end local v8    # "npe":Ljava/lang/NullPointerException;
    :goto_4
    return-object v9

    .line 394
    .restart local v2    # "count":I
    .restart local v6    # "idsBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "j":I
    :cond_3
    const-string v9, " ) "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int v11, v4, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 399
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contact_id in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 363
    .end local v2    # "count":I
    .end local v6    # "idsBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v4, v4, 0x32

    goto/16 :goto_0

    .line 401
    .restart local v2    # "count":I
    .restart local v6    # "idsBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "j":I
    :catch_1
    move-exception v5

    .line 402
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    const-string v9, "deleteContacts"

    const-string v10, "Error occured : "

    invoke-static {v9, v10, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    const/4 v9, 0x0

    goto :goto_4

    .line 404
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 405
    .restart local v8    # "npe":Ljava/lang/NullPointerException;
    const-string v9, "deleteContacts"

    const-string v10, "Error occured : "

    invoke-static {v9, v10, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    const/4 v9, 0x0

    goto :goto_4

    .line 411
    .end local v2    # "count":I
    .end local v6    # "idsBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "j":I
    .end local v8    # "npe":Ljava/lang/NullPointerException;
    :cond_5
    const/4 v9, 0x0

    goto :goto_4
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V
    .locals 6
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 430
    move-object v0, p1

    .line 431
    .local v0, "context":Landroid/content/Context;
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_3

    .line 432
    const-string v2, "deleteContacts"

    const-string v3, "progress null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
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

    .line 447
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$200()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 448
    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$202(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 451
    :cond_0
    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z
    invoke-static {v4}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$402(Z)Z

    .line 452
    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z
    invoke-static {v4}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$502(Z)Z

    .line 454
    instance-of v2, p1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_5

    .line 457
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$000()Z

    move-result v2

    if-nez v2, :cond_1

    .line 458
    check-cast p1, Lcom/android/contacts/activities/PeopleActivity;

    .end local p1    # "target":Landroid/app/Activity;
    invoke-virtual {p1, v4}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 467
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 471
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 472
    return-void

    .line 434
    .restart local p1    # "target":Landroid/app/Activity;
    :cond_3
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 435
    const-string v2, "deleteContacts"

    const-string v3, "progress.get null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_4
    :try_start_0
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 439
    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "deleteContacts"

    const-string v3, "Error dismissing progress dialog"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 462
    instance-of v2, p1, Lcom/android/contacts/activities/NamecardListActivity;

    if-eqz v2, :cond_6

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 280
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 3
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 329
    move-object v0, p1

    .line 331
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 333
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 334
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 338
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 339
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 280
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 415
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

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 417
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 419
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

    .line 420
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

    .line 421
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 280
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 342
    move-object v0, p1

    .line 344
    .local v0, "context":Landroid/content/Context;
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    .line 345
    .local v1, "max":I
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    # setter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 346
    # getter for: Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 347
    return-void
.end method
