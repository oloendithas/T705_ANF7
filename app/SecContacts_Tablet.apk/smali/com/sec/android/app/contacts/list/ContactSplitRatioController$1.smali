.class Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;
.super Ljava/lang/Object;
.source "ContactSplitRatioController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->configureSplitBarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v3, v5

    .line 231
    :goto_0
    return v3

    .line 178
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsPenWindow:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$100(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    iget-object v6, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsPenWindow:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$100(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v7}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v7

    :goto_1
    # setter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I
    invoke-static {v6, v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$202(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I

    .line 180
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    iget-object v6, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$200(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3f747ae147ae147bL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    # setter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMinWidth:I
    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$402(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I

    .line 181
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    iget-object v6, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$200(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe51eb851eb851fL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    # setter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMaxWidth:I
    invoke-static {v3, v6}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$502(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$600(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$700(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$800(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;->START_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;

    invoke-interface {v3, v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;->onOperation(Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;)V

    move v3, v4

    .line 187
    goto/16 :goto_0

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$300(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    goto :goto_1

    .line 189
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v2, v3

    .line 190
    .local v2, "positionX":I
    const/4 v0, 0x0

    .line 192
    .local v0, "XOffset":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsPenWindow:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$100(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$300(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # setter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$902(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I

    .line 217
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v2, v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I
    invoke-static {v6}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$900(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I

    move-result v6

    # invokes: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setLeftPaneWidth(II)V
    invoke-static {v3, v5, v6}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$1000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;II)V

    :goto_4
    move v3, v4

    .line 222
    goto/16 :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # setter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I
    invoke-static {v3, v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$902(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I

    goto :goto_3

    .line 220
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$900(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I

    move-result v5

    # invokes: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setLeftPaneWidth(II)V
    invoke-static {v3, v2, v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$1000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;II)V

    goto :goto_4

    .line 225
    .end local v0    # "XOffset":I
    .end local v2    # "positionX":I
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$600(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mFocusedSplitBar:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$700(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;->this$0:Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    # getter for: Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->access$800(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;->STOP_CHANGING_SPLIT_RATIO:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;

    invoke-interface {v3, v5}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;->onOperation(Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener$Operation;)V

    move v3, v4

    .line 229
    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
