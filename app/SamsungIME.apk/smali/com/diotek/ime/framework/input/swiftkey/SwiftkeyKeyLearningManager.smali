.class public Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;
.super Ljava/lang/Object;
.source "SwiftkeyKeyLearningManager.java"


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;


# instance fields
.field private mDistance:I

.field private mModifiedTouchPoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalTouchPoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mInstance:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    .line 15
    const/16 v0, 0x32

    iput v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mDistance:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v1, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mInstance:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-direct {v1}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mInstance:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 21
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-object v1, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mInstance:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0xb

    iput v2, v1, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mDistance:I

    .line 23
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mInstance:Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    return-object v1
.end method

.method private isNearPoints(Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;)Z
    .locals 8
    .param p1, "touchInfo1"    # Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;
    .param p2, "touchInfo2"    # Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 106
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v4, v5

    .line 124
    :cond_1
    :goto_0
    return v4

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getType()I

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-virtual {p2}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getType()I

    move-result v6

    if-eq v6, v4, :cond_4

    :cond_3
    move v4, v5

    .line 111
    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p1}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getTouchPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 114
    .local v0, "p1":Landroid/graphics/PointF;
    invoke-virtual {p2}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->getTouchPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 115
    .local v1, "p2":Landroid/graphics/PointF;
    if-eqz v0, :cond_5

    if-nez v1, :cond_6

    :cond_5
    move v4, v5

    .line 116
    goto :goto_0

    .line 118
    :cond_6
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 119
    .local v2, "xDistance":F
    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 121
    .local v3, "yDistance":F
    iget v6, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mDistance:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_7

    iget v6, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mDistance:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_1

    :cond_7
    move v4, v5

    .line 124
    goto :goto_0
.end method


# virtual methods
.method public addKeyCode(Ljava/lang/StringBuilder;C)V
    .locals 4
    .param p1, "currentText"    # Ljava/lang/StringBuilder;
    .param p2, "keyCode"    # C

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 40
    .local v0, "length":I
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    .line 43
    :cond_0
    new-instance v1, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;-><init>(CZ)V

    .line 44
    .local v1, "ti":Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 45
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public addNewText(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "currentText"    # Ljava/lang/StringBuilder;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 53
    new-instance v1, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;-><init>(CZ)V

    .line 54
    .local v1, "ti":Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 55
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "ti":Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;
    :cond_0
    return-void
.end method

.method public addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "currentText"    # Ljava/lang/StringBuilder;
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 28
    .local v0, "length":I
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    .line 31
    :cond_0
    new-instance v1, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;-><init>(Landroid/graphics/PointF;Z)V

    .line 32
    .local v1, "ti":Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 33
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public clearTouchPoints()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 70
    iget-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 71
    return-void
.end method

.method public deleteLastTouchPoint()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 66
    :cond_1
    return-void
.end method

.method public getOriginalTouchKeys()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    return-object v0
.end method

.method public needToKeyLearning(Ljava/lang/StringBuilder;)Z
    .locals 5
    .param p1, "currentText"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, 0x0

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "res":Z
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v2, v4

    .line 91
    :goto_0
    return v2

    .line 82
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 84
    iget-object v2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mOriginalTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;

    invoke-direct {p0, v2, v3}, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->isNearPoints(Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    const/4 v1, 0x1

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 91
    goto :goto_0
.end method

.method public needToKeyLearningKorPhonpad(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "currentText"    # Ljava/lang/StringBuilder;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->mModifiedTouchPoints:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
