.class public Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;
.super Ljava/lang/Object;
.source "SecondaryKeyInfo.java"


# instance fields
.field private mKeycode:I

.field private mLanguageID:I

.field private mSecondaryKeycode:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .param p1, "langID"    # I
    .param p2, "keycode"    # I
    .param p3, "secKeycode"    # I

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->mLanguageID:I

    .line 6
    iput v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->mKeycode:I

    .line 7
    iput v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->mSecondaryKeycode:I

    .line 10
    iput p1, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->mLanguageID:I

    .line 11
    iput p2, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->mKeycode:I

    .line 12
    iput p3, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->mSecondaryKeycode:I

    .line 13
    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->mKeycode:I

    return v0
.end method

.method public getLanguageID()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->mLanguageID:I

    return v0
.end method

.method public getSecondaryKeyCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyInfo;->mSecondaryKeycode:I

    return v0
.end method
