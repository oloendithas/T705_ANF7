.class Lcom/sec/android/app/contacts/eab/EABContactsDaemon$4;
.super Landroid/os/Handler;
.source "EABContactsDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$4;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 621
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12f

    if-ne v0, v1, :cond_0

    .line 622
    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$200()Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    const-string v0, "RANI PUBLISH to be sent  : "

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 624
    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sContactAdapter:Lcom/sec/android/app/contacts/eab/IImsContactAdapter;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$200()Lcom/sec/android/app/contacts/eab/IImsContactAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/contacts/eab/IImsContactAdapter;->publishPresence()I

    .line 628
    :cond_0
    return-void
.end method
