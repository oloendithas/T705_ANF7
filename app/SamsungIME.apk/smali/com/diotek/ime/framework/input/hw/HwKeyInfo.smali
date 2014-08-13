.class public Lcom/diotek/ime/framework/input/hw/HwKeyInfo;
.super Ljava/lang/Object;
.source "HwKeyInfo.java"


# instance fields
.field private mAltgredChar:I

.field private mKeyIndex:I

.field private mLanguageID:Ljava/lang/String;

.field private mNormalChar:I

.field private mShiftedAltgredChar:I

.field private mShiftedlChar:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 2
    .param p1, "langID"    # Ljava/lang/String;
    .param p2, "keyindex"    # I
    .param p3, "normal"    # I
    .param p4, "shifted"    # I
    .param p5, "altgred"    # I
    .param p6, "shiftedaltgr"    # I

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mLanguageID:Ljava/lang/String;

    .line 6
    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mKeyIndex:I

    .line 7
    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mNormalChar:I

    .line 8
    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedlChar:I

    .line 9
    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mAltgredChar:I

    .line 10
    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedAltgredChar:I

    .line 13
    iput-object p1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mLanguageID:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mKeyIndex:I

    .line 15
    iput p3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mNormalChar:I

    .line 16
    iput p4, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedlChar:I

    .line 17
    iput p5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mAltgredChar:I

    .line 18
    iput p6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedAltgredChar:I

    .line 19
    return-void
.end method


# virtual methods
.method public getAltgredChar()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mAltgredChar:I

    return v0
.end method

.method public getKeyIndex()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mKeyIndex:I

    return v0
.end method

.method public getLanguageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mLanguageID:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalChar()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mNormalChar:I

    return v0
.end method

.method public getShiftedAltgredChar()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedAltgredChar:I

    return v0
.end method

.method public getShiftedChar()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedlChar:I

    return v0
.end method
