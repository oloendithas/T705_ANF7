.class Lcom/samsung/android/airbutton/AirButtonImpl$2;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"

# interfaces
.implements Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/AirButtonImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .registers 2

    .prologue
    .line 619
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStateChanged(Z)V
    .registers 2
    .param p1, "isAnimating"    # Z

    .prologue
    .line 622
    return-void
.end method

.method public onFinished(IZZ)V
    .registers 8
    .param p1, "selectedItemIdx"    # I
    .param p2, "isSendItemSelectedNoti"    # Z
    .param p3, "isFinishAirButton"    # Z

    .prologue
    .line 626
    if-eqz p2, :cond_1c

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 627
    if-gez p1, :cond_2c

    .line 628
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;->onItemSelected(Landroid/view/View;ILjava/lang/Object;)V

    .line 639
    :cond_1c
    :goto_1c
    if-eqz p3, :cond_2b

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$400(Lcom/samsung/android/airbutton/AirButtonImpl;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 640
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 641
    :cond_2b
    return-void

    .line 630
    :cond_2c
    const/4 v0, 0x0

    .line 632
    .local v0, "data":Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_55

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_55

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$300(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 633
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$300(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 635
    .end local v0    # "data":Ljava/lang/Object;
    :cond_55
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;->onItemSelected(Landroid/view/View;ILjava/lang/Object;)V

    goto :goto_1c
.end method
