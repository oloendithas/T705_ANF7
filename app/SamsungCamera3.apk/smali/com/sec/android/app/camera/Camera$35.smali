.class Lcom/sec/android/app/camera/Camera$35;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->initCameraSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 4635
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x400

    const/4 v6, 0x0

    .line 4639
    const-string v1, "Load Camera Sound"

    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4640
    const-string v1, "Load Camera Sound"

    invoke-static {v6, v1}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILjava/lang/String;)V

    .line 4642
    const-string v1, "Camera3"

    const-string v2, "Load Camera Sound"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060006

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4644
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060015

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4648
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060005

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4649
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06000e

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4650
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06000d

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4653
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06000f

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4663
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060012

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4664
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060013

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4666
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4667
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060003

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4668
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060017

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4669
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x17

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060004

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4670
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060010

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4671
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x19

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060011

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4673
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06000a

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4674
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060009

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4676
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060008

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4677
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06000c

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4678
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06000b

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 4680
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4681
    const-string v1, "Camera3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraSoundPoolId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4683
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$35;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundLoadingThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$2402(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4684
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 4685
    invoke-static {v6}, Lcom/arm/streamline/StreamlineAnnotate;->end(I)V

    .line 4686
    return-void
.end method
