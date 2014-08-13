.class public Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
.super Ljava/lang/Object;
.source "SoftFuncKeyInfo.java"


# instance fields
.field private mIndex:I

.field private mKeyCode:I

.field private mLabel:Ljava/lang/String;

.field private mLanguage:Lcom/diotek/ime/framework/common/Language;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/diotek/ime/framework/common/Language;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "keyCode"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "language"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mIndex:I

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mKeyCode:I

    .line 6
    iput-object v1, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLabel:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    .line 10
    iput p1, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mIndex:I

    .line 11
    iput p2, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mKeyCode:I

    .line 12
    iput-object p3, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLabel:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    .line 14
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mIndex:I

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mKeyCode:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Lcom/diotek/ime/framework/common/Language;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    return-object v0
.end method
