.class public final Lcom/visionobjects/textwidget/f/b/a;
.super Ljava/lang/Object;
.source "VOModelFactory.java"


# instance fields
.field private a:Lcom/visionobjects/textwidget/e/a;

.field private b:Lcom/visionobjects/a/a/e;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/e/a;Landroid/util/DisplayMetrics;)V
    .locals 4

    .prologue
    const v3, -0x7f7f80

    const v2, -0xcc4a1b

    const/high16 v1, -0x1000000

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/b/a;->a:Lcom/visionobjects/textwidget/e/a;

    .line 61
    const/high16 v0, 0x40a00000

    invoke-static {v0, p2}, Lcom/visionobjects/textwidget/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/f/b/a;->j:F

    .line 63
    iput v1, p0, Lcom/visionobjects/textwidget/f/b/a;->c:I

    .line 64
    iput v2, p0, Lcom/visionobjects/textwidget/f/b/a;->d:I

    .line 65
    iput v3, p0, Lcom/visionobjects/textwidget/f/b/a;->e:I

    .line 67
    iput v1, p0, Lcom/visionobjects/textwidget/f/b/a;->f:I

    .line 68
    iput v2, p0, Lcom/visionobjects/textwidget/f/b/a;->g:I

    .line 69
    iput v3, p0, Lcom/visionobjects/textwidget/f/b/a;->h:I

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(I)V

    .line 72
    return-void
.end method

.method private static a([Lcom/visionobjects/a/a;)[Lcom/visionobjects/a/a;
    .locals 4

    .prologue
    const/16 v1, 0x7d0

    .line 139
    array-length v0, p0

    if-le v0, v1, :cond_1

    .line 140
    new-array v1, v1, [Lcom/visionobjects/a/a;

    .line 141
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 142
    array-length v2, p0

    mul-int/2addr v2, v0

    array-length v3, v1

    div-int/2addr v2, v3

    aget-object v2, p0, v2

    aput-object v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 146
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/visionobjects/a/a/e;
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    iget v1, p0, Lcom/visionobjects/textwidget/f/b/a;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 119
    new-instance v0, Lcom/visionobjects/a/a/c;

    invoke-direct {v0}, Lcom/visionobjects/a/a/c;-><init>()V

    .line 126
    :cond_0
    :goto_0
    iget v1, p0, Lcom/visionobjects/textwidget/f/b/a;->d:I

    invoke-interface {v0, v1}, Lcom/visionobjects/a/a/e;->b(I)V

    .line 127
    iget v1, p0, Lcom/visionobjects/textwidget/f/b/a;->j:F

    invoke-interface {v0, v1}, Lcom/visionobjects/a/a/e;->a(F)V

    .line 128
    iget-object v1, p0, Lcom/visionobjects/textwidget/f/b/a;->k:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/visionobjects/textwidget/f/b/a;->l:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/visionobjects/a/a/e;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 130
    return-object v0

    .line 120
    :cond_1
    iget v1, p0, Lcom/visionobjects/textwidget/f/b/a;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 121
    new-instance v0, Lcom/visionobjects/a/a/a;

    invoke-direct {v0}, Lcom/visionobjects/a/a/a;-><init>()V

    goto :goto_0

    .line 122
    :cond_2
    iget v1, p0, Lcom/visionobjects/textwidget/f/b/a;->i:I

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Lcom/visionobjects/a/a/d;

    invoke-direct {v0}, Lcom/visionobjects/a/a/d;-><init>()V

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/a/b;Lcom/visionobjects/stylus/core/VoTimeStamp;Lcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/textwidget/f/b;
    .locals 17

    .prologue
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->f()[Lcom/visionobjects/a/a;

    move-result-object v2

    .line 154
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->c()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 155
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 156
    new-instance v7, Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->d()Landroid/graphics/Paint;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->e()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->a()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->b()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 166
    const/4 v13, 0x0

    .line 167
    const/4 v14, 0x0

    .line 168
    const/4 v15, 0x0

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->i()Landroid/graphics/Paint;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v13, Landroid/graphics/Paint;

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->i()Landroid/graphics/Paint;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 173
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->g()Landroid/graphics/Matrix;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 174
    new-instance v14, Landroid/graphics/Matrix;

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->g()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 176
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->h()Landroid/graphics/Matrix;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 177
    new-instance v15, Landroid/graphics/Matrix;

    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/a/b;->h()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 180
    :cond_2
    invoke-static {v2}, Lcom/visionobjects/textwidget/f/b/a;->a([Lcom/visionobjects/a/a;)[Lcom/visionobjects/a/a;

    move-result-object v4

    .line 182
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v4, v0, v1}, Lcom/visionobjects/textwidget/d/a/b;->a([Lcom/visionobjects/a/a;Lcom/visionobjects/stylus/core/VoTimeStamp;Lcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v3

    .line 184
    new-instance v2, Lcom/visionobjects/textwidget/f/b;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/visionobjects/textwidget/f/b/a;->c:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/visionobjects/textwidget/f/b/a;->d:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/visionobjects/textwidget/f/b/a;->e:I

    const/16 v16, 0x1

    invoke-direct/range {v2 .. v16}, Lcom/visionobjects/textwidget/f/b;-><init>(Lcom/visionobjects/stylus/core/InkItem;[Lcom/visionobjects/a/a;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/Paint;IIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V

    return-object v2
.end method

.method public final a(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/textwidget/f/b;
    .locals 15

    .prologue
    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/stylus/core/InkItem;->path()Lcom/visionobjects/stylus/core/Path;

    move-result-object v7

    .line 196
    invoke-virtual {v7}, Lcom/visionobjects/stylus/core/Path;->elementCount()I

    move-result v8

    .line 197
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    .line 199
    invoke-virtual {v7, v6}, Lcom/visionobjects/stylus/core/Path;->elementAt(I)Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    .line 201
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v2

    .line 202
    if-nez v6, :cond_0

    .line 203
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/visionobjects/a/a/e;->a(FFFJ)V

    .line 197
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/visionobjects/a/a/e;->b(FFFJ)V

    goto :goto_1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->f()V

    .line 210
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->d()[Lcom/visionobjects/a/a;

    move-result-object v2

    .line 211
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->g()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 212
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 213
    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->b()Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 219
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->c()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 221
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->j()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 222
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->l()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 223
    const/4 v11, 0x0

    .line 224
    const/4 v12, 0x0

    .line 225
    const/4 v13, 0x0

    .line 227
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->a()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    new-instance v11, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->a()Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->k()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 231
    new-instance v12, Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->k()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->m()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 234
    new-instance v13, Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0}, Lcom/visionobjects/a/a/e;->m()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 237
    :cond_4
    new-instance v0, Lcom/visionobjects/textwidget/f/b;

    iget v6, p0, Lcom/visionobjects/textwidget/f/b/a;->c:I

    iget v7, p0, Lcom/visionobjects/textwidget/f/b/a;->d:I

    iget v8, p0, Lcom/visionobjects/textwidget/f/b/a;->e:I

    const/4 v14, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Lcom/visionobjects/textwidget/f/b;-><init>(Lcom/visionobjects/stylus/core/InkItem;[Lcom/visionobjects/a/a;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/Paint;IIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V

    return-object v0
.end method

.method public final a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;
    .locals 26

    .prologue
    .line 272
    if-nez p2, :cond_a

    .line 273
    const/4 v1, 0x0

    new-array v15, v1, [Lcom/visionobjects/textwidget/f/b;

    .line 277
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/visionobjects/textwidget/d/a/d;->a(Lcom/visionobjects/stylus/core/Segment;)Z

    move-result v25

    .line 278
    if-eqz v25, :cond_9

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_9

    .line 280
    invoke-static/range {p1 .. p1}, Lcom/visionobjects/textwidget/d/a/d;->b(Lcom/visionobjects/stylus/core/Segment;)Lcom/visionobjects/stylus/core/Segment;

    move-result-object p1

    move-object/from16 v8, p1

    .line 284
    :goto_1
    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->candidates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    array-length v1, v14

    if-ge v2, v1, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/Candidate;

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/Candidate;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 285
    :cond_0
    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->selectedIndex()I

    move-result v13

    .line 289
    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/a/e;->b(Lcom/visionobjects/stylus/core/Candidate;)Ljava/util/List;

    move-result-object v2

    .line 293
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Landroid/graphics/RectF;

    .line 294
    const/4 v1, 0x0

    move v4, v1

    :goto_3
    array-length v1, v3

    if-ge v4, v1, :cond_3

    .line 296
    const/4 v5, 0x0

    .line 298
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Segment;->items()Ljava/util/List;

    move-result-object v1

    .line 299
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/InkItem;

    .line 301
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/visionobjects/stylus/core/InkItem;->is(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 302
    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkItem;->boundingRect()Lcom/visionobjects/stylus/core/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/Rect;)Landroid/graphics/RectF;

    move-result-object v1

    :goto_5
    move-object v5, v1

    .line 304
    goto :goto_4

    .line 306
    :cond_1
    if-nez v5, :cond_2

    .line 307
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v3, v4

    .line 294
    :goto_6
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 309
    :cond_2
    aput-object v5, v3, v4

    goto :goto_6

    .line 314
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visionobjects/textwidget/f/b/a;->a:Lcom/visionobjects/textwidget/e/a;

    aget-object v4, v14, v13

    invoke-virtual {v1, v4, v2}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/lang/String;Ljava/util/List;)[C

    move-result-object v4

    .line 317
    array-length v1, v4

    new-array v5, v1, [F

    .line 318
    array-length v1, v4

    new-array v6, v1, [F

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visionobjects/textwidget/f/b/a;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual/range {v1 .. v6}, Lcom/visionobjects/textwidget/e/a;->a(Ljava/util/List;[Landroid/graphics/RectF;[C[F[F)V

    .line 322
    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkRange;->boundingRect()Lcom/visionobjects/stylus/core/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/a/e;->a(Lcom/visionobjects/stylus/core/Rect;)Landroid/graphics/RectF;

    move-result-object v22

    .line 323
    const/4 v1, 0x0

    :goto_7
    array-length v2, v4

    if-ge v1, v2, :cond_6

    .line 325
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    aget v7, v5, v1

    cmpl-float v2, v2, v7

    if-lez v2, :cond_4

    .line 326
    aget v2, v5, v1

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 328
    :cond_4
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->right:F

    aget v7, v6, v1

    cmpg-float v2, v2, v7

    if-gez v2, :cond_5

    .line 329
    aget v2, v6, v1

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 323
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 334
    :cond_6
    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->baseline()F

    .line 335
    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->midlineShift()F

    move-result v21

    .line 336
    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->timeStamp()Lcom/visionobjects/stylus/core/VoTimeStamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->milliseconds()J

    move-result-wide v23

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visionobjects/textwidget/f/b/a;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v20

    .line 341
    new-instance v9, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visionobjects/textwidget/f/b/a;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v1}, Lcom/visionobjects/textwidget/e/a;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 343
    new-instance v7, Lcom/visionobjects/textwidget/f/c;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/visionobjects/textwidget/f/b/a;->f:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/visionobjects/textwidget/f/b/a;->g:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/visionobjects/textwidget/f/b/a;->h:I

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v4

    invoke-direct/range {v7 .. v24}, Lcom/visionobjects/textwidget/f/c;-><init>(Lcom/visionobjects/stylus/core/Segment;Landroid/graphics/Paint;IIII[Ljava/lang/String;[Lcom/visionobjects/textwidget/f/b;[Landroid/graphics/RectF;[F[F[CFFLandroid/graphics/RectF;J)V

    .line 361
    if-eqz v25, :cond_7

    .line 362
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    .line 365
    :cond_7
    return-object v7

    :cond_8
    move-object v1, v5

    goto/16 :goto_5

    :cond_9
    move-object/from16 v8, p1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v15, p2

    goto/16 :goto_0
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 414
    :goto_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->e()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->n()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;FF)Lcom/visionobjects/textwidget/f/c;
    .locals 3

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    new-instance v1, Lcom/visionobjects/stylus/core/Transform;

    invoke-direct {v1}, Lcom/visionobjects/stylus/core/Transform;-><init>()V

    invoke-virtual {v1, p2, p3}, Lcom/visionobjects/stylus/core/Transform;->translate(FF)Lcom/visionobjects/stylus/core/Transform;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/stylus/core/Segment;->mapped(Lcom/visionobjects/stylus/core/Transform;Ljava/util/List;)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    .line 373
    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;)[Lcom/visionobjects/textwidget/f/b;

    move-result-object v1

    .line 374
    invoke-virtual {p0, v0, v1}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->o()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/c;->a(B)V

    .line 377
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    .line 378
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    .line 379
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/c;->d(Z)V

    .line 381
    return-object v0
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;IF)Lcom/visionobjects/textwidget/f/c;
    .locals 8

    .prologue
    .line 387
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v1

    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->o()B

    move-result v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/visionobjects/textwidget/e/a;->a(Lcom/visionobjects/stylus/core/Segment;BIF)[Landroid/graphics/RectF;

    move-result-object v1

    .line 389
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->f()F

    move-result v2

    .line 390
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->a:Lcom/visionobjects/textwidget/e/a;

    invoke-virtual {v0}, Lcom/visionobjects/textwidget/e/a;->g()F

    move-result v3

    .line 392
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v1, v0

    invoke-static {v7}, Lcom/visionobjects/textwidget/d/a/c;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/Rect;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v0, v4}, Lcom/visionobjects/stylus/core/Segment;-><init>(Lcom/visionobjects/stylus/core/Segment;)V

    invoke-virtual {v0, p2}, Lcom/visionobjects/stylus/core/Segment;->select(I)Z

    invoke-virtual {v0, v5, v2, v3}, Lcom/visionobjects/stylus/core/Segment;->fontified(Ljava/util/List;FF)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    .line 394
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v0

    .line 396
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->o()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/c;->a(B)V

    .line 397
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    .line 398
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    .line 399
    invoke-virtual {p1}, Lcom/visionobjects/textwidget/f/c;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/c;->d(Z)V

    .line 401
    return-object v0
.end method

.method public final a(Lcom/visionobjects/textwidget/f/c;II)Lcom/visionobjects/textwidget/f/c;
    .locals 16

    .prologue
    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v8

    new-instance v9, Lcom/visionobjects/stylus/core/InkRange;

    invoke-direct {v9}, Lcom/visionobjects/stylus/core/InkRange;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Candidate;->segments()Ljava/util/List;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v5, v2

    move-object v2, v4

    move v4, v1

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Segment;->selectedCandidate()Lcom/visionobjects/stylus/core/Candidate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/visionobjects/stylus/core/Candidate;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p3

    if-ge v5, v0, :cond_2

    add-int v6, v5, v12

    move/from16 v0, p3

    if-ge v0, v6, :cond_2

    const/4 v6, 0x1

    move v7, v6

    :goto_1
    move/from16 v0, p2

    if-ge v5, v0, :cond_3

    add-int v6, v5, v12

    move/from16 v0, p2

    if-ge v0, v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    if-nez v7, :cond_0

    if-eqz v6, :cond_4

    :cond_0
    new-instance v13, Lcom/visionobjects/stylus/core/Candidate;

    invoke-direct {v13}, Lcom/visionobjects/stylus/core/Candidate;-><init>()V

    move/from16 v0, p2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int v15, v5, v12

    move/from16 v0, p3

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/visionobjects/stylus/core/Candidate;->setLabel(Ljava/lang/String;)V

    new-instance v14, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v14}, Lcom/visionobjects/stylus/core/Segment;-><init>()V

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v14, v13}, Lcom/visionobjects/stylus/core/Segment;->append(Lcom/visionobjects/stylus/core/Candidate;)V

    invoke-virtual {v14}, Lcom/visionobjects/stylus/core/Segment;->selectLastCandidate()Z

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Segment;->baseline()F

    move-result v13

    invoke-virtual {v14, v13}, Lcom/visionobjects/stylus/core/Segment;->setBaseline(F)V

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Segment;->baselineSkew()F

    move-result v13

    invoke-virtual {v14, v13}, Lcom/visionobjects/stylus/core/Segment;->setBaselineSkew(F)V

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Segment;->midlineShift()F

    move-result v1

    invoke-virtual {v14, v1}, Lcom/visionobjects/stylus/core/Segment;->setMidlineShift(F)V

    if-eqz v7, :cond_1

    invoke-virtual {v14}, Lcom/visionobjects/stylus/core/Segment;->promoted()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v3

    :cond_1
    if-eqz v6, :cond_a

    invoke-virtual {v14}, Lcom/visionobjects/stylus/core/Segment;->promoted()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v1

    :goto_3
    move-object v2, v1

    move-object v1, v3

    :goto_4
    add-int/2addr v5, v12

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    move v7, v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    move/from16 v0, p2

    if-gt v0, v5, :cond_5

    add-int v6, v5, v12

    move/from16 v0, p3

    if-gt v6, v0, :cond_5

    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/visionobjects/stylus/core/InkRange;->append(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v1}, Lcom/visionobjects/stylus/core/Segment;-><init>()V

    new-instance v4, Lcom/visionobjects/stylus/core/Segment;

    invoke-direct {v4}, Lcom/visionobjects/stylus/core/Segment;-><init>()V

    invoke-virtual {v8, v9, v1, v4}, Lcom/visionobjects/stylus/core/Segment;->split(Lcom/visionobjects/stylus/core/InkRange;Lcom/visionobjects/stylus/core/Segment;Lcom/visionobjects/stylus/core/Segment;)V

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/visionobjects/stylus/core/Segment;->grafted(Lcom/visionobjects/stylus/core/Segment;I)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v1

    :cond_7
    if-eqz v3, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/visionobjects/stylus/core/Segment;->grafted(Lcom/visionobjects/stylus/core/Segment;I)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v1

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/visionobjects/stylus/core/Segment;->simplified(Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/Segment;

    move-result-object v1

    .line 422
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;)[Lcom/visionobjects/textwidget/f/b;

    move-result-object v2

    .line 423
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/Segment;[Lcom/visionobjects/textwidget/f/b;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/textwidget/f/c;->o()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/visionobjects/textwidget/f/c;->a(B)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/visionobjects/textwidget/f/c;->b(Z)V

    .line 427
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/textwidget/f/c;->r()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/visionobjects/textwidget/f/c;->c(Z)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/visionobjects/textwidget/f/c;->s()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/visionobjects/textwidget/f/c;->d(Z)V

    .line 430
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->u()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_5
    return-object v1

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/textwidget/f/c;)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    goto :goto_5

    :cond_a
    move-object v1, v2

    goto/16 :goto_3
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 79
    iput p1, p0, Lcom/visionobjects/textwidget/f/b/a;->j:F

    .line 80
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0, p1}, Lcom/visionobjects/a/a/e;->a(F)V

    .line 81
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 92
    iput p1, p0, Lcom/visionobjects/textwidget/f/b/a;->i:I

    .line 93
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/b/a;->a()Lcom/visionobjects/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    .line 94
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/visionobjects/a/a/e;->a(I)V

    .line 95
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 85
    iput p1, p0, Lcom/visionobjects/textwidget/f/b/a;->c:I

    .line 86
    iput p2, p0, Lcom/visionobjects/textwidget/f/b/a;->d:I

    .line 87
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0, p2}, Lcom/visionobjects/a/a/e;->b(I)V

    .line 88
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/visionobjects/textwidget/f/b/a;->k:Landroid/graphics/Bitmap;

    .line 100
    iput-object p2, p0, Lcom/visionobjects/textwidget/f/b/a;->l:Landroid/graphics/Bitmap;

    .line 101
    iget-object v0, p0, Lcom/visionobjects/textwidget/f/b/a;->b:Lcom/visionobjects/a/a/e;

    invoke-interface {v0, p1, p2}, Lcom/visionobjects/a/a/e;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 102
    return-void
.end method

.method public final a(Lcom/visionobjects/stylus/core/Segment;)[Lcom/visionobjects/textwidget/f/b;
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/Segment;->items()Ljava/util/List;

    move-result-object v0

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    .line 251
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/visionobjects/stylus/core/InkItem;->is(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/visionobjects/textwidget/f/b;

    .line 258
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 259
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {p0, v0}, Lcom/visionobjects/textwidget/f/b/a;->a(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/textwidget/f/b;

    move-result-object v0

    aput-object v0, v3, v1

    .line 258
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 262
    :cond_2
    return-object v3
.end method

.method public final b(II)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/visionobjects/textwidget/f/b/a;->f:I

    .line 107
    iput p2, p0, Lcom/visionobjects/textwidget/f/b/a;->g:I

    .line 108
    return-void
.end method
