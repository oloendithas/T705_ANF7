.class Lcom/android/contacts/activities/DialtactsActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/DialtactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$13;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1082
    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$13;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1084
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "DialtactsActivity"

    const-string v2, "onReceive : finish"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$13;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1087
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
