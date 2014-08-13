.class public Lcom/diotek/ime/framework/repository/EditorStatus;
.super Ljava/lang/Object;
.source "EditorStatus.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;


# instance fields
.field private editorClass:I

.field private flags:I

.field private imeOptions:I

.field private inputType:I

.field private variation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    .line 16
    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    .line 17
    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    .line 18
    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->inputType:I

    .line 19
    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->imeOptions:I

    .line 20
    return-void
.end method

.method public static getImeOptions()I
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 161
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->imeOptions:I

    return v0
.end method

.method public static getInputType()I
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 154
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->inputType:I

    return v0
.end method

.method public static isAutoCompletitionInput()Z
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 26
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDateInputType()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 206
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 209
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 210
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 212
    :cond_1
    return v0
.end method

.method public static isDateTimeInputClass()Z
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 189
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDateTimeInputType()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 196
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 199
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 200
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 202
    :cond_1
    return v0
.end method

.method public static isDecimalNumberInputType()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 98
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 101
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 102
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    and-int/lit16 v1, v1, 0x3000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 104
    :cond_1
    return v0
.end method

.method public static isDigitEditor()Z
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberInputClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmailInputType()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v2}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 60
    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-eq v2, v1, :cond_2

    .line 63
    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0xd0

    if-ne v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isNumberInputClass()Z
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 71
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumberOnlyInputType()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 91
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 92
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    and-int/lit16 v1, v1, 0x3000

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 94
    :cond_1
    return v0
.end method

.method public static isNumberPasswordInputType()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 81
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 82
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 84
    :cond_1
    return v0
.end method

.method public static isPasswordInputType()Z
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 143
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTextPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    :cond_1
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneNumberInputClass()Z
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 179
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSearchInputType()Z
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 239
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShortMessageInputType()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v2, :cond_0

    .line 227
    new-instance v2, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v2}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 229
    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-ne v2, v0, :cond_2

    .line 230
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 232
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 230
    goto :goto_0

    :cond_2
    move v0, v1

    .line 232
    goto :goto_0
.end method

.method public static isSignedDecimalNumberInputType()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 121
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 122
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    and-int/lit16 v1, v1, 0x3000

    const/16 v2, 0x3000

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 124
    :cond_1
    return v0
.end method

.method public static isSignedNumberInputType()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 111
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 112
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    and-int/lit16 v1, v1, 0x3000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 114
    :cond_1
    return v0
.end method

.method public static isTextPasswordInputType()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 128
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v2}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 131
    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-ne v2, v1, :cond_2

    .line 132
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0xe0

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    .line 136
    :cond_2
    return v0
.end method

.method public static isTimeInputType()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    .line 217
    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 219
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 220
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 222
    :cond_1
    return v0
.end method

.method public static isUrlEmailMode()Z
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUrlInputType()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v2}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 50
    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-eq v2, v0, :cond_1

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-eqz v2, :cond_1

    .line 53
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static setImeOptions(I)V
    .locals 1
    .param p0, "imeOption"    # I

    .prologue
    .line 40
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 43
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->imeOptions:I

    .line 44
    return-void
.end method

.method public static setInputType(I)V
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 30
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    .line 33
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    and-int/lit8 v1, p0, 0xf

    iput v1, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    .line 34
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    and-int/lit16 v1, p0, 0xff0

    iput v1, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    .line 35
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    const v1, 0xfff000

    and-int/2addr v1, p0

    iput v1, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    .line 36
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->inputType:I

    .line 37
    return-void
.end method
