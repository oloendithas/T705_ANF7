.class Landroid/webkitsec/WebViewClassic$InvokeListBox$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$adapter:Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V
    .registers 4

    .prologue
    .line 14441
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iput-object p2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->val$adapter:Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;

    iput-object p3, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 14443
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->mSelectFocusMoved:Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$9402(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 14444
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsTextFieldPrev:Z

    if-eqz v0, :cond_35

    .line 14445
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 14446
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSelectDialog;->dismiss()V

    .line 14447
    :cond_26
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$9302(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebSelectDialog;)Landroid/webkitsec/WebSelectDialog;

    .line 14448
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v0, v4}, Landroid/webkitsec/WebViewClassic;->access$9202(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 14451
    :cond_35
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 14452
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    # getter for: Landroid/webkitsec/WebViewClassic$InvokeListBox;->mMultiple:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic$InvokeListBox;->access$12700(Landroid/webkitsec/WebViewClassic$InvokeListBox;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 14453
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7b

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->val$adapter:Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 14461
    :goto_60
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 14464
    :cond_6d
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsTextFieldPrev:Z

    if-eqz v0, :cond_7e

    .line 14465
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    .line 14468
    :cond_7e
    return-void

    .line 14458
    :cond_7f
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$2;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_60
.end method
