.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 2

    .prologue
    .line 436
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 438
    const/4 v4, 0x0

    .line 440
    .local v4, "needUpdate":Z
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    .line 441
    .local v1, "coverOpen":Z
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v5

    if-eq v1, v5, :cond_15

    .line 442
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z
    invoke-static {v5, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 443
    const/4 v4, 0x1

    .line 446
    :cond_15
    const/4 v2, 0x0

    .line 448
    .local v2, "isDreaming":Z
    :try_start_16
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/service/dreams/IDreamManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 449
    const/4 v2, 0x1

    .line 450
    const-string/jumbo v5, "toolbox"

    const-string v6, "Daydream isDreaming"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2b} :catch_8b

    .line 455
    :cond_2b
    :goto_2b
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    invoke-interface {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;->isKeyguardShowing()Z

    move-result v5

    if-nez v5, :cond_4b

    if-nez v2, :cond_4b

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    invoke-interface {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_89

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    invoke-interface {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;->inKeyguardRestrictedKeyInputMode()Z

    move-result v5

    if-eqz v5, :cond_89

    :cond_4b
    const/4 v3, 0x1

    .line 457
    .local v3, "keyguardShowing":Z
    :goto_4c
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v5

    if-eq v3, v5, :cond_5a

    .line 458
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z
    invoke-static {v5, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 459
    const/4 v4, 0x1

    .line 462
    :cond_5a
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableOTA()Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v0

    .line 463
    .local v0, "OTAShowing":Z
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z
    invoke-static {v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v5

    if-eq v0, v5, :cond_6e

    .line 464
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z
    invoke-static {v5, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 465
    const/4 v4, 0x1

    .line 468
    :cond_6e
    if-eqz v4, :cond_88

    .line 469
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 470
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 472
    :cond_88
    return-void

    .line 455
    .end local v0    # "OTAShowing":Z
    .end local v3    # "keyguardShowing":Z
    :cond_89
    const/4 v3, 0x0

    goto :goto_4c

    .line 452
    :catch_8b
    move-exception v5

    goto :goto_2b
.end method
