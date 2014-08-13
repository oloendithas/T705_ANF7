.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "InteractionTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 447
    const-string v0, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 450
    :cond_0
    return-void
.end method
