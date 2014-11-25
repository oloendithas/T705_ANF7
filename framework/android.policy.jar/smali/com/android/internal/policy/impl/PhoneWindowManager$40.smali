.class Lcom/android/internal/policy/impl/PhoneWindowManager$40;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$forceShow:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .registers 3

    .prologue
    .line 8477
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$40;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$40;->val$forceShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 8479
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$40;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 8481
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$40;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 8482
    .local v1, "updateSettingsIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$40;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v2

    if-nez v2, :cond_24

    .line 8483
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$40;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 8492
    .end local v1    # "updateSettingsIntent":Landroid/content/Intent;
    :cond_23
    :goto_23
    return-void

    .line 8485
    .restart local v1    # "updateSettingsIntent":Landroid/content/Intent;
    :cond_24
    const-string v3, "com.sec.android.multiwindow.ui.forceshow"

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$40;->val$forceShow:Z

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    :goto_2b
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8486
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$40;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_36

    goto :goto_23

    .line 8488
    .end local v1    # "updateSettingsIntent":Landroid/content/Intent;
    :catch_36
    move-exception v0

    .line 8489
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23

    .line 8485
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "updateSettingsIntent":Landroid/content/Intent;
    :cond_3b
    const/4 v2, 0x0

    goto :goto_2b
.end method
