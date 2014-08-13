.class public final Lcom/visionobjects/textwidget/d/a/a;
.super Ljava/lang/Object;
.source "InkFieldFactory.java"


# direct methods
.method public static a(FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;
    .locals 3

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 42
    invoke-static {p1}, Lcom/visionobjects/textwidget/d/a/a;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v1

    .line 43
    const/16 v0, 0x9

    .line 53
    :goto_0
    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->inkLayout()Lcom/visionobjects/stylus/core/InkLayout;

    move-result-object v2

    .line 54
    invoke-virtual {v2, p0}, Lcom/visionobjects/stylus/core/InkLayout;->setGuidelines(F)V

    .line 55
    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/InkLayout;->setModifiers(I)V

    .line 56
    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setInkLayout(Lcom/visionobjects/stylus/core/InkLayout;)V

    .line 58
    return-object v1

    .line 47
    :cond_0
    new-instance v1, Lcom/visionobjects/stylus/core/InkField;

    invoke-direct {v1}, Lcom/visionobjects/stylus/core/InkField;-><init>()V

    .line 48
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private static a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 222
    invoke-static {p0}, Lcom/visionobjects/textwidget/d/a/c;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/stylus/core/InkItem;->createGuideBox(Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/visionobjects/stylus/core/InkField;->fromItem(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    .line 225
    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->taggedWith(Lcom/visionobjects/stylus/core/InkTag;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 227
    return-object v0
.end method

.method public static a(Lcom/visionobjects/stylus/core/InkField;FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkRange;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lcom/visionobjects/textwidget/d/a/a;->a(FLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->grafted(Ljava/util/List;I)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/visionobjects/textwidget/f/a/b;FFLandroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;
    .locals 11

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/a/b;->e()I

    move-result v3

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    new-instance v5, Lcom/visionobjects/stylus/core/InkRange;

    invoke-direct {v5}, Lcom/visionobjects/stylus/core/InkRange;-><init>()V

    .line 97
    new-instance v6, Lcom/visionobjects/stylus/core/InkRange;

    invoke-direct {v6}, Lcom/visionobjects/stylus/core/InkRange;-><init>()V

    .line 99
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 100
    const/4 v1, 0x0

    .line 102
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_4

    .line 104
    invoke-virtual {p0, v2}, Lcom/visionobjects/textwidget/f/a/b;->b(I)Lcom/visionobjects/textwidget/f/c;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/visionobjects/stylus/core/InkRange;->has(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 110
    :cond_0
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v8

    invoke-static {v8}, Lcom/visionobjects/stylus/core/InkField;->fromSegment(Lcom/visionobjects/stylus/core/Segment;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->q()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 113
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/visionobjects/stylus/core/InkRange;->append(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;

    .line 115
    :cond_1
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->r()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 116
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->b()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/visionobjects/stylus/core/InkRange;->append(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;

    .line 119
    :cond_2
    invoke-virtual {v1}, Lcom/visionobjects/textwidget/f/c;->h()[Lcom/visionobjects/textwidget/f/b;

    move-result-object v8

    array-length v9, v8

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_3

    aget-object v10, v8, v1

    .line 120
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 125
    :cond_4
    const/16 v1, 0x8

    .line 126
    if-eqz p3, :cond_8

    .line 128
    if-nez v0, :cond_5

    .line 129
    invoke-static {p3}, Lcom/visionobjects/textwidget/d/a/a;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 130
    const/4 v1, 0x0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/InkRange;->append(Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkRange;

    .line 133
    :cond_5
    const/16 v0, 0x9

    .line 138
    :goto_2
    invoke-virtual {p0}, Lcom/visionobjects/textwidget/f/a/b;->d()I

    move-result v2

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    .line 144
    invoke-virtual {p0, v1}, Lcom/visionobjects/textwidget/f/a/b;->a(I)Lcom/visionobjects/textwidget/f/b;

    move-result-object v8

    .line 146
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 147
    invoke-virtual {v8}, Lcom/visionobjects/textwidget/f/b;->a()Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 153
    :cond_7
    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/visionobjects/stylus/core/InkField;->grafted(Ljava/util/List;I)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->inkLayout()Lcom/visionobjects/stylus/core/InkLayout;

    move-result-object v2

    .line 158
    invoke-virtual {v2, p1}, Lcom/visionobjects/stylus/core/InkLayout;->setGuidelines(F)V

    .line 159
    invoke-virtual {v2, p2}, Lcom/visionobjects/stylus/core/InkLayout;->setMidlineShift(F)V

    .line 160
    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/InkLayout;->setModifiers(I)V

    .line 161
    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setInkLayout(Lcom/visionobjects/stylus/core/InkLayout;)V

    .line 165
    new-instance v0, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v5}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v1, v0}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    .line 166
    new-instance v0, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v6}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v1, v0}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    .line 170
    invoke-virtual {v1, v3}, Lcom/visionobjects/stylus/core/InkField;->setPendingStrokes(Ljava/util/List;)V

    .line 172
    return-object v1

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;
    .locals 6

    .prologue
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    const/4 v1, 0x0

    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_0

    .line 184
    aget-object v2, p4, v1

    invoke-static {v2}, Lcom/visionobjects/textwidget/d/a/c;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/visionobjects/stylus/core/InkItem;->createCharBox(Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/InkItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/InkField;->fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFF)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 190
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/visionobjects/stylus/core/InkField;->formatted(I)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v1

    .line 194
    const/16 v0, 0x8

    .line 195
    if-eqz p5, :cond_1

    .line 197
    invoke-static {p5}, Lcom/visionobjects/textwidget/d/a/a;->a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 198
    invoke-static {v0, v1}, Lcom/visionobjects/textwidget/d/a/a;->a(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;

    .line 199
    const/16 v0, 0x9

    .line 204
    :cond_1
    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->inkLayout()Lcom/visionobjects/stylus/core/InkLayout;

    move-result-object v2

    .line 205
    invoke-virtual {v2, p2}, Lcom/visionobjects/stylus/core/InkLayout;->setGuidelines(F)V

    .line 206
    invoke-virtual {v2, p3}, Lcom/visionobjects/stylus/core/InkLayout;->setMidlineShift(F)V

    .line 207
    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/InkLayout;->setModifiers(I)V

    .line 208
    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setInkLayout(Lcom/visionobjects/stylus/core/InkLayout;)V

    .line 212
    invoke-virtual {v1}, Lcom/visionobjects/stylus/core/InkField;->topLevelSegment()Lcom/visionobjects/stylus/core/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Segment;->inkRange()Lcom/visionobjects/stylus/core/InkRange;

    move-result-object v0

    .line 213
    new-instance v2, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    .line 214
    new-instance v2, Lcom/visionobjects/stylus/core/InkTag;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lcom/visionobjects/stylus/core/InkTag;-><init>(ILcom/visionobjects/stylus/core/InkRange;)V

    invoke-virtual {v1, v2}, Lcom/visionobjects/stylus/core/InkField;->setTag(Lcom/visionobjects/stylus/core/InkTag;)V

    .line 216
    return-object v1
.end method
