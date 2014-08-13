.class public final Lcom/visionobjects/textwidget/h/c;
.super Landroid/view/View;
.source "ScrollbarView.java"


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->b:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 45
    iput v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    .line 46
    iput v3, p0, Lcom/visionobjects/textwidget/h/c;->l:I

    .line 47
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    .line 213
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    add-int/2addr v2, v0

    .line 195
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 197
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 202
    :goto_1
    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 204
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 209
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/visionobjects/textwidget/h/c;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 210
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 197
    goto :goto_1
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 181
    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    .line 242
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    add-int/2addr v2, v0

    .line 224
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 226
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 231
    :goto_1
    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 233
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 238
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/visionobjects/textwidget/h/c;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 239
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 226
    goto :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    .line 269
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 254
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 259
    :goto_1
    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 261
    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 266
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 254
    goto :goto_1
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    .line 296
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 281
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 286
    :goto_1
    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 288
    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 292
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 293
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 281
    goto :goto_1
.end method

.method private e()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_2

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 308
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 313
    :goto_1
    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    .line 315
    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 308
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    .line 97
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->a()V

    .line 98
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->b()V

    .line 99
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->c()V

    .line 100
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->d()V

    .line 101
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->e()V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 103
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->a()V

    .line 56
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->b()V

    .line 57
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->c()V

    .line 58
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->d()V

    .line 59
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->e()V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 63
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/visionobjects/textwidget/h/c;->m:Z

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 115
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/visionobjects/textwidget/h/c;->l:I

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 109
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->c()V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 75
    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->d()V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 87
    return-void
.end method

.method public final isOpaque()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 128
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 136
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 142
    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->l:I

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    rem-int/2addr v0, v2

    .line 143
    iget-boolean v2, p0, Lcom/visionobjects/textwidget/h/c;->m:Z

    if-eqz v2, :cond_5

    .line 144
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/visionobjects/textwidget/h/c;->l:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    :cond_3
    return-void

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->b:Landroid/graphics/Paint;

    goto :goto_0

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->b:Landroid/graphics/Paint;

    goto :goto_2
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 163
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 166
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 172
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 173
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
