.class Landroid/webkitsec/ZoomManager$PostScale;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostScale"
.end annotation


# instance fields
.field final mInPortraitMode:Z

.field final mInZoomOverviewBeforeSizeChange:Z

.field final mUpdateTextWrap:Z

.field final synthetic this$0:Landroid/webkitsec/ZoomManager;


# direct methods
.method public constructor <init>(Landroid/webkitsec/ZoomManager;ZZZ)V
    .registers 5
    .param p2, "updateTextWrap"    # Z
    .param p3, "inZoomOverview"    # Z
    .param p4, "inPortraitMode"    # Z

    .prologue
    .line 1497
    iput-object p1, p0, Landroid/webkitsec/ZoomManager$PostScale;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    iput-boolean p2, p0, Landroid/webkitsec/ZoomManager$PostScale;->mUpdateTextWrap:Z

    .line 1499
    iput-boolean p3, p0, Landroid/webkitsec/ZoomManager$PostScale;->mInZoomOverviewBeforeSizeChange:Z

    .line 1500
    iput-boolean p4, p0, Landroid/webkitsec/ZoomManager$PostScale;->mInPortraitMode:Z

    .line 1501
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1504
    iget-object v1, p0, Landroid/webkitsec/ZoomManager$PostScale;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v1}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 1508
    iget-object v1, p0, Landroid/webkitsec/ZoomManager$PostScale;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mActualScale:F
    invoke-static {v1}, Landroid/webkitsec/ZoomManager;->access$500(Landroid/webkitsec/ZoomManager;)F

    move-result v0

    .line 1509
    .local v0, "newScale":F
    iget-object v1, p0, Landroid/webkitsec/ZoomManager$PostScale;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v1}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Landroid/webkitsec/ZoomManager$PostScale;->mInPortraitMode:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Landroid/webkitsec/ZoomManager$PostScale;->mInZoomOverviewBeforeSizeChange:Z

    if-eqz v1, :cond_30

    .line 1512
    iget-object v1, p0, Landroid/webkitsec/ZoomManager$PostScale;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    .line 1514
    :cond_30
    iget-object v1, p0, Landroid/webkitsec/ZoomManager$PostScale;->this$0:Landroid/webkitsec/ZoomManager;

    iget-boolean v2, p0, Landroid/webkitsec/ZoomManager$PostScale;->mUpdateTextWrap:Z

    const/4 v3, 0x1

    # invokes: Landroid/webkitsec/ZoomManager;->setZoomScale(FZZ)V
    invoke-static {v1, v0, v2, v3}, Landroid/webkitsec/ZoomManager;->access$2300(Landroid/webkitsec/ZoomManager;FZZ)V

    .line 1516
    iget-object v1, p0, Landroid/webkitsec/ZoomManager$PostScale;->this$0:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomManager;->updateZoomPicker()V

    .line 1518
    iget-object v1, p0, Landroid/webkitsec/ZoomManager$PostScale;->this$0:Landroid/webkitsec/ZoomManager;

    # getter for: Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v1}, Landroid/webkitsec/ZoomManager;->access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 1521
    .end local v0    # "newScale":F
    :cond_46
    return-void
.end method
