.class public Lcom/diotek/ime/implement/setting/TapAndHoldView;
.super Landroid/widget/ImageView;
.source "TapAndHoldView.java"


# static fields
.field private static final HOLD_CONFIM:I = 0x3

.field private static final HOLD_STANDBY:I = 0x2

.field private static final TAP_CONFIRM:I = 0x1

.field private static final TAP_STANDBY:I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private currentTapAndHoldState:I

.field private final_touch_time:J

.field private isLongPressDone:Z

.field private mBitmapHoldConfirm:Landroid/graphics/Bitmap;

.field private mBitmapHoldStandBy:Landroid/graphics/Bitmap;

.field private mBitmapTapConfirm:Landroid/graphics/Bitmap;

.field private mBitmapTapStandBy:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private paint:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F

.field private touch_time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "Tap and Hold Delay"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->LOG_TAG:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    .line 33
    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    .line 35
    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    .line 36
    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    .line 38
    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    .line 46
    new-instance v0, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;-><init>(Lcom/diotek/ime/implement/setting/TapAndHoldView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    .line 104
    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "Tap and Hold Delay"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->LOG_TAG:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    .line 33
    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    .line 35
    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    .line 36
    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    .line 38
    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    .line 46
    new-instance v0, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;-><init>(Lcom/diotek/ime/implement/setting/TapAndHoldView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    .line 91
    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-string v0, "Tap and Hold Delay"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->LOG_TAG:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    .line 33
    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    .line 35
    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    .line 36
    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    .line 38
    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    .line 46
    new-instance v0, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;-><init>(Lcom/diotek/ime/implement/setting/TapAndHoldView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    .line 78
    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/diotek/ime/implement/setting/TapAndHoldView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/implement/setting/TapAndHoldView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    return p1
.end method


# virtual methods
.method public checkLongPressStatus()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000

    .line 109
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    iget v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    packed-switch v0, :pswitch_data_0

    .line 134
    const-string v0, "Tap and Hold Delay"

    const-string v1, "Unknown Tap and Hold State"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 138
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 129
    :pswitch_3
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTouchTime()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    return-wide v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 174
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 143
    .local v0, "uptime":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    .line 147
    iput v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    .line 148
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    .line 150
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 168
    return v4

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 154
    iget-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    .line 155
    iget-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    .line 156
    const/4 v2, 0x3

    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    .line 157
    iput-boolean v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    goto :goto_0

    .line 159
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iput v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    goto :goto_0
.end method

.method public refresh()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 189
    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    .line 190
    iput v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    .line 191
    iput v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    .line 192
    iput-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    .line 193
    iput-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    .line 194
    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 197
    return-void
.end method
