.class public Landroid/webkitsec/HtmlComposerView$HCWHandler;
.super Landroid/os/Handler;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HCWHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .registers 2

    .prologue
    .line 2786
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, -0x1

    .line 2788
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_dc

    .line 2829
    :cond_6
    :goto_6
    return-void

    .line 2790
    :pswitch_7
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    sget v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_6

    .line 2793
    :pswitch_f
    const-string v2, "HtmlComposerView"

    const-string v3, "HCWHandler UPDATE_RICHTEXT_TOOLBAR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_6

    .line 2798
    :pswitch_1d
    const-string v2, "HtmlComposerView"

    const-string v3, "HIT_INSERTED_IMAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2800
    .local v0, "imageUri":Ljava/lang/String;
    if-eqz v0, :cond_4e

    .line 2801
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v2, v2, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_4e

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HIT_INSERTED_IMAGE Selected imageUri = [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    :cond_4e
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v2, v2, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 2805
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    # invokes: Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V
    invoke-static {v2}, Landroid/webkitsec/HtmlComposerView;->access$800(Landroid/webkitsec/HtmlComposerView;)V

    .line 2806
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v2, v2, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    invoke-interface {v2, v0}, Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;->onHitResult(Ljava/lang/String;)V

    goto :goto_6

    .line 2811
    .end local v0    # "imageUri":Ljava/lang/String;
    :pswitch_63
    const-string v2, "HtmlComposerView"

    const-string v3, "DELAYED_UPDATE_IMAGE_OUTLINE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2814
    .local v1, "updateRect":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v2, v2, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_b4

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELAYED_UPDATE_IMAGE_OUTLINE result = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_b4
    if-eqz v1, :cond_6

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-eq v5, v2, :cond_6

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-eq v5, v2, :cond_6

    .line 2817
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkitsec/HtmlComposerView;->access$900(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 2823
    .end local v1    # "updateRect":Landroid/graphics/Rect;
    :pswitch_cb
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v2, v2, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    if-eqz v2, :cond_6

    .line 2824
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView$HCWHandler;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-object v2, v2, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;->onSelectionChanged(I)V

    goto/16 :goto_6

    .line 2788
    :pswitch_data_dc
    .packed-switch 0x500
        :pswitch_7
        :pswitch_f
        :pswitch_1d
        :pswitch_63
        :pswitch_cb
    .end packed-switch
.end method