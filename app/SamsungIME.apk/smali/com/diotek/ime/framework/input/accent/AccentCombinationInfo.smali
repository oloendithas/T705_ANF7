.class public Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;
.super Ljava/lang/Object;
.source "AccentCombinationInfo.java"


# instance fields
.field private mAccentKey:I

.field private mCombinedChar:I

.field private mLanguageID:Ljava/lang/String;

.field private mNormalKey:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p1, "langID"    # Ljava/lang/String;
    .param p2, "accentKey"    # I
    .param p3, "normalKey"    # I
    .param p4, "combinedChar"    # I

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mLanguageID:Ljava/lang/String;

    .line 6
    iput v1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mAccentKey:I

    .line 7
    iput v1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mNormalKey:I

    .line 8
    iput v1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mCombinedChar:I

    .line 11
    iput-object p1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mLanguageID:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mAccentKey:I

    .line 13
    iput p3, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mNormalKey:I

    .line 14
    iput p4, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mCombinedChar:I

    .line 15
    return-void
.end method


# virtual methods
.method public getAccentKey()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mAccentKey:I

    return v0
.end method

.method public getCombinedChar()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mCombinedChar:I

    return v0
.end method

.method public getLanguageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mLanguageID:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalKey()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mNormalKey:I

    return v0
.end method
