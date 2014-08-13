.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 621
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)V

    .line 626
    :cond_1
    return-void
.end method
