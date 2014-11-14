.class Landroid/widget/AbsListView$5;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .prologue
    .line 8739
    iput-object p1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 5
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    .line 8741
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mMotionEnable:Z
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6000(Landroid/widget/AbsListView;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6100(Landroid/widget/AbsListView;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 8757
    :cond_10
    :goto_10
    return-void

    .line 8745
    :cond_11
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 8746
    .local v0, "motion":I
    packed-switch v0, :pswitch_data_42

    goto :goto_10

    .line 8748
    :pswitch_19
    const-string v1, "[Motion-DoubleTap]"

    # invokes: Landroid/widget/AbsListView;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6200(Ljava/lang/String;)V

    .line 8749
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_3b

    .line 8750
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 8752
    :cond_3b
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_10

    .line 8746
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_19
    .end packed-switch
.end method
