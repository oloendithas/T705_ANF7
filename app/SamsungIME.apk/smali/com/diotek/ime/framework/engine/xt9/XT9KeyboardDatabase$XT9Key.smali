.class final Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;
.super Ljava/lang/Object;
.source "XT9KeyboardDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XT9Key"
.end annotation


# static fields
.field static final FUNCTION_KEY:I = 0x4

.field static final NOREGIONAL_KEY:I = 0x1

.field static final REGIONAL_KEY:I = 0x0

.field static final SMART_PUNCT_KEY:I = 0x2

.field static final STRING:I = 0x3

.field static final UNKNOWN_KEY:I = -0x1


# instance fields
.field public final codes:[I

.field public final height:I

.field public final shiftCodes:[I

.field public final type:I

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>(IIIIIILjava/lang/CharSequence;Z)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "type"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "popupCharacters"    # Ljava/lang/CharSequence;
    .param p8, "isEnableShift"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p2, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->type:I

    .line 250
    if-nez p7, :cond_1

    .line 252
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    .line 254
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    aput p1, v1, v4

    .line 272
    :cond_0
    if-eqz p8, :cond_2

    if-eqz p7, :cond_2

    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 274
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 278
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    invoke-interface {p7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput v2, v1, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "i":I
    :cond_1
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    .line 260
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    aput p1, v1, v4

    .line 262
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput v3, v1, v2

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    .end local v0    # "i":I
    :cond_2
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    .line 286
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    aput v4, v1, v4

    .line 290
    :cond_3
    iput p3, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->x:I

    .line 292
    iput p4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->y:I

    .line 294
    iput p5, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->width:I

    .line 296
    iput p6, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->height:I

    .line 298
    return-void
.end method

.method constructor <init>(Ljava/util/List;IIIIILjava/lang/CharSequence;Z)V
    .locals 5
    .param p2, "type"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "popupCharacters"    # Ljava/lang/CharSequence;
    .param p8, "isEnableShift"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;IIIII",
            "Ljava/lang/CharSequence;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput p2, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->type:I

    .line 405
    if-nez p7, :cond_0

    .line 407
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 411
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    .line 419
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 427
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {p7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput v3, v1, v2

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 435
    :cond_2
    if-eqz p8, :cond_3

    if-eqz p7, :cond_3

    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 437
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    .line 439
    const/4 v0, 0x0

    :goto_3
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 441
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    invoke-interface {p7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput v2, v1, v0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 447
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    .line 449
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    aput v4, v1, v4

    .line 453
    :cond_4
    iput p3, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->x:I

    .line 455
    iput p4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->y:I

    .line 457
    iput p5, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->width:I

    .line 459
    iput p6, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->height:I

    .line 461
    return-void
.end method

.method constructor <init>([IIIIIILjava/lang/CharSequence;Z)V
    .locals 7
    .param p1, "keyCode"    # [I
    .param p2, "type"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "popupCharacters"    # Ljava/lang/CharSequence;
    .param p8, "isEnableShift"    # Z

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput p2, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->type:I

    .line 306
    const-string v3, ""

    .line 308
    .local v3, "newPopupChar":Ljava/lang/String;
    if-eqz p7, :cond_3

    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 312
    const/4 v1, 0x0

    .line 316
    .local v1, "isContainCode":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 318
    invoke-interface {p7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aget v5, p1, v2

    if-ne v4, v5, :cond_2

    .line 320
    const/4 v1, 0x1

    .line 330
    :cond_0
    if-nez v1, :cond_1

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    .end local v0    # "i":I
    .end local v1    # "isContainCode":Z
    .end local v2    # "j":I
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    .line 343
    :cond_4
    array-length v4, p1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    .line 345
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_7

    .line 347
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    aget v5, p1, v0

    aput v5, v4, v0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 353
    .end local v0    # "i":I
    :cond_5
    array-length v4, p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    .line 355
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v4, p1

    if-ge v0, v4, :cond_6

    .line 357
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    aget v5, p1, v0

    aput v5, v4, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 361
    :cond_6
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 363
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->codes:[I

    array-length v5, p1

    add-int/2addr v5, v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput v6, v4, v5

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 371
    :cond_7
    if-eqz p8, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 373
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    .line 375
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 377
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v4, v0

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 383
    :cond_8
    const/4 v4, 0x1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    .line 385
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->shiftCodes:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 389
    :cond_9
    iput p3, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->x:I

    .line 391
    iput p4, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->y:I

    .line 393
    iput p5, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->width:I

    .line 395
    iput p6, p0, Lcom/diotek/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;->height:I

    .line 397
    return-void
.end method
