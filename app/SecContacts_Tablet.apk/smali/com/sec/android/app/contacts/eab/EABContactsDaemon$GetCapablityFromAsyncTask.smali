.class Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;
.super Landroid/os/AsyncTask;
.source "EABContactsDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCapablityFromAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private capability:Ljava/lang/String;

.field private raw_id:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V
    .locals 1

    .prologue
    .line 2483
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2485
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->capability:Ljava/lang/String;

    .line 2487
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->raw_id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;

    .prologue
    .line 2483
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2483
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "rawId"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2491
    const-string v0, "EAB-ContactsEABDaemon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetCapablityFromAsyncTask doInBackground with rawId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and volteMDN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    aget-object v0, p1, v3

    if-eqz v0, :cond_1

    .line 2495
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->raw_id:Ljava/lang/String;

    .line 2497
    const-string v0, "1"

    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2498
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    aget-object v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCompatibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->capability:Ljava/lang/String;

    .line 2505
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->capability:Ljava/lang/String;

    return-object v0

    .line 2500
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->capability:Ljava/lang/String;

    goto :goto_0

    .line 2503
    :cond_1
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->capability:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2483
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 2511
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2512
    sget-object v0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$GetCapablityFromAsyncTask;->raw_id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2513
    return-void
.end method
