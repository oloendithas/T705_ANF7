.class Lcom/sec/android/inputmethod/Booster$BoosterHandler;
.super Landroid/os/Handler;
.source "Booster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/Booster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BoosterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/Booster;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/Booster;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private doStopAndTerminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$000(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$000(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$000(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$100(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$100(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$100(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # setter for: Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/Booster;->access$002(Lcom/sec/android/inputmethod/Booster;Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    .line 70
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # setter for: Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/Booster;->access$102(Lcom/sec/android/inputmethod/Booster;Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    .line 71
    return-void
.end method

.method private doStopSelf()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$000(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$000(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$100(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->this$0:Lcom/sec/android/inputmethod/Booster;

    # getter for: Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/sec/android/inputmethod/Booster;->access$100(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->doStopSelf()V

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/Booster$BoosterHandler;->doStopAndTerminate()V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
