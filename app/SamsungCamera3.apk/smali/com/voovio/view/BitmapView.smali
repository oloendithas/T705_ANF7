.class public Lcom/voovio/view/BitmapView;
.super Landroid/view/View;
.source "BitmapView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v1, p0, Lcom/voovio/view/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-object v1, p0, Lcom/voovio/view/BitmapView;->mPaint:Landroid/graphics/Paint;

    .line 18
    iput-object v1, p0, Lcom/voovio/view/BitmapView;->mRect:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 35
    .local v0, "bmDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/voovio/view/BitmapView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/voovio/view/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-object v0, p0, Lcom/voovio/view/BitmapView;->mPaint:Landroid/graphics/Paint;

    .line 18
    iput-object v0, p0, Lcom/voovio/view/BitmapView;->mRect:Landroid/graphics/Rect;

    .line 25
    invoke-direct {p0, p2}, Lcom/voovio/view/BitmapView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 41
    iput-object p1, p0, Lcom/voovio/view/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 42
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/voovio/view/BitmapView;->mPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/voovio/view/BitmapView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/voovio/view/BitmapView;->mRect:Landroid/graphics/Rect;

    .line 48
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/voovio/view/BitmapView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/voovio/view/BitmapView;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/voovio/view/BitmapView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    return-void
.end method
