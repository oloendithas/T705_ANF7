.class Landroid/webkitsec/WebViewClassic$3;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;

.field final synthetic val$neverRemember:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 3975
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$3;->this$0:Landroid/webkitsec/WebViewClassic;

    iput-object p2, p0, Landroid/webkitsec/WebViewClassic$3;->val$neverRemember:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 3978
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$3;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$3200(Landroid/webkitsec/WebViewClassic;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3979
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$3;->val$neverRemember:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3980
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$3;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$3202(Landroid/webkitsec/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;

    .line 3982
    :cond_13
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$3;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mSavePasswordDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$3302(Landroid/webkitsec/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3983
    return-void
.end method
