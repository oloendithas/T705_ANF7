.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)V
    .registers 2

    .prologue
    .line 3768
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 3771
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 3773
    .local v2, "topActivity":Landroid/content/ComponentName;
    if-eqz v2, :cond_5a

    .line 3775
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3776
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->SFINDER_COMPONENT:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$1800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3777
    const-string v3, "componentname"

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3778
    const-string v3, "callername"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3780
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMenuLongPress: top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3783
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "SFINDER"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 3790
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :goto_59
    return-void

    .line 3785
    .restart local v2    # "topActivity":Landroid/content/ComponentName;
    :cond_5a
    const-string v3, "SamsungWindowManager"

    const-string v4, "handleMenuLongPress: Unknown top activity!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_59

    .line 3787
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :catch_62
    move-exception v0

    .line 3788
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMenuLongPress: Cannot launch activity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method
