.class Landroid/widget/ScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;)V
    .registers 2

    .prologue
    .line 2321
    iput-object p1, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ScrollView;
    .param p2, "x1"    # Landroid/widget/ScrollView$1;

    .prologue
    .line 2321
    invoke-direct {p0, p1}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x4

    const v9, 0x3ecccccd

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 2323
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_1bc

    .line 2401
    :cond_c
    :goto_c
    return-void

    .line 2325
    :pswitch_d
    const/4 v1, 0x0

    .line 2326
    .local v1, "offset":I
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # invokes: Landroid/widget/ScrollView;->getScrollRange()I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)I

    move-result v3

    .line 2328
    .local v3, "range":I
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    # setter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$202(Landroid/widget/ScrollView;I)I

    .line 2329
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I
    invoke-static {v7}, Landroid/widget/ScrollView;->access$400(Landroid/widget/ScrollView;)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    # setter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$302(Landroid/widget/ScrollView;I)I

    .line 2331
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverScrollStartTime:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$500(Landroid/widget/ScrollView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverScrollTimeInterval:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$600(Landroid/widget/ScrollView;)I

    move-result v6

    if-lt v5, v6, :cond_c

    .line 2334
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    if-le v5, v8, :cond_a7

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    if-ge v5, v10, :cond_a7

    .line 2335
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    # setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    .line 2343
    :goto_64
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_ea

    .line 2344
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$700(Landroid/widget/ScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, -0x1

    .line 2349
    :goto_74
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x438

    if-lt v5, v6, :cond_86

    .line 2350
    mul-int/lit8 v1, v1, 0x2

    .line 2357
    :cond_86
    if-gez v1, :cond_f3

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1000(Landroid/widget/ScrollView;)I

    move-result v5

    if-lez v5, :cond_f3

    .line 2359
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2360
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1200(Landroid/widget/ScrollView;)Landroid/widget/ScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$1100(Landroid/widget/ScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_c

    .line 2336
    :cond_a7
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    if-lt v5, v10, :cond_c6

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_c6

    .line 2337
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    # setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    goto :goto_64

    .line 2338
    :cond_c6
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_dd

    .line 2339
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    # setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    goto :goto_64

    .line 2341
    :cond_dd
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    # setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    goto/16 :goto_64

    .line 2346
    :cond_ea
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$700(Landroid/widget/ScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, 0x1

    goto :goto_74

    .line 2361
    :cond_f3
    if-lez v1, :cond_114

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1300(Landroid/widget/ScrollView;)I

    move-result v5

    if-ge v5, v3, :cond_114

    .line 2363
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2364
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1200(Landroid/widget/ScrollView;)Landroid/widget/ScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$1100(Landroid/widget/ScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_c

    .line 2367
    :cond_114
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    .line 2368
    .local v2, "overscrollMode":I
    if-eqz v2, :cond_120

    if-ne v2, v4, :cond_121

    if-lez v3, :cond_121

    :cond_120
    move v0, v4

    .line 2371
    .local v0, "canOverscroll":Z
    :cond_121
    if-eqz v0, :cond_183

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Z

    move-result v5

    if-nez v5, :cond_183

    .line 2372
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_159

    .line 2373
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_194

    .line 2374
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2375
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_159

    .line 2376
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2385
    :cond_159
    :goto_159
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_17e

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_179

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_17e

    .line 2387
    :cond_179
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2389
    :cond_17e
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # setter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Landroid/widget/ScrollView;->access$1402(Landroid/widget/ScrollView;Z)Z

    .line 2392
    :cond_183
    if-nez v0, :cond_c

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2393
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # setter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Landroid/widget/ScrollView;->access$1402(Landroid/widget/ScrollView;Z)Z

    goto/16 :goto_c

    .line 2378
    :cond_194
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_159

    .line 2379
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2380
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_159

    .line 2381
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    # getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_159

    .line 2323
    nop

    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method
