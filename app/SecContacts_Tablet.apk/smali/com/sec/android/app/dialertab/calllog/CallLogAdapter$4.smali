.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 641
    const-string v2, "CallLogAdapter"

    const-string v3, "========= mPhotoLongClickListener::onLongClick ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/view/View$OnLongClickListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v1

    .line 645
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 646
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 648
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 649
    const/4 v1, 0x1

    goto :goto_0
.end method
