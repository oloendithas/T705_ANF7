.class Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$30;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$30;)V
    .registers 2

    .prologue
    .line 7538
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 7540
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7541
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "kids_home_mode"

    const/4 v4, -0x2

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_35

    .line 7542
    .local v0, "isKidsLauncherEnabled":Z
    :goto_15
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_BOOT_COMPLETED isKidsLauncherEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7543
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$30$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$30;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->setStatusBarExpandable(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .line 7544
    return-void

    .end local v0    # "isKidsLauncherEnabled":Z
    :cond_35
    move v0, v2

    .line 7541
    goto :goto_15
.end method
