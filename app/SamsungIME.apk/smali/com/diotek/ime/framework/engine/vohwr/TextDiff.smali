.class public Lcom/diotek/ime/framework/engine/vohwr/TextDiff;
.super Ljava/lang/Object;
.source "TextDiff.java"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final RETURN_STRING:Ljava/lang/String; = "\n"

.field public static final SPACE_STRING:Ljava/lang/String; = " "

.field private static mInstance:Lcom/diotek/ime/framework/engine/vohwr/TextDiff;


# instance fields
.field private mIndex:I

.field private mNewText:Ljava/lang/String;

.field private mOldText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mInstance:Lcom/diotek/ime/framework/engine/vohwr/TextDiff;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "oldText"    # Ljava/lang/String;
    .param p2, "newText"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    .line 37
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    .line 43
    return-void
.end method

.method public static diff(Ljava/lang/String;Ljava/lang/String;Z)Lcom/diotek/ime/framework/engine/vohwr/TextDiff;
    .locals 9
    .param p0, "oldText"    # Ljava/lang/String;
    .param p1, "newText"    # Ljava/lang/String;
    .param p2, "mSuffixFirst"    # Z

    .prologue
    const/4 v8, 0x0

    .line 104
    const-string v3, ""

    .line 106
    .local v3, "oldTextClean":Ljava/lang/String;
    const-string v1, ""

    .line 108
    .local v1, "newTextClean":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 109
    move-object v3, p0

    .line 111
    :cond_0
    if-eqz p1, :cond_1

    .line 112
    move-object v1, p1

    .line 116
    :cond_1
    const-string v2, ""

    .line 118
    .local v2, "oldTemp":Ljava/lang/String;
    const-string v0, ""

    .line 121
    .local v0, "newTemp":Ljava/lang/String;
    const/4 v4, 0x0

    .line 123
    .local v4, "prefixSize":I
    const/4 v6, 0x0

    .line 126
    .local v6, "suffixSize":I
    if-eqz p2, :cond_4

    .line 130
    invoke-static {v3, v1}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getCommonSuffixSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 132
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v2, v0}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getCommonPrefixSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    new-instance v5, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;

    invoke-direct {v5}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;-><init>()V

    .line 167
    .local v5, "result":Lcom/diotek/ime/framework/engine/vohwr/TextDiff;
    invoke-direct {v5, v4}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->setIndex(I)V

    .line 169
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 170
    invoke-direct {v5, v2}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->setOldText(Ljava/lang/String;)V

    .line 172
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 173
    invoke-direct {v5, v0}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->setNewText(Ljava/lang/String;)V

    .line 177
    :cond_3
    return-object v5

    .line 149
    .end local v5    # "result":Lcom/diotek/ime/framework/engine/vohwr/TextDiff;
    :cond_4
    invoke-static {v3, v1}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getCommonPrefixSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v2, v0}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getCommonSuffixSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 158
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCommonPrefixSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "oldText"    # Ljava/lang/String;
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 206
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 212
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 206
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 212
    goto :goto_1
.end method

.method private static getCommonSuffixSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "oldText"    # Ljava/lang/String;
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 240
    .local v3, "oldTextLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 241
    .local v2, "newTextLength":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 242
    .local v1, "n":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 244
    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v5, v2, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 246
    add-int/lit8 v1, v0, -0x1

    .line 249
    .end local v1    # "n":I
    :cond_0
    return v1

    .line 242
    .restart local v1    # "n":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    .line 97
    return-void
.end method

.method private setNewText(Ljava/lang/String;)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private setOldText(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldText"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    return v0
.end method

.method public getNewText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    return-object v0
.end method

.method public getOldText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    return-object v0
.end method
