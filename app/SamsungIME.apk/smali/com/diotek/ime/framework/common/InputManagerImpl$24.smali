.class Lcom/diotek/ime/framework/common/InputManagerImpl$24;
.super Landroid/database/ContentObserver;
.source "InputManagerImpl.java"


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
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 9218
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 9221
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[IMI] mHandGripChangeObserver - mIsFlatMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsFlatMode:Z
    invoke-static {v9}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9223
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemHandAdaptableOperationSettingValue()I

    move-result v7

    if-ne v7, v6, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsFlatMode:Z
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemOneHandOperationSettingValue()I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 9259
    :cond_0
    :goto_0
    return-void

    .line 9229
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v7

    const-string v8, "IS_ONE_HAND_RIGHT_SET"

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    .line 9230
    .local v0, "bRightSet":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemOneHandSwitchStateSettingValue()I

    move-result v5

    .line 9232
    .local v5, "oneHandSwitchState":I
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[IMI] mHandGripChangeObserver - oneHandSwitchState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9234
    if-eq v5, v6, :cond_2

    if-ne v5, v10, :cond_3

    .line 9235
    :cond_2
    if-ne v5, v10, :cond_4

    move v1, v6

    .line 9236
    .local v1, "bsettingRight":Z
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mPreUseOneHandSettingValue:I
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5900(Lcom/diotek/ime/framework/common/InputManagerImpl;)I

    move-result v7

    if-nez v7, :cond_5

    .line 9237
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v7

    const-string v8, "IS_ONE_HAND_RIGHT_SET"

    invoke-interface {v7, v8, v1}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 9238
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->changeToOneHandKeyboard(Z)V
    invoke-static {v7, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6000(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    .line 9255
    .end local v1    # "bsettingRight":Z
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isEmoticonMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9256
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v7

    const-string v8, "EMOTICON_CURRENT_CATEGORY"

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 9257
    .local v2, "cat":I
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setEmoticonCategory(I)V

    goto :goto_0

    .line 9235
    .end local v2    # "cat":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 9240
    .restart local v1    # "bsettingRight":Z
    :cond_5
    if-eq v0, v1, :cond_3

    .line 9241
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v7

    const-string v8, "IS_ONE_HAND_RIGHT_SET"

    invoke-interface {v7, v8, v1}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 9242
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 9243
    .local v4, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 9244
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget v7, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v7, :cond_3

    iget v7, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9249
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/diotek/ime/framework/view/ViewController;->setOneHandLayoutShownWithOption(I)V

    .line 9250
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$24;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->updateCandidates()V
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2800(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    goto :goto_2
.end method
