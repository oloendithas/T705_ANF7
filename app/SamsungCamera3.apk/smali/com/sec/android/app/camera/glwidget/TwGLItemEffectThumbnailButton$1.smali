.class Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;
.super Ljava/lang/Object;
.source "TwGLItemEffectThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 315
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 316
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/app/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    .line 317
    .local v1, "currentEffect":I
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/app/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->mCommandId:I
    invoke-static {v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v2

    .line 318
    .local v2, "modeId":I
    if-ne v1, v2, :cond_2

    move v0, v4

    .line 319
    .local v0, "bEffectSelected":Z
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-interface {v6, v7}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v3

    .line 320
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 321
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 328
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 330
    const/16 v4, 0x232e

    if-eq v2, v4, :cond_0

    const/16 v4, 0x232a

    if-ne v2, v4, :cond_1

    .line 331
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 332
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;)Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 338
    .end local v0    # "bEffectSelected":Z
    .end local v1    # "currentEffect":I
    .end local v2    # "modeId":I
    .end local v3    # "result":Z
    :cond_1
    :goto_1
    return v3

    .restart local v1    # "currentEffect":I
    .restart local v2    # "modeId":I
    :cond_2
    move v0, v5

    .line 318
    goto :goto_0

    .end local v1    # "currentEffect":I
    .end local v2    # "modeId":I
    :cond_3
    move v3, v5

    .line 338
    goto :goto_1
.end method
