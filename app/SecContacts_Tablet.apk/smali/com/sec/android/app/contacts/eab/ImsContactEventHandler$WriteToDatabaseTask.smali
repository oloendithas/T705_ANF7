.class Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;
.super Landroid/os/AsyncTask;
.source "ImsContactEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteToDatabaseTask"
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;-><init>(Lcom/sec/android/app/contacts/eab/ImsContactEventHandler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "EAB-ImsContactEventHandler"

    const-string v1, "  WriteToDatabaseTask  doInBackground is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->handleSubscribeNotifyContactInfoForAProfile(Ljava/lang/String;)Z

    .line 184
    const-string v0, "success"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/ImsContactEventHandler$WriteToDatabaseTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v0, "EAB-ImsContactEventHandler"

    const-string v1, "  WriteToDatabaseTask  onPostExecute is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method
