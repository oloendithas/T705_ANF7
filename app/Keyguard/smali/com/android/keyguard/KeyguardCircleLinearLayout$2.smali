.class Lcom/android/keyguard/KeyguardCircleLinearLayout$2;
.super Ljava/lang/Object;
.source "KeyguardCircleLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCircleLinearLayout;->SetCoreView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDistance:D

.field final synthetic this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCircleLinearLayout;)V
    .registers 4

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->mDistance:D

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v9, 0x7f02007a

    const/4 v8, -0x1

    const-wide/high16 v6, 0x4000000000000000L

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_e0

    .line 256
    :goto_d
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$1000(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 225
    :pswitch_18
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->mDistance:D

    .line 226
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    # setter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartX:I
    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$102(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)I

    .line 227
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    # setter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartY:I
    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$202(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)I

    .line 228
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$700(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 232
    :pswitch_3e
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartX:I
    invoke-static {v2}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$100(Lcom/android/keyguard/KeyguardCircleLinearLayout;)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 233
    .local v0, "moveX":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartY:I
    invoke-static {v2}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$200(Lcom/android/keyguard/KeyguardCircleLinearLayout;)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 234
    .local v1, "moveY":I
    int-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->mDistance:D

    .line 235
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->mDistance:D

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->mSecondBorder:D
    invoke-static {v4}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$800(Lcom/android/keyguard/KeyguardCircleLinearLayout;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_7a

    .line 236
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # invokes: Lcom/android/keyguard/KeyguardCircleLinearLayout;->PressButton(I)V
    invoke-static {v2, v8}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$600(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)V

    .line 238
    :cond_7a
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$700(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->mDistance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_9b

    .line 239
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$700(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    const v3, 0x7f02007b

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 241
    :cond_9b
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$700(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 246
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :pswitch_a6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->mFirstBorder:D
    invoke-static {v2}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$900(Lcom/android/keyguard/KeyguardCircleLinearLayout;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->mDistance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_be

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->mDistance:D

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->mSecondBorder:D
    invoke-static {v4}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$800(Lcom/android/keyguard/KeyguardCircleLinearLayout;)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_ca

    :cond_be
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->mDistance:D

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->mSecondBorder:D
    invoke-static {v4}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$800(Lcom/android/keyguard/KeyguardCircleLinearLayout;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_cf

    .line 247
    :cond_ca
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # invokes: Lcom/android/keyguard/KeyguardCircleLinearLayout;->PressButton(I)V
    invoke-static {v2, v8}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$600(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)V

    .line 249
    :cond_cf
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;->this$0:Lcom/android/keyguard/KeyguardCircleLinearLayout;

    # getter for: Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->access$700(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 250
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 223
    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_a6
        :pswitch_3e
        :pswitch_a6
    .end packed-switch
.end method
