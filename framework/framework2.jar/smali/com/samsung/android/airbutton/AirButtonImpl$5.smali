.class Lcom/samsung/android/airbutton/AirButtonImpl$5;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1370
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1373
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_a

    .line 1384
    :cond_9
    :goto_9
    return-void

    .line 1376
    :cond_a
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_62

    .line 1377
    .local v1, "viewLocation":[I
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1379
    aget v2, v1, v5

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    iget v3, v3, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int v0, v2, v3

    .line 1381
    .local v0, "adjustedYPosition":I
    const-string v2, "AirButtonImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", adjusted= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$700(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1383
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$700(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl$5;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->reAdjustViewYPosition(II)V

    goto :goto_9

    .line 1376
    :array_62
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
