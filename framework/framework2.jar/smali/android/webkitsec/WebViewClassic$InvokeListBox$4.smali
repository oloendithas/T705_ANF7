.class Landroid/webkitsec/WebViewClassic$InvokeListBox$4;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic$InvokeListBox;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;)V
    .registers 2

    .prologue
    .line 14512
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$4;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 14524
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$4;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 14525
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$4;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    long-to-int v2, p4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 14528
    :cond_19
    return-void
.end method
