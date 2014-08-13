.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "av"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J

    .prologue
    .line 653
    const-string v0, "feature_tablet_selection_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->toggleSelection(I)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    if-nez p3, :cond_3

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 663
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 671
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 678
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateAllCheckState()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    goto :goto_0
.end method
