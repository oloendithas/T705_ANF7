.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 15834
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 15836
    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 15866
    :goto_0
    return-void

    .line 15838
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getFlatMotionContext()Landroid/hardware/scontext/SContextFlatMotion;

    move-result-object v0

    .line 15839
    .local v0, "flatMotionContext":Landroid/hardware/scontext/SContextFlatMotion;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextFlatMotion;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 15850
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsFlatMode:Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15851
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getSystemOneHandSwitchStateSettingValue()I

    move-result v1

    .line 15852
    .local v1, "oneHandSwitchState":I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mOneHandAdaptableSwitchState:I
    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11802(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 15854
    if-ne v1, v3, :cond_1

    .line 15855
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->moveOneHandDialer(ZZ)V
    invoke-static {v2, v4, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ZZ)V

    .line 15860
    .end local v1    # "oneHandSwitchState":I
    :cond_0
    :goto_2
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSContextChanged() flat motion mIsFlatMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsFlatMode:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15841
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsFlatMode:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    goto :goto_1

    .line 15846
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsFlatMode:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$12202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    goto :goto_1

    .line 15856
    .restart local v1    # "oneHandSwitchState":I
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 15857
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$54;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->moveOneHandDialer(ZZ)V
    invoke-static {v2, v3, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$11900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ZZ)V

    goto :goto_2

    .line 15836
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch

    .line 15839
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
