.class Lcom/android/internal/policy/impl/PhoneWindowManager$35;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->setRotationLw(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 8034
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 8039
    :try_start_0
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000()Landroid/os/DVFSHelper;

    move-result-object v0

    if-nez v0, :cond_21

    .line 8040
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3002(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    .line 8041
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000()Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 8043
    :cond_21
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000()Landroid/os/DVFSHelper;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 8044
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000()Landroid/os/DVFSHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    .line 8049
    :goto_37
    return-void

    .line 8048
    :catch_38
    move-exception v0

    goto :goto_37
.end method
