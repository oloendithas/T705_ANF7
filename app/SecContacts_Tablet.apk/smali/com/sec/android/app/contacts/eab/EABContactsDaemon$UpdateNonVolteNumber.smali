.class Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateNonVolteNumber;
.super Landroid/os/AsyncTask;
.source "EABContactsDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateNonVolteNumber"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V
    .locals 0

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateNonVolteNumber;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;

    .prologue
    .line 1357
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdateNonVolteNumber;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1360
    const-string v0, "updateNonVolteNumber in background"

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 1361
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->updateDatabase(Ljava/lang/String;)I

    .line 1362
    const/4 v0, 0x0

    return-object v0
.end method
