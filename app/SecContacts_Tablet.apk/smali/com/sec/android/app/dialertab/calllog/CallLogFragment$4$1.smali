.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollState:I
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    const-string v0, "CallLogFragment"

    const-string v1, "mAdapter notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 1060
    :cond_0
    return-void
.end method
