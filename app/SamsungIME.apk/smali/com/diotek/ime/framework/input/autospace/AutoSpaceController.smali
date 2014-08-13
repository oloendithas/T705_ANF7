.class public Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;
.super Ljava/lang/Object;
.source "AutoSpaceController.java"


# static fields
.field private static final SYM_CLOSE_BRACKET:Ljava/lang/String; = ")}>]"

.field private static final SYM_CURRENCY:Ljava/lang/String; = "$\u00a3\u00a5\u20ac\u20a9\u20aa"

.field private static final SYM_OPEN_BRACKET:Ljava/lang/String; = "({<["

.field private static final SYM_PUNCTUATION:Ljava/lang/String; = ",;?!\u061b\u060c\u061f"

.field private static sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;


# instance fields
.field private mDisableSetUpAutoSpace:Z

.field private mEnableNextWordPredicton:Z

.field private mEnableNumeric:Z

.field private mEnableSymbolCloseBracekt:Z

.field private mEnableSymbolCurrency:Z

.field private mEnableSymbolOpenBracket:Z

.field private mEnableSymbolPunctuation:Z

.field private mEnableText:Z

.field private mEnableTrace:Z

.field private mInputLanguage:I

.field private mIsAutoSpace:Z

.field private mIsAutoSpacePreference:Z

.field private mLastActionIsTraceOrPick:Z

.field private mLastKeyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    .line 17
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    .line 18
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    .line 19
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 20
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    .line 21
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    .line 22
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    .line 23
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    .line 24
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    .line 25
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    .line 26
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    .line 27
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    .line 28
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    .line 29
    iput v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastKeyCode:I

    .line 43
    return-void
.end method

.method private isPasswordInputType()Z
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    .line 38
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    return-object v0
.end method


# virtual methods
.method public disableSetUpAutoSpace()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    .line 82
    return-void
.end method

.method public init(IZ)V
    .locals 1
    .param p1, "languageId"    # I
    .param p2, "autoSpaceOn"    # Z

    .prologue
    .line 46
    iput-boolean p2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    .line 47
    iput p1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    .line 49
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 50
    return-void
.end method

.method public isAutoSpaceOn()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoSpacePreferenceOn()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    return v0
.end method

.method public isEnableAutoSpace(IZ)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "isTraceOrPick"    # Z

    .prologue
    const/high16 v3, 0x69770000

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 137
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    const/16 v1, 0x20

    if-eq v1, p1, :cond_0

    const/16 v1, 0xa

    if-eq v1, p1, :cond_0

    .line 141
    if-eqz p2, :cond_2

    .line 142
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    :cond_3
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    goto :goto_0

    .line 145
    :cond_4
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    goto :goto_0

    .line 147
    :cond_5
    const-string v1, ",;?!\u061b\u060c\u061f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_6

    .line 148
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    .line 149
    :cond_6
    const/16 v1, 0x2e

    if-ne v1, p1, :cond_7

    .line 150
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    .line 151
    :cond_7
    const/16 v1, 0x25

    if-ne v1, p1, :cond_8

    .line 152
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    .line 153
    :cond_8
    const/16 v1, -0x73

    if-ne v1, p1, :cond_9

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_9
    const-string v1, "({<["

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 156
    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v3, :cond_b

    .line 157
    :cond_a
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    goto :goto_0

    .line 159
    :cond_b
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_0

    .line 161
    :cond_c
    const-string v1, ")}>]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_f

    .line 162
    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v3, :cond_e

    .line 163
    :cond_d
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_0

    .line 165
    :cond_e
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    goto :goto_0

    .line 167
    :cond_f
    const-string v1, "$\u00a3\u00a5\u20ac\u20a9\u20aa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 168
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    goto/16 :goto_0
.end method

.method public isEnableAutoSpaceAfterPunctuation(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 97
    const-string v1, ",;?!\u061b\u060c\u061f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2e

    if-ne v1, p1, :cond_1

    .line 98
    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 100
    :cond_1
    return v0
.end method

.method public isEnableAutoSpaceAtNextWordPrediction()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAutoSpaceAtNumeric()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAutoSpaceAtSymbol(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/high16 v3, 0x69770000

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 108
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    const-string v1, ",;?!\u061b\u060c\u061f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 111
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    .line 112
    :cond_2
    const/16 v1, 0x2e

    if-ne v1, p1, :cond_3

    .line 113
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    .line 114
    :cond_3
    const/16 v1, 0x25

    if-ne v1, p1, :cond_4

    .line 115
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    .line 116
    :cond_4
    const/16 v1, -0x73

    if-ne v1, p1, :cond_5

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :cond_5
    const-string v1, "({<["

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_8

    .line 119
    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v3, :cond_7

    .line 120
    :cond_6
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    goto :goto_0

    .line 122
    :cond_7
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_0

    .line 124
    :cond_8
    const-string v1, ")}>]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_b

    .line 125
    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v3, :cond_a

    .line 126
    :cond_9
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_0

    .line 128
    :cond_a
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    goto :goto_0

    .line 130
    :cond_b
    const-string v1, "$\u00a3\u00a5\u20ac\u20a9\u20aa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 131
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    goto :goto_0
.end method

.method public isEnableAutoSpaceAtText()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAutoSpaceAtTrace()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastActionIsTraceOrPick()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 54
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    .line 55
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    .line 56
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    .line 57
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    .line 58
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    .line 59
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    .line 60
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    .line 61
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    .line 62
    return-void
.end method

.method public setAutoSpaceOn(Z)V
    .locals 0
    .param p1, "autoSpaceOn"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    .line 74
    return-void
.end method

.method public setUpAutoSpace(IZ)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "isTraceOrPick"    # Z

    .prologue
    const/high16 v5, 0x69770000

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 175
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    if-eqz v0, :cond_0

    .line 176
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    .line 232
    :goto_0
    return-void

    .line 179
    :cond_0
    if-eqz p2, :cond_2

    .line 180
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 181
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    .line 182
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    .line 183
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    .line 184
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    .line 229
    :cond_1
    :goto_1
    iput p1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastKeyCode:I

    .line 230
    iput-boolean p2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    .line 231
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    :cond_3
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 187
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    .line 188
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    .line 189
    :cond_4
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 191
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    .line 192
    :cond_5
    const-string v0, ",;?!\u061b\u060c\u061f"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 193
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 194
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    .line 195
    const/16 v0, 0x2c

    if-eq v0, p1, :cond_6

    .line 196
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    .line 198
    :cond_6
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    .line 199
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    .line 200
    :cond_7
    const/16 v0, 0x2e

    if-ne v0, p1, :cond_8

    .line 201
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 202
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    .line 203
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    .line 204
    :cond_8
    const/16 v0, 0x25

    if-eq v0, p1, :cond_9

    const/16 v0, 0x27

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastKeyCode:I

    const/16 v1, 0x73

    if-ne v0, v1, :cond_a

    .line 206
    :cond_9
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 207
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    .line 208
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    .line 209
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    .line 210
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    .line 211
    :cond_a
    const-string v0, ")}>]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_b

    .line 212
    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-eq v0, v5, :cond_1

    .line 213
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 214
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    .line 215
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    .line 216
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    goto :goto_1

    .line 218
    :cond_b
    const-string v0, "({<["

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_d

    .line 219
    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v5, :cond_1

    .line 220
    :cond_c
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 221
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    .line 222
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    .line 223
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    goto/16 :goto_1

    .line 225
    :cond_d
    const-string v0, "$\u00a3\u00a5\u20ac\u20a9\u20aa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 226
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 227
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    goto/16 :goto_1
.end method

.method public setUpAutoSpace(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 235
    if-nez p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 253
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 240
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 241
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    .line 242
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    .line 243
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    .line 244
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    .line 245
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    .line 246
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    .line 247
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    goto :goto_0

    .line 248
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    goto :goto_0
.end method

.method public setUpByPickSuggestion()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 256
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 257
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    .line 258
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    .line 259
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    .line 260
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    .line 261
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    .line 262
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    .line 263
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    .line 264
    return-void
.end method
