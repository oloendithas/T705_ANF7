.class Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdaterTask;
.super Landroid/os/AsyncTask;
.source "EABContactsDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdaterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V
    .locals 0

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdaterTask;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;

    .prologue
    .line 1638
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdaterTask;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1638
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdaterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$UpdaterTask;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->updateUsersAvailability(Ljava/lang/String;)V

    .line 1643
    const/4 v0, 0x0

    return-object v0
.end method
