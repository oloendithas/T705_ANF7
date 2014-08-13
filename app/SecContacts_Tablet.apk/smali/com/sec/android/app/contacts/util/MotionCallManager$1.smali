.class Lcom/sec/android/app/contacts/util/MotionCallManager$1;
.super Ljava/lang/Object;
.source "MotionCallManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/util/MotionCallManager;
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
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$1;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 63
    .local v0, "motion":I
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$1;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    # getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$000(Lcom/sec/android/app/contacts/util/MotionCallManager;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 66
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$1;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const-string v2, "left"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->call(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$1;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const-string v2, "right"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->call(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
