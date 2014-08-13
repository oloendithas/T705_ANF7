.class Lcom/sec/android/app/contacts/util/MotionCallManager$3;
.super Ljava/lang/Object;
.source "MotionCallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/util/MotionCallManager;->registerMotionCallListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/MotionCallManager;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # invokes: Lcom/sec/android/app/contacts/util/MotionCallManager;->isKeyGuardOn()Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$700(Lcom/sec/android/app/contacts/util/MotionCallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$400(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$400(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$800(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$800(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$800(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$800(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$800(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$3;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$400(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 271
    :cond_2
    return-void
.end method
