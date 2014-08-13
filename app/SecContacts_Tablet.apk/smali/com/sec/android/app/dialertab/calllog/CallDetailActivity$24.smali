.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

.field final synthetic val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 4549
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4551
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$5102(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    .line 4552
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bCheckedBefore:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$5100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4553
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->saveViewStatusPreference()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$5200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V

    .line 4555
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContextForDialog:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$5300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mNumberForDialog:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$5400(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4556
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$24;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->invalidateOptionsMenu()V

    .line 4557
    return-void
.end method
