.class Lcom/diotek/ime/framework/common/InputManagerImpl$36;
.super Ljava/lang/Object;
.source "InputManagerImpl.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    .prologue
    .line 12447
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 12449
    iget-object v7, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v7}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 12494
    :cond_0
    :goto_0
    return-void

    .line 12451
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getFlatMotionContext()Landroid/hardware/scontext/SContextFlatMotion;

    move-result-object v2

    .line 12452
    .local v2, "flatMotionContext":Landroid/hardware/scontext/SContextFlatMotion;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContextFlatMotion;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 12487
    :cond_1
    :goto_1
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 12488
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSContextChanged() flat motion mIsFlatMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsFlatMode:Z
    invoke-static {v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12454
    :pswitch_1
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsFlatMode:Z
    invoke-static {v7, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5802(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    goto :goto_1

    .line 12459
    :pswitch_2
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsFlatMode:Z
    invoke-static {v7, v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5802(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    .line 12460
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemHandAdaptableOperationSettingValue()I

    move-result v7

    if-ne v7, v6, :cond_1

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 12463
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v7

    const-string v8, "IS_ONE_HAND_RIGHT_SET"

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 12464
    .local v0, "bRightSet":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemOneHandSwitchStateSettingValue()I

    move-result v5

    .line 12466
    .local v5, "oneHandSwitchState":I
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[IMI] mSContextListener - oneHandSwitchState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12468
    if-eq v5, v6, :cond_2

    if-ne v5, v10, :cond_1

    .line 12469
    :cond_2
    if-ne v5, v10, :cond_3

    move v1, v6

    .line 12470
    .local v1, "bsettingRight":Z
    :cond_3
    if-eq v0, v1, :cond_1

    .line 12471
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v7

    const-string v8, "IS_ONE_HAND_RIGHT_SET"

    invoke-interface {v7, v8, v1}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 12472
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 12473
    .local v4, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 12474
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget v7, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v7, :cond_1

    iget v7, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 12479
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v8, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInputView(Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setInputView(Landroid/view/View;)V

    .line 12480
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$36;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->updateCandidates()V
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2800(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    goto/16 :goto_1

    .line 12449
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch

    .line 12452
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
