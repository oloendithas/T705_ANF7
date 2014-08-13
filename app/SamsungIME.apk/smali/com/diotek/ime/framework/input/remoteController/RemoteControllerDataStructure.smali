.class public Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;
.super Ljava/lang/Object;
.source "RemoteControllerDataStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;
    }
.end annotation


# static fields
.field public static final NOT_A_KEY_INDEX:I = -0x1

.field public static final RC_STATUS_FOCUSED:S = 0x1s

.field public static final RC_STATUS_MINIKEYBOARD_POPUP:S = 0x3s

.field public static final RC_STATUS_MINIKEYBOARD_POPUP_FOCUSED:S = 0x4s

.field public static final RC_STATUS_NONE:S = 0x0s

.field public static final RC_STATUS_PRESSED:S = 0x2s


# instance fields
.field private mColumnCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnCountForMinikeyboard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

.field public mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

.field private mKeyIndexMap:[[I

.field private mKeyIndexMapForMinikeyboard:[[I

.field private mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field private mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field public mPopupX:I

.field public mPopupY:I

.field private mRowCount:I

.field private mRowCountForMinikeyboard:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    .line 40
    iput v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    .line 44
    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    .line 49
    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    .line 51
    iput v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    .line 55
    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    .line 57
    iput v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    .line 59
    iput v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    .line 62
    return-void
.end method

.method private calculateRowAndColumnCountForMiniKeyboard()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 270
    const/4 v3, 0x0

    .line 272
    .local v3, "keyPosY":I
    const/4 v4, 0x0

    .line 274
    .local v4, "oldKeyPosY":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 276
    .local v1, "columnCount":Ljava/lang/Integer;
    iput v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    .line 278
    const/4 v0, 0x0

    .line 281
    .local v0, "alreadyProcessFirstKey":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    .line 284
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 286
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->isThisKeyNotInvisible(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    if-nez v0, :cond_1

    .line 290
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget v3, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move v4, v3

    .line 292
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 294
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const/4 v0, 0x1

    .line 320
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    iget v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_1
    move v4, v3

    .line 302
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget v3, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    .line 304
    if-eq v4, v3, :cond_2

    .line 306
    iget v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    .line 308
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 310
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 326
    :cond_3
    return-void
.end method

.method private generateKeyIndexMapForMiniKeyboard()V
    .locals 5

    .prologue
    .line 227
    iget v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    new-array v3, v3, [[I

    iput-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    if-ge v0, v3, :cond_0

    .line 231
    iget-object v4, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v3, v3, [I

    aput-object v3, v4, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    const/4 v1, 0x0

    .line 237
    .local v1, "numberColumn":I
    const/4 v2, 0x0

    .line 239
    .local v2, "numberRow":I
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 241
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->isThisKeyNotInvisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 245
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    aget-object v3, v3, v2

    aput v0, v3, v1

    .line 247
    add-int/lit8 v1, v1, 0x1

    .line 239
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 253
    const/4 v1, 0x0

    .line 255
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    aget-object v3, v3, v2

    aput v0, v3, v1

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 265
    :cond_3
    return-void
.end method


# virtual methods
.method public calculateRowAndColumnCount()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    const/4 v3, 0x0

    .line 168
    .local v3, "keyPosY":I
    const/4 v4, 0x0

    .line 170
    .local v4, "oldKeyPosY":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 172
    .local v1, "columnCount":Ljava/lang/Integer;
    iput v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    .line 174
    const/4 v0, 0x0

    .line 177
    .local v0, "alreadyProcessFirstKey":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    .line 180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 182
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v5, v5, v7

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->isThisKeyNotInvisible(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    if-nez v0, :cond_1

    .line 186
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget v3, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move v4, v3

    .line 188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 190
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const/4 v0, 0x1

    .line 216
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    iget v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    move v4, v3

    .line 198
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v2

    iget v3, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    .line 200
    if-eq v4, v3, :cond_2

    .line 202
    iget v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    .line 204
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 206
    iget-object v5, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 222
    :cond_3
    return-void
.end method

.method public computeNearstColumnIndex(I)I
    .locals 9
    .param p1, "oldPositionRow"    # I

    .prologue
    .line 408
    const/4 v4, 0x0

    .line 410
    .local v4, "nearstKeyColumn":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    aget-object v7, v7, p1

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    aget v7, v7, v8

    aget-object v5, v6, v7

    .line 412
    .local v5, "oldKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    aget-object v1, v6, v7

    .line 414
    .local v1, "compareKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget v6, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v7, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 420
    .local v2, "distance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v7, v7, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v6, v6, v7

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 422
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v7, v7, v8

    aget v7, v7, v3

    aget-object v1, v6, v7

    .line 424
    iget v6, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v7, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 430
    .local v0, "compareDistance":I
    if-le v2, v0, :cond_0

    .line 432
    move v2, v0

    .line 434
    move v4, v3

    .line 420
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "compareDistance":I
    :cond_1
    return v4
.end method

.method public computeNearstColumnIndexForMinikeyboard(I)I
    .locals 9
    .param p1, "oldPositionRowForMinikeyboard"    # I

    .prologue
    .line 519
    const/4 v4, 0x0

    .line 521
    .local v4, "nearstKeyColumn":I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    aget-object v7, v7, p1

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    aget v7, v7, v8

    aget-object v5, v6, v7

    .line 523
    .local v5, "oldKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    aget-object v1, v6, v7

    .line 525
    .local v1, "compareKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget v6, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v7, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 531
    .local v2, "distance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v7, v7, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v6, v6, v7

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 533
    iget-object v6, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v8, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v8, v8, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v7, v7, v8

    aget v7, v7, v3

    aget-object v1, v6, v7

    .line 535
    iget v6, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v7, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 541
    .local v0, "compareDistance":I
    if-le v2, v0, :cond_0

    .line 543
    move v2, v0

    .line 545
    move v4, v3

    .line 531
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "compareDistance":I
    :cond_1
    return v4
.end method

.method public generateKeyIndexMap()V
    .locals 5

    .prologue
    .line 123
    iget v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    new-array v3, v3, [[I

    iput-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    if-ge v0, v3, :cond_0

    .line 127
    iget-object v4, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v3, v3, [I

    aput-object v3, v4, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const/4 v1, 0x0

    .line 133
    .local v1, "numberColumn":I
    const/4 v2, 0x0

    .line 135
    .local v2, "numberRow":I
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 137
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->isThisKeyNotInvisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 141
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    aget-object v3, v3, v2

    aput v0, v3, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 135
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 149
    const/4 v1, 0x0

    .line 151
    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    aget-object v3, v3, v2

    aput v0, v3, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 161
    :cond_3
    return-void
.end method

.method public getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 4

    .prologue
    .line 618
    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v1, :cond_0

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v3, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v3, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    aget v2, v2, v3

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    return-object v1

    .line 624
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "SamsungIME"

    const-string v2, "RemoteControllerDataStructure.getCurrentFocusedKey() IndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentFocusedKeyForMinikeyboard()Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    aget v1, v1, v2

    aget-object v0, v0, v1

    .line 647
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusedKeyX()I
    .locals 3

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 561
    .local v0, "currentKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-nez v0, :cond_0

    .line 562
    const/4 v1, 0x0

    .line 566
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getFocusedKeyXForMinikeyboard()I
    .locals 3

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKeyForMinikeyboard()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 591
    .local v0, "currentKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-nez v0, :cond_0

    .line 592
    const/4 v1, 0x0

    .line 596
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getFocusedKeyY()I
    .locals 3

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 576
    .local v0, "currentKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-nez v0, :cond_0

    .line 577
    const/4 v1, 0x0

    .line 581
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getFocusedKeyYForMinikeyboard()I
    .locals 3

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKeyForMinikeyboard()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 606
    .local v0, "currentKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-nez v0, :cond_0

    .line 607
    const/4 v1, 0x0

    .line 611
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getmColumnCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    return-object v0
.end method

.method public getmColumnCountForMinikeyboard()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    return-object v0
.end method

.method public getmRowCount()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    return v0
.end method

.method public getmRowCountForMinikeyboard()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    return v0
.end method

.method public initialize(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "keyboardKeyList":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-direct {v0, p0, v1, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;-><init>(Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;II)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    .line 88
    :cond_0
    new-array v0, v1, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 90
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 93
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->calculateRowAndColumnCount()V

    .line 95
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->generateKeyIndexMap()V

    .line 97
    return-void
.end method

.method public initializeForMinikeyboard(Ljava/util/List;II)V
    .locals 2
    .param p2, "popupX"    # I
    .param p3, "popupY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "keyboardKeyListForMinikeyboard":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    const/4 v1, 0x0

    .line 102
    new-instance v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-direct {v0, p0, v1, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;-><init>(Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;II)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    .line 104
    new-array v0, v1, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 106
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 108
    iput p2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    .line 110
    iput p3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    .line 114
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->calculateRowAndColumnCountForMiniKeyboard()V

    .line 116
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->generateKeyIndexMapForMiniKeyboard()V

    .line 118
    return-void
.end method

.method public isThisKeyNotInvisible(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 331
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x101

    if-eq p1, v0, :cond_0

    const/16 v0, -0x103

    if-eq p1, v0, :cond_0

    const/16 v0, -0xff

    if-eq p1, v0, :cond_0

    const/16 v0, -0x100

    if-ne p1, v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveDownCurrentPosition()V
    .locals 4

    .prologue
    .line 374
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    .line 376
    .local v1, "oldPositionRow":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmRowCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v3, v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    const/4 v3, 0x0

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    .line 382
    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->computeNearstColumnIndex(I)I

    move-result v0

    .line 384
    .local v0, "nearstKeyColumn":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v0, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    .line 386
    return-void
.end method

.method public moveDownCurrentPositionForMinikeyboard()V
    .locals 4

    .prologue
    .line 477
    iget v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 479
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    .line 481
    .local v1, "oldPositionRow":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmRowCountForMinikeyboard()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v3, v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    const/4 v3, 0x0

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    .line 487
    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->computeNearstColumnIndexForMinikeyboard(I)I

    move-result v0

    .line 489
    .local v0, "nearstKeyColumn":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v0, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    .line 493
    .end local v0    # "nearstKeyColumn":I
    .end local v1    # "oldPositionRow":I
    :cond_1
    return-void
.end method

.method public moveLeftCurrentPosition()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    if-gez v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmColumnCount()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    .line 369
    :cond_0
    return-void
.end method

.method public moveLeftCurrentPositionForMinikeyboard()V
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v1, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    if-gez v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmColumnCountForMinikeyboard()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    .line 472
    :cond_0
    return-void
.end method

.method public moveRightCurrentPosition()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmColumnCount()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    const/4 v1, 0x0

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    .line 358
    :cond_0
    return-void
.end method

.method public moveRightCurrentPositionForMinikeyboard()V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v1, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmColumnCountForMinikeyboard()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    const/4 v1, 0x0

    iput v1, v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    .line 457
    :cond_0
    return-void
.end method

.method public moveUpCurrentPosition()V
    .locals 4

    .prologue
    .line 391
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    .line 393
    .local v1, "oldPositionRow":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    if-gez v3, :cond_0

    .line 395
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmRowCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    .line 399
    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->computeNearstColumnIndex(I)I

    move-result v0

    .line 401
    .local v0, "nearstKeyColumn":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v0, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    .line 403
    return-void
.end method

.method public moveUpCurrentPositionForMinikeyboard()V
    .locals 4

    .prologue
    .line 498
    iget v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 500
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v1, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    .line 502
    .local v1, "oldPositionRow":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iget v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    if-gez v3, :cond_0

    .line 504
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getmRowCountForMinikeyboard()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->row:I

    .line 508
    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->computeNearstColumnIndexForMinikeyboard(I)I

    move-result v0

    .line 510
    .local v0, "nearstKeyColumn":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    iput v0, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;->column:I

    .line 514
    .end local v0    # "nearstKeyColumn":I
    .end local v1    # "oldPositionRow":I
    :cond_1
    return-void
.end method

.method public releaseKeyData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 710
    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 712
    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    .line 714
    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    move-object v0, v1

    .line 716
    check-cast v0, [[I

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMap:[[I

    .line 718
    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPosition:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    .line 720
    return-void
.end method

.method public releaseKeyDataForMiniKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 725
    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeysForMinikeyboard:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 727
    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    .line 729
    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    move-object v0, v1

    .line 731
    check-cast v0, [[I

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mKeyIndexMapForMinikeyboard:[[I

    .line 733
    iput-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mCurrentPositionForMinikeyboard:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure$Position;

    .line 735
    iput v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    .line 737
    iput v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    .line 739
    return-void
.end method

.method public setmColumnCount(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    .local p1, "mColumnCount":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCount:Ljava/util/List;

    .line 663
    return-void
.end method

.method public setmColumnCountForMinikeyboard(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, "mColumnCountForMinikeyboard":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mColumnCountForMinikeyboard:Ljava/util/List;

    .line 691
    return-void
.end method

.method public setmRowCount(I)V
    .locals 0
    .param p1, "mRowCount"    # I

    .prologue
    .line 675
    iput p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCount:I

    .line 677
    return-void
.end method

.method public setmRowCountForMinikeyboard(I)V
    .locals 0
    .param p1, "mRowCountForMinikeyboard"    # I

    .prologue
    .line 703
    iput p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mRowCountForMinikeyboard:I

    .line 705
    return-void
.end method
