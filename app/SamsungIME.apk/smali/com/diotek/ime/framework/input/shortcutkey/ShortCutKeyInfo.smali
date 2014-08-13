.class public Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;
.super Ljava/lang/Object;
.source "ShortCutKeyInfo.java"


# instance fields
.field private mIsActiveKey:Z

.field private mKeycode:I

.field private mLanguageID:I

.field private mShortCutKey:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .param p1, "langID"    # I
    .param p2, "keycode"    # I
    .param p3, "shortcutkeycode"    # I

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    .line 5
    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    .line 6
    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    .line 7
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    .line 10
    iput p1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    .line 11
    iput p2, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    .line 12
    iput p3, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    .line 13
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    .line 14
    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 1
    .param p1, "langID"    # I
    .param p2, "keycode"    # I
    .param p3, "shortcutkeycode"    # I
    .param p4, "isActive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    .line 5
    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    .line 6
    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    .line 7
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    .line 17
    iput p1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    .line 18
    iput p2, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    .line 19
    iput p3, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    .line 20
    iput-boolean p4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    return v0
.end method

.method public getLanguageID()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    return v0
.end method

.method public getShortCutKeyCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    return v0
.end method

.method public isActiveKey()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    return v0
.end method
