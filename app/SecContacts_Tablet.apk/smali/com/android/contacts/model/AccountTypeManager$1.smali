.class Lcom/android/contacts/model/AccountTypeManager$1;
.super Landroid/os/Handler;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManager;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManager$1;->this$0:Lcom/android/contacts/model/AccountTypeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManager$1;->this$0:Lcom/android/contacts/model/AccountTypeManager;

    # getter for: Lcom/android/contacts/model/AccountTypeManager;->mListener:Lcom/android/contacts/model/AccountTypeManager$Listener;
    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->access$000(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/AccountTypeManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManager$1;->this$0:Lcom/android/contacts/model/AccountTypeManager;

    # getter for: Lcom/android/contacts/model/AccountTypeManager;->mListener:Lcom/android/contacts/model/AccountTypeManager$Listener;
    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->access$000(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/AccountTypeManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/model/AccountTypeManager$Listener;->onLoadFinished()V

    .line 137
    :cond_0
    return-void
.end method
