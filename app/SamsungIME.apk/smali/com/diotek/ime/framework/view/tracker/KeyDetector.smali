.class public abstract Lcom/diotek/ime/framework/view/tracker/KeyDetector;
.super Ljava/lang/Object;
.source "KeyDetector.java"


# instance fields
.field protected mCorrectionX:I

.field protected mCorrectionY:I

.field protected mIsMiniKeyboard:Z

.field protected mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

.field protected mKeyboardWidth:I

.field private mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field protected mProximityCorrectOn:Z

.field protected mProximityThresholdSquare:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    return-void
.end method


# virtual methods
.method public abstract dumpCurrentGrid()V
.end method

.method public abstract getKeyIndexAndNearbyCodes(IIZ)I
.end method

.method protected getKeys()[Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keyboard isn\'t set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    return-object v0
.end method

.method protected abstract getMaxNearbyKeys()I
.end method

.method protected getTouchX(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mCorrectionX:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected getTouchY(I)I
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 82
    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mCorrectionY:I

    add-int/2addr v0, p1

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mProximityCorrectOn:Z

    return v0
.end method

.method public newCodeArray()[I
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getMaxNearbyKeys()I

    move-result v1

    new-array v0, v1, [I

    .line 130
    .local v0, "codes":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 131
    return-object v0
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;FFZ)[Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 3
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .param p2, "correctionX"    # F
    .param p3, "correctionY"    # F
    .param p4, "isMiniKeyboard"    # Z

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 55
    :cond_0
    float-to-int v2, p2

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mCorrectionX:I

    .line 56
    float-to-int v2, p3

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mCorrectionY:I

    .line 57
    iput-object p1, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 58
    iput-boolean p4, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    .line 59
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 61
    .local v0, "array":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 62
    return-object v0
.end method

.method public setKeyboardWidth(I)V
    .locals 0
    .param p1, "keyboardWidth"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    .line 156
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mProximityCorrectOn:Z

    .line 105
    return-void
.end method

.method public setProximityThreshold(I)V
    .locals 1
    .param p1, "threshold"    # I

    .prologue
    .line 117
    mul-int v0, p1, p1

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mProximityThresholdSquare:I

    .line 118
    return-void
.end method
