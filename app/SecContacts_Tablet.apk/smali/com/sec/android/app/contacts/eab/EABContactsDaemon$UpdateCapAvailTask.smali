.class Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;
.super Landroid/os/AsyncTask;
.source "EABContactsDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCapAvailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/database/Cursor;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V
    .locals 1

    .prologue
    .line 2521
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;

    .prologue
    .line 2521
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2521
    check-cast p1, [Landroid/database/Cursor;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->doInBackground([Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 6
    .param p1, "c"    # [Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 2526
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    .line 2528
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 2547
    :cond_0
    :goto_0
    return-object v5

    .line 2531
    :cond_1
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, "UpdateCapAvailTask doInBackground"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2533
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, "cursor is close so returning back"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2537
    :cond_2
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count in eraseCacheInfo is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2539
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2541
    :cond_3
    const-string v0, "EAB-ContactsEABDaemon"

    const-string v1, "erasing cache value"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    const-string v3, "data10"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->updateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2521
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2553
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2554
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2555
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateCapAvailTask;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2557
    :cond_0
    return-void
.end method
