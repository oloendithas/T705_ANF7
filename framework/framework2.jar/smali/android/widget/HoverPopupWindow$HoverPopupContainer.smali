.class public Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.super Landroid/widget/FrameLayout;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HoverPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "HoverPopupContainer"


# instance fields
.field private mChildImageFadeHeight:I

.field private mIsFHEnabled:Z

.field private mIsRingEnabled:Z

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLineOverlappedHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field private mLineThickness:I

.field private mOldLineEndX:I

.field private mOldLineEndY:I

.field protected mOverTopBoundaryEnabled:Z

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2137
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    .line 2138
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2114
    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndX:I

    .line 2116
    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndY:I

    .line 2120
    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    .line 2122
    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    .line 2124
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    .line 2132
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    .line 2135
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    .line 2139
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2217
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2258
    :cond_10
    :goto_10
    return-void

    .line 2229
    :cond_11
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1e

    .line 2230
    const v0, 0x1080402

    const v1, -0x866e57

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 2234
    :cond_1e
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    if-eqz v0, :cond_90

    .line 2235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2236
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2238
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v0, :cond_41

    .line 2239
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2241
    :cond_41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2243
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v0, :cond_10

    .line 2244
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-ge v0, v1, :cond_6c

    .line 2245
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    iget v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_10

    .line 2247
    :cond_6c
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-le v0, v1, :cond_10

    .line 2248
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    iget v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_10

    .line 2255
    :cond_90
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v0, :cond_10

    .line 2256
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    int-to-float v2, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    int-to-float v4, v0

    iget-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_10
.end method

.method public getLineEndX()I
    .registers 2

    .prologue
    .line 2185
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    return v0
.end method

.method public getLineOverlappedHeight()I
    .registers 2

    .prologue
    .line 2193
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    return v0
.end method

.method public getLineStartY()I
    .registers 2

    .prologue
    .line 2189
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    return v0
.end method

.method protected pointInValidPaddingArea(II)Z
    .registers 6
    .param p1, "localX"    # I
    .param p2, "localY"    # I

    .prologue
    .line 2261
    const/4 v0, 0x0

    .line 2263
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-le v1, v2, :cond_19

    .line 2264
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-gt p2, v1, :cond_18

    .line 2265
    const/4 v0, 0x1

    .line 2275
    :cond_18
    :goto_18
    return v0

    .line 2267
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 2268
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_18

    .line 2269
    const/4 v0, 0x1

    goto :goto_18

    .line 2272
    :cond_36
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setChildImageFadeHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 2212
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mChildImageFadeHeight:I

    .line 2213
    return-void
.end method

.method public setFHGuideLineForCotainer(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2142
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    .line 2143
    return-void
.end method

.method public setGuideLine(II)V
    .registers 7
    .param p1, "drawableId"    # I
    .param p2, "lineColor"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2154
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    .line 2155
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3fc00000

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    .line 2157
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 2158
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3d

    .line 2159
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    .line 2160
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    .line 2161
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2164
    :cond_3d
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    .line 2165
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2166
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2167
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2168
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2169
    return-void
.end method

.method public setGuideLine(IIIIZZ)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "ringEnabled"    # Z
    .param p6, "fHEnabled"    # Z

    .prologue
    .line 2198
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    .line 2199
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    .line 2200
    iput p3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    .line 2201
    iput p4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    .line 2202
    iput-boolean p5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    .line 2203
    iput-boolean p6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    .line 2204
    return-void
.end method

.method public setGuideLineEndPoint(II)V
    .registers 3
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    .line 2207
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    .line 2208
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    .line 2209
    return-void
.end method

.method public setOverTopForCotainer(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2146
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    .line 2148
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: mOverTopBoundaryEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    return-void
.end method

.method public updateDecoration()V
    .registers 1

    .prologue
    .line 2174
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2182
    return-void
.end method
