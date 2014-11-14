.class Landroid/widget/AbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .prologue
    .line 8810
    iput-object p1, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 8810
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 8812
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_23e

    .line 8909
    :cond_5
    :goto_5
    return-void

    .line 8814
    :pswitch_6
    const/4 v5, 0x0

    .line 8816
    .local v5, "offset":I
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J
    invoke-static {v7, v8, v9}, Landroid/widget/AbsListView;->access$6302(Landroid/widget/AbsListView;J)J

    .line 8817
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6300(Landroid/widget/AbsListView;)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J
    invoke-static {v10}, Landroid/widget/AbsListView;->access$6500(Landroid/widget/AbsListView;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    # setter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7, v8, v9}, Landroid/widget/AbsListView;->access$6402(Landroid/widget/AbsListView;J)J

    .line 8819
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsPenHovered:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6600(Landroid/widget/AbsListView;)Z

    move-result v7

    if-eqz v7, :cond_44

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6300(Landroid/widget/AbsListView;)J

    move-result-wide v7

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollStartTime:J
    invoke-static {v9}, Landroid/widget/AbsListView;->access$6700(Landroid/widget/AbsListView;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J
    invoke-static {v9}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5

    .line 8823
    :cond_44
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 8828
    .local v4, "count":I
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v4

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v7, v8, :cond_127

    const/4 v1, 0x1

    .line 8830
    .local v1, "canScrollDown":Z
    :goto_56
    if-nez v1, :cond_89

    if-lez v4, :cond_89

    .line 8831
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8832
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/view/View;->mBottom:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6900(Landroid/widget/AbsListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_88

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_12a

    :cond_88
    const/4 v1, 0x1

    .line 8837
    .end local v3    # "child":Landroid/view/View;
    :cond_89
    :goto_89
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_12d

    const/4 v2, 0x1

    .line 8839
    .local v2, "canScrollUp":Z
    :goto_90
    if-nez v2, :cond_ae

    .line 8840
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_ae

    .line 8841
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8842
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_130

    const/4 v2, 0x1

    .line 8846
    .end local v3    # "child":Landroid/view/View;
    :cond_ae
    :goto_ae
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-lez v7, :cond_133

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x4

    cmp-long v7, v7, v9

    if-gez v7, :cond_133

    .line 8847
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7002(Landroid/widget/AbsListView;I)I

    .line 8855
    :goto_d3
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_182

    .line 8856
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7000(Landroid/widget/AbsListView;)I

    move-result v7

    mul-int/lit8 v5, v7, -0x1

    .line 8861
    :goto_e4
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x438

    if-lt v7, v8, :cond_f6

    .line 8862
    mul-int/lit8 v5, v5, 0x2

    .line 8865
    :cond_f6
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 8869
    if-gez v5, :cond_10a

    if-nez v2, :cond_10e

    :cond_10a
    if-lez v5, :cond_18c

    if-eqz v1, :cond_18c

    .line 8870
    :cond_10e
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 8871
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7400(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$HoverScrollHandler;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v9}, Landroid/widget/AbsListView;->access$7300(Landroid/widget/AbsListView;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 8828
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    :cond_127
    const/4 v1, 0x0

    goto/16 :goto_56

    .line 8832
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_12a
    const/4 v1, 0x0

    goto/16 :goto_89

    .line 8837
    .end local v3    # "child":Landroid/view/View;
    :cond_12d
    const/4 v2, 0x0

    goto/16 :goto_90

    .line 8842
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_130
    const/4 v2, 0x0

    goto/16 :goto_ae

    .line 8848
    .end local v3    # "child":Landroid/view/View;
    :cond_133
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x4

    cmp-long v7, v7, v9

    if-ltz v7, :cond_15a

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x5

    cmp-long v7, v7, v9

    if-gez v7, :cond_15a

    .line 8849
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7002(Landroid/widget/AbsListView;I)I

    goto/16 :goto_d3

    .line 8850
    :cond_15a
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)J

    move-result-wide v7

    const-wide/16 v9, 0x5

    cmp-long v7, v7, v9

    if-ltz v7, :cond_175

    .line 8851
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7002(Landroid/widget/AbsListView;I)I

    goto/16 :goto_d3

    .line 8853
    :cond_175
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;)I

    move-result v8

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7002(Landroid/widget/AbsListView;I)I

    goto/16 :goto_d3

    .line 8858
    :cond_182
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7000(Landroid/widget/AbsListView;)I

    move-result v7

    mul-int/lit8 v5, v7, 0x1

    goto/16 :goto_e4

    .line 8874
    :cond_18c
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    .line 8875
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_19f

    const/4 v7, 0x1

    if-ne v6, v7, :cond_211

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_211

    :cond_19f
    const/4 v0, 0x1

    .line 8878
    .local v0, "canOverscroll":Z
    :goto_1a0
    if-eqz v0, :cond_1ff

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7500(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_1ff

    .line 8879
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_213

    .line 8880
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8881
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1d4

    .line 8882
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 8891
    :cond_1d4
    :goto_1d4
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    if-eqz v7, :cond_1f9

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_1f4

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1f9

    .line 8893
    :cond_1f4
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 8896
    :cond_1f9
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7502(Landroid/widget/AbsListView;Z)Z

    .line 8899
    :cond_1ff
    if-nez v0, :cond_5

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7500(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 8900
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7502(Landroid/widget/AbsListView;Z)Z

    goto/16 :goto_5

    .line 8875
    .end local v0    # "canOverscroll":Z
    :cond_211
    const/4 v0, 0x0

    goto :goto_1a0

    .line 8884
    .restart local v0    # "canOverscroll":Z
    :cond_213
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d4

    .line 8885
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8886
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1d4

    .line 8887
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1d4

    .line 8812
    :pswitch_data_23e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
