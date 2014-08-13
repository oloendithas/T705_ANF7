.class public Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "PrivateContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/PrivateContactsInteraction;
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
    .line 236
    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->initPowerWaekLock(Landroid/app/Activity;)V

    .line 238
    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->finishPeopleActivity()V

    return-void
.end method

.method private finishPeopleActivity()V
    .locals 2

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 303
    .local v0, "activity":Landroid/app/Activity;
    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 304
    return-void
.end method

.method private initPowerWaekLock(Landroid/app/Activity;)V
    .locals 4
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 241
    move-object v0, p1

    .line 242
    .local v0, "context":Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 244
    .local v1, "powerManager":Landroid/os/PowerManager;
    const v2, 0x20000006

    const-string v3, "UpdateTask"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 246
    return-void
.end method

.method private obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;
    .locals 6
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
    .line 249
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask$1;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask$1;-><init>(Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 256
    .local v1, "progress":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ProgressDialog;>;"
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsRemove:Z
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0e0221

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 258
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    const/4 v3, -0x3

    const/high16 v4, 0x1040000

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask$2;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask$2;-><init>(Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 273
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 274
    return-object v1

    .line 256
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0e0222

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 11
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
    .local p2, "params":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 311
    aget-object v0, p2, v7

    .line 312
    .local v0, "addprivate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 313
    .local v1, "contactSize":I
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 314
    .local v2, "context":Landroid/content/Context;
    new-array v5, v10, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 316
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 317
    .local v4, "values":Landroid/content/ContentValues;
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsRemove:Z
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 318
    const-string v5, "is_private"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 324
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceled:Z
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$100()Z

    move-result v5

    if-nez v5, :cond_0

    .line 326
    new-array v5, v10, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v6, v5, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 320
    .end local v3    # "i":I
    :cond_1
    const-string v5, "is_private"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 331
    .restart local v3    # "i":I
    :cond_2
    return-object v9
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V
    .locals 6
    .param p1, "target"    # Landroid/app/Activity;
    .param p2, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 343
    move-object v0, p1

    .line 344
    .local v0, "context":Landroid/content/Context;
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_3

    .line 345
    const-string v2, "addPrivateContacts"

    const-string v3, "progress null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$300()Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$300()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$300()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 361
    # setter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$302(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 364
    :cond_0
    # setter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsTaskRunning:Z
    invoke-static {v4}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$502(Z)Z

    .line 365
    # setter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mActive:Z
    invoke-static {v4}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$602(Z)Z

    .line 367
    instance-of v2, p1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_5

    .line 370
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceled:Z
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$100()Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    check-cast p1, Lcom/android/contacts/activities/PeopleActivity;

    .end local p1    # "target":Landroid/app/Activity;
    invoke-virtual {p1, v4}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 378
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 383
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 384
    return-void

    .line 347
    .restart local p1    # "target":Landroid/app/Activity;
    :cond_3
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 348
    const-string v2, "addPrivateContacts"

    const-string v3, "progress.get null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_4
    :try_start_0
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 352
    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$402(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "addPrivateContacts"

    const-string v3, "Error dismissing progress dialog"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 374
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 375
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 3
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 280
    move-object v0, p1

    .line 282
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 284
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    # setter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$402(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 285
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 289
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 290
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 335
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 336
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 337
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 293
    move-object v0, p1

    .line 295
    .local v0, "context":Landroid/content/Context;
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    .line 296
    .local v1, "max":I
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    # setter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$402(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 297
    # getter for: Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 298
    return-void
.end method
