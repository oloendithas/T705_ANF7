.class Lcom/android/contacts/VoLTEStateTracker$3;
.super Landroid/content/BroadcastReceiver;
.source "VoLTEStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/VoLTEStateTracker;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method constructor <init>(Lcom/android/contacts/VoLTEStateTracker;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/contacts/VoLTEStateTracker$3;->this$0:Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/contacts/VoLTEStateTracker$3;->this$0:Lcom/android/contacts/VoLTEStateTracker;

    # getter for: Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/VoLTEStateTracker;->access$000(Lcom/android/contacts/VoLTEStateTracker;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/contacts/VoLTEStateTracker$3;->this$0:Lcom/android/contacts/VoLTEStateTracker;

    iget-object v2, p0, Lcom/android/contacts/VoLTEStateTracker$3;->this$0:Lcom/android/contacts/VoLTEStateTracker;

    # getter for: Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/VoLTEStateTracker;->access$000(Lcom/android/contacts/VoLTEStateTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 286
    .local v0, "isAvailable":Z
    const-string v1, "VolteStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver isVolteEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/android/contacts/VoLTEStateTracker$3;->this$0:Lcom/android/contacts/VoLTEStateTracker;

    # getter for: Lcom/android/contacts/VoLTEStateTracker;->mListener:Lcom/android/contacts/OnVoLTEStateChangedListener;
    invoke-static {v1}, Lcom/android/contacts/VoLTEStateTracker;->access$100(Lcom/android/contacts/VoLTEStateTracker;)Lcom/android/contacts/OnVoLTEStateChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/contacts/OnVoLTEStateChangedListener;->onReceive(Z)V

    .line 289
    .end local v0    # "isAvailable":Z
    :cond_0
    return-void
.end method
