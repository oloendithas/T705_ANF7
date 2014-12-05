.class Lcom/android/keyguard/KeyguardViewMediator$3;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .registers 2

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .registers 8
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v5, 0x1

    .line 752
    const-string v2, "KeyguardViewMediator"

    const-string v3, "mCoverStateListener"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_50

    .line 754
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_unlock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 755
    .local v0, "isAutoUnlock":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    .line 756
    .local v1, "isSecureLock":Z
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyguardMediator isAutoUnlock  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSecureLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-nez v1, :cond_50

    if-ne v0, v5, :cond_50

    .line 758
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v2, v5, v5}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 761
    .end local v0    # "isAutoUnlock":I
    .end local v1    # "isSecureLock":Z
    :cond_50
    return-void
.end method
