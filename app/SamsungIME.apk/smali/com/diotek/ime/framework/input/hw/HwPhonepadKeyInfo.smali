.class public Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;
.super Ljava/lang/Object;
.source "HwPhonepadKeyInfo.java"


# instance fields
.field private mKeyCodes:[I

.field private mKeyIndex:I

.field private mLanguageID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[I)V
    .locals 2
    .param p1, "langID"    # Ljava/lang/String;
    .param p2, "keyindex"    # I
    .param p3, "keyCodes"    # [I

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mLanguageID:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mKeyIndex:I

    .line 7
    iput-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mKeyCodes:[I

    .line 10
    iput-object p1, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mLanguageID:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mKeyIndex:I

    .line 12
    iput-object p3, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mKeyCodes:[I

    .line 13
    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mKeyCodes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getKeyCodes()[I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mKeyCodes:[I

    return-object v0
.end method

.method public getKeyIndex()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mKeyIndex:I

    return v0
.end method

.method public getLanguageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->mLanguageID:Ljava/lang/String;

    return-object v0
.end method
