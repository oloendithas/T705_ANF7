.class public Lcom/diotek/ime/framework/input/IndianInputModule;
.super Ljava/lang/Object;
.source "IndianInputModule.java"


# static fields
.field public static final CONSONANT_KEYBOARD:Z = false

.field public static final HB_Script_Bengali:I = 0x2

.field public static final HB_Script_Devanagari:I = 0x1

.field public static final HB_Script_Gujarati:I = 0x7

.field public static final HB_Script_Gurmukhi:I = 0x6

.field public static final HB_Script_Kannada:I = 0x5

.field public static final HB_Script_Malayalam:I = 0x8

.field public static final HB_Script_Oriya:I = 0xa

.field public static final HB_Script_Sinhala:I = 0x9

.field public static final HB_Script_Tamil:I = 0x3

.field public static final HB_Script_Telugu:I = 0x4

.field public static IS_QVGA:Z = false

.field public static final MATRA_KEYBOARD:Z = true

.field public static final NORMAL_KEYBOARD:Z = false

.field public static final SHIFTED_KEYBOARD:Z = true

.field public static final VOWEL_ROW_1:I = 0x0

.field public static final VOWEL_ROW_2:I = 0x1

.field public static final VOWEL_ROW_3:I = 0x2

.field public static final VOWEL_ROW_4:I = 0x3

.field public static changeFromThirdMode:Z

.field public static instance:Lcom/diotek/ime/framework/input/IndianInputModule;

.field static multipleKeycode:Z


# instance fields
.field private c:Ljava/lang/CharSequence;

.field private ic:Landroid/view/inputmethod/InputConnection;

.field keyCombination:Z

.field private keyNumber:I

.field private keyboardState:Z

.field private langScriptId:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

.field mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

.field private mXt9Version:I

.field private prevLangScriptId:I

.field primaryCode:I

.field vowelKeyShiftState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    .line 30
    sput-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 38
    sput-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    .line 51
    new-instance v0, Lcom/diotek/ime/framework/input/IndianInputModule;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/IndianInputModule;->instance:Lcom/diotek/ime/framework/input/IndianInputModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    .line 20
    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    .line 21
    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 22
    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    .line 23
    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    .line 24
    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    .line 25
    iput-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 31
    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    .line 36
    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    .line 37
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    .line 50
    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    .line 15
    return-void
.end method

.method private checkCombination([I)Z
    .locals 4
    .param p1, "keyCodes"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 350
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 351
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 373
    :cond_1
    :goto_0
    return v0

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa30

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa39

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa35

    if-ne v2, v3, :cond_5

    .line 359
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    .line 363
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    .line 366
    goto :goto_0

    .line 367
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa74

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    :cond_6
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_7
    move v0, v1

    .line 373
    goto/16 :goto_0
.end method

.method private getCurrentLangScriptId()I
    .locals 5

    .prologue
    .line 4609
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 4610
    .local v1, "lang":I
    const/4 v0, 0x0

    .line 4611
    .local v0, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 4645
    :goto_0
    return v0

    .line 4615
    :sswitch_0
    const/4 v0, 0x1

    .line 4616
    goto :goto_0

    .line 4619
    :sswitch_1
    const/4 v0, 0x2

    .line 4620
    goto :goto_0

    .line 4622
    :sswitch_2
    const/4 v0, 0x7

    .line 4623
    goto :goto_0

    .line 4625
    :sswitch_3
    const/4 v0, 0x5

    .line 4626
    goto :goto_0

    .line 4628
    :sswitch_4
    const/16 v0, 0x8

    .line 4629
    goto :goto_0

    .line 4631
    :sswitch_5
    const/4 v0, 0x6

    .line 4632
    goto :goto_0

    .line 4634
    :sswitch_6
    const/16 v0, 0x9

    .line 4635
    goto :goto_0

    .line 4637
    :sswitch_7
    const/4 v0, 0x3

    .line 4638
    goto :goto_0

    .line 4640
    :sswitch_8
    const/4 v0, 0x4

    .line 4641
    goto :goto_0

    .line 4643
    :sswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 4611
    nop

    :sswitch_data_0
    .sparse-switch
        0x61730000 -> :sswitch_1
        0x626e0000 -> :sswitch_1
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x6b6e0000 -> :sswitch_3
        0x6d6c0000 -> :sswitch_4
        0x6d720000 -> :sswitch_0
        0x6e650000 -> :sswitch_0
        0x6f720000 -> :sswitch_9
        0x70610000 -> :sswitch_5
        0x73690000 -> :sswitch_6
        0x74610000 -> :sswitch_7
        0x74650000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static getHBScrpt(I)I
    .locals 1
    .param p0, "utf16Char"    # I

    .prologue
    .line 166
    const/16 v0, 0x900

    if-lt p0, v0, :cond_0

    const/16 v0, 0x97f

    if-gt p0, v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 168
    :cond_0
    const/16 v0, 0x980

    if-lt p0, v0, :cond_1

    const/16 v0, 0x9ff

    if-gt p0, v0, :cond_1

    .line 169
    const/4 v0, 0x2

    goto :goto_0

    .line 170
    :cond_1
    const/16 v0, 0xb80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xbff

    if-gt p0, v0, :cond_2

    .line 171
    const/4 v0, 0x3

    goto :goto_0

    .line 172
    :cond_2
    const/16 v0, 0xc00

    if-lt p0, v0, :cond_3

    const/16 v0, 0xc7f

    if-gt p0, v0, :cond_3

    .line 173
    const/4 v0, 0x4

    goto :goto_0

    .line 174
    :cond_3
    const/16 v0, 0xc80

    if-lt p0, v0, :cond_4

    const/16 v0, 0xcff

    if-gt p0, v0, :cond_4

    .line 175
    const/4 v0, 0x5

    goto :goto_0

    .line 176
    :cond_4
    const/16 v0, 0xa00

    if-lt p0, v0, :cond_5

    const/16 v0, 0xa7f

    if-gt p0, v0, :cond_5

    .line 177
    const/4 v0, 0x6

    goto :goto_0

    .line 178
    :cond_5
    const/16 v0, 0xa80

    if-lt p0, v0, :cond_6

    const/16 v0, 0xaff

    if-gt p0, v0, :cond_6

    .line 179
    const/4 v0, 0x7

    goto :goto_0

    .line 180
    :cond_6
    const/16 v0, 0xd00

    if-lt p0, v0, :cond_7

    const/16 v0, 0xd7f

    if-gt p0, v0, :cond_7

    .line 181
    const/16 v0, 0x8

    goto :goto_0

    .line 182
    :cond_7
    const/16 v0, 0xd80

    if-lt p0, v0, :cond_8

    const/16 v0, 0xdff

    if-gt p0, v0, :cond_8

    .line 183
    const/16 v0, 0x9

    goto :goto_0

    .line 184
    :cond_8
    const/16 v0, 0xb00

    if-lt p0, v0, :cond_9

    const/16 v0, 0xb7f

    if-gt p0, v0, :cond_9

    .line 185
    const/16 v0, 0xa

    goto :goto_0

    .line 187
    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getHoldKeyCodeForSmallLcd(I)I
    .locals 10
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 7092
    move v1, p1

    .line 7093
    .local v1, "toggledKeyCode":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 7094
    .local v0, "lang":I
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_0

    const/high16 v2, 0x6d720000

    if-ne v0, v2, :cond_0

    .line 7095
    packed-switch p1, :pswitch_data_0

    .line 7183
    :cond_0
    :goto_0
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_2

    const/high16 v2, 0x6e650000

    if-ne v0, v2, :cond_2

    .line 7184
    packed-switch p1, :pswitch_data_1

    .line 8048
    :cond_1
    :goto_1
    :pswitch_0
    return v1

    .line 7098
    :pswitch_1
    const/16 v1, 0x915

    .line 7099
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7100
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7103
    :pswitch_2
    const/16 v1, 0x91c

    .line 7104
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7105
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7108
    :pswitch_3
    const/16 v1, 0x936

    .line 7109
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7110
    const/16 v2, 0x13

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7113
    :pswitch_4
    const/16 v1, 0x936

    .line 7114
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7115
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7118
    :pswitch_5
    const/16 v1, 0x931

    .line 7119
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7120
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7123
    :pswitch_6
    const/16 v1, 0x924

    .line 7124
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7125
    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7128
    :pswitch_7
    const/16 v1, 0x915

    .line 7129
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7130
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7133
    :pswitch_8
    const/16 v1, 0x917

    .line 7134
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7135
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7138
    :pswitch_9
    const/16 v1, 0x92a

    .line 7139
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7140
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7143
    :pswitch_a
    const/16 v1, 0x92b

    .line 7144
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7145
    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7148
    :pswitch_b
    const/16 v1, 0x91f

    .line 7149
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7150
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7153
    :pswitch_c
    const/16 v1, 0x921

    .line 7154
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7155
    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7158
    :pswitch_d
    const/16 v1, 0x926

    .line 7159
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7160
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7163
    :pswitch_e
    const/16 v1, 0x92c

    .line 7164
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7165
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 7168
    :pswitch_f
    const/16 v1, 0x92d

    .line 7169
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7170
    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 7173
    :pswitch_10
    const/16 v1, 0x926

    .line 7174
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7175
    const/16 v2, 0x14

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 7178
    :pswitch_11
    const/16 v1, 0x937

    .line 7179
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7180
    const/16 v2, 0x15

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 7187
    :pswitch_12
    const/16 v1, 0x915

    .line 7188
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7189
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7192
    :pswitch_13
    const/16 v1, 0x91c

    .line 7193
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7194
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7197
    :pswitch_14
    const/16 v1, 0x91e

    .line 7198
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7199
    const/16 v2, 0x12

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7202
    :pswitch_15
    const/16 v1, 0x936

    .line 7203
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7204
    const/16 v2, 0x13

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7207
    :pswitch_16
    const/16 v1, 0x936

    .line 7208
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7209
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7212
    :pswitch_17
    const/16 v1, 0x931

    .line 7213
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7214
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7217
    :pswitch_18
    const/16 v1, 0x95b

    .line 7218
    goto/16 :goto_1

    .line 7220
    :pswitch_19
    const/16 v1, 0x95e

    .line 7221
    goto/16 :goto_1

    .line 7223
    :pswitch_1a
    const/16 v1, 0x915

    .line 7224
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7225
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7228
    :pswitch_1b
    const/16 v1, 0x917

    .line 7229
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7230
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7233
    :pswitch_1c
    const/16 v1, 0x919

    .line 7234
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7235
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7238
    :pswitch_1d
    const/16 v1, 0x91f

    .line 7239
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7240
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7243
    :pswitch_1e
    const/16 v1, 0x921

    .line 7244
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7245
    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7248
    :pswitch_1f
    const/16 v1, 0x926

    .line 7249
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7250
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7253
    :pswitch_20
    const/16 v1, 0x92c

    .line 7254
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7255
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7258
    :pswitch_21
    const/16 v1, 0x926

    .line 7259
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7260
    const/16 v2, 0x14

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7263
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_3

    const/high16 v2, 0x626e0000

    if-ne v0, v2, :cond_3

    .line 7265
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    .line 7267
    :pswitch_22
    const/16 v1, 0x995

    .line 7268
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7269
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7272
    :pswitch_23
    const/16 v1, 0x9dc

    .line 7273
    goto/16 :goto_1

    .line 7275
    :pswitch_24
    const/16 v1, 0x9dd

    .line 7276
    goto/16 :goto_1

    .line 7278
    :pswitch_25
    const/16 v1, 0x9df

    .line 7279
    goto/16 :goto_1

    .line 7281
    :pswitch_26
    const/16 v1, 0x995

    .line 7282
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7283
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7286
    :pswitch_27
    const/16 v1, 0x997

    .line 7287
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7288
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7291
    :pswitch_28
    const/16 v1, 0x99f

    .line 7292
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7293
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7296
    :pswitch_29
    const/16 v1, 0x9a4

    .line 7297
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7298
    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7301
    :pswitch_2a
    const/16 v1, 0x9aa

    .line 7302
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7303
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7306
    :pswitch_2b
    const/16 v1, 0x9b6

    .line 7307
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7308
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7311
    :pswitch_2c
    const/16 v1, 0x9b8

    .line 7312
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7313
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7316
    :pswitch_2d
    const/16 v1, 0x9a8

    .line 7317
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7318
    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7321
    :pswitch_2e
    const/16 v1, 0x9b7

    .line 7322
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7323
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7326
    :pswitch_2f
    const/16 v1, 0x9b8

    .line 7327
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7328
    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7331
    :pswitch_30
    const/16 v1, 0x9a6

    .line 7332
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7333
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7336
    :pswitch_31
    const/16 v1, 0x9a8

    .line 7337
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7338
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7341
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v9, :cond_4

    .line 7342
    packed-switch p1, :pswitch_data_3

    :pswitch_32
    goto/16 :goto_1

    .line 7345
    :pswitch_33
    const/16 v1, 0xa95

    .line 7346
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7347
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7350
    :pswitch_34
    const/16 v1, 0xa9c

    .line 7351
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7352
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7355
    :pswitch_35
    const/16 v1, 0xab6

    .line 7356
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7357
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7360
    :pswitch_36
    const/16 v1, 0xa95

    .line 7361
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7362
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7365
    :pswitch_37
    const/16 v1, 0xa97

    .line 7366
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7367
    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7370
    :pswitch_38
    const/16 v1, 0xa9f

    .line 7371
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7372
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7375
    :pswitch_39
    const/16 v1, 0xaa1

    .line 7376
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7377
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7380
    :pswitch_3a
    const/16 v1, 0xaa4

    .line 7381
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7382
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7385
    :pswitch_3b
    const/16 v1, 0xaa6

    .line 7386
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7387
    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7390
    :pswitch_3c
    const/16 v1, 0xaa7

    .line 7391
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7392
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7395
    :pswitch_3d
    const/16 v1, 0xaaa

    .line 7396
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7397
    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7400
    :pswitch_3e
    const/16 v1, 0xaac

    .line 7401
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7402
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7405
    :pswitch_3f
    const/16 v1, 0xaad

    .line 7406
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7407
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7410
    :pswitch_40
    const/16 v1, 0xaa6

    .line 7411
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7412
    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7415
    :pswitch_41
    const/16 v1, 0xaa6

    .line 7416
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7417
    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7420
    :pswitch_42
    const/16 v1, 0xab6

    .line 7421
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7422
    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7425
    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 7426
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 7432
    :sswitch_0
    const/16 v1, 0xa5c

    .line 7433
    goto/16 :goto_1

    .line 7429
    :sswitch_1
    const/16 v1, 0xa36

    .line 7430
    goto/16 :goto_1

    .line 7435
    :sswitch_2
    const/16 v1, 0xa59

    .line 7436
    goto/16 :goto_1

    .line 7438
    :sswitch_3
    const/16 v1, 0xa5b

    .line 7439
    goto/16 :goto_1

    .line 7441
    :sswitch_4
    const/16 v1, 0xa28

    .line 7442
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7443
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7446
    :sswitch_5
    const/16 v1, 0xa32

    .line 7447
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7448
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7451
    :sswitch_6
    const/16 v1, 0xa5c

    .line 7452
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7453
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7456
    :sswitch_7
    const/16 v1, 0xa15

    .line 7457
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7458
    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7461
    :sswitch_8
    const/16 v1, 0xa17

    .line 7462
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7463
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7467
    :sswitch_9
    const/16 v1, 0xa1f

    .line 7468
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7469
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7473
    :sswitch_a
    const/16 v1, 0xa21

    .line 7474
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7475
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7479
    :sswitch_b
    const/16 v1, 0xa24

    .line 7480
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7481
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7485
    :sswitch_c
    const/16 v1, 0xa26

    .line 7486
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7487
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7491
    :sswitch_d
    const/16 v1, 0xa2a

    .line 7492
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7493
    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7496
    :sswitch_e
    const/16 v1, 0xa2b

    .line 7497
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7498
    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7501
    :sswitch_f
    const/16 v1, 0xa36

    .line 7502
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7503
    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7506
    :sswitch_10
    const/16 v1, 0xa38

    .line 7507
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7508
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7511
    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v7, :cond_6

    .line 7512
    packed-switch p1, :pswitch_data_4

    :pswitch_43
    goto/16 :goto_1

    .line 7515
    :pswitch_44
    const/16 v1, 0xbcd

    .line 7516
    goto/16 :goto_1

    .line 7518
    :pswitch_45
    const/16 v1, 0xbbe

    .line 7519
    goto/16 :goto_1

    .line 7521
    :pswitch_46
    const/16 v1, 0xbbf

    .line 7522
    goto/16 :goto_1

    .line 7524
    :pswitch_47
    const/16 v1, 0xbc0

    .line 7525
    goto/16 :goto_1

    .line 7527
    :pswitch_48
    const/16 v1, 0xbc1

    .line 7528
    goto/16 :goto_1

    .line 7530
    :pswitch_49
    const/16 v1, 0xbc2

    .line 7531
    goto/16 :goto_1

    .line 7533
    :pswitch_4a
    const/16 v1, 0xbc6

    .line 7534
    goto/16 :goto_1

    .line 7536
    :pswitch_4b
    const/16 v1, 0xbc7

    .line 7537
    goto/16 :goto_1

    .line 7539
    :pswitch_4c
    const/16 v1, 0xbc8

    .line 7540
    goto/16 :goto_1

    .line 7542
    :pswitch_4d
    const/16 v1, 0xbca

    .line 7543
    goto/16 :goto_1

    .line 7545
    :pswitch_4e
    const/16 v1, 0xbcb

    .line 7546
    goto/16 :goto_1

    .line 7548
    :pswitch_4f
    const/16 v1, 0xbcc

    goto/16 :goto_1

    .line 7551
    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 7552
    packed-switch p1, :pswitch_data_5

    :pswitch_50
    goto/16 :goto_1

    .line 7555
    :pswitch_51
    const/16 v1, 0xc95

    .line 7556
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7557
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7560
    :pswitch_52
    const/16 v1, 0xca4

    .line 7561
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7562
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7565
    :pswitch_53
    const/16 v1, 0xc9c

    .line 7566
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7567
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7570
    :pswitch_54
    const/16 v1, 0xc95

    .line 7571
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7572
    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7575
    :pswitch_55
    const/16 v1, 0xc97

    .line 7576
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7577
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7580
    :pswitch_56
    const/16 v1, 0xcb9

    .line 7581
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7582
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7585
    :pswitch_57
    const/16 v1, 0xca6

    .line 7586
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7587
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7590
    :pswitch_58
    const/16 v1, 0xcb5

    .line 7591
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7592
    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7595
    :pswitch_59
    const/16 v1, 0xcaa

    .line 7596
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7597
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7600
    :pswitch_5a
    const/16 v1, 0xcac

    .line 7601
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7602
    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7605
    :pswitch_5b
    const/16 v1, 0xca6

    .line 7606
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7607
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7610
    :pswitch_5c
    const/16 v1, 0xcad

    .line 7611
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7612
    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7615
    :pswitch_5d
    const/16 v1, 0xc9f

    .line 7616
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7617
    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7620
    :pswitch_5e
    const/16 v1, 0xca6

    .line 7621
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7622
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7625
    :pswitch_5f
    const/16 v1, 0xc9e

    .line 7626
    goto/16 :goto_1

    .line 7628
    :pswitch_60
    const/16 v1, 0xc9c

    .line 7629
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7630
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7633
    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 7634
    packed-switch p1, :pswitch_data_6

    goto/16 :goto_1

    .line 7637
    :pswitch_61
    const/16 v1, 0xd15

    .line 7638
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7639
    const/16 v2, 0x11

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7642
    :pswitch_62
    const/16 v1, 0xd28

    .line 7643
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7644
    const/16 v2, 0x12

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7647
    :pswitch_63
    const/16 v1, 0xd28

    .line 7648
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7649
    const/16 v2, 0x13

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7652
    :pswitch_64
    const/16 v1, 0xd2e

    .line 7653
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7654
    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7657
    :pswitch_65
    const/16 v1, 0xd23

    .line 7658
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7659
    const/16 v2, 0x14

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7662
    :pswitch_66
    const/16 v1, 0xd15

    .line 7663
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7664
    const/16 v2, 0x15

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7667
    :pswitch_67
    const/16 v1, 0xd17

    .line 7668
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7669
    const/16 v2, 0x16

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7672
    :pswitch_68
    const/16 v1, 0xd18

    .line 7673
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7674
    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7677
    :pswitch_69
    const/16 v1, 0xd1c

    .line 7678
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7679
    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7682
    :pswitch_6a
    const/16 v1, 0xd1f

    .line 7683
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7684
    const/16 v2, 0x19

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7687
    :pswitch_6b
    const/16 v1, 0xd21

    .line 7688
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7689
    const/16 v2, 0x1a

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7692
    :pswitch_6c
    const/16 v1, 0xd24

    .line 7693
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7694
    const/16 v2, 0x1b

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7697
    :pswitch_6d
    const/16 v1, 0xd26

    .line 7698
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7699
    const/16 v2, 0x1c

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7702
    :pswitch_6e
    const/16 v1, 0xd2a

    .line 7703
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7704
    const/16 v2, 0x1d

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7707
    :pswitch_6f
    const/16 v1, 0xd90

    .line 7708
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7709
    const/16 v2, 0x1e

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7712
    :pswitch_70
    const/16 v1, 0xd9a

    .line 7713
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7714
    const/16 v2, 0x1f

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7717
    :pswitch_71
    const/16 v1, 0xd9c

    .line 7718
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7719
    const/16 v2, 0x20

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7722
    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_9

    const/high16 v2, 0x61730000

    if-ne v0, v2, :cond_9

    .line 7724
    packed-switch p1, :pswitch_data_7

    goto/16 :goto_1

    .line 7726
    :pswitch_72
    const/16 v1, 0x995

    .line 7727
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7728
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7731
    :pswitch_73
    const/16 v1, 0x9dc

    .line 7732
    goto/16 :goto_1

    .line 7734
    :pswitch_74
    const/16 v1, 0x9dd

    .line 7735
    goto/16 :goto_1

    .line 7737
    :pswitch_75
    const/16 v1, 0x995

    .line 7738
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7739
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7742
    :pswitch_76
    const/16 v1, 0x997

    .line 7743
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7744
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7747
    :pswitch_77
    const/16 v1, 0x99f

    .line 7748
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7749
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7752
    :pswitch_78
    const/16 v1, 0x9a4

    .line 7753
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7754
    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7757
    :pswitch_79
    const/16 v1, 0x9aa

    .line 7758
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7759
    const/16 v2, 0x23

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7762
    :pswitch_7a
    const/16 v1, 0x9b6

    .line 7763
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7764
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7767
    :pswitch_7b
    const/16 v1, 0x9b8

    .line 7768
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7769
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7772
    :pswitch_7c
    const/16 v1, 0x9a8

    .line 7773
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7774
    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7777
    :pswitch_7d
    const/16 v1, 0x9b7

    .line 7778
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7779
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7782
    :pswitch_7e
    const/16 v1, 0x9a8

    .line 7783
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7784
    const/16 v2, 0x22

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7787
    :pswitch_7f
    const/16 v1, 0x9a8

    .line 7788
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7789
    const/16 v2, 0x21

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7792
    :pswitch_80
    const/16 v1, 0x9ae

    .line 7793
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7794
    const/16 v2, 0x20

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7797
    :pswitch_81
    const/16 v1, 0x99c

    .line 7798
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7799
    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7802
    :pswitch_82
    const/16 v1, 0x99e

    .line 7803
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7804
    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7807
    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    .line 7809
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_1

    .line 7811
    :sswitch_11
    const/16 v1, 0xb15

    .line 7812
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7813
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7816
    :sswitch_12
    const/16 v1, 0xb5f

    .line 7817
    goto/16 :goto_1

    .line 7819
    :sswitch_13
    const/16 v1, 0xb1c

    .line 7820
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7821
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7824
    :sswitch_14
    const/16 v1, 0xb15

    .line 7825
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7826
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7829
    :sswitch_15
    const/16 v1, 0xb17

    .line 7830
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7831
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7834
    :sswitch_16
    const/16 v1, 0xb18

    .line 7835
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7836
    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7839
    :sswitch_17
    const/16 v1, 0xb1f

    .line 7840
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7841
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7844
    :sswitch_18
    const/16 v1, 0xb26

    .line 7845
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7846
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7849
    :sswitch_19
    const/16 v1, 0xb27

    .line 7850
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7851
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7854
    :sswitch_1a
    const/16 v1, 0xb2a

    .line 7855
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7856
    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7859
    :sswitch_1b
    const/16 v1, 0xb2c

    .line 7860
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7861
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7864
    :sswitch_1c
    const/16 v1, 0xb2d

    .line 7865
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7866
    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7869
    :sswitch_1d
    const/16 v1, 0xb36

    .line 7870
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7871
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7874
    :sswitch_1e
    const/16 v1, 0xb38

    .line 7875
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7876
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7879
    :sswitch_1f
    const/16 v1, 0xb28

    .line 7880
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7881
    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7884
    :sswitch_20
    const/16 v1, 0xb28

    .line 7885
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7886
    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7889
    :cond_a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_b

    .line 7890
    packed-switch p1, :pswitch_data_8

    :pswitch_83
    goto/16 :goto_1

    .line 7892
    :pswitch_84
    const/16 v1, 0xda4

    .line 7893
    goto/16 :goto_1

    .line 7895
    :pswitch_85
    const/16 v1, 0xdbb

    .line 7896
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7897
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7900
    :pswitch_86
    const/16 v1, 0xdac

    .line 7901
    goto/16 :goto_1

    .line 7903
    :pswitch_87
    const/16 v1, 0xd9f

    .line 7904
    goto/16 :goto_1

    .line 7906
    :pswitch_88
    const/16 v1, 0xda5

    .line 7907
    goto/16 :goto_1

    .line 7909
    :pswitch_89
    const/16 v1, 0xda6

    .line 7910
    goto/16 :goto_1

    .line 7912
    :pswitch_8a
    const/16 v1, 0xdb3

    .line 7913
    goto/16 :goto_1

    .line 7915
    :pswitch_8b
    const/16 v1, 0xdb9

    .line 7916
    goto/16 :goto_1

    .line 7918
    :pswitch_8c
    const/16 v1, 0xd9a

    .line 7919
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7920
    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7923
    :pswitch_8d
    const/16 v1, 0xd9c

    .line 7924
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7925
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7928
    :pswitch_8e
    const/16 v1, 0xdad

    .line 7929
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7930
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7933
    :pswitch_8f
    const/16 v1, 0xdaf

    .line 7934
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7935
    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7938
    :pswitch_90
    const/16 v1, 0xda7

    .line 7939
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7940
    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7943
    :pswitch_91
    const/16 v1, 0xdb5

    .line 7944
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7945
    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7948
    :pswitch_92
    const/16 v1, 0xdb4

    .line 7949
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7950
    const/16 v2, 0x11

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7953
    :pswitch_93
    const/16 v1, 0xdc1

    .line 7954
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7955
    const/16 v2, 0x12

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7958
    :pswitch_94
    const/16 v1, 0xdc3

    .line 7959
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7960
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7963
    :cond_b
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v8, :cond_1

    .line 7964
    packed-switch p1, :pswitch_data_9

    :pswitch_95
    goto/16 :goto_1

    .line 7967
    :pswitch_96
    const/16 v1, 0xc15

    .line 7968
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7969
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7972
    :pswitch_97
    const/16 v1, 0xc15

    .line 7973
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7974
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7977
    :pswitch_98
    const/16 v1, 0xc16

    .line 7978
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7979
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7982
    :pswitch_99
    const/16 v1, 0xc17

    .line 7983
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7984
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7987
    :pswitch_9a
    const/16 v1, 0xc18

    .line 7988
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7989
    const/4 v2, 0x5

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7992
    :pswitch_9b
    const/16 v1, 0xc1f

    .line 7993
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7994
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7997
    :pswitch_9c
    const/16 v1, 0xc21

    .line 7998
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 7999
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 8002
    :pswitch_9d
    const/16 v1, 0xc24

    .line 8003
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 8004
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 8007
    :pswitch_9e
    const/16 v1, 0xc26

    .line 8008
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 8009
    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 8012
    :pswitch_9f
    const/16 v1, 0xc28

    .line 8013
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 8014
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 8017
    :pswitch_a0
    const/16 v1, 0xc2a

    .line 8018
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 8019
    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 8022
    :pswitch_a1
    const/16 v1, 0xc2c

    .line 8023
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 8024
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 8027
    :pswitch_a2
    const/16 v1, 0xc2d

    .line 8028
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 8029
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 8032
    :pswitch_a3
    const/16 v1, 0xc35

    .line 8033
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 8034
    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 8037
    :pswitch_a4
    const/16 v1, 0xc36

    .line 8038
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 8039
    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 8042
    :pswitch_a5
    const/16 v1, 0xc38

    .line 8043
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 8044
    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_1

    .line 7095
    :pswitch_data_0
    .packed-switch 0x915
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 7184
    :pswitch_data_1
    .packed-switch 0x915
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 7265
    :pswitch_data_2
    .packed-switch 0x995
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch

    .line 7342
    :pswitch_data_3
    .packed-switch 0xa95
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_32
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_32
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    .line 7426
    :sswitch_data_0
    .sparse-switch
        0xa05 -> :sswitch_0
        0xa15 -> :sswitch_5
        0xa16 -> :sswitch_6
        0xa17 -> :sswitch_7
        0xa18 -> :sswitch_8
        0xa19 -> :sswitch_9
        0xa1a -> :sswitch_a
        0xa1b -> :sswitch_b
        0xa1c -> :sswitch_c
        0xa1d -> :sswitch_d
        0xa1e -> :sswitch_e
        0xa1f -> :sswitch_f
        0xa20 -> :sswitch_10
        0xa38 -> :sswitch_3
        0xa39 -> :sswitch_4
        0xa72 -> :sswitch_2
        0xa73 -> :sswitch_1
    .end sparse-switch

    .line 7512
    :pswitch_data_4
    .packed-switch 0xb85
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_43
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch

    .line 7552
    :pswitch_data_5
    .packed-switch 0xc95
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_50
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_50
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
    .end packed-switch

    .line 7634
    :pswitch_data_6
    .packed-switch 0xd15
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    .line 7724
    :pswitch_data_7
    .packed-switch 0x995
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
    .end packed-switch

    .line 7809
    :sswitch_data_1
    .sparse-switch
        0xb15 -> :sswitch_11
        0xb16 -> :sswitch_12
        0xb17 -> :sswitch_13
        0xb18 -> :sswitch_14
        0xb19 -> :sswitch_15
        0xb1a -> :sswitch_16
        0xb1b -> :sswitch_17
        0xb1c -> :sswitch_18
        0xb1d -> :sswitch_19
        0xb1f -> :sswitch_1a
        0xb20 -> :sswitch_1b
        0xb23 -> :sswitch_1e
        0xb24 -> :sswitch_1f
        0xb25 -> :sswitch_20
        0xb5c -> :sswitch_1c
        0xb5d -> :sswitch_1d
    .end sparse-switch

    .line 7890
    :pswitch_data_8
    .packed-switch 0xd9a
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_83
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_83
        :pswitch_92
        :pswitch_93
        :pswitch_94
    .end packed-switch

    .line 7964
    :pswitch_data_9
    .packed-switch 0xc15
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_95
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_95
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
    .end packed-switch
.end method

.method private getHoldKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3275
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3276
    .local v0, "code":I
    move-object v2, p1

    .line 3277
    .local v2, "toggledLabel":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e5553

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 3278
    .local v1, "lang":I
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_0

    const/high16 v3, 0x6d720000

    if-ne v1, v3, :cond_0

    .line 3279
    packed-switch v0, :pswitch_data_0

    .line 3332
    :cond_0
    :goto_0
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_2

    const/high16 v3, 0x6e650000

    if-ne v1, v3, :cond_2

    .line 3333
    packed-switch v0, :pswitch_data_1

    .line 3911
    :cond_1
    :goto_1
    :pswitch_0
    return-object v2

    .line 3281
    :pswitch_1
    const-string v2, "\u0915\u094d\u0937"

    .line 3282
    goto :goto_0

    .line 3284
    :pswitch_2
    const-string v2, "\u091c\u094d\u091e"

    .line 3285
    goto :goto_0

    .line 3287
    :pswitch_3
    const-string v2, "\u0936\u094d\u0935"

    .line 3288
    goto :goto_0

    .line 3290
    :pswitch_4
    const-string v2, "\u0936\u094d\u0930"

    .line 3291
    goto :goto_0

    .line 3293
    :pswitch_5
    const-string v2, "\u0931\u094d\u092f"

    .line 3294
    goto :goto_0

    .line 3296
    :pswitch_6
    const-string v2, "\u0924\u094d\u0930"

    .line 3297
    goto :goto_0

    .line 3299
    :pswitch_7
    const-string v2, "\u0915\u094d\u0930"

    .line 3300
    goto :goto_0

    .line 3302
    :pswitch_8
    const-string v2, "\u0917\u094d\u0930"

    .line 3303
    goto :goto_0

    .line 3305
    :pswitch_9
    const-string v2, "\u092a\u094d\u0930"

    .line 3306
    goto :goto_0

    .line 3308
    :pswitch_a
    const-string v2, "\u092b\u094d\u0930"

    .line 3309
    goto :goto_0

    .line 3311
    :pswitch_b
    const-string v2, "\u091f\u094d\u0930"

    .line 3312
    goto :goto_0

    .line 3314
    :pswitch_c
    const-string v2, "\u0921\u094d\u0930"

    .line 3315
    goto :goto_0

    .line 3317
    :pswitch_d
    const-string v2, "\u0926\u094d\u0930"

    .line 3318
    goto :goto_0

    .line 3320
    :pswitch_e
    const-string v2, "\u092c\u094d\u0930"

    .line 3321
    goto :goto_0

    .line 3323
    :pswitch_f
    const-string v2, "\u092d\u094d\u0930"

    .line 3324
    goto :goto_0

    .line 3326
    :pswitch_10
    const-string v2, "\u0926\u094d\u0927"

    .line 3327
    goto :goto_0

    .line 3329
    :pswitch_11
    const-string v2, "\u0937\u094d\u091f\u094d\u0930"

    goto :goto_0

    .line 3335
    :pswitch_12
    const-string v2, "\u0915\u094d\u0937"

    .line 3336
    goto :goto_1

    .line 3338
    :pswitch_13
    const-string v2, "\u091c\u094d\u091e"

    .line 3339
    goto :goto_1

    .line 3341
    :pswitch_14
    const-string v2, "\u091e\u094d\u091c"

    .line 3342
    goto :goto_1

    .line 3344
    :pswitch_15
    const-string v2, "\u0936\u094d\u0935"

    .line 3345
    goto :goto_1

    .line 3347
    :pswitch_16
    const-string v2, "\u0936\u094d\u0930"

    .line 3348
    goto :goto_1

    .line 3350
    :pswitch_17
    const-string v2, "\u0931\u094d\u092f"

    .line 3351
    goto :goto_1

    .line 3353
    :pswitch_18
    const-string v2, "\u095b"

    .line 3354
    goto :goto_1

    .line 3356
    :pswitch_19
    const-string v2, "\u095e"

    .line 3357
    goto :goto_1

    .line 3359
    :pswitch_1a
    const-string v2, "\u0915\u094d\u0930"

    .line 3360
    goto :goto_1

    .line 3362
    :pswitch_1b
    const-string v2, "\u0917\u094d\u0930"

    .line 3363
    goto :goto_1

    .line 3365
    :pswitch_1c
    const-string v2, "\u092a\u094d\u0930"

    .line 3366
    goto :goto_1

    .line 3368
    :pswitch_1d
    const-string v2, "\u091f\u094d\u0930"

    .line 3369
    goto :goto_1

    .line 3371
    :pswitch_1e
    const-string v2, "\u0921\u094d\u0930"

    .line 3372
    goto :goto_1

    .line 3374
    :pswitch_1f
    const-string v2, "\u0926\u094d\u0930"

    .line 3375
    goto :goto_1

    .line 3377
    :pswitch_20
    const-string v2, "\u092c\u094d\u0930"

    .line 3378
    goto :goto_1

    .line 3380
    :pswitch_21
    const-string v2, "\u0926\u094d\u0927"

    goto :goto_1

    .line 3383
    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_3

    const/high16 v3, 0x626e0000

    if-ne v1, v3, :cond_3

    .line 3384
    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 3387
    :pswitch_22
    const-string v2, "\u0995\u09cd\u09b7"

    .line 3388
    goto :goto_1

    .line 3390
    :pswitch_23
    const-string v2, "\u09dc"

    .line 3391
    goto :goto_1

    .line 3393
    :pswitch_24
    const-string v2, "\u09dd"

    .line 3394
    goto :goto_1

    .line 3396
    :pswitch_25
    const-string v2, "\u09df"

    .line 3397
    goto :goto_1

    .line 3399
    :pswitch_26
    const-string v2, "\u0995\u09cd\u09b0"

    .line 3400
    goto :goto_1

    .line 3402
    :pswitch_27
    const-string v2, "\u0997\u09cd\u09b0"

    .line 3403
    goto/16 :goto_1

    .line 3405
    :pswitch_28
    const-string v2, "\u099f\u09cd\u09b0"

    .line 3406
    goto/16 :goto_1

    .line 3408
    :pswitch_29
    const-string v2, "\u09a4\u09cd\u09b0"

    .line 3409
    goto/16 :goto_1

    .line 3411
    :pswitch_2a
    const-string v2, "\u09aa\u09cd\u09b0"

    .line 3412
    goto/16 :goto_1

    .line 3414
    :pswitch_2b
    const-string v2, "\u09b6\u09cd\u09b0"

    .line 3415
    goto/16 :goto_1

    .line 3417
    :pswitch_2c
    const-string v2, "\u09b8\u09cd\u09a4\u09cd\u09b0"

    .line 3418
    goto/16 :goto_1

    .line 3420
    :pswitch_2d
    const-string v2, "\u09a8\u09cd\u09a4\u09cd\u09b0"

    .line 3421
    goto/16 :goto_1

    .line 3423
    :pswitch_2e
    const-string v2, "\u09b7\u09cd\u099f\u09cd\u09b0"

    .line 3424
    goto/16 :goto_1

    .line 3426
    :pswitch_2f
    const-string v2, "\u09b8\u09cd\u099f\u09cd\u09b0"

    .line 3427
    goto/16 :goto_1

    .line 3429
    :pswitch_30
    const-string v2, "\u09a6\u09cd\u09b0"

    .line 3430
    goto/16 :goto_1

    .line 3432
    :pswitch_31
    const-string v2, "\u09a8\u09cd\u09a6\u09cd\u09b0"

    goto/16 :goto_1

    .line 3435
    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_4

    const/high16 v3, 0x61730000

    if-ne v1, v3, :cond_4

    .line 3436
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_1

    .line 3439
    :pswitch_32
    const-string v2, "\u0995\u09cd\u09b7"

    .line 3440
    goto/16 :goto_1

    .line 3442
    :pswitch_33
    const-string v2, "\u09dc"

    .line 3443
    goto/16 :goto_1

    .line 3445
    :pswitch_34
    const-string v2, "\u09dd"

    .line 3446
    goto/16 :goto_1

    .line 3448
    :pswitch_35
    const-string v2, "\u0995\u09cd\u09f0"

    .line 3449
    goto/16 :goto_1

    .line 3451
    :pswitch_36
    const-string v2, "\u0997\u09cd\u09f0"

    .line 3452
    goto/16 :goto_1

    .line 3454
    :pswitch_37
    const-string v2, "\u099f\u09cd\u09f0"

    .line 3455
    goto/16 :goto_1

    .line 3457
    :pswitch_38
    const-string v2, "\u09a4\u09cd\u09f0"

    .line 3458
    goto/16 :goto_1

    .line 3460
    :pswitch_39
    const-string v2, "\u099a\u09cd\u09f0"

    .line 3461
    goto/16 :goto_1

    .line 3463
    :pswitch_3a
    const-string v2, "\u09b6\u09cd\u09f0"

    .line 3464
    goto/16 :goto_1

    .line 3466
    :pswitch_3b
    const-string v2, "\u09b8\u09cd\u09a4\u09cd\u09f0"

    .line 3467
    goto/16 :goto_1

    .line 3469
    :pswitch_3c
    const-string v2, "\u09a8\u09cd\u09a4\u09cd\u09f0"

    .line 3470
    goto/16 :goto_1

    .line 3472
    :pswitch_3d
    const-string v2, "\u09b7\u09cd\u099f\u09cd\u09f0"

    .line 3473
    goto/16 :goto_1

    .line 3475
    :pswitch_3e
    const-string v2, "\u09a8\u09cd\u09a6\u09cd\u09f0"

    .line 3476
    goto/16 :goto_1

    .line 3478
    :pswitch_3f
    const-string v2, "\u09a8\u09cd\u09a7\u09cd\u09f0"

    .line 3479
    goto/16 :goto_1

    .line 3481
    :pswitch_40
    const-string v2, "\u09ae\u09cd\u09aa\u09cd\u09f0"

    .line 3482
    goto/16 :goto_1

    .line 3484
    :pswitch_41
    const-string v2, "\u099c\u09cd\u099e"

    .line 3485
    goto/16 :goto_1

    .line 3487
    :pswitch_42
    const-string v2, "\u099e\u09cd\u099c"

    goto/16 :goto_1

    .line 3490
    :cond_4
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    .line 3491
    packed-switch v0, :pswitch_data_4

    :pswitch_43
    goto/16 :goto_1

    .line 3494
    :pswitch_44
    const-string v2, "\u0a95\u0acd\u0ab7"

    .line 3495
    goto/16 :goto_1

    .line 3497
    :pswitch_45
    const-string v2, "\u0a9c\u0acd\u0a9e"

    .line 3498
    goto/16 :goto_1

    .line 3500
    :pswitch_46
    const-string v2, "\u0ab6\u0acd\u0ab0"

    .line 3501
    goto/16 :goto_1

    .line 3503
    :pswitch_47
    const-string v2, "\u0a95\u0acd\u0ab0"

    .line 3504
    goto/16 :goto_1

    .line 3506
    :pswitch_48
    const-string v2, "\u0a97\u0acd\u0ab0"

    .line 3507
    goto/16 :goto_1

    .line 3509
    :pswitch_49
    const-string v2, "\u0a9f\u0acd\u0ab0"

    .line 3510
    goto/16 :goto_1

    .line 3512
    :pswitch_4a
    const-string v2, "\u0aa1\u0acd\u0ab0"

    .line 3513
    goto/16 :goto_1

    .line 3515
    :pswitch_4b
    const-string v2, "\u0aa4\u0acd\u0ab0"

    .line 3516
    goto/16 :goto_1

    .line 3518
    :pswitch_4c
    const-string v2, "\u0aa6\u0acd\u0ab0"

    .line 3519
    goto/16 :goto_1

    .line 3521
    :pswitch_4d
    const-string v2, "\u0aa7\u0acd\u0ab0"

    .line 3522
    goto/16 :goto_1

    .line 3524
    :pswitch_4e
    const-string v2, "\u0aaa\u0acd\u0ab0"

    .line 3525
    goto/16 :goto_1

    .line 3527
    :pswitch_4f
    const-string v2, "\u0aac\u0acd\u0ab0"

    .line 3528
    goto/16 :goto_1

    .line 3530
    :pswitch_50
    const-string v2, "\u0aad\u0acd\u0ab0"

    .line 3531
    goto/16 :goto_1

    .line 3533
    :pswitch_51
    const-string v2, "\u0aa6\u0acd\u0aac"

    .line 3534
    goto/16 :goto_1

    .line 3537
    :pswitch_52
    const-string v2, "\u0aa6\u0acd\u0aa7"

    .line 3538
    goto/16 :goto_1

    .line 3541
    :pswitch_53
    const-string v2, "\u0ab6\u0acd\u0a9a"

    goto/16 :goto_1

    .line 3544
    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 3545
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 3551
    :sswitch_0
    const-string v2, "\u0a5c"

    .line 3552
    goto/16 :goto_1

    .line 3548
    :sswitch_1
    const-string v2, "\u0a36"

    .line 3549
    goto/16 :goto_1

    .line 3554
    :sswitch_2
    const-string v2, "\u0a59"

    .line 3555
    goto/16 :goto_1

    .line 3557
    :sswitch_3
    const-string v2, "\u0a5b"

    .line 3558
    goto/16 :goto_1

    .line 3560
    :sswitch_4
    const-string v2, "\u0a28\u0a4d\u0a39"

    .line 3561
    goto/16 :goto_1

    .line 3563
    :sswitch_5
    const-string v2, "\u0a32\u0a4d\u0a39"

    .line 3564
    goto/16 :goto_1

    .line 3566
    :sswitch_6
    const-string v2, "\u0a5c\u0a4d\u0a39"

    .line 3567
    goto/16 :goto_1

    .line 3569
    :sswitch_7
    const-string v2, "\u0a15\u0a4d\u0a30"

    .line 3570
    goto/16 :goto_1

    .line 3572
    :sswitch_8
    const-string v2, "\u0a17\u0a4d\u0a30"

    .line 3573
    goto/16 :goto_1

    .line 3575
    :sswitch_9
    const-string v2, "\u0a1f\u0a4d\u0a30"

    .line 3576
    goto/16 :goto_1

    .line 3579
    :sswitch_a
    const-string v2, "\u0a21\u0a4d\u0a30"

    .line 3580
    goto/16 :goto_1

    .line 3583
    :sswitch_b
    const-string v2, "\u0a24\u0a4d\u0a30"

    .line 3584
    goto/16 :goto_1

    .line 3587
    :sswitch_c
    const-string v2, "\u0a26\u0a4d\u0a30"

    .line 3588
    goto/16 :goto_1

    .line 3591
    :sswitch_d
    const-string v2, "\u0a2a\u0a4d\u0a30"

    .line 3592
    goto/16 :goto_1

    .line 3594
    :sswitch_e
    const-string v2, "\u0a2b\u0a4d\u0a30"

    .line 3595
    goto/16 :goto_1

    .line 3597
    :sswitch_f
    const-string v2, "\u0a36\u0a4d\u0a30"

    .line 3598
    goto/16 :goto_1

    .line 3600
    :sswitch_10
    const-string v2, "\u0a38\u0a4d\u0a30"

    goto/16 :goto_1

    .line 3603
    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 3604
    packed-switch v0, :pswitch_data_5

    :pswitch_54
    goto/16 :goto_1

    .line 3607
    :pswitch_55
    const-string v2, "\u0bcd"

    .line 3608
    goto/16 :goto_1

    .line 3610
    :pswitch_56
    const-string v2, "\u0bbe"

    .line 3611
    goto/16 :goto_1

    .line 3613
    :pswitch_57
    const-string v2, "\u0bbf"

    .line 3614
    goto/16 :goto_1

    .line 3616
    :pswitch_58
    const-string v2, "\u0bc0"

    .line 3617
    goto/16 :goto_1

    .line 3619
    :pswitch_59
    const-string v2, "\u0bc1"

    .line 3620
    goto/16 :goto_1

    .line 3622
    :pswitch_5a
    const-string v2, "\u0bc2"

    .line 3623
    goto/16 :goto_1

    .line 3625
    :pswitch_5b
    const-string v2, "\u0bc6"

    .line 3626
    goto/16 :goto_1

    .line 3628
    :pswitch_5c
    const-string v2, "\u0bc7"

    .line 3629
    goto/16 :goto_1

    .line 3631
    :pswitch_5d
    const-string v2, "\u0bc8"

    .line 3632
    goto/16 :goto_1

    .line 3634
    :pswitch_5e
    const-string v2, "\u0bca"

    .line 3635
    goto/16 :goto_1

    .line 3637
    :pswitch_5f
    const-string v2, "\u0bcb"

    .line 3638
    goto/16 :goto_1

    .line 3640
    :pswitch_60
    const-string v2, "\u0bcc"

    goto/16 :goto_1

    .line 3643
    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 3644
    packed-switch v0, :pswitch_data_6

    :pswitch_61
    goto/16 :goto_1

    .line 3647
    :pswitch_62
    const-string v2, "\u0c95\u0ccd\u0cb7"

    .line 3648
    goto/16 :goto_1

    .line 3650
    :pswitch_63
    const-string v2, "\u0ca4\u0ccd\u0cb0"

    .line 3651
    goto/16 :goto_1

    .line 3653
    :pswitch_64
    const-string v2, "\u0c9c\u0ccd\u0c9e"

    .line 3654
    goto/16 :goto_1

    .line 3656
    :pswitch_65
    const-string v2, "\u0c95\u0cc3"

    .line 3657
    goto/16 :goto_1

    .line 3659
    :pswitch_66
    const-string v2, "\u0c97\u0cc3"

    .line 3660
    goto/16 :goto_1

    .line 3662
    :pswitch_67
    const-string v2, "\u0cb9\u0cc3"

    .line 3663
    goto/16 :goto_1

    .line 3665
    :pswitch_68
    const-string v2, "\u0ca6\u0cc3"

    .line 3666
    goto/16 :goto_1

    .line 3668
    :pswitch_69
    const-string v2, "\u0ca6\u0cc3"

    .line 3669
    goto/16 :goto_1

    .line 3671
    :pswitch_6a
    const-string v2, "\u0caa\u0ccd\u0cb0"

    .line 3672
    goto/16 :goto_1

    .line 3674
    :pswitch_6b
    const-string v2, "\u0cac\u0ccd\u0cb0"

    .line 3675
    goto/16 :goto_1

    .line 3677
    :pswitch_6c
    const-string v2, "\u0ca6\u0ccd\u0cb0"

    .line 3678
    goto/16 :goto_1

    .line 3680
    :pswitch_6d
    const-string v2, "\u0c9f\u0ccd\u0cb0"

    .line 3681
    goto/16 :goto_1

    .line 3683
    :pswitch_6e
    const-string v2, "\u0cad\u0ccd\u0cb0"

    .line 3684
    goto/16 :goto_1

    .line 3686
    :pswitch_6f
    const-string v2, "\u0ca6\u0ccd\u0ca7"

    .line 3687
    goto/16 :goto_1

    .line 3689
    :pswitch_70
    const-string v2, "\u0c9e"

    .line 3690
    goto/16 :goto_1

    .line 3692
    :pswitch_71
    const-string v2, "\u0c9c\u0cbc"

    goto/16 :goto_1

    .line 3696
    :cond_8
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    .line 3697
    packed-switch v0, :pswitch_data_7

    goto/16 :goto_1

    .line 3700
    :pswitch_72
    const-string v2, "\u0d15\u0d4d\u0d37"

    .line 3701
    goto/16 :goto_1

    .line 3703
    :pswitch_73
    const-string v2, "\u0d28\u0d4d\u0d26"

    .line 3704
    goto/16 :goto_1

    .line 3706
    :pswitch_74
    const-string v2, "\u0d28\u0d4d\u0d24"

    .line 3707
    goto/16 :goto_1

    .line 3709
    :pswitch_75
    const-string v2, "\u0d2e\u0d4d\u0d2a"

    .line 3710
    goto/16 :goto_1

    .line 3712
    :pswitch_76
    const-string v2, "\u0d23\u0d4d\u0d21"

    .line 3713
    goto/16 :goto_1

    .line 3715
    :pswitch_77
    const-string v2, "\u0d15\u0d4d\u0d30"

    .line 3716
    goto/16 :goto_1

    .line 3718
    :pswitch_78
    const-string v2, "\u0d17\u0d4d\u0d30"

    .line 3719
    goto/16 :goto_1

    .line 3721
    :pswitch_79
    const-string v2, "\u0d18\u0d4d\u0d30"

    .line 3722
    goto/16 :goto_1

    .line 3724
    :pswitch_7a
    const-string v2, "\u0d1c\u0d4d\u0d30"

    .line 3725
    goto/16 :goto_1

    .line 3727
    :pswitch_7b
    const-string v2, "\u0d1f\u0d4d\u0d30"

    .line 3728
    goto/16 :goto_1

    .line 3730
    :pswitch_7c
    const-string v2, "\u0d21\u0d4d\u0d30"

    .line 3731
    goto/16 :goto_1

    .line 3733
    :pswitch_7d
    const-string v2, "\u0d24\u0d4d\u0d30"

    .line 3734
    goto/16 :goto_1

    .line 3736
    :pswitch_7e
    const-string v2, "\u0d26\u0d4d\u0d30"

    .line 3737
    goto/16 :goto_1

    .line 3739
    :pswitch_7f
    const-string v2, "\u0d2a\u0d4d\u0d30"

    .line 3740
    goto/16 :goto_1

    .line 3742
    :pswitch_80
    const-string v2, "\u0d2c\u0d4d\u0d30"

    .line 3743
    goto/16 :goto_1

    .line 3745
    :pswitch_81
    const-string v2, "\u0d36\u0d4d\u0d30"

    .line 3746
    goto/16 :goto_1

    .line 3748
    :pswitch_82
    const-string v2, "\u0d38\u0d4d\u0d30"

    goto/16 :goto_1

    .line 3751
    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    .line 3752
    packed-switch v0, :pswitch_data_8

    :pswitch_83
    goto/16 :goto_1

    .line 3755
    :pswitch_84
    const-string v2, "\u0c15\u0c4d\u0c37"

    .line 3756
    goto/16 :goto_1

    .line 3758
    :pswitch_85
    const-string v2, "\u0c15\u0c4d\u0c30"

    .line 3759
    goto/16 :goto_1

    .line 3761
    :pswitch_86
    const-string v2, "\u0c16\u0c4d\u0c30"

    .line 3762
    goto/16 :goto_1

    .line 3764
    :pswitch_87
    const-string v2, "\u0c17\u0c4d\u0c30"

    .line 3765
    goto/16 :goto_1

    .line 3767
    :pswitch_88
    const-string v2, "\u0c18\u0c4d\u0c30"

    .line 3768
    goto/16 :goto_1

    .line 3770
    :pswitch_89
    const-string v2, "\u0c1f\u0c4d\u0c30"

    .line 3771
    goto/16 :goto_1

    .line 3773
    :pswitch_8a
    const-string v2, "\u0c21\u0c4d\u0c30"

    .line 3774
    goto/16 :goto_1

    .line 3776
    :pswitch_8b
    const-string v2, "\u0c24\u0c4d\u0c30"

    .line 3777
    goto/16 :goto_1

    .line 3779
    :pswitch_8c
    const-string v2, "\u0c26\u0c4d\u0c30"

    .line 3780
    goto/16 :goto_1

    .line 3782
    :pswitch_8d
    const-string v2, "\u0c28\u0c4d\u0c30"

    .line 3783
    goto/16 :goto_1

    .line 3785
    :pswitch_8e
    const-string v2, "\u0c2a\u0c4d\u0c30"

    .line 3786
    goto/16 :goto_1

    .line 3788
    :pswitch_8f
    const-string v2, "\u0c2c\u0c4d\u0c30"

    .line 3789
    goto/16 :goto_1

    .line 3791
    :pswitch_90
    const-string v2, "\u0c2d\u0c4d\u0c30"

    .line 3792
    goto/16 :goto_1

    .line 3794
    :pswitch_91
    const-string v2, "\u0c35\u0c4d\u0c30"

    .line 3795
    goto/16 :goto_1

    .line 3797
    :pswitch_92
    const-string v2, "\u0c36\u0c4d\u0c30"

    .line 3798
    goto/16 :goto_1

    .line 3800
    :pswitch_93
    const-string v2, "\u0c38\u0c4d\u0c30"

    goto/16 :goto_1

    .line 3803
    :cond_a
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_b

    .line 3804
    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_1

    .line 3807
    :sswitch_11
    const-string v2, "\u0b15\u0b4d\u0b37"

    .line 3808
    goto/16 :goto_1

    .line 3810
    :sswitch_12
    const-string v2, "\u0b5f"

    .line 3811
    goto/16 :goto_1

    .line 3813
    :sswitch_13
    const-string v2, "\u0b1c\u0b4d\u0b1e"

    .line 3814
    goto/16 :goto_1

    .line 3816
    :sswitch_14
    const-string v2, "\u0b15\u0b4d\u0b30"

    .line 3817
    goto/16 :goto_1

    .line 3819
    :sswitch_15
    const-string v2, "\u0b17\u0b4d\u0b30"

    .line 3820
    goto/16 :goto_1

    .line 3822
    :sswitch_16
    const-string v2, "\u0b18\u0b4d\u0b30"

    .line 3823
    goto/16 :goto_1

    .line 3825
    :sswitch_17
    const-string v2, "\u0b1f\u0b4d\u0b30"

    .line 3826
    goto/16 :goto_1

    .line 3828
    :sswitch_18
    const-string v2, "\u0b26\u0b4d\u0b30"

    .line 3829
    goto/16 :goto_1

    .line 3831
    :sswitch_19
    const-string v2, "\u0b27\u0b4d\u0b30"

    .line 3832
    goto/16 :goto_1

    .line 3834
    :sswitch_1a
    const-string v2, "\u0b2a\u0b4d\u0b30"

    .line 3835
    goto/16 :goto_1

    .line 3837
    :sswitch_1b
    const-string v2, "\u0b2c\u0b4d\u0b30"

    .line 3838
    goto/16 :goto_1

    .line 3840
    :sswitch_1c
    const-string v2, "\u0b2d\u0b4d\u0b30"

    .line 3841
    goto/16 :goto_1

    .line 3843
    :sswitch_1d
    const-string v2, "\u0b36\u0b4d\u0b30"

    .line 3844
    goto/16 :goto_1

    .line 3846
    :sswitch_1e
    const-string v2, "\u0b38\u0b4d\u0b30"

    .line 3847
    goto/16 :goto_1

    .line 3849
    :sswitch_1f
    const-string v2, "\u0b28\u0b4d\u0b24"

    .line 3850
    goto/16 :goto_1

    .line 3852
    :sswitch_20
    const-string v2, "\u0b28\u0b4d\u0b26"

    goto/16 :goto_1

    .line 3855
    :cond_b
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 3856
    packed-switch v0, :pswitch_data_9

    :pswitch_94
    goto/16 :goto_1

    .line 3859
    :pswitch_95
    const-string v2, "\u0da4"

    .line 3860
    goto/16 :goto_1

    .line 3862
    :pswitch_96
    const-string v2, "\u0dbb\u0dca"

    .line 3863
    goto/16 :goto_1

    .line 3865
    :pswitch_97
    const-string v2, "\u0dac"

    .line 3866
    goto/16 :goto_1

    .line 3868
    :pswitch_98
    const-string v2, "\u0d9f"

    .line 3869
    goto/16 :goto_1

    .line 3871
    :pswitch_99
    const-string v2, "\u0da5"

    .line 3872
    goto/16 :goto_1

    .line 3874
    :pswitch_9a
    const-string v2, "\u0da6"

    .line 3875
    goto/16 :goto_1

    .line 3877
    :pswitch_9b
    const-string v2, "\u0db3"

    .line 3878
    goto/16 :goto_1

    .line 3880
    :pswitch_9c
    const-string v2, "\u0db9"

    .line 3881
    goto/16 :goto_1

    .line 3883
    :pswitch_9d
    const-string v2, "\u0d9a\u0dca\u200d\u0dbb"

    .line 3884
    goto/16 :goto_1

    .line 3886
    :pswitch_9e
    const-string v2, "\u0d9c\u0dca\u200d\u0dbb"

    .line 3887
    goto/16 :goto_1

    .line 3889
    :pswitch_9f
    const-string v2, "\u0dad\u0dca\u200d\u0dbb"

    .line 3890
    goto/16 :goto_1

    .line 3892
    :pswitch_a0
    const-string v2, "\u0daf\u0dca\u200d\u0dbb"

    .line 3893
    goto/16 :goto_1

    .line 3895
    :pswitch_a1
    const-string v2, "\u0da7\u0dca\u200d\u0dbb"

    .line 3896
    goto/16 :goto_1

    .line 3898
    :pswitch_a2
    const-string v2, "\u0db5\u0dca\u200d\u0dbb"

    .line 3899
    goto/16 :goto_1

    .line 3901
    :pswitch_a3
    const-string v2, "\u0db4\u0dca\u200d\u0dbb"

    .line 3902
    goto/16 :goto_1

    .line 3904
    :pswitch_a4
    const-string v2, "\u0dc1\u0dca\u200d\u0dbb"

    .line 3905
    goto/16 :goto_1

    .line 3907
    :pswitch_a5
    const-string v2, "\u0dc3\u0dca\u200d\u0dbb"

    goto/16 :goto_1

    .line 3279
    nop

    :pswitch_data_0
    .packed-switch 0x915
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 3333
    :pswitch_data_1
    .packed-switch 0x915
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 3384
    :pswitch_data_2
    .packed-switch 0x995
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch

    .line 3436
    :pswitch_data_3
    .packed-switch 0x995
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    .line 3491
    :pswitch_data_4
    .packed-switch 0xa95
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_43
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_43
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    .line 3545
    :sswitch_data_0
    .sparse-switch
        0xa05 -> :sswitch_0
        0xa15 -> :sswitch_5
        0xa16 -> :sswitch_6
        0xa17 -> :sswitch_7
        0xa18 -> :sswitch_8
        0xa19 -> :sswitch_9
        0xa1a -> :sswitch_a
        0xa1b -> :sswitch_b
        0xa1c -> :sswitch_c
        0xa1d -> :sswitch_d
        0xa1e -> :sswitch_e
        0xa1f -> :sswitch_f
        0xa20 -> :sswitch_10
        0xa38 -> :sswitch_3
        0xa39 -> :sswitch_4
        0xa72 -> :sswitch_2
        0xa73 -> :sswitch_1
    .end sparse-switch

    .line 3604
    :pswitch_data_5
    .packed-switch 0xb85
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_54
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
    .end packed-switch

    .line 3644
    :pswitch_data_6
    .packed-switch 0xc95
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_61
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_61
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    .line 3697
    :pswitch_data_7
    .packed-switch 0xd15
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
    .end packed-switch

    .line 3752
    :pswitch_data_8
    .packed-switch 0xc15
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_83
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_83
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
    .end packed-switch

    .line 3804
    :sswitch_data_1
    .sparse-switch
        0xb15 -> :sswitch_11
        0xb16 -> :sswitch_12
        0xb17 -> :sswitch_13
        0xb18 -> :sswitch_14
        0xb19 -> :sswitch_15
        0xb1a -> :sswitch_16
        0xb1b -> :sswitch_17
        0xb1c -> :sswitch_18
        0xb1d -> :sswitch_19
        0xb1f -> :sswitch_1a
        0xb20 -> :sswitch_1b
        0xb23 -> :sswitch_1e
        0xb24 -> :sswitch_1f
        0xb25 -> :sswitch_20
        0xb5c -> :sswitch_1c
        0xb5d -> :sswitch_1d
    .end sparse-switch

    .line 3856
    :pswitch_data_9
    .packed-switch 0xd9a
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_94
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_94
        :pswitch_94
        :pswitch_94
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_94
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
    .end packed-switch
.end method

.method public static getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/diotek/ime/framework/input/IndianInputModule;->instance:Lcom/diotek/ime/framework/input/IndianInputModule;

    return-object v0
.end method

.method private getMultipleKeyCodes()[I
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 4648
    const/4 v0, 0x0

    .line 4649
    .local v0, "keyCodes":[I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 4650
    .local v1, "lang":I
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/high16 v2, 0x6d720000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x68690000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x6e650000

    if-ne v1, v2, :cond_2

    .line 4651
    :cond_0
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_0

    .line 5707
    :cond_1
    :goto_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 5708
    return-object v0

    .line 4653
    :pswitch_0
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_0

    .line 4656
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4658
    :pswitch_1
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_1

    .line 4661
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4663
    :pswitch_2
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_2

    .line 4666
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4668
    :pswitch_3
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_3

    .line 4671
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4673
    :pswitch_4
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_4

    .line 4676
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4678
    :pswitch_5
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_5

    .line 4681
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4683
    :pswitch_6
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_6

    .line 4686
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4688
    :pswitch_7
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_7

    .line 4691
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4693
    :pswitch_8
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_8

    .line 4696
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4698
    :pswitch_9
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_9

    .line 4701
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4703
    :pswitch_a
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a

    .line 4706
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4708
    :pswitch_b
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b

    .line 4711
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4713
    :pswitch_c
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c

    .line 4716
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4718
    :pswitch_d
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_d

    .line 4721
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4723
    :pswitch_e
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_e

    .line 4726
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4728
    :pswitch_f
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_f

    .line 4731
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4733
    :pswitch_10
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_10

    .line 4736
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4738
    :pswitch_11
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_11

    .line 4741
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4743
    :pswitch_12
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_12

    .line 4746
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4748
    :pswitch_13
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_13

    .line 4751
    .restart local v0    # "keyCodes":[I
    goto :goto_0

    .line 4753
    :pswitch_14
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_14

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4758
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_4

    const/high16 v2, 0x626e0000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x61730000

    if-ne v1, v2, :cond_4

    .line 4759
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 4761
    :pswitch_15
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_15

    .line 4764
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4766
    :pswitch_16
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_16

    .line 4769
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4771
    :pswitch_17
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_17

    .line 4774
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4776
    :pswitch_18
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_18

    .line 4779
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4781
    :pswitch_19
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_19

    .line 4784
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4786
    :pswitch_1a
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_1a

    .line 4789
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4791
    :pswitch_1b
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_1b

    .line 4794
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4796
    :pswitch_1c
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_1c

    .line 4799
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4801
    :pswitch_1d
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_1d

    .line 4804
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4806
    :pswitch_1e
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_1e

    .line 4809
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4811
    :pswitch_1f
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_1f

    .line 4814
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4816
    :pswitch_20
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_20

    .line 4819
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4821
    :pswitch_21
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_21

    .line 4824
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4826
    :pswitch_22
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_22

    .line 4829
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4831
    :pswitch_23
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_23

    .line 4834
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4836
    :pswitch_24
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_24

    .line 4839
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4841
    :pswitch_25
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_25

    .line 4844
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4846
    :pswitch_26
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_26

    .line 4849
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4851
    :pswitch_27
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_27

    .line 4854
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4856
    :pswitch_28
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_28

    .line 4859
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4861
    :pswitch_29
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_29

    .line 4864
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4866
    :pswitch_2a
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_2a

    .line 4869
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4871
    :pswitch_2b
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_2b

    .line 4874
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4876
    :pswitch_2c
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_2c

    .line 4879
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4881
    :pswitch_2d
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_2d

    .line 4884
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4886
    :pswitch_2e
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_2e

    .line 4889
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4891
    :pswitch_2f
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_2f

    .line 4894
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4896
    :pswitch_30
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_30

    .line 4899
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4901
    :pswitch_31
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_31

    .line 4904
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4906
    :pswitch_32
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_32

    .line 4909
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4911
    :pswitch_33
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_33

    .line 4914
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4916
    :pswitch_34
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_34

    .line 4919
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4921
    :pswitch_35
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_35

    .line 4924
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4926
    :pswitch_36
    new-array v0, v7, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_36

    .line 4929
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4931
    :pswitch_37
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_37

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4936
    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 4937
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    .line 4939
    :pswitch_38
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_38

    .line 4942
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4944
    :pswitch_39
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_39

    .line 4947
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4949
    :pswitch_3a
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_3a

    .line 4952
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4954
    :pswitch_3b
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_3b

    .line 4957
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4959
    :pswitch_3c
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_3c

    .line 4962
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4964
    :pswitch_3d
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_3d

    .line 4967
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4969
    :pswitch_3e
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_3e

    .line 4972
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4974
    :pswitch_3f
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_3f

    .line 4977
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4979
    :pswitch_40
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_40

    .line 4982
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4984
    :pswitch_41
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_41

    .line 4987
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4989
    :pswitch_42
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_42

    .line 4992
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4994
    :pswitch_43
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_43

    .line 4997
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4999
    :pswitch_44
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_44

    .line 5002
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5004
    :pswitch_45
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_45

    .line 5007
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5009
    :pswitch_46
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_46

    .line 5012
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5014
    :pswitch_47
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_47

    .line 5017
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5019
    :pswitch_48
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_48

    .line 5022
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5024
    :pswitch_49
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_49

    .line 5027
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5029
    :pswitch_4a
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_4a

    .line 5032
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5034
    :pswitch_4b
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_4b

    .line 5037
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5039
    :pswitch_4c
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_4c

    .line 5042
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5044
    :pswitch_4d
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_4d

    .line 5047
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5049
    :pswitch_4e
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_4e

    .line 5052
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5054
    :pswitch_4f
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_4f

    .line 5057
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5059
    :pswitch_50
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_50

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5064
    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v7, :cond_6

    .line 5065
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_0

    .line 5067
    :pswitch_51
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_51

    .line 5070
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5072
    :pswitch_52
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_52

    .line 5075
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5077
    :pswitch_53
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_53

    .line 5080
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5082
    :pswitch_54
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_54

    .line 5085
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5087
    :pswitch_55
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_55

    .line 5090
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5092
    :pswitch_56
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_56

    .line 5095
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5097
    :pswitch_57
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_57

    .line 5100
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5102
    :pswitch_58
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_58

    .line 5105
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5107
    :pswitch_59
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_59

    .line 5110
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5112
    :pswitch_5a
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_5a

    .line 5115
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5117
    :pswitch_5b
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_5b

    .line 5120
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5122
    :pswitch_5c
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_5c

    .line 5125
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5127
    :pswitch_5d
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_5d

    .line 5130
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5132
    :pswitch_5e
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_5e

    .line 5135
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5137
    :pswitch_5f
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_5f

    .line 5140
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5142
    :pswitch_60
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_60

    .line 5145
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5147
    :pswitch_61
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_61

    .line 5150
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5152
    :pswitch_62
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_62

    .line 5155
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5157
    :pswitch_63
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_63

    .line 5160
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5162
    :pswitch_64
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_64

    .line 5165
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5167
    :pswitch_65
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_65

    .line 5170
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5172
    :pswitch_66
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_66

    .line 5175
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5177
    :pswitch_67
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_67

    .line 5180
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5182
    :pswitch_68
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_68

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5187
    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 5188
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    .line 5190
    :pswitch_69
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_69

    .line 5193
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5195
    :pswitch_6a
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_6a

    .line 5198
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5200
    :pswitch_6b
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_6b

    .line 5203
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5205
    :pswitch_6c
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_6c

    .line 5208
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5210
    :pswitch_6d
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_6d

    .line 5213
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5215
    :pswitch_6e
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_6e

    .line 5218
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5220
    :pswitch_6f
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_6f

    .line 5223
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5225
    :pswitch_70
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_70

    .line 5228
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5230
    :pswitch_71
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_71

    .line 5233
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5235
    :pswitch_72
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_72

    .line 5238
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5240
    :pswitch_73
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_73

    .line 5243
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5245
    :pswitch_74
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_74

    .line 5248
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5250
    :pswitch_75
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_75

    .line 5253
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5255
    :pswitch_76
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_76

    .line 5258
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5260
    :pswitch_77
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_77

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5265
    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 5266
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_5

    goto/16 :goto_0

    .line 5268
    :pswitch_78
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_78

    .line 5271
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5273
    :pswitch_79
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_79

    .line 5276
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5278
    :pswitch_7a
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_7a

    .line 5281
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5283
    :pswitch_7b
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_7b

    .line 5286
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5288
    :pswitch_7c
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_7c

    .line 5291
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5293
    :pswitch_7d
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_7d

    .line 5296
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5298
    :pswitch_7e
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_7e

    .line 5301
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5303
    :pswitch_7f
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_7f

    .line 5306
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5308
    :pswitch_80
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_80

    .line 5311
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5313
    :pswitch_81
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_81

    .line 5316
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5318
    :pswitch_82
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_82

    .line 5321
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5323
    :pswitch_83
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_83

    .line 5326
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5328
    :pswitch_84
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_84

    .line 5331
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5333
    :pswitch_85
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_85

    .line 5336
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5338
    :pswitch_86
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_86

    .line 5341
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5343
    :pswitch_87
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_87

    .line 5346
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5348
    :pswitch_88
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_88

    .line 5351
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5353
    :pswitch_89
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_89

    .line 5356
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5358
    :pswitch_8a
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_8a

    .line 5361
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5363
    :pswitch_8b
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_8b

    .line 5366
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5368
    :pswitch_8c
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_8c

    .line 5371
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5373
    :pswitch_8d
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_8d

    .line 5376
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5378
    :pswitch_8e
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_8e

    .line 5381
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5383
    :pswitch_8f
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_8f

    .line 5386
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5388
    :pswitch_90
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_90

    .line 5391
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5393
    :pswitch_91
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_91

    .line 5396
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5398
    :pswitch_92
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_92

    .line 5401
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5403
    :pswitch_93
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_93

    .line 5406
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5408
    :pswitch_94
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_94

    .line 5411
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5413
    :pswitch_95
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_95

    .line 5416
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5418
    :pswitch_96
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_96

    .line 5421
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5423
    :pswitch_97
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_97

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5429
    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_9

    .line 5430
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_6

    goto/16 :goto_0

    .line 5432
    :pswitch_98
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_98

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5437
    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v8, :cond_a

    .line 5438
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_7

    goto/16 :goto_0

    .line 5440
    :pswitch_99
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_99

    .line 5443
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5445
    :pswitch_9a
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_9a

    .line 5448
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5450
    :pswitch_9b
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_9b

    .line 5453
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5455
    :pswitch_9c
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_9c

    .line 5458
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5460
    :pswitch_9d
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_9d

    .line 5463
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5465
    :pswitch_9e
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_9e

    .line 5468
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5470
    :pswitch_9f
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_9f

    .line 5473
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5475
    :pswitch_a0
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a0

    .line 5478
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5480
    :pswitch_a1
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a1

    .line 5483
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5485
    :pswitch_a2
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a2

    .line 5488
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5490
    :pswitch_a3
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a3

    .line 5493
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5495
    :pswitch_a4
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a4

    .line 5498
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5500
    :pswitch_a5
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a5

    .line 5503
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5505
    :pswitch_a6
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a6

    .line 5508
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5510
    :pswitch_a7
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a7

    .line 5513
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5515
    :pswitch_a8
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a8

    .line 5518
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5520
    :pswitch_a9
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_a9

    .line 5523
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5525
    :pswitch_aa
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_aa

    .line 5528
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5530
    :pswitch_ab
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_ab

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5535
    :cond_a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    .line 5536
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_8

    goto/16 :goto_0

    .line 5538
    :pswitch_ac
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_ac

    .line 5541
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5543
    :pswitch_ad
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_ad

    .line 5546
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5548
    :pswitch_ae
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_ae

    .line 5551
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5553
    :pswitch_af
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_af

    .line 5556
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5558
    :pswitch_b0
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b0

    .line 5561
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5563
    :pswitch_b1
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b1

    .line 5566
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5568
    :pswitch_b2
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b2

    .line 5571
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5573
    :pswitch_b3
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b3

    .line 5576
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5578
    :pswitch_b4
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b4

    .line 5581
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5583
    :pswitch_b5
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b5

    .line 5586
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5588
    :pswitch_b6
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b6

    .line 5591
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5593
    :pswitch_b7
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b7

    .line 5596
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5598
    :pswitch_b8
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b8

    .line 5601
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5603
    :pswitch_b9
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_b9

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5608
    :cond_b
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 5609
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    packed-switch v2, :pswitch_data_9

    goto/16 :goto_0

    .line 5611
    :pswitch_ba
    new-array v0, v6, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_ba

    .line 5614
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5616
    :pswitch_bb
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_bb

    .line 5619
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5621
    :pswitch_bc
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_bc

    .line 5624
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5626
    :pswitch_bd
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_bd

    .line 5629
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5631
    :pswitch_be
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_be

    .line 5634
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5636
    :pswitch_bf
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_bf

    .line 5639
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5641
    :pswitch_c0
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c0

    .line 5644
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5646
    :pswitch_c1
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c1

    .line 5649
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5651
    :pswitch_c2
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c2

    .line 5654
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5656
    :pswitch_c3
    new-array v0, v5, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c3

    .line 5659
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5661
    :pswitch_c4
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c4

    .line 5664
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5666
    :pswitch_c5
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c5

    .line 5669
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5671
    :pswitch_c6
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c6

    .line 5674
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5676
    :pswitch_c7
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c7

    .line 5679
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5681
    :pswitch_c8
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c8

    .line 5684
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5686
    :pswitch_c9
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_c9

    .line 5689
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5691
    :pswitch_ca
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_ca

    .line 5694
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5696
    :pswitch_cb
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_cb

    .line 5699
    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 5701
    :pswitch_cc
    new-array v0, v8, [I

    .end local v0    # "keyCodes":[I
    fill-array-data v0, :array_cc

    .restart local v0    # "keyCodes":[I
    goto/16 :goto_0

    .line 4651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 4653
    :array_0
    .array-data 4
        0x915
        0x94d
        0x937
    .end array-data

    .line 4658
    :array_1
    .array-data 4
        0x91c
        0x94d
        0x91e
    .end array-data

    .line 4663
    :array_2
    .array-data 4
        0x936
        0x94d
        0x930
    .end array-data

    .line 4668
    :array_3
    .array-data 4
        0x91c
        0x94d
        0x92f
    .end array-data

    .line 4673
    :array_4
    .array-data 4
        0x924
        0x94d
        0x930
    .end array-data

    .line 4678
    :array_5
    .array-data 4
        0x915
        0x94d
        0x930
    .end array-data

    .line 4683
    :array_6
    .array-data 4
        0x917
        0x94d
        0x930
    .end array-data

    .line 4688
    :array_7
    .array-data 4
        0x92a
        0x94d
        0x930
    .end array-data

    .line 4693
    :array_8
    .array-data 4
        0x92b
        0x94d
        0x930
    .end array-data

    .line 4698
    :array_9
    .array-data 4
        0x91f
        0x94d
        0x930
    .end array-data

    .line 4703
    :array_a
    .array-data 4
        0x921
        0x94d
        0x930
    .end array-data

    .line 4708
    :array_b
    .array-data 4
        0x926
        0x94d
        0x930
    .end array-data

    .line 4713
    :array_c
    .array-data 4
        0x92c
        0x94d
        0x930
    .end array-data

    .line 4718
    :array_d
    .array-data 4
        0x92d
        0x94d
        0x930
    .end array-data

    .line 4723
    :array_e
    .array-data 4
        0x926
        0x94d
        0x927
    .end array-data

    .line 4728
    :array_f
    .array-data 4
        0x94d
        0x930
    .end array-data

    .line 4733
    :array_10
    .array-data 4
        0x930
        0x94d
    .end array-data

    .line 4738
    :array_11
    .array-data 4
        0x91e
        0x94d
        0x91c
    .end array-data

    .line 4743
    :array_12
    .array-data 4
        0x936
        0x94d
        0x935
    .end array-data

    .line 4748
    :array_13
    .array-data 4
        0x926
        0x94d
        0x927
    .end array-data

    .line 4753
    :array_14
    .array-data 4
        0x937
        0x94d
        0x91f
        0x94d
        0x930
    .end array-data

    .line 4759
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch

    .line 4761
    :array_15
    .array-data 4
        0x995
        0x9cd
        0x9b7
    .end array-data

    .line 4766
    :array_16
    .array-data 4
        0x995
        0x9cd
        0x9b0
    .end array-data

    .line 4771
    :array_17
    .array-data 4
        0x997
        0x9cd
        0x9b0
    .end array-data

    .line 4776
    :array_18
    .array-data 4
        0x99f
        0x9cd
        0x9b0
    .end array-data

    .line 4781
    :array_19
    .array-data 4
        0x9a4
        0x9cd
        0x9b0
    .end array-data

    .line 4786
    :array_1a
    .array-data 4
        0x9aa
        0x9cd
        0x9b0
    .end array-data

    .line 4791
    :array_1b
    .array-data 4
        0x9b6
        0x9cd
        0x9b0
    .end array-data

    .line 4796
    :array_1c
    .array-data 4
        0x9b8
        0x9cd
        0x9a4
        0x9cd
        0x9b0
    .end array-data

    .line 4801
    :array_1d
    .array-data 4
        0x9a8
        0x9cd
        0x9a4
        0x9cd
        0x9b0
    .end array-data

    .line 4806
    :array_1e
    .array-data 4
        0x9b7
        0x9cd
        0x99f
        0x9cd
        0x9b0
    .end array-data

    .line 4811
    :array_1f
    .array-data 4
        0x9b8
        0x9cd
        0x99f
        0x9cd
        0x9b0
    .end array-data

    .line 4816
    :array_20
    .array-data 4
        0x9a6
        0x9cd
        0x9b0
    .end array-data

    .line 4821
    :array_21
    .array-data 4
        0x9a8
        0x9cd
        0x9a6
        0x9cd
        0x9b0
    .end array-data

    .line 4826
    :array_22
    .array-data 4
        0x9cd
        0x9b0
    .end array-data

    .line 4831
    :array_23
    .array-data 4
        0x9b0
        0x9cd
    .end array-data

    .line 4836
    :array_24
    .array-data 4
        0x9cd
        0x9af
    .end array-data

    .line 4841
    :array_25
    .array-data 4
        0x985
        0x982
    .end array-data

    .line 4846
    :array_26
    .array-data 4
        0x985
        0x981
    .end array-data

    .line 4851
    :array_27
    .array-data 4
        0x993
        0x981
    .end array-data

    .line 4856
    :array_28
    .array-data 4
        0x987
        0x982
    .end array-data

    .line 4861
    :array_29
    .array-data 4
        0x986
        0x9af
        0x9be
    .end array-data

    .line 4866
    :array_2a
    .array-data 4
        0x9b8
        0x9cd
        0x995
    .end array-data

    .line 4871
    :array_2b
    .array-data 4
        0x99e
        0x9cd
        0x99c
    .end array-data

    .line 4876
    :array_2c
    .array-data 4
        0x99c
        0x9cd
        0x99e
    .end array-data

    .line 4881
    :array_2d
    .array-data 4
        0x9b8
        0x9cd
        0x995
        0x9cd
        0x9b0
    .end array-data

    .line 4886
    :array_2e
    .array-data 4
        0x995
        0x9cd
        0x99f
    .end array-data

    .line 4891
    :array_2f
    .array-data 4
        0x995
        0x9cd
        0x9a4
    .end array-data

    .line 4896
    :array_30
    .array-data 4
        0x995
        0x9cd
        0x9b2
    .end array-data

    .line 4901
    :array_31
    .array-data 4
        0x995
        0x9cd
        0x9b8
    .end array-data

    .line 4906
    :array_32
    .array-data 4
        0x997
        0x9cd
        0x9a7
    .end array-data

    .line 4911
    :array_33
    .array-data 4
        0x9b8
        0x9cd
        0x995
        0x9cd
        0x9f0
    .end array-data

    .line 4916
    :array_34
    .array-data 4
        0x9ae
        0x9cd
        0x9aa
        0x9cd
        0x9f0
    .end array-data

    .line 4921
    :array_35
    .array-data 4
        0x9a8
        0x9cd
        0x9a7
        0x9cd
        0x9f0
    .end array-data

    .line 4926
    :array_36
    .array-data 4
        0x9a8
        0x9cd
        0x9a6
        0x9cd
        0x9f0
    .end array-data

    .line 4931
    :array_37
    .array-data 4
        0x9aa
        0x9cd
        0x9f0
    .end array-data

    .line 4937
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
    .end packed-switch

    .line 4939
    :array_38
    .array-data 4
        0xa95
        0xacd
        0xab7
    .end array-data

    .line 4944
    :array_39
    .array-data 4
        0xa9c
        0xacd
        0xa9e
    .end array-data

    .line 4949
    :array_3a
    .array-data 4
        0xab6
        0xacd
        0xab0
    .end array-data

    .line 4954
    :array_3b
    .array-data 4
        0xa95
        0xacd
        0xab0
    .end array-data

    .line 4959
    :array_3c
    .array-data 4
        0xa97
        0xacd
        0xab0
    .end array-data

    .line 4964
    :array_3d
    .array-data 4
        0xa9f
        0xacd
        0xab0
    .end array-data

    .line 4969
    :array_3e
    .array-data 4
        0xaa1
        0xacd
        0xab0
    .end array-data

    .line 4974
    :array_3f
    .array-data 4
        0xaa4
        0xacd
        0xab0
    .end array-data

    .line 4979
    :array_40
    .array-data 4
        0xaa6
        0xacd
        0xab0
    .end array-data

    .line 4984
    :array_41
    .array-data 4
        0xaa7
        0xacd
        0xab0
    .end array-data

    .line 4989
    :array_42
    .array-data 4
        0xaaa
        0xacd
        0xab0
    .end array-data

    .line 4994
    :array_43
    .array-data 4
        0xaac
        0xacd
        0xab0
    .end array-data

    .line 4999
    :array_44
    .array-data 4
        0xaad
        0xacd
        0xab0
    .end array-data

    .line 5004
    :array_45
    .array-data 4
        0xaa6
        0xacd
        0xaac
    .end array-data

    .line 5009
    :array_46
    .array-data 4
        0xaa6
        0xacd
        0xaa7
    .end array-data

    .line 5014
    :array_47
    .array-data 4
        0xab6
        0xacd
        0xa9a
    .end array-data

    .line 5019
    :array_48
    .array-data 4
        0xacd
        0xab0
    .end array-data

    .line 5024
    :array_49
    .array-data 4
        0xab0
        0xacd
    .end array-data

    .line 5029
    :array_4a
    .array-data 4
        0xa85
        0xa82
    .end array-data

    .line 5034
    :array_4b
    .array-data 4
        0xa85
        0xa83
    .end array-data

    .line 5039
    :array_4c
    .array-data 4
        0xaa4
        0xacd
        0xab0
    .end array-data

    .line 5044
    :array_4d
    .array-data 4
        0xaa6
        0xacd
        0xaae
    .end array-data

    .line 5049
    :array_4e
    .array-data 4
        0xaa6
        0xacd
        0xaaf
    .end array-data

    .line 5054
    :array_4f
    .array-data 4
        0xaa4
        0xacd
        0xaa4
    .end array-data

    .line 5059
    :array_50
    .array-data 4
        0xaa4
        0xacd
        0xa95
    .end array-data

    .line 5065
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
    .end packed-switch

    .line 5067
    :array_51
    .array-data 4
        0xc95
        0xccd
        0xcb7
    .end array-data

    .line 5072
    :array_52
    .array-data 4
        0xca4
        0xccd
        0xcb0
    .end array-data

    .line 5077
    :array_53
    .array-data 4
        0xc9c
        0xccd
        0xc9e
    .end array-data

    .line 5082
    :array_54
    .array-data 4
        0xc9c
        0xcbc
    .end array-data

    .line 5087
    :array_55
    .array-data 4
        0xc95
        0xcc3
    .end array-data

    .line 5092
    :array_56
    .array-data 4
        0xc97
        0xcc3
    .end array-data

    .line 5097
    :array_57
    .array-data 4
        0xcb9
        0xcc3
    .end array-data

    .line 5102
    :array_58
    .array-data 4
        0xca6
        0xcc3
    .end array-data

    .line 5107
    :array_59
    .array-data 4
        0xcb5
        0xcc3
    .end array-data

    .line 5112
    :array_5a
    .array-data 4
        0xcaa
        0xccd
        0xcb0
    .end array-data

    .line 5117
    :array_5b
    .array-data 4
        0xcac
        0xccd
        0xcb0
    .end array-data

    .line 5122
    :array_5c
    .array-data 4
        0xca6
        0xccd
        0xcb0
    .end array-data

    .line 5127
    :array_5d
    .array-data 4
        0xca6
        0xccd
        0xca7
    .end array-data

    .line 5132
    :array_5e
    .array-data 4
        0xcb6
        0xccd
        0xcb0
        0xcc0
    .end array-data

    .line 5137
    :array_5f
    .array-data 4
        0xc85
        0xc82
    .end array-data

    .line 5142
    :array_60
    .array-data 4
        0xc85
        0xc83
    .end array-data

    .line 5147
    :array_61
    .array-data 4
        0xc9c
        0xccd
        0xc9e
    .end array-data

    .line 5152
    :array_62
    .array-data 4
        0xc93
        0xce6
    .end array-data

    .line 5157
    :array_63
    .array-data 4
        0xcb0
        0xccd
    .end array-data

    .line 5162
    :array_64
    .array-data 4
        0xc9c
        0xcbc
        0xccd
    .end array-data

    .line 5167
    :array_65
    .array-data 4
        0xcb3
        0xccd
    .end array-data

    .line 5172
    :array_66
    .array-data 4
        0xc9c
        0xccd
        0xcbc
    .end array-data

    .line 5177
    :array_67
    .array-data 4
        0xc9f
        0xccd
        0xcb0
    .end array-data

    .line 5182
    :array_68
    .array-data 4
        0xcad
        0xccd
        0xcb0
    .end array-data

    .line 5188
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
    .end packed-switch

    .line 5190
    :array_69
    .array-data 4
        0xa28
        0xa4d
        0xa39
    .end array-data

    .line 5195
    :array_6a
    .array-data 4
        0xa32
        0xa4d
        0xa39
    .end array-data

    .line 5200
    :array_6b
    .array-data 4
        0xa5c
        0xa4d
        0xa39
    .end array-data

    .line 5205
    :array_6c
    .array-data 4
        0xa38
        0xa4d
        0xa30
    .end array-data

    .line 5210
    :array_6d
    .array-data 4
        0xa15
        0xa4d
        0xa30
    .end array-data

    .line 5215
    :array_6e
    .array-data 4
        0xa17
        0xa4d
        0xa30
    .end array-data

    .line 5220
    :array_6f
    .array-data 4
        0xa24
        0xa4d
        0xa30
    .end array-data

    .line 5225
    :array_70
    .array-data 4
        0xa26
        0xa4d
        0xa30
    .end array-data

    .line 5230
    :array_71
    .array-data 4
        0xa2a
        0xa4d
        0xa30
    .end array-data

    .line 5235
    :array_72
    .array-data 4
        0xa2e
        0xa4d
        0xa30
    .end array-data

    .line 5240
    :array_73
    .array-data 4
        0xa05
        0xa70
    .end array-data

    .line 5245
    :array_74
    .array-data 4
        0xa1f
        0xa4d
        0xa30
    .end array-data

    .line 5250
    :array_75
    .array-data 4
        0xa21
        0xa4d
        0xa30
    .end array-data

    .line 5255
    :array_76
    .array-data 4
        0xa2b
        0xa4d
        0xa30
    .end array-data

    .line 5260
    :array_77
    .array-data 4
        0xa36
        0xa4d
        0xa30
    .end array-data

    .line 5266
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
    .end packed-switch

    .line 5268
    :array_78
    .array-data 4
        0xd15
        0xd37
    .end array-data

    .line 5273
    :array_79
    .array-data 4
        0xd15
        0xd30
    .end array-data

    .line 5278
    :array_7a
    .array-data 4
        0xd17
        0xd30
    .end array-data

    .line 5283
    :array_7b
    .array-data 4
        0xd18
        0xd30
    .end array-data

    .line 5288
    :array_7c
    .array-data 4
        0xd1c
        0xd30
    .end array-data

    .line 5293
    :array_7d
    .array-data 4
        0xd1f
        0xd30
    .end array-data

    .line 5298
    :array_7e
    .array-data 4
        0xd21
        0xd30
    .end array-data

    .line 5303
    :array_7f
    .array-data 4
        0xd24
        0xd30
    .end array-data

    .line 5308
    :array_80
    .array-data 4
        0xd26
        0xd30
    .end array-data

    .line 5313
    :array_81
    .array-data 4
        0xd2a
        0xd30
    .end array-data

    .line 5318
    :array_82
    .array-data 4
        0xd2c
        0xd30
    .end array-data

    .line 5323
    :array_83
    .array-data 4
        0xd36
        0xd30
    .end array-data

    .line 5328
    :array_84
    .array-data 4
        0xd38
        0xd30
    .end array-data

    .line 5333
    :array_85
    .array-data 4
        0xd31
        0xd4d
        0xd31
    .end array-data

    .line 5338
    :array_86
    .array-data 4
        0xd19
        0xd4d
        0xd15
    .end array-data

    .line 5343
    :array_87
    .array-data 4
        0xd2e
        0xd4d
        0xd2a
    .end array-data

    .line 5348
    :array_88
    .array-data 4
        0xd15
        0xd4d
        0xd37
    .end array-data

    .line 5353
    :array_89
    .array-data 4
        0xd28
        0xd4d
        0xd26
    .end array-data

    .line 5358
    :array_8a
    .array-data 4
        0xd28
        0xd4d
        0xd24
    .end array-data

    .line 5363
    :array_8b
    .array-data 4
        0xd23
        0xd4d
        0xd21
    .end array-data

    .line 5368
    :array_8c
    .array-data 4
        0xd15
        0xd4d
        0xd30
    .end array-data

    .line 5373
    :array_8d
    .array-data 4
        0xd17
        0xd4d
        0xd30
    .end array-data

    .line 5378
    :array_8e
    .array-data 4
        0xd18
        0xd4d
        0xd30
    .end array-data

    .line 5383
    :array_8f
    .array-data 4
        0xd1c
        0xd4d
        0xd30
    .end array-data

    .line 5388
    :array_90
    .array-data 4
        0xd1f
        0xd4d
        0xd30
    .end array-data

    .line 5393
    :array_91
    .array-data 4
        0xd21
        0xd4d
        0xd30
    .end array-data

    .line 5398
    :array_92
    .array-data 4
        0xd24
        0xd4d
        0xd30
    .end array-data

    .line 5403
    :array_93
    .array-data 4
        0xd26
        0xd4d
        0xd30
    .end array-data

    .line 5408
    :array_94
    .array-data 4
        0xd2a
        0xd4d
        0xd30
    .end array-data

    .line 5413
    :array_95
    .array-data 4
        0xd2c
        0xd4d
        0xd30
    .end array-data

    .line 5418
    :array_96
    .array-data 4
        0xd36
        0xd4d
        0xd30
    .end array-data

    .line 5423
    :array_97
    .array-data 4
        0xd38
        0xd4d
        0xd30
    .end array-data

    .line 5430
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_98
    .end packed-switch

    .line 5432
    :array_98
    .array-data 4
        0xb95
        0xbcd
        0xbb7
    .end array-data

    .line 5438
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
    .end packed-switch

    .line 5440
    :array_99
    .array-data 4
        0xc15
        0xc4d
        0xc37
    .end array-data

    .line 5445
    :array_9a
    .array-data 4
        0xc15
        0xc4d
        0xc30
    .end array-data

    .line 5450
    :array_9b
    .array-data 4
        0xc16
        0xc4d
        0xc30
    .end array-data

    .line 5455
    :array_9c
    .array-data 4
        0xc17
        0xc4d
        0xc30
    .end array-data

    .line 5460
    :array_9d
    .array-data 4
        0xc18
        0xc4d
        0xc30
    .end array-data

    .line 5465
    :array_9e
    .array-data 4
        0xc1f
        0xc4d
        0xc30
    .end array-data

    .line 5470
    :array_9f
    .array-data 4
        0xc21
        0xc4d
        0xc30
    .end array-data

    .line 5475
    :array_a0
    .array-data 4
        0xc24
        0xc4d
        0xc30
    .end array-data

    .line 5480
    :array_a1
    .array-data 4
        0xc26
        0xc4d
        0xc30
    .end array-data

    .line 5485
    :array_a2
    .array-data 4
        0xc28
        0xc4d
        0xc30
    .end array-data

    .line 5490
    :array_a3
    .array-data 4
        0xc2a
        0xc4d
        0xc30
    .end array-data

    .line 5495
    :array_a4
    .array-data 4
        0xc2c
        0xc4d
        0xc30
    .end array-data

    .line 5500
    :array_a5
    .array-data 4
        0xc2d
        0xc4d
        0xc30
    .end array-data

    .line 5505
    :array_a6
    .array-data 4
        0xc35
        0xc4d
        0xc30
    .end array-data

    .line 5510
    :array_a7
    .array-data 4
        0xc36
        0xc4d
        0xc30
    .end array-data

    .line 5515
    :array_a8
    .array-data 4
        0xc38
        0xc4d
        0xc30
    .end array-data

    .line 5520
    :array_a9
    .array-data 4
        0xc05
        0xc01
    .end array-data

    .line 5525
    :array_aa
    .array-data 4
        0xc05
        0xc03
    .end array-data

    .line 5530
    :array_ab
    .array-data 4
        0xc15
        0xc4d
        0xc37
    .end array-data

    .line 5536
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
    .end packed-switch

    .line 5538
    :array_ac
    .array-data 4
        0xb15
        0xb4d
        0xb24
    .end array-data

    .line 5543
    :array_ad
    .array-data 4
        0xb15
        0xb4d
        0xb30
    .end array-data

    .line 5548
    :array_ae
    .array-data 4
        0xb15
        0xb4d
        0xb37
    .end array-data

    .line 5553
    :array_af
    .array-data 4
        0xb17
        0xb4d
        0xb27
    .end array-data

    .line 5558
    :array_b0
    .array-data 4
        0xb17
        0xb4d
        0xb28
    .end array-data

    .line 5563
    :array_b1
    .array-data 4
        0xb17
        0xb4d
        0xb2e
    .end array-data

    .line 5568
    :array_b2
    .array-data 4
        0xb17
        0xb4d
        0xb33
    .end array-data

    .line 5573
    :array_b3
    .array-data 4
        0xb18
        0xb4d
        0xb28
    .end array-data

    .line 5578
    :array_b4
    .array-data 4
        0xb19
        0xb4d
        0xb15
    .end array-data

    .line 5583
    :array_b5
    .array-data 4
        0xb19
        0xb4d
        0xb16
    .end array-data

    .line 5588
    :array_b6
    .array-data 4
        0xb19
        0xb4d
        0xb17
    .end array-data

    .line 5593
    :array_b7
    .array-data 4
        0xb19
        0xb4d
        0xb18
    .end array-data

    .line 5598
    :array_b8
    .array-data 4
        0xb1a
        0xb4d
        0xb1a
    .end array-data

    .line 5603
    :array_b9
    .array-data 4
        0xb1a
        0xb4d
        0xb1b
    .end array-data

    .line 5609
    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
    .end packed-switch

    .line 5611
    :array_ba
    .array-data 4
        0xdbb
        0xdca
    .end array-data

    .line 5616
    :array_bb
    .array-data 4
        0xd9a
        0xdca
        0xdbb
    .end array-data

    .line 5621
    :array_bc
    .array-data 4
        0xd9c
        0xdca
        0xdbb
    .end array-data

    .line 5626
    :array_bd
    .array-data 4
        0xdad
        0xdca
        0xdbb
    .end array-data

    .line 5631
    :array_be
    .array-data 4
        0xdaf
        0xdca
        0xdbb
    .end array-data

    .line 5636
    :array_bf
    .array-data 4
        0xda7
        0xdca
        0xdbb
    .end array-data

    .line 5641
    :array_c0
    .array-data 4
        0xdb5
        0xdca
        0xdbb
    .end array-data

    .line 5646
    :array_c1
    .array-data 4
        0xdb4
        0xdca
        0xdbb
    .end array-data

    .line 5651
    :array_c2
    .array-data 4
        0xdc1
        0xdca
        0xdbb
    .end array-data

    .line 5656
    :array_c3
    .array-data 4
        0xdc3
        0xdca
        0xdbb
    .end array-data

    .line 5661
    :array_c4
    .array-data 4
        0xd9a
        0xdca
        0x200d
        0xdbb
    .end array-data

    .line 5666
    :array_c5
    .array-data 4
        0xd9c
        0xdca
        0x200d
        0xdbb
    .end array-data

    .line 5671
    :array_c6
    .array-data 4
        0xdad
        0xdca
        0x200d
        0xdbb
    .end array-data

    .line 5676
    :array_c7
    .array-data 4
        0xdaf
        0xdca
        0x200d
        0xdbb
    .end array-data

    .line 5681
    :array_c8
    .array-data 4
        0xda7
        0xdca
        0x200d
        0xdbb
    .end array-data

    .line 5686
    :array_c9
    .array-data 4
        0xdb5
        0xdca
        0x200d
        0xdbb
    .end array-data

    .line 5691
    :array_ca
    .array-data 4
        0xdb4
        0xdca
        0x200d
        0xdbb
    .end array-data

    .line 5696
    :array_cb
    .array-data 4
        0xdc1
        0xdca
        0x200d
        0xdbb
    .end array-data

    .line 5701
    :array_cc
    .array-data 4
        0xdc3
        0xdca
        0x200d
        0xdbb
    .end array-data
.end method

.method private getToggledKeyCodeForSmallLcd(I)I
    .locals 7
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 6400
    move v1, p1

    .line 6401
    .local v1, "toggledKeyCode":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 6402
    .local v0, "lang":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6403
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHoldKeyCodeForSmallLcd(I)I

    move-result v1

    .line 7088
    :cond_0
    :goto_0
    return v1

    .line 6405
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_2

    const/high16 v2, 0x68690000

    if-ne v0, v2, :cond_2

    .line 6406
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 6409
    :pswitch_1
    const/16 v1, 0x926

    .line 6410
    goto :goto_0

    .line 6412
    :pswitch_2
    const/16 v1, 0x927

    .line 6413
    goto :goto_0

    .line 6415
    :pswitch_3
    const/16 v1, 0x928

    .line 6416
    goto :goto_0

    .line 6418
    :pswitch_4
    const/16 v1, 0x92a

    .line 6419
    goto :goto_0

    .line 6421
    :pswitch_5
    const/16 v1, 0x92b

    .line 6422
    goto :goto_0

    .line 6424
    :pswitch_6
    const/16 v1, 0x92c

    .line 6425
    goto :goto_0

    .line 6427
    :pswitch_7
    const/16 v1, 0x92d

    .line 6428
    goto :goto_0

    .line 6430
    :pswitch_8
    const/16 v1, 0x92e

    .line 6431
    goto :goto_0

    .line 6433
    :pswitch_9
    const/16 v1, 0x92f

    .line 6434
    goto :goto_0

    .line 6436
    :pswitch_a
    const/16 v1, 0x930

    .line 6437
    goto :goto_0

    .line 6439
    :pswitch_b
    const/16 v1, 0x932

    .line 6440
    goto :goto_0

    .line 6442
    :pswitch_c
    const/16 v1, 0x935

    .line 6443
    goto :goto_0

    .line 6445
    :pswitch_d
    const/16 v1, 0x936

    .line 6446
    goto :goto_0

    .line 6448
    :pswitch_e
    const/16 v1, 0x937

    .line 6449
    goto :goto_0

    .line 6451
    :pswitch_f
    const/16 v1, 0x938

    .line 6452
    goto :goto_0

    .line 6454
    :pswitch_10
    const/16 v1, 0x939

    goto :goto_0

    .line 6457
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_3

    const/high16 v2, 0x6e650000

    if-ne v0, v2, :cond_3

    .line 6458
    packed-switch p1, :pswitch_data_1

    :pswitch_11
    goto :goto_0

    .line 6461
    :pswitch_12
    const/16 v1, 0x926

    .line 6462
    goto :goto_0

    .line 6464
    :pswitch_13
    const/16 v1, 0x927

    .line 6465
    goto :goto_0

    .line 6467
    :pswitch_14
    const/16 v1, 0x928

    .line 6468
    goto :goto_0

    .line 6470
    :pswitch_15
    const/16 v1, 0x92a

    .line 6471
    goto :goto_0

    .line 6473
    :pswitch_16
    const/16 v1, 0x92b

    .line 6474
    goto :goto_0

    .line 6476
    :pswitch_17
    const/16 v1, 0x92c

    .line 6477
    goto :goto_0

    .line 6479
    :pswitch_18
    const/16 v1, 0x92d

    .line 6480
    goto :goto_0

    .line 6482
    :pswitch_19
    const/16 v1, 0x92e

    .line 6483
    goto :goto_0

    .line 6485
    :pswitch_1a
    const/16 v1, 0x92f

    .line 6486
    goto :goto_0

    .line 6488
    :pswitch_1b
    const/16 v1, 0x930

    .line 6489
    goto :goto_0

    .line 6491
    :pswitch_1c
    const/16 v1, 0x932

    .line 6492
    goto :goto_0

    .line 6494
    :pswitch_1d
    const/16 v1, 0x935

    .line 6495
    goto :goto_0

    .line 6497
    :pswitch_1e
    const/16 v1, 0x936

    .line 6498
    goto :goto_0

    .line 6500
    :pswitch_1f
    const/16 v1, 0x937

    .line 6501
    goto :goto_0

    .line 6503
    :pswitch_20
    const/16 v1, 0x938

    .line 6504
    goto :goto_0

    .line 6506
    :pswitch_21
    const/16 v1, 0x939

    goto :goto_0

    .line 6509
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_4

    const/high16 v2, 0x6d720000

    if-ne v0, v2, :cond_4

    .line 6510
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 6513
    :pswitch_22
    const/16 v1, 0x926

    .line 6514
    goto/16 :goto_0

    .line 6516
    :pswitch_23
    const/16 v1, 0x927

    .line 6517
    goto/16 :goto_0

    .line 6519
    :pswitch_24
    const/16 v1, 0x928

    .line 6520
    goto/16 :goto_0

    .line 6522
    :pswitch_25
    const/16 v1, 0x92a

    .line 6523
    goto/16 :goto_0

    .line 6525
    :pswitch_26
    const/16 v1, 0x92b

    .line 6526
    goto/16 :goto_0

    .line 6528
    :pswitch_27
    const/16 v1, 0x92c

    .line 6529
    goto/16 :goto_0

    .line 6531
    :pswitch_28
    const/16 v1, 0x92d

    .line 6532
    goto/16 :goto_0

    .line 6534
    :pswitch_29
    const/16 v1, 0x92e

    .line 6535
    goto/16 :goto_0

    .line 6537
    :pswitch_2a
    const/16 v1, 0x92f

    .line 6538
    goto/16 :goto_0

    .line 6540
    :pswitch_2b
    const/16 v1, 0x930

    .line 6541
    goto/16 :goto_0

    .line 6543
    :pswitch_2c
    const/16 v1, 0x932

    .line 6544
    goto/16 :goto_0

    .line 6546
    :pswitch_2d
    const/16 v1, 0x933

    .line 6547
    goto/16 :goto_0

    .line 6549
    :pswitch_2e
    const/16 v1, 0x935

    .line 6550
    goto/16 :goto_0

    .line 6552
    :pswitch_2f
    const/16 v1, 0x936

    .line 6553
    goto/16 :goto_0

    .line 6555
    :pswitch_30
    const/16 v1, 0x937

    .line 6556
    goto/16 :goto_0

    .line 6558
    :pswitch_31
    const/16 v1, 0x938

    .line 6559
    goto/16 :goto_0

    .line 6561
    :pswitch_32
    const/16 v1, 0x939

    goto/16 :goto_0

    .line 6564
    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_5

    const/high16 v2, 0x626e0000

    if-ne v0, v2, :cond_5

    .line 6566
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    .line 6568
    :pswitch_33
    const/16 v1, 0x9a5

    .line 6569
    goto/16 :goto_0

    .line 6571
    :pswitch_34
    const/16 v1, 0x9a6

    .line 6572
    goto/16 :goto_0

    .line 6574
    :pswitch_35
    const/16 v1, 0x9a7

    .line 6575
    goto/16 :goto_0

    .line 6577
    :pswitch_36
    const/16 v1, 0x9a8

    .line 6578
    goto/16 :goto_0

    .line 6580
    :pswitch_37
    const/16 v1, 0x9aa

    .line 6581
    goto/16 :goto_0

    .line 6583
    :pswitch_38
    const/16 v1, 0x9ab

    .line 6584
    goto/16 :goto_0

    .line 6586
    :pswitch_39
    const/16 v1, 0x9ac

    .line 6587
    goto/16 :goto_0

    .line 6589
    :pswitch_3a
    const/16 v1, 0x9ad

    .line 6590
    goto/16 :goto_0

    .line 6592
    :pswitch_3b
    const/16 v1, 0x9ae

    .line 6593
    goto/16 :goto_0

    .line 6595
    :pswitch_3c
    const/16 v1, 0x9af

    .line 6596
    goto/16 :goto_0

    .line 6598
    :pswitch_3d
    const/16 v1, 0x9b0

    .line 6599
    goto/16 :goto_0

    .line 6601
    :pswitch_3e
    const/16 v1, 0x9b2

    .line 6602
    goto/16 :goto_0

    .line 6604
    :pswitch_3f
    const/16 v1, 0x9b6

    .line 6605
    goto/16 :goto_0

    .line 6607
    :pswitch_40
    const/16 v1, 0x9b7

    .line 6608
    goto/16 :goto_0

    .line 6610
    :pswitch_41
    const/16 v1, 0x9b8

    .line 6611
    goto/16 :goto_0

    .line 6613
    :pswitch_42
    const/16 v1, 0x9b9

    goto/16 :goto_0

    .line 6616
    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 6617
    packed-switch p1, :pswitch_data_4

    :pswitch_43
    goto/16 :goto_0

    .line 6620
    :pswitch_44
    const/16 v1, 0xaa7

    .line 6621
    goto/16 :goto_0

    .line 6623
    :pswitch_45
    const/16 v1, 0xaa8

    .line 6624
    goto/16 :goto_0

    .line 6626
    :pswitch_46
    const/16 v1, 0xaaa

    .line 6627
    goto/16 :goto_0

    .line 6629
    :pswitch_47
    const/16 v1, 0xaab

    .line 6630
    goto/16 :goto_0

    .line 6632
    :pswitch_48
    const/16 v1, 0xaac

    .line 6633
    goto/16 :goto_0

    .line 6635
    :pswitch_49
    const/16 v1, 0xaad

    .line 6636
    goto/16 :goto_0

    .line 6638
    :pswitch_4a
    const/16 v1, 0xaae

    .line 6639
    goto/16 :goto_0

    .line 6641
    :pswitch_4b
    const/16 v1, 0xaaf

    .line 6642
    goto/16 :goto_0

    .line 6644
    :pswitch_4c
    const/16 v1, 0xab0

    .line 6645
    goto/16 :goto_0

    .line 6647
    :pswitch_4d
    const/16 v1, 0xab2

    .line 6648
    goto/16 :goto_0

    .line 6650
    :pswitch_4e
    const/16 v1, 0xab5

    .line 6651
    goto/16 :goto_0

    .line 6653
    :pswitch_4f
    const/16 v1, 0xab6

    .line 6654
    goto/16 :goto_0

    .line 6656
    :pswitch_50
    const/16 v1, 0xab7

    .line 6657
    goto/16 :goto_0

    .line 6659
    :pswitch_51
    const/16 v1, 0xab8

    .line 6660
    goto/16 :goto_0

    .line 6662
    :pswitch_52
    const/16 v1, 0xab9

    .line 6663
    goto/16 :goto_0

    .line 6665
    :pswitch_53
    const/16 v1, 0xab3

    goto/16 :goto_0

    .line 6668
    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 6669
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 6675
    :sswitch_0
    const/16 v1, 0xa22

    .line 6676
    goto/16 :goto_0

    .line 6672
    :sswitch_1
    const/16 v1, 0xa21

    .line 6673
    goto/16 :goto_0

    .line 6678
    :sswitch_2
    const/16 v1, 0xa23

    .line 6679
    goto/16 :goto_0

    .line 6681
    :sswitch_3
    const/16 v1, 0xa24

    .line 6682
    goto/16 :goto_0

    .line 6684
    :sswitch_4
    const/16 v1, 0xa25

    .line 6685
    goto/16 :goto_0

    .line 6687
    :sswitch_5
    const/16 v1, 0xa26

    .line 6688
    goto/16 :goto_0

    .line 6690
    :sswitch_6
    const/16 v1, 0xa27

    .line 6691
    goto/16 :goto_0

    .line 6693
    :sswitch_7
    const/16 v1, 0xa28

    .line 6694
    goto/16 :goto_0

    .line 6696
    :sswitch_8
    const/16 v1, 0xa2a

    .line 6697
    goto/16 :goto_0

    .line 6699
    :sswitch_9
    const/16 v1, 0xa2b

    .line 6700
    goto/16 :goto_0

    .line 6702
    :sswitch_a
    const/16 v1, 0xa2c

    .line 6703
    goto/16 :goto_0

    .line 6705
    :sswitch_b
    const/16 v1, 0xa2d

    .line 6706
    goto/16 :goto_0

    .line 6708
    :sswitch_c
    const/16 v1, 0xa2e

    .line 6709
    goto/16 :goto_0

    .line 6711
    :sswitch_d
    const/16 v1, 0xa2f

    .line 6712
    goto/16 :goto_0

    .line 6714
    :sswitch_e
    const/16 v1, 0xa30

    .line 6715
    goto/16 :goto_0

    .line 6717
    :sswitch_f
    const/16 v1, 0xa32

    .line 6718
    goto/16 :goto_0

    .line 6720
    :sswitch_10
    const/16 v1, 0xa35

    goto/16 :goto_0

    .line 6723
    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 6724
    packed-switch p1, :pswitch_data_5

    :pswitch_54
    goto/16 :goto_0

    .line 6727
    :pswitch_55
    const/16 v1, 0xbb2

    .line 6728
    goto/16 :goto_0

    .line 6730
    :pswitch_56
    const/16 v1, 0xbb5

    .line 6731
    goto/16 :goto_0

    .line 6733
    :pswitch_57
    const/16 v1, 0xbb4

    .line 6734
    goto/16 :goto_0

    .line 6736
    :pswitch_58
    const/16 v1, 0xbb3

    .line 6737
    goto/16 :goto_0

    .line 6739
    :pswitch_59
    const/16 v1, 0xbb1

    .line 6740
    goto/16 :goto_0

    .line 6742
    :pswitch_5a
    const/16 v1, 0xba9

    .line 6743
    goto/16 :goto_0

    .line 6745
    :pswitch_5b
    const/16 v1, 0xb9c

    .line 6746
    goto/16 :goto_0

    .line 6748
    :pswitch_5c
    const/16 v1, 0xbb7

    .line 6749
    goto/16 :goto_0

    .line 6751
    :pswitch_5d
    const/16 v1, 0xb95

    .line 6752
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6753
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6756
    :pswitch_5e
    const/16 v1, 0xbb9

    .line 6757
    goto/16 :goto_0

    .line 6759
    :pswitch_5f
    const/16 v1, 0xbb8

    .line 6760
    goto/16 :goto_0

    .line 6762
    :pswitch_60
    const/16 v1, -0xff

    goto/16 :goto_0

    .line 6765
    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    .line 6766
    packed-switch p1, :pswitch_data_6

    :pswitch_61
    goto/16 :goto_0

    .line 6769
    :pswitch_62
    const/16 v1, 0xca7

    .line 6770
    goto/16 :goto_0

    .line 6772
    :pswitch_63
    const/16 v1, 0xca8

    .line 6773
    goto/16 :goto_0

    .line 6775
    :pswitch_64
    const/16 v1, 0xcaa

    .line 6776
    goto/16 :goto_0

    .line 6778
    :pswitch_65
    const/16 v1, 0xcab

    .line 6779
    goto/16 :goto_0

    .line 6781
    :pswitch_66
    const/16 v1, 0xcac

    .line 6782
    goto/16 :goto_0

    .line 6784
    :pswitch_67
    const/16 v1, 0xcad

    .line 6785
    goto/16 :goto_0

    .line 6787
    :pswitch_68
    const/16 v1, 0xcae

    .line 6788
    goto/16 :goto_0

    .line 6790
    :pswitch_69
    const/16 v1, 0xcaf

    .line 6791
    goto/16 :goto_0

    .line 6793
    :pswitch_6a
    const/16 v1, 0xcb0

    .line 6794
    goto/16 :goto_0

    .line 6796
    :pswitch_6b
    const/16 v1, 0xcb2

    .line 6797
    goto/16 :goto_0

    .line 6799
    :pswitch_6c
    const/16 v1, 0xcb5

    .line 6800
    goto/16 :goto_0

    .line 6802
    :pswitch_6d
    const/16 v1, 0xcb6

    .line 6803
    goto/16 :goto_0

    .line 6805
    :pswitch_6e
    const/16 v1, 0xcb7

    .line 6806
    goto/16 :goto_0

    .line 6808
    :pswitch_6f
    const/16 v1, 0xcb8

    .line 6809
    goto/16 :goto_0

    .line 6811
    :pswitch_70
    const/16 v1, 0xcb9

    .line 6812
    goto/16 :goto_0

    .line 6814
    :pswitch_71
    const/16 v1, 0xcb3

    goto/16 :goto_0

    .line 6817
    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 6818
    packed-switch p1, :pswitch_data_7

    goto/16 :goto_0

    .line 6821
    :pswitch_72
    const/16 v1, 0xd26

    .line 6822
    goto/16 :goto_0

    .line 6824
    :pswitch_73
    const/16 v1, 0xd27

    .line 6825
    goto/16 :goto_0

    .line 6827
    :pswitch_74
    const/16 v1, 0xd28

    .line 6828
    goto/16 :goto_0

    .line 6830
    :pswitch_75
    const/16 v1, 0xd2a

    .line 6831
    goto/16 :goto_0

    .line 6833
    :pswitch_76
    const/16 v1, 0xd2b

    .line 6834
    goto/16 :goto_0

    .line 6836
    :pswitch_77
    const/16 v1, 0xd2c

    .line 6837
    goto/16 :goto_0

    .line 6839
    :pswitch_78
    const/16 v1, 0xd2d

    .line 6840
    goto/16 :goto_0

    .line 6842
    :pswitch_79
    const/16 v1, 0xd2e

    .line 6843
    goto/16 :goto_0

    .line 6845
    :pswitch_7a
    const/16 v1, 0xd2f

    .line 6846
    goto/16 :goto_0

    .line 6848
    :pswitch_7b
    const/16 v1, 0xd30

    .line 6849
    goto/16 :goto_0

    .line 6851
    :pswitch_7c
    const/16 v1, 0xd32

    .line 6852
    goto/16 :goto_0

    .line 6854
    :pswitch_7d
    const/16 v1, 0xd33

    .line 6855
    goto/16 :goto_0

    .line 6857
    :pswitch_7e
    const/16 v1, 0xd35

    .line 6858
    goto/16 :goto_0

    .line 6860
    :pswitch_7f
    const/16 v1, 0xd36

    .line 6861
    goto/16 :goto_0

    .line 6863
    :pswitch_80
    const/16 v1, 0xd37

    .line 6864
    goto/16 :goto_0

    .line 6866
    :pswitch_81
    const/16 v1, 0xd38

    .line 6867
    goto/16 :goto_0

    .line 6869
    :pswitch_82
    const/16 v1, 0xd39

    goto/16 :goto_0

    .line 6872
    :cond_a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 6873
    packed-switch p1, :pswitch_data_8

    :pswitch_83
    goto/16 :goto_0

    .line 6876
    :pswitch_84
    const/16 v1, 0xc27

    .line 6877
    goto/16 :goto_0

    .line 6879
    :pswitch_85
    const/16 v1, 0xc28

    .line 6880
    goto/16 :goto_0

    .line 6882
    :pswitch_86
    const/16 v1, 0xc2a

    .line 6883
    goto/16 :goto_0

    .line 6885
    :pswitch_87
    const/16 v1, 0xc2b

    .line 6886
    goto/16 :goto_0

    .line 6888
    :pswitch_88
    const/16 v1, 0xc2c

    .line 6889
    goto/16 :goto_0

    .line 6891
    :pswitch_89
    const/16 v1, 0xc2d

    .line 6892
    goto/16 :goto_0

    .line 6894
    :pswitch_8a
    const/16 v1, 0xc2e

    .line 6895
    goto/16 :goto_0

    .line 6897
    :pswitch_8b
    const/16 v1, 0xc2f

    .line 6898
    goto/16 :goto_0

    .line 6900
    :pswitch_8c
    const/16 v1, 0xc30

    .line 6901
    goto/16 :goto_0

    .line 6903
    :pswitch_8d
    const/16 v1, 0xc32

    .line 6904
    goto/16 :goto_0

    .line 6906
    :pswitch_8e
    const/16 v1, 0xc33

    .line 6907
    goto/16 :goto_0

    .line 6909
    :pswitch_8f
    const/16 v1, 0xc35

    .line 6910
    goto/16 :goto_0

    .line 6912
    :pswitch_90
    const/16 v1, 0xc36

    .line 6913
    goto/16 :goto_0

    .line 6915
    :pswitch_91
    const/16 v1, 0xc37

    .line 6916
    goto/16 :goto_0

    .line 6918
    :pswitch_92
    const/16 v1, 0xc38

    .line 6919
    goto/16 :goto_0

    .line 6921
    :pswitch_93
    const/16 v1, 0xc39

    goto/16 :goto_0

    .line 6924
    :cond_b
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_c

    const/high16 v2, 0x61730000

    if-ne v0, v2, :cond_c

    .line 6926
    packed-switch p1, :pswitch_data_9

    goto/16 :goto_0

    .line 6928
    :pswitch_94
    const/16 v1, 0x9a6

    .line 6929
    goto/16 :goto_0

    .line 6931
    :pswitch_95
    const/16 v1, 0x9a7

    .line 6932
    goto/16 :goto_0

    .line 6934
    :pswitch_96
    const/16 v1, 0x9a8

    .line 6935
    goto/16 :goto_0

    .line 6937
    :pswitch_97
    const/16 v1, 0x9aa

    .line 6938
    goto/16 :goto_0

    .line 6940
    :pswitch_98
    const/16 v1, 0x9ab

    .line 6941
    goto/16 :goto_0

    .line 6943
    :pswitch_99
    const/16 v1, 0x9ac

    .line 6944
    goto/16 :goto_0

    .line 6946
    :pswitch_9a
    const/16 v1, 0x9ad

    .line 6947
    goto/16 :goto_0

    .line 6949
    :pswitch_9b
    const/16 v1, 0x9ae

    .line 6950
    goto/16 :goto_0

    .line 6952
    :pswitch_9c
    const/16 v1, 0x9af

    .line 6953
    goto/16 :goto_0

    .line 6955
    :pswitch_9d
    const/16 v1, 0x9f0

    .line 6956
    goto/16 :goto_0

    .line 6958
    :pswitch_9e
    const/16 v1, 0x9b2

    .line 6959
    goto/16 :goto_0

    .line 6961
    :pswitch_9f
    const/16 v1, 0x9f1

    .line 6962
    goto/16 :goto_0

    .line 6964
    :pswitch_a0
    const/16 v1, 0x9b6

    .line 6965
    goto/16 :goto_0

    .line 6967
    :pswitch_a1
    const/16 v1, 0x9b7

    .line 6968
    goto/16 :goto_0

    .line 6970
    :pswitch_a2
    const/16 v1, 0x9b8

    .line 6971
    goto/16 :goto_0

    .line 6973
    :pswitch_a3
    const/16 v1, 0x9b9

    .line 6974
    goto/16 :goto_0

    .line 6976
    :pswitch_a4
    const/16 v1, 0x9df

    goto/16 :goto_0

    .line 6979
    :cond_c
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    .line 6981
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    .line 6983
    :sswitch_11
    const/16 v1, 0xb26

    .line 6984
    goto/16 :goto_0

    .line 6986
    :sswitch_12
    const/16 v1, 0xb27

    .line 6987
    goto/16 :goto_0

    .line 6989
    :sswitch_13
    const/16 v1, 0xb28

    .line 6990
    goto/16 :goto_0

    .line 6992
    :sswitch_14
    const/16 v1, 0xb29

    .line 6993
    goto/16 :goto_0

    .line 6995
    :sswitch_15
    const/16 v1, 0xb2a

    .line 6996
    goto/16 :goto_0

    .line 6998
    :sswitch_16
    const/16 v1, 0xb2b

    .line 6999
    goto/16 :goto_0

    .line 7001
    :sswitch_17
    const/16 v1, 0xb2c

    .line 7002
    goto/16 :goto_0

    .line 7004
    :sswitch_18
    const/16 v1, 0xb2d

    .line 7005
    goto/16 :goto_0

    .line 7007
    :sswitch_19
    const/16 v1, 0xb2e

    .line 7008
    goto/16 :goto_0

    .line 7010
    :sswitch_1a
    const/16 v1, 0xb30

    .line 7011
    goto/16 :goto_0

    .line 7013
    :sswitch_1b
    const/16 v1, 0xb33

    .line 7014
    goto/16 :goto_0

    .line 7016
    :sswitch_1c
    const/16 v1, 0xb32

    .line 7017
    goto/16 :goto_0

    .line 7019
    :sswitch_1d
    const/16 v1, 0xb36

    .line 7020
    goto/16 :goto_0

    .line 7022
    :sswitch_1e
    const/16 v1, 0xb37

    .line 7023
    goto/16 :goto_0

    .line 7025
    :sswitch_1f
    const/16 v1, 0xb38

    .line 7026
    goto/16 :goto_0

    .line 7028
    :sswitch_20
    const/16 v1, 0xb39

    goto/16 :goto_0

    .line 7031
    :cond_d
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 7033
    packed-switch p1, :pswitch_data_a

    :pswitch_a5
    goto/16 :goto_0

    .line 7035
    :pswitch_a6
    const/16 v1, 0xdb0

    .line 7036
    goto/16 :goto_0

    .line 7038
    :pswitch_a7
    const/16 v1, 0xdb1

    .line 7039
    goto/16 :goto_0

    .line 7041
    :pswitch_a8
    const/16 v1, 0xdb4

    .line 7042
    goto/16 :goto_0

    .line 7044
    :pswitch_a9
    const/16 v1, 0xdb5

    .line 7045
    goto/16 :goto_0

    .line 7047
    :pswitch_aa
    const/16 v1, 0xdb6

    .line 7048
    goto/16 :goto_0

    .line 7050
    :pswitch_ab
    const/16 v1, 0xdb7

    .line 7051
    goto/16 :goto_0

    .line 7053
    :pswitch_ac
    const/16 v1, 0xdb8

    .line 7054
    goto/16 :goto_0

    .line 7056
    :pswitch_ad
    const/16 v1, 0xdba

    .line 7057
    goto/16 :goto_0

    .line 7059
    :pswitch_ae
    const/16 v1, 0xdbb

    .line 7060
    goto/16 :goto_0

    .line 7062
    :pswitch_af
    const/16 v1, 0xdbd

    .line 7063
    goto/16 :goto_0

    .line 7065
    :pswitch_b0
    const/16 v1, 0xdc0

    .line 7066
    goto/16 :goto_0

    .line 7068
    :pswitch_b1
    const/16 v1, 0xdc1

    .line 7069
    goto/16 :goto_0

    .line 7071
    :pswitch_b2
    const/16 v1, 0xdc2

    .line 7072
    goto/16 :goto_0

    .line 7074
    :pswitch_b3
    const/16 v1, 0xdc3

    .line 7075
    goto/16 :goto_0

    .line 7077
    :pswitch_b4
    const/16 v1, 0xdc4

    .line 7078
    goto/16 :goto_0

    .line 7080
    :pswitch_b5
    const/16 v1, 0xdc5

    .line 7081
    goto/16 :goto_0

    .line 7083
    :pswitch_b6
    const/16 v1, 0xdc6

    goto/16 :goto_0

    .line 6406
    nop

    :pswitch_data_0
    .packed-switch 0x915
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 6458
    :pswitch_data_1
    .packed-switch 0x915
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 6510
    :pswitch_data_2
    .packed-switch 0x915
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    .line 6566
    :pswitch_data_3
    .packed-switch 0x995
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    .line 6617
    :pswitch_data_4
    .packed-switch 0xa95
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_43
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_43
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    .line 6669
    :sswitch_data_0
    .sparse-switch
        0xa05 -> :sswitch_0
        0xa15 -> :sswitch_5
        0xa16 -> :sswitch_6
        0xa17 -> :sswitch_7
        0xa18 -> :sswitch_8
        0xa19 -> :sswitch_9
        0xa1a -> :sswitch_a
        0xa1b -> :sswitch_b
        0xa1c -> :sswitch_c
        0xa1d -> :sswitch_d
        0xa1e -> :sswitch_e
        0xa1f -> :sswitch_f
        0xa20 -> :sswitch_10
        0xa38 -> :sswitch_3
        0xa39 -> :sswitch_4
        0xa72 -> :sswitch_2
        0xa73 -> :sswitch_1
    .end sparse-switch

    .line 6724
    :pswitch_data_5
    .packed-switch 0xb95
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_56
        :pswitch_57
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_58
        :pswitch_59
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5a
        :pswitch_5b
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5c
        :pswitch_54
        :pswitch_5d
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
    .end packed-switch

    .line 6766
    :pswitch_data_6
    .packed-switch 0xc95
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_61
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_61
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    .line 6818
    :pswitch_data_7
    .packed-switch 0xd15
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
    .end packed-switch

    .line 6873
    :pswitch_data_8
    .packed-switch 0xc15
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_83
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_83
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
    .end packed-switch

    .line 6926
    :pswitch_data_9
    .packed-switch 0x995
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
    .end packed-switch

    .line 6981
    :sswitch_data_1
    .sparse-switch
        0xb15 -> :sswitch_11
        0xb16 -> :sswitch_12
        0xb17 -> :sswitch_13
        0xb18 -> :sswitch_14
        0xb19 -> :sswitch_15
        0xb1a -> :sswitch_16
        0xb1b -> :sswitch_17
        0xb1c -> :sswitch_18
        0xb1d -> :sswitch_19
        0xb1f -> :sswitch_1a
        0xb20 -> :sswitch_1b
        0xb23 -> :sswitch_1e
        0xb24 -> :sswitch_1f
        0xb25 -> :sswitch_20
        0xb5c -> :sswitch_1c
        0xb5d -> :sswitch_1d
    .end sparse-switch

    .line 7033
    :pswitch_data_a
    .packed-switch 0xd9a
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_a5
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_a5
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
    .end packed-switch
.end method

.method private getToggledKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3914
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3915
    .local v0, "code":I
    move-object v2, p1

    .line 3916
    .local v2, "toggledLabel":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e5553

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 3917
    .local v1, "lang":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3918
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHoldKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4597
    :cond_0
    :goto_0
    return-object v2

    .line 3920
    :cond_1
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_2

    const/high16 v3, 0x68690000

    if-ne v1, v3, :cond_2

    .line 3921
    packed-switch v0, :pswitch_data_0

    .line 3971
    :cond_2
    :goto_1
    :pswitch_0
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_3

    const/high16 v3, 0x6e650000

    if-ne v1, v3, :cond_3

    .line 3972
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 3974
    :pswitch_2
    const-string v2, "\u0926"

    .line 3975
    goto :goto_0

    .line 3923
    :pswitch_3
    const-string v2, "\u0926"

    .line 3924
    goto :goto_1

    .line 3926
    :pswitch_4
    const-string v2, "\u0927"

    .line 3927
    goto :goto_1

    .line 3929
    :pswitch_5
    const-string v2, "\u0928"

    .line 3930
    goto :goto_1

    .line 3932
    :pswitch_6
    const-string v2, "\u092a"

    .line 3933
    goto :goto_1

    .line 3935
    :pswitch_7
    const-string v2, "\u092b"

    .line 3936
    goto :goto_1

    .line 3938
    :pswitch_8
    const-string v2, "\u092c"

    .line 3939
    goto :goto_1

    .line 3941
    :pswitch_9
    const-string v2, "\u092d"

    .line 3942
    goto :goto_1

    .line 3944
    :pswitch_a
    const-string v2, "\u092e"

    .line 3945
    goto :goto_1

    .line 3947
    :pswitch_b
    const-string v2, "\u092f"

    .line 3948
    goto :goto_1

    .line 3950
    :pswitch_c
    const-string v2, "\u0930"

    .line 3951
    goto :goto_1

    .line 3953
    :pswitch_d
    const-string v2, "\u0932"

    .line 3954
    goto :goto_1

    .line 3956
    :pswitch_e
    const-string v2, "\u0935"

    .line 3957
    goto :goto_1

    .line 3959
    :pswitch_f
    const-string v2, "\u0936"

    .line 3960
    goto :goto_1

    .line 3962
    :pswitch_10
    const-string v2, "\u0937"

    .line 3963
    goto :goto_1

    .line 3965
    :pswitch_11
    const-string v2, "\u0938"

    .line 3966
    goto :goto_1

    .line 3968
    :pswitch_12
    const-string v2, "\u0939"

    goto :goto_1

    .line 3977
    :pswitch_13
    const-string v2, "\u0927"

    .line 3978
    goto :goto_0

    .line 3980
    :pswitch_14
    const-string v2, "\u0928"

    .line 3981
    goto :goto_0

    .line 3983
    :pswitch_15
    const-string v2, "\u092a"

    .line 3984
    goto :goto_0

    .line 3986
    :pswitch_16
    const-string v2, "\u092b"

    .line 3987
    goto :goto_0

    .line 3989
    :pswitch_17
    const-string v2, "\u092c"

    .line 3990
    goto :goto_0

    .line 3992
    :pswitch_18
    const-string v2, "\u092d"

    .line 3993
    goto :goto_0

    .line 3995
    :pswitch_19
    const-string v2, "\u092e"

    .line 3996
    goto :goto_0

    .line 3998
    :pswitch_1a
    const-string v2, "\u092f"

    .line 3999
    goto :goto_0

    .line 4001
    :pswitch_1b
    const-string v2, "\u0930"

    .line 4002
    goto :goto_0

    .line 4004
    :pswitch_1c
    const-string v2, "\u0932"

    .line 4005
    goto :goto_0

    .line 4007
    :pswitch_1d
    const-string v2, "\u0935"

    .line 4008
    goto :goto_0

    .line 4010
    :pswitch_1e
    const-string v2, "\u0936"

    .line 4011
    goto :goto_0

    .line 4013
    :pswitch_1f
    const-string v2, "\u0937"

    .line 4014
    goto :goto_0

    .line 4016
    :pswitch_20
    const-string v2, "\u0938"

    .line 4017
    goto :goto_0

    .line 4019
    :pswitch_21
    const-string v2, "\u0939"

    goto :goto_0

    .line 4022
    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v6, :cond_4

    const/high16 v3, 0x6d720000

    if-ne v1, v3, :cond_4

    .line 4023
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 4025
    :pswitch_22
    const-string v2, "\u0926"

    .line 4026
    goto/16 :goto_0

    .line 4028
    :pswitch_23
    const-string v2, "\u0927"

    .line 4029
    goto/16 :goto_0

    .line 4031
    :pswitch_24
    const-string v2, "\u0928"

    .line 4032
    goto/16 :goto_0

    .line 4034
    :pswitch_25
    const-string v2, "\u092a"

    .line 4035
    goto/16 :goto_0

    .line 4037
    :pswitch_26
    const-string v2, "\u092b"

    .line 4038
    goto/16 :goto_0

    .line 4040
    :pswitch_27
    const-string v2, "\u092c"

    .line 4041
    goto/16 :goto_0

    .line 4043
    :pswitch_28
    const-string v2, "\u092d"

    .line 4044
    goto/16 :goto_0

    .line 4046
    :pswitch_29
    const-string v2, "\u092e"

    .line 4047
    goto/16 :goto_0

    .line 4049
    :pswitch_2a
    const-string v2, "\u092f"

    .line 4050
    goto/16 :goto_0

    .line 4052
    :pswitch_2b
    const-string v2, "\u0930"

    .line 4053
    goto/16 :goto_0

    .line 4055
    :pswitch_2c
    const-string v2, "\u0932"

    .line 4056
    goto/16 :goto_0

    .line 4058
    :pswitch_2d
    const-string v2, "\u0933"

    .line 4059
    goto/16 :goto_0

    .line 4061
    :pswitch_2e
    const-string v2, "\u0935"

    .line 4062
    goto/16 :goto_0

    .line 4064
    :pswitch_2f
    const-string v2, "\u0936"

    .line 4065
    goto/16 :goto_0

    .line 4067
    :pswitch_30
    const-string v2, "\u0937"

    .line 4068
    goto/16 :goto_0

    .line 4070
    :pswitch_31
    const-string v2, "\u0938"

    .line 4071
    goto/16 :goto_0

    .line 4073
    :pswitch_32
    const-string v2, "\u0939"

    goto/16 :goto_0

    .line 4076
    :cond_4
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_5

    const/high16 v3, 0x626e0000

    if-ne v1, v3, :cond_5

    .line 4077
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 4080
    :pswitch_33
    const-string v2, "\u09a5"

    .line 4081
    goto/16 :goto_0

    .line 4083
    :pswitch_34
    const-string v2, "\u09a6"

    .line 4084
    goto/16 :goto_0

    .line 4086
    :pswitch_35
    const-string v2, "\u09a7"

    .line 4087
    goto/16 :goto_0

    .line 4089
    :pswitch_36
    const-string v2, "\u09a8"

    .line 4090
    goto/16 :goto_0

    .line 4092
    :pswitch_37
    const-string v2, "\u09aa"

    .line 4093
    goto/16 :goto_0

    .line 4095
    :pswitch_38
    const-string v2, "\u09ab"

    .line 4096
    goto/16 :goto_0

    .line 4098
    :pswitch_39
    const-string v2, "\u09ac"

    .line 4099
    goto/16 :goto_0

    .line 4101
    :pswitch_3a
    const-string v2, "\u09ad"

    .line 4102
    goto/16 :goto_0

    .line 4104
    :pswitch_3b
    const-string v2, "\u09ae"

    .line 4105
    goto/16 :goto_0

    .line 4107
    :pswitch_3c
    const-string v2, "\u09af"

    .line 4108
    goto/16 :goto_0

    .line 4110
    :pswitch_3d
    const-string v2, "\u09b0"

    .line 4111
    goto/16 :goto_0

    .line 4113
    :pswitch_3e
    const-string v2, "\u09b2"

    .line 4114
    goto/16 :goto_0

    .line 4116
    :pswitch_3f
    const-string v2, "\u09b6"

    .line 4117
    goto/16 :goto_0

    .line 4119
    :pswitch_40
    const-string v2, "\u09b7"

    .line 4120
    goto/16 :goto_0

    .line 4122
    :pswitch_41
    const-string v2, "\u09b8"

    .line 4123
    goto/16 :goto_0

    .line 4125
    :pswitch_42
    const-string v2, "\u09b9"

    goto/16 :goto_0

    .line 4128
    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_6

    .line 4129
    packed-switch v0, :pswitch_data_4

    :pswitch_43
    goto/16 :goto_0

    .line 4132
    :pswitch_44
    const-string v2, "\u0aa7"

    .line 4133
    goto/16 :goto_0

    .line 4135
    :pswitch_45
    const-string v2, "\u0aa8"

    .line 4136
    goto/16 :goto_0

    .line 4138
    :pswitch_46
    const-string v2, "\u0aaa"

    .line 4139
    goto/16 :goto_0

    .line 4141
    :pswitch_47
    const-string v2, "\u0aab"

    .line 4142
    goto/16 :goto_0

    .line 4144
    :pswitch_48
    const-string v2, "\u0aac"

    .line 4145
    goto/16 :goto_0

    .line 4147
    :pswitch_49
    const-string v2, "\u0aad"

    .line 4148
    goto/16 :goto_0

    .line 4150
    :pswitch_4a
    const-string v2, "\u0aae"

    .line 4151
    goto/16 :goto_0

    .line 4153
    :pswitch_4b
    const-string v2, "\u0aaf"

    .line 4154
    goto/16 :goto_0

    .line 4156
    :pswitch_4c
    const-string v2, "\u0ab0"

    .line 4157
    goto/16 :goto_0

    .line 4159
    :pswitch_4d
    const-string v2, "\u0ab2"

    .line 4160
    goto/16 :goto_0

    .line 4162
    :pswitch_4e
    const-string v2, "\u0ab5"

    .line 4163
    goto/16 :goto_0

    .line 4165
    :pswitch_4f
    const-string v2, "\u0ab6"

    .line 4166
    goto/16 :goto_0

    .line 4168
    :pswitch_50
    const-string v2, "\u0ab7"

    .line 4169
    goto/16 :goto_0

    .line 4171
    :pswitch_51
    const-string v2, "\u0ab8"

    .line 4172
    goto/16 :goto_0

    .line 4174
    :pswitch_52
    const-string v2, "\u0ab9"

    .line 4175
    goto/16 :goto_0

    .line 4177
    :pswitch_53
    const-string v2, "\u0ab3"

    goto/16 :goto_0

    .line 4180
    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 4181
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 4187
    :sswitch_0
    const-string v2, "\u0a22"

    .line 4188
    goto/16 :goto_0

    .line 4184
    :sswitch_1
    const-string v2, "\u0a21"

    .line 4185
    goto/16 :goto_0

    .line 4190
    :sswitch_2
    const-string v2, "\u0a23"

    .line 4191
    goto/16 :goto_0

    .line 4193
    :sswitch_3
    const-string v2, "\u0a24"

    .line 4194
    goto/16 :goto_0

    .line 4196
    :sswitch_4
    const-string v2, "\u0a25"

    .line 4197
    goto/16 :goto_0

    .line 4199
    :sswitch_5
    const-string v2, "\u0a26"

    .line 4200
    goto/16 :goto_0

    .line 4202
    :sswitch_6
    const-string v2, "\u0a27"

    .line 4203
    goto/16 :goto_0

    .line 4205
    :sswitch_7
    const-string v2, "\u0a28"

    .line 4206
    goto/16 :goto_0

    .line 4208
    :sswitch_8
    const-string v2, "\u0a2a"

    .line 4209
    goto/16 :goto_0

    .line 4211
    :sswitch_9
    const-string v2, "\u0a2b"

    .line 4212
    goto/16 :goto_0

    .line 4214
    :sswitch_a
    const-string v2, "\u0a2c"

    .line 4215
    goto/16 :goto_0

    .line 4217
    :sswitch_b
    const-string v2, "\u0a2d"

    .line 4218
    goto/16 :goto_0

    .line 4220
    :sswitch_c
    const-string v2, "\u0a2e"

    .line 4221
    goto/16 :goto_0

    .line 4223
    :sswitch_d
    const-string v2, "\u0a2f"

    .line 4224
    goto/16 :goto_0

    .line 4226
    :sswitch_e
    const-string v2, "\u0a30"

    .line 4227
    goto/16 :goto_0

    .line 4229
    :sswitch_f
    const-string v2, "\u0a32"

    .line 4230
    goto/16 :goto_0

    .line 4232
    :sswitch_10
    const-string v2, "\u0a35"

    goto/16 :goto_0

    .line 4235
    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 4236
    packed-switch v0, :pswitch_data_5

    :pswitch_54
    goto/16 :goto_0

    .line 4239
    :pswitch_55
    const-string v2, "\u0bb2"

    .line 4240
    goto/16 :goto_0

    .line 4242
    :pswitch_56
    const-string v2, "\u0bb5"

    .line 4243
    goto/16 :goto_0

    .line 4245
    :pswitch_57
    const-string v2, "\u0bb4"

    .line 4246
    goto/16 :goto_0

    .line 4248
    :pswitch_58
    const-string v2, "\u0bb3"

    .line 4249
    goto/16 :goto_0

    .line 4251
    :pswitch_59
    const-string v2, "\u0bb1"

    .line 4252
    goto/16 :goto_0

    .line 4254
    :pswitch_5a
    const-string v2, "\u0ba9"

    .line 4255
    goto/16 :goto_0

    .line 4257
    :pswitch_5b
    const-string v2, "\u0b9c"

    .line 4258
    goto/16 :goto_0

    .line 4260
    :pswitch_5c
    const-string v2, "\u0bb7"

    .line 4261
    goto/16 :goto_0

    .line 4263
    :pswitch_5d
    const-string v2, "\u0b95\u0bb7"

    .line 4264
    goto/16 :goto_0

    .line 4266
    :pswitch_5e
    const-string v2, "\u0bb9"

    .line 4267
    goto/16 :goto_0

    .line 4269
    :pswitch_5f
    const-string v2, "\u0bb8"

    .line 4270
    goto/16 :goto_0

    .line 4272
    :pswitch_60
    const-string v2, ""

    goto/16 :goto_0

    .line 4275
    :cond_8
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    .line 4276
    packed-switch v0, :pswitch_data_6

    :pswitch_61
    goto/16 :goto_0

    .line 4279
    :pswitch_62
    const-string v2, "\u0ca7"

    .line 4280
    goto/16 :goto_0

    .line 4282
    :pswitch_63
    const-string v2, "\u0ca8"

    .line 4283
    goto/16 :goto_0

    .line 4285
    :pswitch_64
    const-string v2, "\u0caa"

    .line 4286
    goto/16 :goto_0

    .line 4288
    :pswitch_65
    const-string v2, "\u0cab"

    .line 4289
    goto/16 :goto_0

    .line 4291
    :pswitch_66
    const-string v2, "\u0cac"

    .line 4292
    goto/16 :goto_0

    .line 4294
    :pswitch_67
    const-string v2, "\u0cad"

    .line 4295
    goto/16 :goto_0

    .line 4297
    :pswitch_68
    const-string v2, "\u0cae"

    .line 4298
    goto/16 :goto_0

    .line 4300
    :pswitch_69
    const-string v2, "\u0caf"

    .line 4301
    goto/16 :goto_0

    .line 4303
    :pswitch_6a
    const-string v2, "\u0cb0"

    .line 4304
    goto/16 :goto_0

    .line 4306
    :pswitch_6b
    const-string v2, "\u0cb2"

    .line 4307
    goto/16 :goto_0

    .line 4309
    :pswitch_6c
    const-string v2, "\u0cb5"

    .line 4310
    goto/16 :goto_0

    .line 4312
    :pswitch_6d
    const-string v2, "\u0cb6"

    .line 4313
    goto/16 :goto_0

    .line 4315
    :pswitch_6e
    const-string v2, "\u0cb7"

    .line 4316
    goto/16 :goto_0

    .line 4318
    :pswitch_6f
    const-string v2, "\u0cb8"

    .line 4319
    goto/16 :goto_0

    .line 4321
    :pswitch_70
    const-string v2, "\u0cb9"

    .line 4322
    goto/16 :goto_0

    .line 4324
    :pswitch_71
    const-string v2, "\u0cb3"

    goto/16 :goto_0

    .line 4327
    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_a

    .line 4328
    packed-switch v0, :pswitch_data_7

    goto/16 :goto_0

    .line 4331
    :pswitch_72
    const-string v2, "\u0d26"

    .line 4332
    goto/16 :goto_0

    .line 4334
    :pswitch_73
    const-string v2, "\u0d27"

    .line 4335
    goto/16 :goto_0

    .line 4337
    :pswitch_74
    const-string v2, "\u0d28"

    .line 4338
    goto/16 :goto_0

    .line 4340
    :pswitch_75
    const-string v2, "\u0d2a"

    .line 4341
    goto/16 :goto_0

    .line 4343
    :pswitch_76
    const-string v2, "\u0d2b"

    .line 4344
    goto/16 :goto_0

    .line 4346
    :pswitch_77
    const-string v2, "\u0d2c"

    .line 4347
    goto/16 :goto_0

    .line 4349
    :pswitch_78
    const-string v2, "\u0d2d"

    .line 4350
    goto/16 :goto_0

    .line 4352
    :pswitch_79
    const-string v2, "\u0d2e"

    .line 4353
    goto/16 :goto_0

    .line 4355
    :pswitch_7a
    const-string v2, "\u0d2f"

    .line 4356
    goto/16 :goto_0

    .line 4358
    :pswitch_7b
    const-string v2, "\u0d30"

    .line 4359
    goto/16 :goto_0

    .line 4361
    :pswitch_7c
    const-string v2, "\u0d32"

    .line 4362
    goto/16 :goto_0

    .line 4364
    :pswitch_7d
    const-string v2, "\u0d33"

    .line 4365
    goto/16 :goto_0

    .line 4367
    :pswitch_7e
    const-string v2, "\u0d35"

    .line 4368
    goto/16 :goto_0

    .line 4370
    :pswitch_7f
    const-string v2, "\u0d36"

    .line 4371
    goto/16 :goto_0

    .line 4373
    :pswitch_80
    const-string v2, "\u0d37"

    .line 4374
    goto/16 :goto_0

    .line 4376
    :pswitch_81
    const-string v2, "\u0d38"

    .line 4377
    goto/16 :goto_0

    .line 4379
    :pswitch_82
    const-string v2, "\u0d39"

    goto/16 :goto_0

    .line 4382
    :cond_a
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    .line 4383
    packed-switch v0, :pswitch_data_8

    :pswitch_83
    goto/16 :goto_0

    .line 4386
    :pswitch_84
    const-string v2, "\u0c27"

    .line 4387
    goto/16 :goto_0

    .line 4389
    :pswitch_85
    const-string v2, "\u0c28"

    .line 4390
    goto/16 :goto_0

    .line 4392
    :pswitch_86
    const-string v2, "\u0c2a"

    .line 4393
    goto/16 :goto_0

    .line 4395
    :pswitch_87
    const-string v2, "\u0c2b"

    .line 4396
    goto/16 :goto_0

    .line 4398
    :pswitch_88
    const-string v2, "\u0c2c"

    .line 4399
    goto/16 :goto_0

    .line 4401
    :pswitch_89
    const-string v2, "\u0c2d"

    .line 4402
    goto/16 :goto_0

    .line 4404
    :pswitch_8a
    const-string v2, "\u0c2e"

    .line 4405
    goto/16 :goto_0

    .line 4407
    :pswitch_8b
    const-string v2, "\u0c2f"

    .line 4408
    goto/16 :goto_0

    .line 4410
    :pswitch_8c
    const-string v2, "\u0c30"

    .line 4411
    goto/16 :goto_0

    .line 4413
    :pswitch_8d
    const-string v2, "\u0c32"

    .line 4414
    goto/16 :goto_0

    .line 4416
    :pswitch_8e
    const-string v2, "\u0c33"

    .line 4417
    goto/16 :goto_0

    .line 4419
    :pswitch_8f
    const-string v2, "\u0c35"

    .line 4420
    goto/16 :goto_0

    .line 4422
    :pswitch_90
    const-string v2, "\u0c36"

    .line 4423
    goto/16 :goto_0

    .line 4425
    :pswitch_91
    const-string v2, "\u0c37"

    .line 4426
    goto/16 :goto_0

    .line 4428
    :pswitch_92
    const-string v2, "\u0c38"

    .line 4429
    goto/16 :goto_0

    .line 4431
    :pswitch_93
    const-string v2, "\u0c39"

    goto/16 :goto_0

    .line 4434
    :cond_b
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v3, v7, :cond_c

    const/high16 v3, 0x61730000

    if-ne v1, v3, :cond_c

    .line 4435
    packed-switch v0, :pswitch_data_9

    goto/16 :goto_0

    .line 4437
    :pswitch_94
    const-string v2, "\u09a6"

    .line 4438
    goto/16 :goto_0

    .line 4440
    :pswitch_95
    const-string v2, "\u09a7"

    .line 4441
    goto/16 :goto_0

    .line 4443
    :pswitch_96
    const-string v2, "\u09a8"

    .line 4444
    goto/16 :goto_0

    .line 4446
    :pswitch_97
    const-string v2, "\u09aa"

    .line 4447
    goto/16 :goto_0

    .line 4449
    :pswitch_98
    const-string v2, "\u09ab"

    .line 4450
    goto/16 :goto_0

    .line 4452
    :pswitch_99
    const-string v2, "\u09ac"

    .line 4453
    goto/16 :goto_0

    .line 4455
    :pswitch_9a
    const-string v2, "\u09ad"

    .line 4456
    goto/16 :goto_0

    .line 4458
    :pswitch_9b
    const-string v2, "\u09ae"

    .line 4459
    goto/16 :goto_0

    .line 4461
    :pswitch_9c
    const-string v2, "\u09af"

    .line 4462
    goto/16 :goto_0

    .line 4464
    :pswitch_9d
    const-string v2, "\u09f0"

    .line 4465
    goto/16 :goto_0

    .line 4467
    :pswitch_9e
    const-string v2, "\u09b2"

    .line 4468
    goto/16 :goto_0

    .line 4470
    :pswitch_9f
    const-string v2, "\u09f1"

    .line 4471
    goto/16 :goto_0

    .line 4473
    :pswitch_a0
    const-string v2, "\u09b6"

    .line 4474
    goto/16 :goto_0

    .line 4476
    :pswitch_a1
    const-string v2, "\u09b7"

    .line 4477
    goto/16 :goto_0

    .line 4479
    :pswitch_a2
    const-string v2, "\u09b8"

    .line 4480
    goto/16 :goto_0

    .line 4482
    :pswitch_a3
    const-string v2, "\u09b9"

    .line 4483
    goto/16 :goto_0

    .line 4485
    :pswitch_a4
    const-string v2, "\u09df"

    goto/16 :goto_0

    .line 4488
    :cond_c
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    .line 4489
    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    .line 4492
    :sswitch_11
    const-string v2, "\u0b26"

    .line 4493
    goto/16 :goto_0

    .line 4495
    :sswitch_12
    const-string v2, "\u0b27"

    .line 4496
    goto/16 :goto_0

    .line 4498
    :sswitch_13
    const-string v2, "\u0b28"

    .line 4499
    goto/16 :goto_0

    .line 4501
    :sswitch_14
    const-string v2, "\u0b2a"

    .line 4502
    goto/16 :goto_0

    .line 4504
    :sswitch_15
    const-string v2, "\u0b2b"

    .line 4505
    goto/16 :goto_0

    .line 4507
    :sswitch_16
    const-string v2, "\u0b2c"

    .line 4508
    goto/16 :goto_0

    .line 4510
    :sswitch_17
    const-string v2, "\u0b2d"

    .line 4511
    goto/16 :goto_0

    .line 4513
    :sswitch_18
    const-string v2, "\u0b2e"

    .line 4514
    goto/16 :goto_0

    .line 4516
    :sswitch_19
    const-string v2, "\u0b2f"

    .line 4517
    goto/16 :goto_0

    .line 4519
    :sswitch_1a
    const-string v2, "\u0b30"

    .line 4520
    goto/16 :goto_0

    .line 4522
    :sswitch_1b
    const-string v2, "\u0b33"

    .line 4523
    goto/16 :goto_0

    .line 4525
    :sswitch_1c
    const-string v2, "\u0b32"

    .line 4526
    goto/16 :goto_0

    .line 4528
    :sswitch_1d
    const-string v2, "\u0b36"

    .line 4529
    goto/16 :goto_0

    .line 4531
    :sswitch_1e
    const-string v2, "\u0b37"

    .line 4532
    goto/16 :goto_0

    .line 4534
    :sswitch_1f
    const-string v2, "\u0b38"

    .line 4535
    goto/16 :goto_0

    .line 4537
    :sswitch_20
    const-string v2, "\u0b39"

    goto/16 :goto_0

    .line 4540
    :cond_d
    iget v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 4541
    packed-switch v0, :pswitch_data_a

    :pswitch_a5
    goto/16 :goto_0

    .line 4544
    :pswitch_a6
    const-string v2, "\u0db0"

    .line 4545
    goto/16 :goto_0

    .line 4547
    :pswitch_a7
    const-string v2, "\u0db1"

    .line 4548
    goto/16 :goto_0

    .line 4550
    :pswitch_a8
    const-string v2, "\u0db4"

    .line 4551
    goto/16 :goto_0

    .line 4553
    :pswitch_a9
    const-string v2, "\u0db5"

    .line 4554
    goto/16 :goto_0

    .line 4556
    :pswitch_aa
    const-string v2, "\u0db6"

    .line 4557
    goto/16 :goto_0

    .line 4559
    :pswitch_ab
    const-string v2, "\u0db7"

    .line 4560
    goto/16 :goto_0

    .line 4562
    :pswitch_ac
    const-string v2, "\u0db8"

    .line 4563
    goto/16 :goto_0

    .line 4565
    :pswitch_ad
    const-string v2, "\u0dba"

    .line 4566
    goto/16 :goto_0

    .line 4568
    :pswitch_ae
    const-string v2, "\u0dbb"

    .line 4569
    goto/16 :goto_0

    .line 4571
    :pswitch_af
    const-string v2, "\u0dbd"

    .line 4572
    goto/16 :goto_0

    .line 4574
    :pswitch_b0
    const-string v2, "\u0dc0"

    .line 4575
    goto/16 :goto_0

    .line 4577
    :pswitch_b1
    const-string v2, "\u0dc1"

    .line 4578
    goto/16 :goto_0

    .line 4580
    :pswitch_b2
    const-string v2, "\u0dc2"

    .line 4581
    goto/16 :goto_0

    .line 4583
    :pswitch_b3
    const-string v2, "\u0dc3"

    .line 4584
    goto/16 :goto_0

    .line 4586
    :pswitch_b4
    const-string v2, "\u0dc4"

    .line 4587
    goto/16 :goto_0

    .line 4589
    :pswitch_b5
    const-string v2, "\u0dc5"

    .line 4590
    goto/16 :goto_0

    .line 4592
    :pswitch_b6
    const-string v2, "\u0dc6"

    goto/16 :goto_0

    .line 3921
    :pswitch_data_0
    .packed-switch 0x915
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 3972
    :pswitch_data_1
    .packed-switch 0x915
        :pswitch_2
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_1
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 4023
    :pswitch_data_2
    .packed-switch 0x915
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    .line 4077
    :pswitch_data_3
    .packed-switch 0x995
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch

    .line 4129
    :pswitch_data_4
    .packed-switch 0xa95
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_43
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_43
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    .line 4181
    :sswitch_data_0
    .sparse-switch
        0xa05 -> :sswitch_0
        0xa15 -> :sswitch_5
        0xa16 -> :sswitch_6
        0xa17 -> :sswitch_7
        0xa18 -> :sswitch_8
        0xa19 -> :sswitch_9
        0xa1a -> :sswitch_a
        0xa1b -> :sswitch_b
        0xa1c -> :sswitch_c
        0xa1d -> :sswitch_d
        0xa1e -> :sswitch_e
        0xa1f -> :sswitch_f
        0xa20 -> :sswitch_10
        0xa38 -> :sswitch_3
        0xa39 -> :sswitch_4
        0xa72 -> :sswitch_2
        0xa73 -> :sswitch_1
    .end sparse-switch

    .line 4236
    :pswitch_data_5
    .packed-switch 0xb95
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_56
        :pswitch_57
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_58
        :pswitch_59
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5a
        :pswitch_5b
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5c
        :pswitch_54
        :pswitch_5d
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
    .end packed-switch

    .line 4276
    :pswitch_data_6
    .packed-switch 0xc95
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_61
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_61
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    .line 4328
    :pswitch_data_7
    .packed-switch 0xd15
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
    .end packed-switch

    .line 4383
    :pswitch_data_8
    .packed-switch 0xc15
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_83
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_83
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
    .end packed-switch

    .line 4435
    :pswitch_data_9
    .packed-switch 0x995
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
    .end packed-switch

    .line 4489
    :sswitch_data_1
    .sparse-switch
        0xb15 -> :sswitch_11
        0xb16 -> :sswitch_12
        0xb17 -> :sswitch_13
        0xb18 -> :sswitch_14
        0xb19 -> :sswitch_15
        0xb1a -> :sswitch_16
        0xb1b -> :sswitch_17
        0xb1c -> :sswitch_18
        0xb1d -> :sswitch_19
        0xb1f -> :sswitch_1a
        0xb20 -> :sswitch_1b
        0xb23 -> :sswitch_1e
        0xb24 -> :sswitch_1f
        0xb25 -> :sswitch_20
        0xb5c -> :sswitch_1c
        0xb5d -> :sswitch_1d
    .end sparse-switch

    .line 4541
    :pswitch_data_a
    .packed-switch 0xd9a
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_a5
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_a5
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
    .end packed-switch
.end method


# virtual methods
.method public drawKeyboardView()V
    .locals 1

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianToggleState()V

    .line 2547
    return-void
.end method

.method public getLangScriptId()I
    .locals 1

    .prologue
    .line 2503
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    return v0
.end method

.method public getPrevLangScriptId()I
    .locals 1

    .prologue
    .line 2509
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    return v0
.end method

.method public getThirdModeKeyCode(I)I
    .locals 10
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 806
    move v1, p1

    .line 807
    .local v1, "toggledKeyCode":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 808
    .local v0, "lang":I
    sget-boolean v2, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v2, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return v1

    .line 811
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v5, :cond_2

    .line 812
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 858
    :pswitch_1
    const/16 v1, 0x954

    .line 859
    goto :goto_0

    .line 815
    :pswitch_2
    const/16 v1, 0x915

    .line 816
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 817
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 821
    :pswitch_3
    const/16 v1, 0x924

    .line 822
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 823
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 826
    :pswitch_4
    const/16 v1, 0x91c

    .line 827
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 828
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 831
    :pswitch_5
    const/16 v1, 0x936

    .line 832
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 833
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 836
    :pswitch_6
    const/16 v1, 0x933

    .line 837
    goto :goto_0

    .line 839
    :pswitch_7
    const/16 v1, 0x930

    .line 840
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 841
    const/16 v2, 0x11

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 844
    :pswitch_8
    const/16 v1, 0x901

    .line 845
    goto :goto_0

    .line 847
    :pswitch_9
    const/16 v1, 0x93c

    .line 848
    goto :goto_0

    .line 850
    :pswitch_a
    const/16 v1, 0x94b

    .line 851
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 852
    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 855
    :pswitch_b
    const/16 v1, 0x953

    .line 856
    goto :goto_0

    .line 861
    :pswitch_c
    const/16 v1, 0x946

    .line 862
    goto :goto_0

    .line 864
    :pswitch_d
    const/16 v1, 0x965

    .line 865
    goto :goto_0

    .line 867
    :pswitch_e
    const/16 v1, 0x93d

    goto :goto_0

    .line 870
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_3

    const/high16 v2, 0x626e0000

    if-ne v0, v2, :cond_3

    .line 872
    packed-switch p1, :pswitch_data_1

    :pswitch_f
    goto :goto_0

    .line 931
    :pswitch_10
    const/16 v1, 0x997

    .line 932
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 933
    const/16 v2, 0x1e

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 874
    :pswitch_11
    const/16 v1, 0x9dc

    .line 875
    goto :goto_0

    .line 877
    :pswitch_12
    const/16 v1, 0x9dd

    .line 878
    goto :goto_0

    .line 880
    :pswitch_13
    const/16 v1, 0x9df

    .line 881
    goto :goto_0

    .line 883
    :pswitch_14
    const/16 v1, 0x9ce

    .line 884
    goto :goto_0

    .line 886
    :pswitch_15
    const/16 v1, 0x9b8

    .line 887
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 888
    const/16 v2, 0x16

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto :goto_0

    .line 891
    :pswitch_16
    const/16 v1, 0x99e

    .line 892
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 893
    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 896
    :pswitch_17
    const/16 v1, 0x99c

    .line 897
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 898
    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 901
    :pswitch_18
    const/16 v1, 0x9b8

    .line 902
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 903
    const/16 v2, 0x19

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 906
    :pswitch_19
    const/16 v1, 0x995

    .line 907
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 908
    const/16 v2, 0x1a

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 911
    :pswitch_1a
    const/16 v1, 0x995

    .line 912
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 913
    const/16 v2, 0x1b

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 916
    :pswitch_1b
    const/16 v1, 0x995

    .line 917
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 918
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 921
    :pswitch_1c
    const/16 v1, 0x995

    .line 922
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 923
    const/16 v2, 0x1c

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 926
    :pswitch_1d
    const/16 v1, 0x995

    .line 927
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 928
    const/16 v2, 0x1d

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 936
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v6, :cond_4

    const/high16 v2, 0x61730000

    if-ne v0, v2, :cond_4

    .line 938
    packed-switch p1, :pswitch_data_2

    :pswitch_1e
    goto/16 :goto_0

    .line 997
    :pswitch_1f
    const/16 v1, 0x997

    .line 998
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 999
    const/16 v2, 0x1e

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 940
    :pswitch_20
    const/16 v1, 0x9dc

    .line 941
    goto/16 :goto_0

    .line 943
    :pswitch_21
    const/16 v1, 0x9dd

    .line 944
    goto/16 :goto_0

    .line 946
    :pswitch_22
    const/16 v1, 0x9df

    .line 947
    goto/16 :goto_0

    .line 949
    :pswitch_23
    const/16 v1, 0x9ce

    .line 950
    goto/16 :goto_0

    .line 952
    :pswitch_24
    const/16 v1, 0x9b8

    .line 953
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 954
    const/16 v2, 0x16

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 957
    :pswitch_25
    const/16 v1, 0x99e

    .line 958
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 959
    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 962
    :pswitch_26
    const/16 v1, 0x99c

    .line 963
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 964
    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 967
    :pswitch_27
    const/16 v1, 0x9b8

    .line 968
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 969
    const/16 v2, 0x1f

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 972
    :pswitch_28
    const/16 v1, 0x995

    .line 973
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 974
    const/16 v2, 0x1a

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 977
    :pswitch_29
    const/16 v1, 0x995

    .line 978
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 979
    const/16 v2, 0x1b

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 982
    :pswitch_2a
    const/16 v1, 0x995

    .line 983
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 984
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 987
    :pswitch_2b
    const/16 v1, 0x995

    .line 988
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 989
    const/16 v2, 0x1c

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 992
    :pswitch_2c
    const/16 v1, 0x995

    .line 993
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 994
    const/16 v2, 0x1d

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1002
    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 1003
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1054
    :sswitch_0
    const/16 v1, 0xa81

    .line 1055
    goto/16 :goto_0

    .line 1006
    :sswitch_1
    const/16 v1, 0xa95

    .line 1007
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1008
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1011
    :sswitch_2
    const/16 v1, 0xaa4

    .line 1012
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1013
    const/16 v2, 0x15

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1016
    :sswitch_3
    const/16 v1, 0xa9c

    .line 1017
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1018
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1021
    :sswitch_4
    const/16 v1, 0xab6

    .line 1022
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1023
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1026
    :sswitch_5
    const/16 v1, 0xaa6

    .line 1027
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1028
    const/16 v2, 0x16

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1031
    :sswitch_6
    const/16 v1, 0xaa6

    .line 1032
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1033
    const/16 v2, 0x17

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1036
    :sswitch_7
    const/16 v1, 0xaa4

    .line 1037
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1038
    const/16 v2, 0x18

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1041
    :sswitch_8
    const/16 v1, 0xab3

    .line 1042
    goto/16 :goto_0

    .line 1044
    :sswitch_9
    const/16 v1, 0xaa4

    .line 1045
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1046
    const/16 v2, 0x19

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1049
    :sswitch_a
    const/16 v1, 0xab0

    .line 1050
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1051
    const/16 v2, 0x12

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1057
    :sswitch_b
    const/16 v1, 0xabc

    .line 1058
    goto/16 :goto_0

    .line 1060
    :sswitch_c
    const/16 v1, 0xac4

    .line 1061
    goto/16 :goto_0

    .line 1063
    :sswitch_d
    const/16 v1, 0xae2

    goto/16 :goto_0

    .line 1066
    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 1067
    packed-switch p1, :pswitch_data_3

    :pswitch_2d
    goto/16 :goto_0

    .line 1070
    :pswitch_2e
    const/16 v1, 0xa36

    .line 1071
    goto/16 :goto_0

    .line 1073
    :pswitch_2f
    const/16 v1, 0xa5c

    .line 1074
    goto/16 :goto_0

    .line 1076
    :pswitch_30
    const/16 v1, 0xa59

    .line 1077
    goto/16 :goto_0

    .line 1079
    :pswitch_31
    const/16 v1, 0xa5a

    .line 1080
    goto/16 :goto_0

    .line 1082
    :pswitch_32
    const/16 v1, 0xa5b

    .line 1083
    goto/16 :goto_0

    .line 1085
    :pswitch_33
    const/16 v1, 0xa5e

    .line 1086
    goto/16 :goto_0

    .line 1088
    :pswitch_34
    const/16 v1, 0xa33

    .line 1089
    goto/16 :goto_0

    .line 1091
    :pswitch_35
    const/16 v1, 0xa74

    .line 1092
    goto/16 :goto_0

    .line 1094
    :pswitch_36
    const/16 v1, 0xa4d

    goto/16 :goto_0

    .line 1097
    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-eq v2, v7, :cond_0

    .line 1098
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v8, :cond_7

    .line 1099
    packed-switch p1, :pswitch_data_4

    :pswitch_37
    goto/16 :goto_0

    .line 1155
    :pswitch_38
    const/16 v1, 0xcb3

    .line 1156
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1157
    const/16 v2, 0x15

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1102
    :pswitch_39
    const/16 v1, 0xcb3

    .line 1103
    goto/16 :goto_0

    .line 1105
    :pswitch_3a
    const/16 v1, 0xc95

    .line 1106
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1107
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1110
    :pswitch_3b
    const/16 v1, 0xc9c

    .line 1111
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1112
    const/16 v2, 0x11

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1115
    :pswitch_3c
    const/16 v1, 0xcb6

    .line 1116
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1117
    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1120
    :pswitch_3d
    const/16 v1, 0xc93

    .line 1121
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1122
    const/16 v2, 0x12

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1125
    :pswitch_3e
    const/16 v1, 0xc8c

    .line 1126
    goto/16 :goto_0

    .line 1128
    :pswitch_3f
    const/16 v1, 0xcb1

    .line 1129
    goto/16 :goto_0

    .line 1131
    :pswitch_40
    const/16 v1, 0xc83

    .line 1132
    goto/16 :goto_0

    .line 1134
    :pswitch_41
    const/16 v1, 0xcd5

    .line 1135
    goto/16 :goto_0

    .line 1137
    :pswitch_42
    const/16 v1, 0xcb0

    .line 1138
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1139
    const/16 v2, 0x13

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1142
    :pswitch_43
    const/16 v1, 0xc95

    .line 1143
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1144
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1147
    :pswitch_44
    const/16 v1, 0xc9c

    .line 1148
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1149
    const/16 v2, 0x14

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1152
    :pswitch_45
    const/16 v1, 0xce2

    .line 1153
    goto/16 :goto_0

    .line 1160
    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 1161
    packed-switch p1, :pswitch_data_5

    :pswitch_46
    goto/16 :goto_0

    .line 1209
    :pswitch_47
    const/16 v1, 0xd3d

    goto/16 :goto_0

    .line 1164
    :pswitch_48
    const/16 v1, 0xd7a

    .line 1165
    goto/16 :goto_0

    .line 1167
    :pswitch_49
    const/16 v1, 0xd7b

    .line 1168
    goto/16 :goto_0

    .line 1170
    :pswitch_4a
    const/16 v1, 0xd7c

    .line 1171
    goto/16 :goto_0

    .line 1173
    :pswitch_4b
    const/16 v1, 0xd7d

    .line 1174
    goto/16 :goto_0

    .line 1176
    :pswitch_4c
    const/16 v1, 0xd7e

    .line 1177
    goto/16 :goto_0

    .line 1179
    :pswitch_4d
    const/16 v1, 0xd33

    .line 1180
    goto/16 :goto_0

    .line 1182
    :pswitch_4e
    const/16 v1, 0xd34

    .line 1183
    goto/16 :goto_0

    .line 1185
    :pswitch_4f
    const/16 v1, 0xd31

    .line 1186
    goto/16 :goto_0

    .line 1188
    :pswitch_50
    const/16 v1, 0xd31

    .line 1189
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1190
    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1193
    :pswitch_51
    const/16 v1, 0xd19

    .line 1194
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1195
    const/16 v2, 0xf

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1198
    :pswitch_52
    const/16 v1, 0xd2e

    .line 1199
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1200
    const/16 v2, 0x10

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1203
    :pswitch_53
    const/16 v1, 0xd4c

    .line 1204
    goto/16 :goto_0

    .line 1206
    :pswitch_54
    const/16 v1, 0xd03

    .line 1207
    goto/16 :goto_0

    .line 1212
    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 1213
    packed-switch p1, :pswitch_data_6

    :pswitch_55
    goto/16 :goto_0

    .line 1255
    :pswitch_56
    const/16 v1, 0xd90

    goto/16 :goto_0

    .line 1216
    :pswitch_57
    const/16 v1, 0xd9f

    .line 1217
    goto/16 :goto_0

    .line 1219
    :pswitch_58
    const/16 v1, 0xda5

    .line 1220
    goto/16 :goto_0

    .line 1222
    :pswitch_59
    const/16 v1, 0xdac

    .line 1223
    goto/16 :goto_0

    .line 1225
    :pswitch_5a
    const/16 v1, 0xdb3

    .line 1226
    goto/16 :goto_0

    .line 1228
    :pswitch_5b
    const/16 v1, 0xdb9

    .line 1229
    goto/16 :goto_0

    .line 1231
    :pswitch_5c
    const/16 v1, 0xdc5

    .line 1232
    goto/16 :goto_0

    .line 1234
    :pswitch_5d
    const/16 v1, 0xda6

    .line 1235
    goto/16 :goto_0

    .line 1237
    :pswitch_5e
    const/16 v1, 0xdc6

    .line 1238
    goto/16 :goto_0

    .line 1240
    :pswitch_5f
    const/16 v1, 0xd93

    .line 1241
    goto/16 :goto_0

    .line 1243
    :pswitch_60
    const/16 v1, 0xddb

    .line 1244
    goto/16 :goto_0

    .line 1246
    :pswitch_61
    const/16 v1, 0xd8d

    .line 1247
    goto/16 :goto_0

    .line 1249
    :pswitch_62
    const/16 v1, 0xd8e

    .line 1250
    goto/16 :goto_0

    .line 1252
    :pswitch_63
    const/16 v1, 0xd8f

    .line 1253
    goto/16 :goto_0

    .line 1258
    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v9, :cond_a

    .line 1259
    packed-switch p1, :pswitch_data_7

    :pswitch_64
    goto/16 :goto_0

    .line 1322
    :pswitch_65
    const/16 v1, 0xc44

    goto/16 :goto_0

    .line 1262
    :pswitch_66
    const/16 v1, 0xc60

    .line 1264
    goto/16 :goto_0

    .line 1267
    :pswitch_67
    const/16 v1, 0xc33

    .line 1268
    goto/16 :goto_0

    .line 1270
    :pswitch_68
    const/16 v1, 0xc15

    .line 1271
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1272
    iput v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1276
    :pswitch_69
    const/16 v1, 0xc31

    .line 1277
    goto/16 :goto_0

    .line 1279
    :pswitch_6a
    const/16 v1, 0xc15

    .line 1280
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1281
    iput v6, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1285
    :pswitch_6b
    const/16 v1, 0xc16

    .line 1286
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1287
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1290
    :pswitch_6c
    const/16 v1, 0xc17

    .line 1291
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1292
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1295
    :pswitch_6d
    const/16 v1, 0xc18

    .line 1296
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1297
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1300
    :pswitch_6e
    const/16 v1, 0xc1f

    .line 1301
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1302
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1305
    :pswitch_6f
    const/16 v1, 0xc21

    .line 1306
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1307
    const/4 v2, 0x7

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1310
    :pswitch_70
    const/16 v1, 0xc24

    .line 1311
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1312
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1316
    :pswitch_71
    const/16 v1, 0xc03

    .line 1317
    goto/16 :goto_0

    .line 1319
    :pswitch_72
    const/16 v1, 0xc01

    .line 1320
    goto/16 :goto_0

    .line 1325
    :cond_a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1326
    packed-switch p1, :pswitch_data_8

    :pswitch_73
    goto/16 :goto_0

    .line 1390
    :pswitch_74
    const/16 v1, 0xb1a

    .line 1391
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1392
    const/16 v2, 0xe

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1329
    :pswitch_75
    const/16 v1, 0xb5f

    .line 1330
    goto/16 :goto_0

    .line 1332
    :pswitch_76
    const/16 v1, 0xb71

    .line 1333
    goto/16 :goto_0

    .line 1335
    :pswitch_77
    const/16 v1, 0xb15

    .line 1336
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1337
    iput v7, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1340
    :pswitch_78
    const/16 v1, 0xb17

    .line 1341
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1342
    iput v9, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1345
    :pswitch_79
    const/16 v1, 0xb17

    .line 1346
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1347
    iput v8, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1350
    :pswitch_7a
    const/16 v1, 0xb17

    .line 1351
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1352
    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1355
    :pswitch_7b
    const/16 v1, 0xb17

    .line 1356
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1357
    const/4 v2, 0x7

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1360
    :pswitch_7c
    const/16 v1, 0xb18

    .line 1361
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1362
    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1365
    :pswitch_7d
    const/16 v1, 0xb19

    .line 1366
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1367
    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1370
    :pswitch_7e
    const/16 v1, 0xb19

    .line 1371
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1372
    const/16 v2, 0xa

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1375
    :pswitch_7f
    const/16 v1, 0xb19

    .line 1376
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1377
    const/16 v2, 0xb

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1380
    :pswitch_80
    const/16 v1, 0xb19

    .line 1381
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1382
    const/16 v2, 0xc

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 1385
    :pswitch_81
    const/16 v1, 0xb1a

    .line 1386
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 1387
    const/16 v2, 0xd

    iput v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 812
    :pswitch_data_0
    .packed-switch 0x902
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 872
    :pswitch_data_1
    .packed-switch 0x981
        :pswitch_10
        :pswitch_1c
        :pswitch_1d
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_18
        :pswitch_19
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 938
    :pswitch_data_2
    .packed-switch 0x981
        :pswitch_1f
        :pswitch_2b
        :pswitch_2c
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_27
        :pswitch_28
        :pswitch_1e
        :pswitch_1e
        :pswitch_29
        :pswitch_2a
    .end packed-switch

    .line 1003
    :sswitch_data_0
    .sparse-switch
        0xa82 -> :sswitch_0
        0xa83 -> :sswitch_b
        0xa85 -> :sswitch_1
        0xa86 -> :sswitch_2
        0xa87 -> :sswitch_3
        0xa88 -> :sswitch_4
        0xa89 -> :sswitch_5
        0xa8a -> :sswitch_6
        0xa8f -> :sswitch_7
        0xa90 -> :sswitch_8
        0xa91 -> :sswitch_d
        0xa93 -> :sswitch_9
        0xa94 -> :sswitch_a
        0xae0 -> :sswitch_c
    .end sparse-switch

    .line 1067
    :pswitch_data_3
    .packed-switch 0xa06
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_33
        :pswitch_34
        :pswitch_2d
        :pswitch_2d
        :pswitch_35
        :pswitch_36
    .end packed-switch

    .line 1099
    :pswitch_data_4
    .packed-switch 0xc82
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_37
        :pswitch_37
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_37
        :pswitch_43
        :pswitch_44
        :pswitch_45
    .end packed-switch

    .line 1161
    :pswitch_data_5
    .packed-switch 0xd02
        :pswitch_47
        :pswitch_46
        :pswitch_46
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_46
        :pswitch_46
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_46
        :pswitch_52
        :pswitch_53
        :pswitch_54
    .end packed-switch

    .line 1213
    :pswitch_data_6
    .packed-switch 0xd82
        :pswitch_56
        :pswitch_55
        :pswitch_55
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_5f
        :pswitch_60
        :pswitch_55
        :pswitch_61
        :pswitch_62
        :pswitch_63
    .end packed-switch

    .line 1259
    :pswitch_data_7
    .packed-switch 0xc02
        :pswitch_65
        :pswitch_64
        :pswitch_64
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_64
        :pswitch_64
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_64
        :pswitch_70
        :pswitch_71
        :pswitch_72
    .end packed-switch

    .line 1326
    :pswitch_data_8
    .packed-switch 0xb01
        :pswitch_74
        :pswitch_80
        :pswitch_81
        :pswitch_73
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_7c
        :pswitch_7d
        :pswitch_73
        :pswitch_73
        :pswitch_7e
        :pswitch_7f
    .end packed-switch
.end method

.method public getThirdModeKeyLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    .line 1856
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1857
    .local v0, "code":I
    move-object v1, p1

    .line 1858
    .local v1, "toggledLabel":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1859
    sget-boolean v2, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v2, :cond_1

    .line 1860
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2264
    :cond_0
    :goto_0
    return-object v1

    .line 1862
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v4, :cond_2

    .line 1863
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1865
    :sswitch_0
    const-string v1, "\u0915\u094d\u0937"

    .line 1866
    goto :goto_0

    .line 1868
    :sswitch_1
    const-string v1, "\u0924\u094d\u0930"

    .line 1869
    goto :goto_0

    .line 1871
    :sswitch_2
    const-string v1, "\u091c\u094d\u091e"

    .line 1872
    goto :goto_0

    .line 1874
    :sswitch_3
    const-string v1, "\u0936\u094d\u0930"

    .line 1875
    goto :goto_0

    .line 1877
    :sswitch_4
    const-string v1, "\u0933"

    .line 1878
    goto :goto_0

    .line 1880
    :sswitch_5
    const-string v1, "\u0930\u094d"

    .line 1881
    goto :goto_0

    .line 1883
    :sswitch_6
    const-string v1, "\u0901"

    .line 1884
    goto :goto_0

    .line 1886
    :sswitch_7
    const-string v1, "\u093c"

    .line 1887
    goto :goto_0

    .line 1889
    :sswitch_8
    const-string v1, "\u094d\u0930"

    .line 1890
    goto :goto_0

    .line 1892
    :sswitch_9
    const-string v1, "\u0953"

    .line 1893
    goto :goto_0

    .line 1895
    :sswitch_a
    const-string v1, "\u0954"

    .line 1896
    goto :goto_0

    .line 1898
    :sswitch_b
    const-string v1, "\u0946"

    .line 1899
    goto :goto_0

    .line 1901
    :sswitch_c
    const-string v1, "\u0965"

    .line 1902
    goto :goto_0

    .line 1904
    :sswitch_d
    const-string v1, "\u093d"

    goto :goto_0

    .line 1907
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1908
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1911
    :sswitch_e
    const-string v1, "\u09dc"

    .line 1912
    goto :goto_0

    .line 1914
    :sswitch_f
    const-string v1, "\u09dd"

    .line 1915
    goto :goto_0

    .line 1917
    :sswitch_10
    const-string v1, "\u09df"

    .line 1918
    goto :goto_0

    .line 1920
    :sswitch_11
    const-string v1, "\u09ce"

    .line 1921
    goto :goto_0

    .line 1923
    :sswitch_12
    const-string v1, "\u09b8\u09cd\u0995"

    .line 1924
    goto :goto_0

    .line 1926
    :sswitch_13
    const-string v1, "\u099e\u09cd\u099c"

    .line 1927
    goto :goto_0

    .line 1929
    :sswitch_14
    const-string v1, "\u099c\u09cd\u099e"

    .line 1930
    goto :goto_0

    .line 1932
    :sswitch_15
    const-string v1, "\u09b8\u09cd\u0995\u09cd\u09b0"

    .line 1933
    goto :goto_0

    .line 1935
    :sswitch_16
    const-string v1, "\u0995\u09cd\u099f"

    .line 1936
    goto :goto_0

    .line 1938
    :sswitch_17
    const-string v1, "\u0995\u09cd\u09a4"

    .line 1939
    goto :goto_0

    .line 1941
    :sswitch_18
    const-string v1, "\u0995\u09cd\u09b0"

    .line 1942
    goto :goto_0

    .line 1944
    :sswitch_19
    const-string v1, "\u0995\u09cd\u09b2"

    .line 1945
    goto :goto_0

    .line 1947
    :sswitch_1a
    const-string v1, "\u0995\u09cd\u09b8"

    .line 1948
    goto :goto_0

    .line 1950
    :sswitch_1b
    const-string v1, "\u0997\u09cd\u09a7"

    goto :goto_0

    .line 1953
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 1954
    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 1957
    :sswitch_1c
    const-string v1, "\u0a95\u0acd\u0ab7"

    .line 1958
    goto :goto_0

    .line 1960
    :sswitch_1d
    const-string v1, "\u0aa4\u0acd\u0ab0"

    .line 1961
    goto :goto_0

    .line 1963
    :sswitch_1e
    const-string v1, "\u0a9c\u0acd\u0a9e"

    .line 1964
    goto :goto_0

    .line 1966
    :sswitch_1f
    const-string v1, "\u0ab6\u0acd\u0ab0"

    .line 1967
    goto :goto_0

    .line 1969
    :sswitch_20
    const-string v1, "\u0aa6\u0acd\u0aae"

    .line 1970
    goto :goto_0

    .line 1972
    :sswitch_21
    const-string v1, "\u0aa6\u0acd\u0aaf"

    .line 1973
    goto :goto_0

    .line 1975
    :sswitch_22
    const-string v1, "\u0aa4\u0acd\u0aa4"

    .line 1976
    goto/16 :goto_0

    .line 1978
    :sswitch_23
    const-string v1, "\u0ab3"

    .line 1979
    goto/16 :goto_0

    .line 1981
    :sswitch_24
    const-string v1, "\u0aa4\u0acd\u0a95"

    .line 1982
    goto/16 :goto_0

    .line 1984
    :sswitch_25
    const-string v1, "\u0ab0\u0acd"

    .line 1985
    goto/16 :goto_0

    .line 1987
    :sswitch_26
    const-string v1, "\u0a81"

    .line 1988
    goto/16 :goto_0

    .line 1990
    :sswitch_27
    const-string v1, "\u0abc"

    .line 1991
    goto/16 :goto_0

    .line 1993
    :sswitch_28
    const-string v1, "\u0ac4"

    .line 1994
    goto/16 :goto_0

    .line 1996
    :sswitch_29
    const-string v1, "\u0ae2"

    goto/16 :goto_0

    .line 1999
    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 2000
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2003
    :pswitch_1
    const-string v1, "\u0a36"

    .line 2004
    goto/16 :goto_0

    .line 2006
    :pswitch_2
    const-string v1, "\u0a5c"

    .line 2007
    goto/16 :goto_0

    .line 2009
    :pswitch_3
    const-string v1, "\u0a59"

    .line 2010
    goto/16 :goto_0

    .line 2012
    :pswitch_4
    const-string v1, "\u0a5a"

    .line 2013
    goto/16 :goto_0

    .line 2015
    :pswitch_5
    const-string v1, "\u0a5b"

    .line 2016
    goto/16 :goto_0

    .line 2018
    :pswitch_6
    const-string v1, "\u0a5e"

    .line 2019
    goto/16 :goto_0

    .line 2021
    :pswitch_7
    const-string v1, "\u0a33"

    .line 2022
    goto/16 :goto_0

    .line 2024
    :pswitch_8
    const-string v1, "\u0a74"

    .line 2025
    goto/16 :goto_0

    .line 2027
    :pswitch_9
    const-string v1, "\u0a4d"

    goto/16 :goto_0

    .line 2030
    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2031
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 2032
    sparse-switch v0, :sswitch_data_3

    goto/16 :goto_0

    .line 2035
    :sswitch_2a
    const-string v1, "\u0cb3"

    .line 2036
    goto/16 :goto_0

    .line 2038
    :sswitch_2b
    const-string v1, "\u0c95\u0ccd\u0cb7"

    .line 2039
    goto/16 :goto_0

    .line 2041
    :sswitch_2c
    const-string v1, "\u0c9c\u0ccd\u0c9e"

    .line 2042
    goto/16 :goto_0

    .line 2044
    :sswitch_2d
    const-string v1, "\u0cb6\u0ccd\u0cb0\u0cc0"

    .line 2045
    goto/16 :goto_0

    .line 2047
    :sswitch_2e
    const-string v1, "\u0c93\u0ce6"

    .line 2048
    goto/16 :goto_0

    .line 2050
    :sswitch_2f
    const-string v1, "\u0c8c"

    .line 2051
    goto/16 :goto_0

    .line 2053
    :sswitch_30
    const-string v1, "\u0cb1"

    .line 2054
    goto/16 :goto_0

    .line 2056
    :sswitch_31
    const-string v1, "\u0c83"

    .line 2057
    goto/16 :goto_0

    .line 2059
    :sswitch_32
    const-string v1, "\u0cd5"

    .line 2060
    goto/16 :goto_0

    .line 2062
    :sswitch_33
    const-string v1, "\u0cb0\u0ccd"

    .line 2063
    goto/16 :goto_0

    .line 2065
    :sswitch_34
    const-string v1, "\u0c95\u0cc3"

    .line 2066
    goto/16 :goto_0

    .line 2068
    :sswitch_35
    const-string v1, "\u0c9c\u0cbc\u0ccd"

    .line 2069
    goto/16 :goto_0

    .line 2071
    :sswitch_36
    const-string v1, "\u0ce2"

    .line 2072
    goto/16 :goto_0

    .line 2074
    :sswitch_37
    const-string v1, "\u0cb3\u0ccd"

    goto/16 :goto_0

    .line 2077
    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 2078
    sparse-switch v0, :sswitch_data_4

    goto/16 :goto_0

    .line 2081
    :sswitch_38
    const-string v1, "\u0d7a"

    .line 2082
    goto/16 :goto_0

    .line 2084
    :sswitch_39
    const-string v1, "\u0d7b"

    .line 2085
    goto/16 :goto_0

    .line 2087
    :sswitch_3a
    const-string v1, "\u0d7c"

    .line 2088
    goto/16 :goto_0

    .line 2090
    :sswitch_3b
    const-string v1, "\u0d7d"

    .line 2091
    goto/16 :goto_0

    .line 2093
    :sswitch_3c
    const-string v1, "\u0d7e"

    .line 2094
    goto/16 :goto_0

    .line 2096
    :sswitch_3d
    const-string v1, "\u0d33"

    .line 2097
    goto/16 :goto_0

    .line 2099
    :sswitch_3e
    const-string v1, "\u0d34"

    .line 2100
    goto/16 :goto_0

    .line 2102
    :sswitch_3f
    const-string v1, "\u0d31"

    .line 2103
    goto/16 :goto_0

    .line 2105
    :sswitch_40
    const-string v1, "\u0d31\u0d4d\u0d31"

    .line 2106
    goto/16 :goto_0

    .line 2108
    :sswitch_41
    const-string v1, "\u0d19\u0d4d\u0d15"

    .line 2109
    goto/16 :goto_0

    .line 2111
    :sswitch_42
    const-string v1, "\u0d2e\u0d4d\u0d2a"

    .line 2112
    goto/16 :goto_0

    .line 2114
    :sswitch_43
    const-string v1, "\u0d4c"

    .line 2115
    goto/16 :goto_0

    .line 2117
    :sswitch_44
    const-string v1, "\u0d03"

    .line 2118
    goto/16 :goto_0

    .line 2120
    :sswitch_45
    const-string v1, "\u0d3d"

    goto/16 :goto_0

    .line 2123
    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 2124
    sparse-switch v0, :sswitch_data_5

    goto/16 :goto_0

    .line 2127
    :sswitch_46
    const-string v1, "\u0d9f"

    .line 2128
    goto/16 :goto_0

    .line 2130
    :sswitch_47
    const-string v1, "\u0da5"

    .line 2131
    goto/16 :goto_0

    .line 2133
    :sswitch_48
    const-string v1, "\u0dac"

    .line 2134
    goto/16 :goto_0

    .line 2136
    :sswitch_49
    const-string v1, "\u0db3"

    .line 2137
    goto/16 :goto_0

    .line 2139
    :sswitch_4a
    const-string v1, "\u0db9"

    .line 2140
    goto/16 :goto_0

    .line 2142
    :sswitch_4b
    const-string v1, "\u0dc5"

    .line 2143
    goto/16 :goto_0

    .line 2145
    :sswitch_4c
    const-string v1, "\u0da6"

    .line 2146
    goto/16 :goto_0

    .line 2148
    :sswitch_4d
    const-string v1, "\u0dc6"

    .line 2149
    goto/16 :goto_0

    .line 2151
    :sswitch_4e
    const-string v1, "\u0d93"

    .line 2152
    goto/16 :goto_0

    .line 2154
    :sswitch_4f
    const-string v1, "\u0ddb"

    .line 2155
    goto/16 :goto_0

    .line 2157
    :sswitch_50
    const-string v1, "\u0d8d"

    .line 2158
    goto/16 :goto_0

    .line 2160
    :sswitch_51
    const-string v1, "\u0d8e"

    .line 2161
    goto/16 :goto_0

    .line 2163
    :sswitch_52
    const-string v1, "\u0d8f"

    .line 2164
    goto/16 :goto_0

    .line 2166
    :sswitch_53
    const-string v1, "\u0d90"

    goto/16 :goto_0

    .line 2169
    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 2170
    sparse-switch v0, :sswitch_data_6

    goto/16 :goto_0

    .line 2173
    :sswitch_54
    const-string v1, "\u0c60"

    .line 2174
    goto/16 :goto_0

    .line 2176
    :sswitch_55
    const-string v1, "\u0c33"

    .line 2177
    goto/16 :goto_0

    .line 2179
    :sswitch_56
    const-string v1, "\u0c15\u0c4d\u0c37"

    .line 2180
    goto/16 :goto_0

    .line 2182
    :sswitch_57
    const-string v1, "\u0c31"

    .line 2183
    goto/16 :goto_0

    .line 2185
    :sswitch_58
    const-string v1, "\u0c15\u0c4d\u0c30"

    .line 2186
    goto/16 :goto_0

    .line 2188
    :sswitch_59
    const-string v1, "\u0c16\u0c4d\u0c30"

    .line 2189
    goto/16 :goto_0

    .line 2191
    :sswitch_5a
    const-string v1, "\u0c17\u0c4d\u0c30"

    .line 2192
    goto/16 :goto_0

    .line 2194
    :sswitch_5b
    const-string v1, "\u0c18\u0c4d\u0c30"

    .line 2195
    goto/16 :goto_0

    .line 2197
    :sswitch_5c
    const-string v1, "\u0c1f\u0c4d\u0c30"

    .line 2198
    goto/16 :goto_0

    .line 2200
    :sswitch_5d
    const-string v1, "\u0c21\u0c4d\u0c30"

    .line 2201
    goto/16 :goto_0

    .line 2203
    :sswitch_5e
    const-string v1, "\u0c24\u0c4d\u0c30"

    .line 2204
    goto/16 :goto_0

    .line 2206
    :sswitch_5f
    const-string v1, "\u0c03"

    .line 2207
    goto/16 :goto_0

    .line 2209
    :sswitch_60
    const-string v1, "\u0c01"

    .line 2210
    goto/16 :goto_0

    .line 2212
    :sswitch_61
    const-string v1, "\u0c44"

    goto/16 :goto_0

    .line 2215
    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 2216
    sparse-switch v0, :sswitch_data_7

    goto/16 :goto_0

    .line 2219
    :sswitch_62
    const-string v1, "\u0b5f"

    .line 2220
    goto/16 :goto_0

    .line 2222
    :sswitch_63
    const-string v1, "\u0b71"

    .line 2223
    goto/16 :goto_0

    .line 2225
    :sswitch_64
    const-string v1, "\u0b15\u0b4d\u0b37"

    .line 2226
    goto/16 :goto_0

    .line 2228
    :sswitch_65
    const-string v1, "\u0b17\u0b4d\u0b27"

    .line 2229
    goto/16 :goto_0

    .line 2231
    :sswitch_66
    const-string v1, "\u0b17\u0b4d\u0b28"

    .line 2232
    goto/16 :goto_0

    .line 2234
    :sswitch_67
    const-string v1, "\u0b17\u0b4d\u0b2e"

    .line 2235
    goto/16 :goto_0

    .line 2237
    :sswitch_68
    const-string v1, "\u0b17\u0b4d\u0b33"

    .line 2238
    goto/16 :goto_0

    .line 2240
    :sswitch_69
    const-string v1, "\u0b18\u0b4d\u0b28"

    .line 2241
    goto/16 :goto_0

    .line 2243
    :sswitch_6a
    const-string v1, "\u0b19\u0b4d\u0b15"

    .line 2244
    goto/16 :goto_0

    .line 2246
    :sswitch_6b
    const-string v1, "\u0b19\u0b4d\u0b16"

    .line 2247
    goto/16 :goto_0

    .line 2249
    :sswitch_6c
    const-string v1, "\u0b19\u0b4d\u0b17"

    .line 2250
    goto/16 :goto_0

    .line 2252
    :sswitch_6d
    const-string v1, "\u0b19\u0b4d\u0b18"

    .line 2253
    goto/16 :goto_0

    .line 2255
    :sswitch_6e
    const-string v1, "\u0b1a\u0b4d\u0b1a"

    .line 2256
    goto/16 :goto_0

    .line 2258
    :sswitch_6f
    const-string v1, "\u0b1a\u0b4d\u0b1b"

    goto/16 :goto_0

    .line 1863
    nop

    :sswitch_data_0
    .sparse-switch
        0x905 -> :sswitch_0
        0x906 -> :sswitch_1
        0x907 -> :sswitch_2
        0x908 -> :sswitch_3
        0x909 -> :sswitch_4
        0x90a -> :sswitch_5
        0x90b -> :sswitch_c
        0x90f -> :sswitch_6
        0x910 -> :sswitch_7
        0x911 -> :sswitch_d
        0x913 -> :sswitch_8
        0x914 -> :sswitch_9
        0x117d5 -> :sswitch_b
        0x1209d -> :sswitch_a
    .end sparse-switch

    .line 1908
    :sswitch_data_1
    .sparse-switch
        0x985 -> :sswitch_e
        0x986 -> :sswitch_f
        0x987 -> :sswitch_10
        0x988 -> :sswitch_11
        0x989 -> :sswitch_12
        0x98a -> :sswitch_13
        0x98b -> :sswitch_14
        0x98f -> :sswitch_15
        0x990 -> :sswitch_16
        0x993 -> :sswitch_17
        0x994 -> :sswitch_18
        0x1309c -> :sswitch_1b
        0x1309d -> :sswitch_19
        0x1309e -> :sswitch_1a
    .end sparse-switch

    .line 1954
    :sswitch_data_2
    .sparse-switch
        0xa85 -> :sswitch_1c
        0xa86 -> :sswitch_1d
        0xa87 -> :sswitch_1e
        0xa88 -> :sswitch_1f
        0xa89 -> :sswitch_20
        0xa8a -> :sswitch_21
        0xa8f -> :sswitch_22
        0xa90 -> :sswitch_23
        0xa91 -> :sswitch_29
        0xa93 -> :sswitch_24
        0xa94 -> :sswitch_25
        0xae0 -> :sswitch_28
        0x1509d -> :sswitch_26
        0x1509e -> :sswitch_27
    .end sparse-switch

    .line 2000
    :pswitch_data_0
    .packed-switch 0xa06
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2032
    :sswitch_data_3
    .sparse-switch
        0xc85 -> :sswitch_2a
        0xc86 -> :sswitch_2b
        0xc87 -> :sswitch_2c
        0xc88 -> :sswitch_2d
        0xc89 -> :sswitch_2e
        0xc8a -> :sswitch_2f
        0xc8b -> :sswitch_30
        0xc8e -> :sswitch_31
        0xc8f -> :sswitch_32
        0xc90 -> :sswitch_33
        0xc92 -> :sswitch_34
        0xc93 -> :sswitch_35
        0xc94 -> :sswitch_36
        0x1909d -> :sswitch_37
    .end sparse-switch

    .line 2078
    :sswitch_data_4
    .sparse-switch
        0xd05 -> :sswitch_38
        0xd06 -> :sswitch_39
        0xd07 -> :sswitch_3a
        0xd08 -> :sswitch_3b
        0xd09 -> :sswitch_3c
        0xd0a -> :sswitch_3d
        0xd0b -> :sswitch_3e
        0xd0e -> :sswitch_3f
        0xd0f -> :sswitch_40
        0xd10 -> :sswitch_41
        0xd12 -> :sswitch_42
        0xd13 -> :sswitch_43
        0xd14 -> :sswitch_44
        0x1a09d -> :sswitch_45
    .end sparse-switch

    .line 2124
    :sswitch_data_5
    .sparse-switch
        0xd85 -> :sswitch_46
        0xd86 -> :sswitch_47
        0xd87 -> :sswitch_48
        0xd88 -> :sswitch_49
        0xd89 -> :sswitch_4a
        0xd8a -> :sswitch_4b
        0xd8b -> :sswitch_4c
        0xd8c -> :sswitch_4d
        0xd91 -> :sswitch_4e
        0xd92 -> :sswitch_4f
        0xd94 -> :sswitch_50
        0xd95 -> :sswitch_51
        0xd96 -> :sswitch_52
        0x1b09d -> :sswitch_53
    .end sparse-switch

    .line 2170
    :sswitch_data_6
    .sparse-switch
        0xc05 -> :sswitch_54
        0xc06 -> :sswitch_55
        0xc07 -> :sswitch_56
        0xc08 -> :sswitch_57
        0xc09 -> :sswitch_58
        0xc0a -> :sswitch_59
        0xc0b -> :sswitch_5a
        0xc0e -> :sswitch_5b
        0xc0f -> :sswitch_5c
        0xc10 -> :sswitch_5d
        0xc12 -> :sswitch_5e
        0xc13 -> :sswitch_5f
        0xc14 -> :sswitch_60
        0x1809d -> :sswitch_61
    .end sparse-switch

    .line 2216
    :sswitch_data_7
    .sparse-switch
        0xb05 -> :sswitch_62
        0xb06 -> :sswitch_63
        0xb07 -> :sswitch_64
        0xb08 -> :sswitch_65
        0xb09 -> :sswitch_66
        0xb0a -> :sswitch_67
        0xb0b -> :sswitch_68
        0xb0f -> :sswitch_69
        0xb10 -> :sswitch_6a
        0xb13 -> :sswitch_6b
        0xb14 -> :sswitch_6c
        0x1609c -> :sswitch_6f
        0x1609d -> :sswitch_6d
        0x1609e -> :sswitch_6e
    .end sparse-switch
.end method

.method public getToggledKeyCode(I)I
    .locals 4
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v3, 0x4

    .line 377
    move v0, p1

    .line 378
    .local v0, "toggledKeyCode":I
    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v1, :cond_1

    .line 379
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyCodeForSmallLcd(I)I

    move-result v0

    .line 803
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 382
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 415
    :pswitch_1
    const/16 v0, 0x902

    .line 416
    goto :goto_0

    .line 385
    :pswitch_2
    const/16 v0, 0x94d

    .line 386
    goto :goto_0

    .line 388
    :pswitch_3
    const/16 v0, 0x93e

    .line 389
    goto :goto_0

    .line 391
    :pswitch_4
    const/16 v0, 0x93f

    .line 392
    goto :goto_0

    .line 394
    :pswitch_5
    const/16 v0, 0x940

    .line 395
    goto :goto_0

    .line 397
    :pswitch_6
    const/16 v0, 0x941

    .line 398
    goto :goto_0

    .line 400
    :pswitch_7
    const/16 v0, 0x942

    .line 401
    goto :goto_0

    .line 403
    :pswitch_8
    const/16 v0, 0x947

    .line 404
    goto :goto_0

    .line 406
    :pswitch_9
    const/16 v0, 0x948

    .line 407
    goto :goto_0

    .line 409
    :pswitch_a
    const/16 v0, 0x94b

    .line 410
    goto :goto_0

    .line 412
    :pswitch_b
    const/16 v0, 0x94c

    .line 413
    goto :goto_0

    .line 418
    :pswitch_c
    const/16 v0, 0x903

    .line 419
    goto :goto_0

    .line 421
    :pswitch_d
    const/16 v0, 0x943

    .line 422
    goto :goto_0

    .line 424
    :pswitch_e
    const/16 v0, 0x945

    goto :goto_0

    .line 427
    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 429
    packed-switch p1, :pswitch_data_1

    :pswitch_f
    goto :goto_0

    .line 470
    :pswitch_10
    const/16 v0, 0x981

    goto :goto_0

    .line 431
    :pswitch_11
    const/16 v0, 0x9cd

    .line 432
    goto :goto_0

    .line 434
    :pswitch_12
    const/16 v0, 0x9be

    .line 435
    goto :goto_0

    .line 437
    :pswitch_13
    const/16 v0, 0x9bf

    .line 438
    goto :goto_0

    .line 440
    :pswitch_14
    const/16 v0, 0x9c0

    .line 441
    goto :goto_0

    .line 443
    :pswitch_15
    const/16 v0, 0x9c1

    .line 444
    goto :goto_0

    .line 446
    :pswitch_16
    const/16 v0, 0x9c2

    .line 447
    goto :goto_0

    .line 449
    :pswitch_17
    const/16 v0, 0x9c3

    .line 450
    goto :goto_0

    .line 452
    :pswitch_18
    const/16 v0, 0x9c7

    .line 453
    goto :goto_0

    .line 455
    :pswitch_19
    const/16 v0, 0x9c8

    .line 456
    goto :goto_0

    .line 458
    :pswitch_1a
    const/16 v0, 0x9cb

    .line 459
    goto :goto_0

    .line 461
    :pswitch_1b
    const/16 v0, 0x9cc

    .line 462
    goto :goto_0

    .line 464
    :pswitch_1c
    const/16 v0, 0x982

    .line 465
    goto :goto_0

    .line 467
    :pswitch_1d
    const/16 v0, 0x983

    .line 468
    goto :goto_0

    .line 473
    :cond_3
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 474
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 507
    :sswitch_0
    const/16 v0, 0x902

    .line 508
    goto :goto_0

    .line 477
    :sswitch_1
    const/16 v0, 0xacd

    .line 478
    goto :goto_0

    .line 480
    :sswitch_2
    const/16 v0, 0xabe

    .line 481
    goto :goto_0

    .line 483
    :sswitch_3
    const/16 v0, 0xabf

    .line 484
    goto :goto_0

    .line 486
    :sswitch_4
    const/16 v0, 0xac0

    .line 487
    goto :goto_0

    .line 489
    :sswitch_5
    const/16 v0, 0xac1

    .line 490
    goto/16 :goto_0

    .line 492
    :sswitch_6
    const/16 v0, 0xac2

    .line 493
    goto/16 :goto_0

    .line 495
    :sswitch_7
    const/16 v0, 0xac7

    .line 496
    goto/16 :goto_0

    .line 498
    :sswitch_8
    const/16 v0, 0xac8

    .line 499
    goto/16 :goto_0

    .line 501
    :sswitch_9
    const/16 v0, 0xacb

    .line 502
    goto/16 :goto_0

    .line 504
    :sswitch_a
    const/16 v0, 0xacc

    .line 505
    goto/16 :goto_0

    .line 510
    :sswitch_b
    const/16 v0, 0x903

    .line 511
    goto/16 :goto_0

    .line 513
    :sswitch_c
    const/16 v0, 0xa82

    .line 514
    goto/16 :goto_0

    .line 516
    :sswitch_d
    const/16 v0, 0xa83

    .line 517
    goto/16 :goto_0

    .line 519
    :sswitch_e
    const/16 v0, 0xac3

    .line 520
    goto/16 :goto_0

    .line 522
    :sswitch_f
    const/16 v0, 0xac9

    goto/16 :goto_0

    .line 525
    :cond_4
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 526
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    .line 529
    :sswitch_10
    const/16 v0, 0xa3e

    .line 530
    goto/16 :goto_0

    .line 532
    :sswitch_11
    const/16 v0, 0xa3f

    .line 533
    goto/16 :goto_0

    .line 535
    :sswitch_12
    const/16 v0, 0xa40

    .line 536
    goto/16 :goto_0

    .line 538
    :sswitch_13
    const/16 v0, 0xa41

    .line 539
    goto/16 :goto_0

    .line 541
    :sswitch_14
    const/16 v0, 0xa42

    .line 542
    goto/16 :goto_0

    .line 544
    :sswitch_15
    const/16 v0, 0xa47

    .line 545
    goto/16 :goto_0

    .line 547
    :sswitch_16
    const/16 v0, 0xa48

    .line 548
    goto/16 :goto_0

    .line 550
    :sswitch_17
    const/16 v0, 0xa4b

    .line 551
    goto/16 :goto_0

    .line 553
    :sswitch_18
    const/16 v0, 0xa4c

    .line 554
    goto/16 :goto_0

    .line 556
    :sswitch_19
    const/16 v0, 0xa4c

    .line 557
    goto/16 :goto_0

    .line 559
    :sswitch_1a
    const/16 v0, 0xa70

    goto/16 :goto_0

    .line 562
    :cond_5
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 563
    packed-switch p1, :pswitch_data_2

    :pswitch_1e
    goto/16 :goto_0

    .line 566
    :pswitch_1f
    const/16 v0, 0xbcd

    .line 567
    goto/16 :goto_0

    .line 569
    :pswitch_20
    const/16 v0, 0xbbe

    .line 570
    goto/16 :goto_0

    .line 572
    :pswitch_21
    const/16 v0, 0xbbf

    .line 573
    goto/16 :goto_0

    .line 575
    :pswitch_22
    const/16 v0, 0xbc0

    .line 576
    goto/16 :goto_0

    .line 578
    :pswitch_23
    const/16 v0, 0xbc1

    .line 579
    goto/16 :goto_0

    .line 581
    :pswitch_24
    const/16 v0, 0xbc2

    .line 582
    goto/16 :goto_0

    .line 584
    :pswitch_25
    const/16 v0, 0xbc6

    .line 585
    goto/16 :goto_0

    .line 587
    :pswitch_26
    const/16 v0, 0xbc7

    .line 588
    goto/16 :goto_0

    .line 590
    :pswitch_27
    const/16 v0, 0xbc8

    .line 591
    goto/16 :goto_0

    .line 593
    :pswitch_28
    const/16 v0, 0xbca

    .line 594
    goto/16 :goto_0

    .line 596
    :pswitch_29
    const/16 v0, 0xbcb

    .line 597
    goto/16 :goto_0

    .line 599
    :pswitch_2a
    const/16 v0, 0xbcc

    goto/16 :goto_0

    .line 602
    :cond_6
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 603
    packed-switch p1, :pswitch_data_3

    :pswitch_2b
    goto/16 :goto_0

    .line 645
    :pswitch_2c
    const/16 v0, 0xc82

    goto/16 :goto_0

    .line 606
    :pswitch_2d
    const/16 v0, 0xccd

    .line 607
    goto/16 :goto_0

    .line 609
    :pswitch_2e
    const/16 v0, 0xcbe

    .line 610
    goto/16 :goto_0

    .line 612
    :pswitch_2f
    const/16 v0, 0xcbf

    .line 613
    goto/16 :goto_0

    .line 615
    :pswitch_30
    const/16 v0, 0xcc0

    .line 616
    goto/16 :goto_0

    .line 618
    :pswitch_31
    const/16 v0, 0xcc1

    .line 619
    goto/16 :goto_0

    .line 621
    :pswitch_32
    const/16 v0, 0xcc2

    .line 622
    goto/16 :goto_0

    .line 624
    :pswitch_33
    const/16 v0, 0xcc3

    .line 625
    goto/16 :goto_0

    .line 627
    :pswitch_34
    const/16 v0, 0xcc6

    .line 628
    goto/16 :goto_0

    .line 630
    :pswitch_35
    const/16 v0, 0xcc7

    .line 631
    goto/16 :goto_0

    .line 633
    :pswitch_36
    const/16 v0, 0xcc8

    .line 634
    goto/16 :goto_0

    .line 636
    :pswitch_37
    const/16 v0, 0xcca

    .line 637
    goto/16 :goto_0

    .line 639
    :pswitch_38
    const/16 v0, 0xccb

    .line 640
    goto/16 :goto_0

    .line 642
    :pswitch_39
    const/16 v0, 0xccc

    .line 643
    goto/16 :goto_0

    .line 648
    :cond_7
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 649
    packed-switch p1, :pswitch_data_4

    :pswitch_3a
    goto/16 :goto_0

    .line 691
    :pswitch_3b
    const/16 v0, 0xd02

    goto/16 :goto_0

    .line 652
    :pswitch_3c
    const/16 v0, 0xd4d

    .line 653
    goto/16 :goto_0

    .line 655
    :pswitch_3d
    const/16 v0, 0xd3e

    .line 656
    goto/16 :goto_0

    .line 658
    :pswitch_3e
    const/16 v0, 0xd3f

    .line 659
    goto/16 :goto_0

    .line 661
    :pswitch_3f
    const/16 v0, 0xd40

    .line 662
    goto/16 :goto_0

    .line 664
    :pswitch_40
    const/16 v0, 0xd41

    .line 665
    goto/16 :goto_0

    .line 667
    :pswitch_41
    const/16 v0, 0xd42

    .line 668
    goto/16 :goto_0

    .line 670
    :pswitch_42
    const/16 v0, 0xd43

    .line 671
    goto/16 :goto_0

    .line 673
    :pswitch_43
    const/16 v0, 0xd46

    .line 674
    goto/16 :goto_0

    .line 676
    :pswitch_44
    const/16 v0, 0xd47

    .line 677
    goto/16 :goto_0

    .line 679
    :pswitch_45
    const/16 v0, 0xd48

    .line 680
    goto/16 :goto_0

    .line 682
    :pswitch_46
    const/16 v0, 0xd4a

    .line 683
    goto/16 :goto_0

    .line 685
    :pswitch_47
    const/16 v0, 0xd4b

    .line 686
    goto/16 :goto_0

    .line 688
    :pswitch_48
    const/16 v0, 0xd57

    .line 689
    goto/16 :goto_0

    .line 694
    :cond_8
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 695
    packed-switch p1, :pswitch_data_5

    :pswitch_49
    goto/16 :goto_0

    .line 737
    :pswitch_4a
    const/16 v0, 0xd82

    goto/16 :goto_0

    .line 698
    :pswitch_4b
    const/16 v0, 0xdca

    .line 699
    goto/16 :goto_0

    .line 701
    :pswitch_4c
    const/16 v0, 0xdcf

    .line 702
    goto/16 :goto_0

    .line 704
    :pswitch_4d
    const/16 v0, 0xdd0

    .line 705
    goto/16 :goto_0

    .line 707
    :pswitch_4e
    const/16 v0, 0xdd1

    .line 708
    goto/16 :goto_0

    .line 710
    :pswitch_4f
    const/16 v0, 0xdd2

    .line 711
    goto/16 :goto_0

    .line 713
    :pswitch_50
    const/16 v0, 0xdd3

    .line 714
    goto/16 :goto_0

    .line 716
    :pswitch_51
    const/16 v0, 0xdd4

    .line 717
    goto/16 :goto_0

    .line 719
    :pswitch_52
    const/16 v0, 0xdd6

    .line 720
    goto/16 :goto_0

    .line 722
    :pswitch_53
    const/16 v0, 0xdd9

    .line 723
    goto/16 :goto_0

    .line 725
    :pswitch_54
    const/16 v0, 0xdda

    .line 726
    goto/16 :goto_0

    .line 728
    :pswitch_55
    const/16 v0, 0xddc

    .line 729
    goto/16 :goto_0

    .line 731
    :pswitch_56
    const/16 v0, 0xddd

    .line 732
    goto/16 :goto_0

    .line 734
    :pswitch_57
    const/16 v0, 0xdde

    .line 735
    goto/16 :goto_0

    .line 740
    :cond_9
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v3, :cond_b

    .line 741
    invoke-virtual {p0, p1, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 742
    add-int/lit8 v0, p1, 0x38

    .line 744
    :cond_a
    sparse-switch p1, :sswitch_data_2

    goto/16 :goto_0

    .line 752
    :sswitch_1b
    const/16 v0, 0xc02

    goto/16 :goto_0

    .line 746
    :sswitch_1c
    const/16 v0, 0xc4d

    .line 747
    goto/16 :goto_0

    .line 749
    :sswitch_1d
    const/16 v0, 0xc60

    .line 750
    goto/16 :goto_0

    .line 755
    :cond_b
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 756
    packed-switch p1, :pswitch_data_6

    :pswitch_58
    goto/16 :goto_0

    .line 798
    :pswitch_59
    const/16 v0, 0xb01

    goto/16 :goto_0

    .line 759
    :pswitch_5a
    const/16 v0, 0xb4d

    .line 760
    goto/16 :goto_0

    .line 762
    :pswitch_5b
    const/16 v0, 0xb3e

    .line 763
    goto/16 :goto_0

    .line 765
    :pswitch_5c
    const/16 v0, 0xb3f

    .line 766
    goto/16 :goto_0

    .line 768
    :pswitch_5d
    const/16 v0, 0xb40

    .line 769
    goto/16 :goto_0

    .line 771
    :pswitch_5e
    const/16 v0, 0xb41

    .line 772
    goto/16 :goto_0

    .line 774
    :pswitch_5f
    const/16 v0, 0xb42

    .line 775
    goto/16 :goto_0

    .line 777
    :pswitch_60
    const/16 v0, 0xb43

    .line 778
    goto/16 :goto_0

    .line 780
    :pswitch_61
    const/16 v0, 0xb47

    .line 781
    goto/16 :goto_0

    .line 783
    :pswitch_62
    const/16 v0, 0xb48

    .line 784
    goto/16 :goto_0

    .line 786
    :pswitch_63
    const/16 v0, 0xb4b

    .line 787
    goto/16 :goto_0

    .line 789
    :pswitch_64
    const/16 v0, 0xb4c

    .line 790
    goto/16 :goto_0

    .line 792
    :pswitch_65
    const/16 v0, 0xb02

    .line 793
    goto/16 :goto_0

    .line 795
    :pswitch_66
    const/16 v0, 0xb03

    .line 796
    goto/16 :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x902
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 429
    :pswitch_data_1
    .packed-switch 0x981
        :pswitch_10
        :pswitch_1c
        :pswitch_1d
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_18
        :pswitch_19
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 474
    :sswitch_data_0
    .sparse-switch
        0x902 -> :sswitch_0
        0x903 -> :sswitch_b
        0xa82 -> :sswitch_c
        0xa83 -> :sswitch_d
        0xa85 -> :sswitch_1
        0xa86 -> :sswitch_2
        0xa87 -> :sswitch_3
        0xa88 -> :sswitch_4
        0xa89 -> :sswitch_5
        0xa8a -> :sswitch_6
        0xa8f -> :sswitch_7
        0xa90 -> :sswitch_8
        0xa91 -> :sswitch_f
        0xa93 -> :sswitch_9
        0xa94 -> :sswitch_a
        0xae0 -> :sswitch_e
    .end sparse-switch

    .line 526
    :sswitch_data_1
    .sparse-switch
        0xa06 -> :sswitch_10
        0xa07 -> :sswitch_11
        0xa08 -> :sswitch_12
        0xa09 -> :sswitch_13
        0xa0a -> :sswitch_14
        0xa0f -> :sswitch_15
        0xa10 -> :sswitch_16
        0xa13 -> :sswitch_17
        0xa14 -> :sswitch_18
        0xa3f -> :sswitch_19
        0xa70 -> :sswitch_1a
    .end sparse-switch

    .line 563
    :pswitch_data_2
    .packed-switch 0xb85
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_1e
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch

    .line 603
    :pswitch_data_3
    .packed-switch 0xc82
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_2b
        :pswitch_2b
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2b
        :pswitch_37
        :pswitch_38
        :pswitch_39
    .end packed-switch

    .line 649
    :pswitch_data_4
    .packed-switch 0xd02
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_3a
        :pswitch_3a
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_3a
        :pswitch_46
        :pswitch_47
        :pswitch_48
    .end packed-switch

    .line 695
    :pswitch_data_5
    .packed-switch 0xd82
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_53
        :pswitch_54
        :pswitch_49
        :pswitch_55
        :pswitch_56
        :pswitch_57
    .end packed-switch

    .line 744
    :sswitch_data_2
    .sparse-switch
        0xc02 -> :sswitch_1b
        0xc05 -> :sswitch_1c
        0xc60 -> :sswitch_1d
    .end sparse-switch

    .line 756
    :pswitch_data_6
    .packed-switch 0xb01
        :pswitch_59
        :pswitch_65
        :pswitch_66
        :pswitch_58
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_61
        :pswitch_62
        :pswitch_58
        :pswitch_58
        :pswitch_63
        :pswitch_64
    .end packed-switch
.end method

.method public getToggledKeyLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    .line 1400
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1401
    .local v0, "code":I
    move-object v1, p1

    .line 1402
    .local v1, "toggledLabel":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1403
    sget-boolean v2, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v2, :cond_1

    .line 1404
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyLabelForSmallLcd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1853
    :cond_0
    :goto_0
    return-object v1

    .line 1406
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v2, v4, :cond_2

    .line 1407
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1409
    :sswitch_0
    const-string v1, "\u094d"

    .line 1410
    goto :goto_0

    .line 1412
    :sswitch_1
    const-string v1, "\u093e"

    .line 1413
    goto :goto_0

    .line 1415
    :sswitch_2
    const-string v1, "\u093f"

    .line 1416
    goto :goto_0

    .line 1418
    :sswitch_3
    const-string v1, "\u0940"

    .line 1419
    goto :goto_0

    .line 1421
    :sswitch_4
    const-string v1, "\u0941"

    .line 1422
    goto :goto_0

    .line 1424
    :sswitch_5
    const-string v1, "\u0942"

    .line 1425
    goto :goto_0

    .line 1427
    :sswitch_6
    const-string v1, "\u0947"

    .line 1428
    goto :goto_0

    .line 1430
    :sswitch_7
    const-string v1, "\u0948"

    .line 1431
    goto :goto_0

    .line 1433
    :sswitch_8
    const-string v1, "\u094b"

    .line 1434
    goto :goto_0

    .line 1436
    :sswitch_9
    const-string v1, "\u094c"

    .line 1437
    goto :goto_0

    .line 1439
    :sswitch_a
    const-string v1, "\u0902"

    .line 1440
    goto :goto_0

    .line 1442
    :sswitch_b
    const-string v1, "\u0903"

    .line 1443
    goto :goto_0

    .line 1445
    :sswitch_c
    const-string v1, "\u0943"

    .line 1446
    goto :goto_0

    .line 1448
    :sswitch_d
    const-string v1, "\u0945"

    goto :goto_0

    .line 1451
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1452
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1455
    :sswitch_e
    const-string v1, "\u09cd"

    .line 1456
    goto :goto_0

    .line 1458
    :sswitch_f
    const-string v1, "\u09be"

    .line 1459
    goto :goto_0

    .line 1461
    :sswitch_10
    const-string v1, "\u09bf"

    .line 1462
    goto :goto_0

    .line 1464
    :sswitch_11
    const-string v1, "\u09c0"

    .line 1465
    goto :goto_0

    .line 1467
    :sswitch_12
    const-string v1, "\u09c1"

    .line 1468
    goto :goto_0

    .line 1470
    :sswitch_13
    const-string v1, "\u09c2"

    .line 1471
    goto :goto_0

    .line 1473
    :sswitch_14
    const-string v1, "\u09c3"

    .line 1474
    goto :goto_0

    .line 1476
    :sswitch_15
    const-string v1, "\u09c7"

    .line 1477
    goto :goto_0

    .line 1479
    :sswitch_16
    const-string v1, "\u09c8"

    .line 1480
    goto :goto_0

    .line 1482
    :sswitch_17
    const-string v1, "\u09cb"

    .line 1483
    goto :goto_0

    .line 1485
    :sswitch_18
    const-string v1, "\u09cc"

    .line 1486
    goto :goto_0

    .line 1488
    :sswitch_19
    const-string v1, "\u0982"

    .line 1489
    goto :goto_0

    .line 1491
    :sswitch_1a
    const-string v1, "\u0983"

    .line 1492
    goto :goto_0

    .line 1494
    :sswitch_1b
    const-string v1, "\u0981"

    goto :goto_0

    .line 1497
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 1498
    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 1501
    :sswitch_1c
    const-string v1, "\u0acd"

    .line 1502
    goto :goto_0

    .line 1504
    :sswitch_1d
    const-string v1, "\u0abe"

    .line 1505
    goto :goto_0

    .line 1507
    :sswitch_1e
    const-string v1, "\u0abf"

    .line 1508
    goto :goto_0

    .line 1510
    :sswitch_1f
    const-string v1, "\u0ac0"

    .line 1511
    goto :goto_0

    .line 1513
    :sswitch_20
    const-string v1, "\u0ac1"

    .line 1514
    goto :goto_0

    .line 1516
    :sswitch_21
    const-string v1, "\u0ac2"

    .line 1517
    goto :goto_0

    .line 1519
    :sswitch_22
    const-string v1, "\u0ac7"

    .line 1520
    goto/16 :goto_0

    .line 1522
    :sswitch_23
    const-string v1, "\u0ac8"

    .line 1523
    goto/16 :goto_0

    .line 1525
    :sswitch_24
    const-string v1, "\u0acb"

    .line 1526
    goto/16 :goto_0

    .line 1528
    :sswitch_25
    const-string v1, "\u0acc"

    .line 1529
    goto/16 :goto_0

    .line 1531
    :sswitch_26
    const-string v1, "\u0a82"

    .line 1532
    goto/16 :goto_0

    .line 1534
    :sswitch_27
    const-string v1, "\u0a83"

    .line 1535
    goto/16 :goto_0

    .line 1537
    :sswitch_28
    const-string v1, "\u0ac3"

    .line 1538
    goto/16 :goto_0

    .line 1540
    :sswitch_29
    const-string v1, "\u0ac9"

    goto/16 :goto_0

    .line 1543
    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 1544
    sparse-switch v0, :sswitch_data_3

    goto/16 :goto_0

    .line 1547
    :sswitch_2a
    const-string v1, "\u0a3e"

    .line 1548
    goto/16 :goto_0

    .line 1550
    :sswitch_2b
    const-string v1, "\u0a3f"

    .line 1551
    goto/16 :goto_0

    .line 1553
    :sswitch_2c
    const-string v1, "\u0a40"

    .line 1554
    goto/16 :goto_0

    .line 1556
    :sswitch_2d
    const-string v1, "\u0a41"

    .line 1557
    goto/16 :goto_0

    .line 1559
    :sswitch_2e
    const-string v1, "\u0a42"

    .line 1560
    goto/16 :goto_0

    .line 1562
    :sswitch_2f
    const-string v1, "\u0a47"

    .line 1563
    goto/16 :goto_0

    .line 1565
    :sswitch_30
    const-string v1, "\u0a48"

    .line 1566
    goto/16 :goto_0

    .line 1568
    :sswitch_31
    const-string v1, "\u0a4b"

    .line 1569
    goto/16 :goto_0

    .line 1571
    :sswitch_32
    const-string v1, "\u0a4c"

    .line 1572
    goto/16 :goto_0

    .line 1574
    :sswitch_33
    const-string v1, "\u0a3f"

    .line 1575
    goto/16 :goto_0

    .line 1577
    :sswitch_34
    const-string v1, "\u0a70"

    goto/16 :goto_0

    .line 1580
    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1581
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1584
    :pswitch_1
    const-string v1, "\u0bcd"

    .line 1585
    goto/16 :goto_0

    .line 1587
    :pswitch_2
    const-string v1, "\u0bbe"

    .line 1588
    goto/16 :goto_0

    .line 1590
    :pswitch_3
    const-string v1, "\u0bbf"

    .line 1591
    goto/16 :goto_0

    .line 1593
    :pswitch_4
    const-string v1, "\u0bc0"

    .line 1594
    goto/16 :goto_0

    .line 1596
    :pswitch_5
    const-string v1, "\u0bc1"

    .line 1597
    goto/16 :goto_0

    .line 1599
    :pswitch_6
    const-string v1, "\u0bc2"

    .line 1600
    goto/16 :goto_0

    .line 1602
    :pswitch_7
    const-string v1, "\u0bc6"

    .line 1603
    goto/16 :goto_0

    .line 1605
    :pswitch_8
    const-string v1, "\u0bc7"

    .line 1606
    goto/16 :goto_0

    .line 1608
    :pswitch_9
    const-string v1, "\u0bc8"

    .line 1609
    goto/16 :goto_0

    .line 1611
    :pswitch_a
    const-string v1, "\u0bca"

    .line 1612
    goto/16 :goto_0

    .line 1614
    :pswitch_b
    const-string v1, "\u0bcb"

    .line 1615
    goto/16 :goto_0

    .line 1617
    :pswitch_c
    const-string v1, "\u0bcc"

    goto/16 :goto_0

    .line 1620
    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 1621
    sparse-switch v0, :sswitch_data_4

    goto/16 :goto_0

    .line 1624
    :sswitch_35
    const-string v1, "\u0ccd"

    .line 1625
    goto/16 :goto_0

    .line 1627
    :sswitch_36
    const-string v1, "\u0cbe"

    .line 1628
    goto/16 :goto_0

    .line 1630
    :sswitch_37
    const-string v1, "\u0cbf"

    .line 1631
    goto/16 :goto_0

    .line 1633
    :sswitch_38
    const-string v1, "\u0cc0"

    .line 1634
    goto/16 :goto_0

    .line 1636
    :sswitch_39
    const-string v1, "\u0cc1"

    .line 1637
    goto/16 :goto_0

    .line 1639
    :sswitch_3a
    const-string v1, "\u0cc2"

    .line 1640
    goto/16 :goto_0

    .line 1642
    :sswitch_3b
    const-string v1, "\u0cc3"

    .line 1643
    goto/16 :goto_0

    .line 1645
    :sswitch_3c
    const-string v1, "\u0cc6"

    .line 1646
    goto/16 :goto_0

    .line 1648
    :sswitch_3d
    const-string v1, "\u0cc7"

    .line 1649
    goto/16 :goto_0

    .line 1651
    :sswitch_3e
    const-string v1, "\u0cc8"

    .line 1652
    goto/16 :goto_0

    .line 1654
    :sswitch_3f
    const-string v1, "\u0cca"

    .line 1655
    goto/16 :goto_0

    .line 1657
    :sswitch_40
    const-string v1, "\u0ccb"

    .line 1658
    goto/16 :goto_0

    .line 1660
    :sswitch_41
    const-string v1, "\u0ccc"

    .line 1661
    goto/16 :goto_0

    .line 1663
    :sswitch_42
    const-string v1, "\u0c82"

    goto/16 :goto_0

    .line 1666
    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 1667
    sparse-switch v0, :sswitch_data_5

    goto/16 :goto_0

    .line 1670
    :sswitch_43
    const-string v1, "\u0d4d"

    .line 1671
    goto/16 :goto_0

    .line 1673
    :sswitch_44
    const-string v1, "\u0d3e"

    .line 1674
    goto/16 :goto_0

    .line 1676
    :sswitch_45
    const-string v1, "\u0d3f"

    .line 1677
    goto/16 :goto_0

    .line 1679
    :sswitch_46
    const-string v1, "\u0d40"

    .line 1680
    goto/16 :goto_0

    .line 1682
    :sswitch_47
    const-string v1, "\u0d41"

    .line 1683
    goto/16 :goto_0

    .line 1685
    :sswitch_48
    const-string v1, "\u0d42"

    .line 1686
    goto/16 :goto_0

    .line 1688
    :sswitch_49
    const-string v1, "\u0d43"

    .line 1689
    goto/16 :goto_0

    .line 1691
    :sswitch_4a
    const-string v1, "\u0d46"

    .line 1692
    goto/16 :goto_0

    .line 1694
    :sswitch_4b
    const-string v1, "\u0d47"

    .line 1695
    goto/16 :goto_0

    .line 1697
    :sswitch_4c
    const-string v1, "\u0d48"

    .line 1698
    goto/16 :goto_0

    .line 1700
    :sswitch_4d
    const-string v1, "\u0d4a"

    .line 1701
    goto/16 :goto_0

    .line 1703
    :sswitch_4e
    const-string v1, "\u0d4b"

    .line 1704
    goto/16 :goto_0

    .line 1706
    :sswitch_4f
    const-string v1, "\u0d57"

    .line 1707
    goto/16 :goto_0

    .line 1709
    :sswitch_50
    const-string v1, "\u0d02"

    goto/16 :goto_0

    .line 1712
    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 1713
    sparse-switch v0, :sswitch_data_6

    goto/16 :goto_0

    .line 1716
    :sswitch_51
    const-string v1, "\u0dca"

    .line 1717
    goto/16 :goto_0

    .line 1719
    :sswitch_52
    const-string v1, "\u0dcf"

    .line 1720
    goto/16 :goto_0

    .line 1722
    :sswitch_53
    const-string v1, "\u0dd0"

    .line 1723
    goto/16 :goto_0

    .line 1725
    :sswitch_54
    const-string v1, "\u0dd1"

    .line 1726
    goto/16 :goto_0

    .line 1728
    :sswitch_55
    const-string v1, "\u0dd2"

    .line 1729
    goto/16 :goto_0

    .line 1731
    :sswitch_56
    const-string v1, "\u0dd3"

    .line 1732
    goto/16 :goto_0

    .line 1734
    :sswitch_57
    const-string v1, "\u0dd4"

    .line 1735
    goto/16 :goto_0

    .line 1737
    :sswitch_58
    const-string v1, "\u0dd6"

    .line 1738
    goto/16 :goto_0

    .line 1740
    :sswitch_59
    const-string v1, "\u0dd9"

    .line 1741
    goto/16 :goto_0

    .line 1743
    :sswitch_5a
    const-string v1, "\u0dda"

    .line 1744
    goto/16 :goto_0

    .line 1746
    :sswitch_5b
    const-string v1, "\u0ddc"

    .line 1747
    goto/16 :goto_0

    .line 1749
    :sswitch_5c
    const-string v1, "\u0ddd"

    .line 1750
    goto/16 :goto_0

    .line 1752
    :sswitch_5d
    const-string v1, "\u0dde"

    .line 1753
    goto/16 :goto_0

    .line 1755
    :sswitch_5e
    const-string v1, "\u0d82"

    goto/16 :goto_0

    .line 1758
    :cond_9
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    .line 1759
    sparse-switch v0, :sswitch_data_7

    goto/16 :goto_0

    .line 1762
    :sswitch_5f
    const-string v1, "\u0c4d"

    .line 1763
    goto/16 :goto_0

    .line 1765
    :sswitch_60
    const-string v1, "\u0c3e"

    .line 1766
    goto/16 :goto_0

    .line 1768
    :sswitch_61
    const-string v1, "\u0c3f"

    .line 1769
    goto/16 :goto_0

    .line 1771
    :sswitch_62
    const-string v1, "\u0c40"

    .line 1772
    goto/16 :goto_0

    .line 1774
    :sswitch_63
    const-string v1, "\u0c41"

    .line 1775
    goto/16 :goto_0

    .line 1777
    :sswitch_64
    const-string v1, "\u0c42"

    .line 1778
    goto/16 :goto_0

    .line 1780
    :sswitch_65
    const-string v1, "\u0c43"

    .line 1781
    goto/16 :goto_0

    .line 1783
    :sswitch_66
    const-string v1, "\u0c46"

    .line 1784
    goto/16 :goto_0

    .line 1786
    :sswitch_67
    const-string v1, "\u0c47"

    .line 1787
    goto/16 :goto_0

    .line 1789
    :sswitch_68
    const-string v1, "\u0c48"

    .line 1790
    goto/16 :goto_0

    .line 1792
    :sswitch_69
    const-string v1, "\u0c4a"

    .line 1793
    goto/16 :goto_0

    .line 1795
    :sswitch_6a
    const-string v1, "\u0c4b"

    .line 1796
    goto/16 :goto_0

    .line 1798
    :sswitch_6b
    const-string v1, "\u0c4c"

    .line 1799
    goto/16 :goto_0

    .line 1801
    :sswitch_6c
    const-string v1, "\u0c02"

    goto/16 :goto_0

    .line 1804
    :cond_a
    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1805
    sparse-switch v0, :sswitch_data_8

    goto/16 :goto_0

    .line 1808
    :sswitch_6d
    const-string v1, "\u0b4d"

    .line 1809
    goto/16 :goto_0

    .line 1811
    :sswitch_6e
    const-string v1, "\u0b3e"

    .line 1812
    goto/16 :goto_0

    .line 1814
    :sswitch_6f
    const-string v1, "\u0b3f"

    .line 1815
    goto/16 :goto_0

    .line 1817
    :sswitch_70
    const-string v1, "\u0b40"

    .line 1818
    goto/16 :goto_0

    .line 1820
    :sswitch_71
    const-string v1, "\u0b41"

    .line 1821
    goto/16 :goto_0

    .line 1823
    :sswitch_72
    const-string v1, "\u0b42"

    .line 1824
    goto/16 :goto_0

    .line 1826
    :sswitch_73
    const-string v1, "\u0b43"

    .line 1827
    goto/16 :goto_0

    .line 1829
    :sswitch_74
    const-string v1, "\u0b47"

    .line 1830
    goto/16 :goto_0

    .line 1832
    :sswitch_75
    const-string v1, "\u0b48"

    .line 1833
    goto/16 :goto_0

    .line 1835
    :sswitch_76
    const-string v1, "\u0b4b"

    .line 1836
    goto/16 :goto_0

    .line 1838
    :sswitch_77
    const-string v1, "\u0b4c"

    .line 1839
    goto/16 :goto_0

    .line 1841
    :sswitch_78
    const-string v1, "\u0b02"

    .line 1842
    goto/16 :goto_0

    .line 1844
    :sswitch_79
    const-string v1, "\u0b03"

    .line 1845
    goto/16 :goto_0

    .line 1847
    :sswitch_7a
    const-string v1, "\u0b01"

    goto/16 :goto_0

    .line 1407
    :sswitch_data_0
    .sparse-switch
        0x905 -> :sswitch_0
        0x906 -> :sswitch_1
        0x907 -> :sswitch_2
        0x908 -> :sswitch_3
        0x909 -> :sswitch_4
        0x90a -> :sswitch_5
        0x90b -> :sswitch_c
        0x90f -> :sswitch_6
        0x910 -> :sswitch_7
        0x911 -> :sswitch_d
        0x913 -> :sswitch_8
        0x914 -> :sswitch_9
        0x117d5 -> :sswitch_b
        0x1209d -> :sswitch_a
    .end sparse-switch

    .line 1452
    :sswitch_data_1
    .sparse-switch
        0x985 -> :sswitch_e
        0x986 -> :sswitch_f
        0x987 -> :sswitch_10
        0x988 -> :sswitch_11
        0x989 -> :sswitch_12
        0x98a -> :sswitch_13
        0x98b -> :sswitch_14
        0x98f -> :sswitch_15
        0x990 -> :sswitch_16
        0x993 -> :sswitch_17
        0x994 -> :sswitch_18
        0x1309c -> :sswitch_1b
        0x1309d -> :sswitch_19
        0x1309e -> :sswitch_1a
    .end sparse-switch

    .line 1498
    :sswitch_data_2
    .sparse-switch
        0xa85 -> :sswitch_1c
        0xa86 -> :sswitch_1d
        0xa87 -> :sswitch_1e
        0xa88 -> :sswitch_1f
        0xa89 -> :sswitch_20
        0xa8a -> :sswitch_21
        0xa8f -> :sswitch_22
        0xa90 -> :sswitch_23
        0xa91 -> :sswitch_29
        0xa93 -> :sswitch_24
        0xa94 -> :sswitch_25
        0xae0 -> :sswitch_28
        0x1509d -> :sswitch_26
        0x1509e -> :sswitch_27
    .end sparse-switch

    .line 1544
    :sswitch_data_3
    .sparse-switch
        0xa06 -> :sswitch_2a
        0xa07 -> :sswitch_2b
        0xa08 -> :sswitch_2c
        0xa09 -> :sswitch_2d
        0xa0a -> :sswitch_2e
        0xa0f -> :sswitch_2f
        0xa10 -> :sswitch_30
        0xa13 -> :sswitch_31
        0xa14 -> :sswitch_32
        0xa3f -> :sswitch_33
        0xa70 -> :sswitch_34
    .end sparse-switch

    .line 1581
    :pswitch_data_0
    .packed-switch 0xb85
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1621
    :sswitch_data_4
    .sparse-switch
        0xc85 -> :sswitch_35
        0xc86 -> :sswitch_36
        0xc87 -> :sswitch_37
        0xc88 -> :sswitch_38
        0xc89 -> :sswitch_39
        0xc8a -> :sswitch_3a
        0xc8b -> :sswitch_3b
        0xc8e -> :sswitch_3c
        0xc8f -> :sswitch_3d
        0xc90 -> :sswitch_3e
        0xc92 -> :sswitch_3f
        0xc93 -> :sswitch_40
        0xc94 -> :sswitch_41
        0x1909d -> :sswitch_42
    .end sparse-switch

    .line 1667
    :sswitch_data_5
    .sparse-switch
        0xd05 -> :sswitch_43
        0xd06 -> :sswitch_44
        0xd07 -> :sswitch_45
        0xd08 -> :sswitch_46
        0xd09 -> :sswitch_47
        0xd0a -> :sswitch_48
        0xd0b -> :sswitch_49
        0xd0e -> :sswitch_4a
        0xd0f -> :sswitch_4b
        0xd10 -> :sswitch_4c
        0xd12 -> :sswitch_4d
        0xd13 -> :sswitch_4e
        0xd14 -> :sswitch_4f
        0x1a09d -> :sswitch_50
    .end sparse-switch

    .line 1713
    :sswitch_data_6
    .sparse-switch
        0xd85 -> :sswitch_51
        0xd86 -> :sswitch_52
        0xd87 -> :sswitch_53
        0xd88 -> :sswitch_54
        0xd89 -> :sswitch_55
        0xd8a -> :sswitch_56
        0xd8b -> :sswitch_57
        0xd8c -> :sswitch_58
        0xd91 -> :sswitch_59
        0xd92 -> :sswitch_5a
        0xd94 -> :sswitch_5b
        0xd95 -> :sswitch_5c
        0xd96 -> :sswitch_5d
        0x1b09d -> :sswitch_5e
    .end sparse-switch

    .line 1759
    :sswitch_data_7
    .sparse-switch
        0xc05 -> :sswitch_5f
        0xc06 -> :sswitch_60
        0xc07 -> :sswitch_61
        0xc08 -> :sswitch_62
        0xc09 -> :sswitch_63
        0xc0a -> :sswitch_64
        0xc0b -> :sswitch_65
        0xc0e -> :sswitch_66
        0xc0f -> :sswitch_67
        0xc10 -> :sswitch_68
        0xc12 -> :sswitch_69
        0xc13 -> :sswitch_6a
        0xc14 -> :sswitch_6b
        0x1809d -> :sswitch_6c
    .end sparse-switch

    .line 1805
    :sswitch_data_8
    .sparse-switch
        0xb05 -> :sswitch_6d
        0xb06 -> :sswitch_6e
        0xb07 -> :sswitch_6f
        0xb08 -> :sswitch_70
        0xb09 -> :sswitch_71
        0xb0a -> :sswitch_72
        0xb0b -> :sswitch_73
        0xb0f -> :sswitch_74
        0xb10 -> :sswitch_75
        0xb13 -> :sswitch_76
        0xb14 -> :sswitch_77
        0x1609c -> :sswitch_7a
        0x1609d -> :sswitch_78
        0x1609e -> :sswitch_79
    .end sparse-switch
.end method

.method public getVowelKeyCode(IIZ)I
    .locals 7
    .param p1, "primaryCode"    # I
    .param p2, "vowelKeyShiftState"    # I
    .param p3, "keyCombination"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 5711
    move v0, p1

    .line 5712
    .local v0, "shiftedKeyCode":I
    packed-switch p2, :pswitch_data_0

    .line 6397
    :cond_0
    :goto_0
    return v0

    .line 5714
    :pswitch_0
    if-eqz p3, :cond_8

    .line 5715
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v3, :cond_1

    .line 5716
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 5718
    :pswitch_2
    const/16 v0, 0x94d

    .line 5719
    goto :goto_0

    .line 5721
    :pswitch_3
    const/16 v0, 0x93e

    .line 5722
    goto :goto_0

    .line 5724
    :pswitch_4
    const/16 v0, 0x93f

    .line 5725
    goto :goto_0

    .line 5727
    :pswitch_5
    const/16 v0, 0x940

    .line 5728
    goto :goto_0

    .line 5730
    :pswitch_6
    const/16 v0, 0x941

    .line 5731
    goto :goto_0

    .line 5733
    :pswitch_7
    const/16 v0, 0x942

    .line 5734
    goto :goto_0

    .line 5736
    :pswitch_8
    const/16 v0, 0x947

    .line 5737
    goto :goto_0

    .line 5739
    :pswitch_9
    const/16 v0, 0x948

    goto :goto_0

    .line 5742
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v2, :cond_2

    .line 5743
    packed-switch p1, :pswitch_data_2

    :pswitch_a
    goto :goto_0

    .line 5745
    :pswitch_b
    const/16 v0, 0x9cd

    .line 5746
    goto :goto_0

    .line 5748
    :pswitch_c
    const/16 v0, 0x9be

    .line 5749
    goto :goto_0

    .line 5751
    :pswitch_d
    const/16 v0, 0x9bf

    .line 5752
    goto :goto_0

    .line 5754
    :pswitch_e
    const/16 v0, 0x9c0

    .line 5755
    goto :goto_0

    .line 5757
    :pswitch_f
    const/16 v0, 0x9c1

    .line 5758
    goto :goto_0

    .line 5760
    :pswitch_10
    const/16 v0, 0x9c2

    .line 5761
    goto :goto_0

    .line 5763
    :pswitch_11
    const/16 v0, 0x9c3

    .line 5764
    goto :goto_0

    .line 5766
    :pswitch_12
    const/16 v0, 0x9c7

    goto :goto_0

    .line 5769
    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 5770
    packed-switch p1, :pswitch_data_3

    :pswitch_13
    goto :goto_0

    .line 5772
    :pswitch_14
    const/16 v0, 0xacd

    .line 5773
    goto :goto_0

    .line 5775
    :pswitch_15
    const/16 v0, 0xabe

    .line 5776
    goto :goto_0

    .line 5778
    :pswitch_16
    const/16 v0, 0xabf

    .line 5779
    goto :goto_0

    .line 5781
    :pswitch_17
    const/16 v0, 0xac0

    .line 5782
    goto :goto_0

    .line 5784
    :pswitch_18
    const/16 v0, 0xac1

    .line 5785
    goto :goto_0

    .line 5787
    :pswitch_19
    const/16 v0, 0xac2

    .line 5788
    goto :goto_0

    .line 5790
    :pswitch_1a
    const/16 v0, 0xac7

    .line 5791
    goto :goto_0

    .line 5793
    :pswitch_1b
    const/16 v0, 0xac8

    goto :goto_0

    .line 5796
    :cond_3
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v6, :cond_4

    .line 5797
    packed-switch p1, :pswitch_data_4

    :pswitch_1c
    goto :goto_0

    .line 5799
    :pswitch_1d
    const/16 v0, 0xccd

    .line 5800
    goto :goto_0

    .line 5802
    :pswitch_1e
    const/16 v0, 0xcbe

    .line 5803
    goto :goto_0

    .line 5805
    :pswitch_1f
    const/16 v0, 0xcbf

    .line 5806
    goto :goto_0

    .line 5808
    :pswitch_20
    const/16 v0, 0xcc0

    .line 5809
    goto :goto_0

    .line 5811
    :pswitch_21
    const/16 v0, 0xcc1

    .line 5812
    goto :goto_0

    .line 5814
    :pswitch_22
    const/16 v0, 0xcc2

    .line 5815
    goto :goto_0

    .line 5817
    :pswitch_23
    const/16 v0, 0xcc3

    .line 5818
    goto :goto_0

    .line 5820
    :pswitch_24
    const/16 v0, 0xcc6

    goto/16 :goto_0

    .line 5823
    :cond_4
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 5824
    packed-switch p1, :pswitch_data_5

    :pswitch_25
    goto/16 :goto_0

    .line 5826
    :pswitch_26
    const/16 v0, 0xa4d

    .line 5827
    goto/16 :goto_0

    .line 5829
    :pswitch_27
    const/16 v0, 0xa3e

    .line 5830
    goto/16 :goto_0

    .line 5832
    :pswitch_28
    const/16 v0, 0xa3f

    .line 5833
    goto/16 :goto_0

    .line 5835
    :pswitch_29
    const/16 v0, 0xa40

    .line 5836
    goto/16 :goto_0

    .line 5838
    :pswitch_2a
    const/16 v0, 0xa41

    .line 5839
    goto/16 :goto_0

    .line 5841
    :pswitch_2b
    const/16 v0, 0xa42

    .line 5842
    goto/16 :goto_0

    .line 5844
    :pswitch_2c
    const/16 v0, 0xa47

    .line 5845
    goto/16 :goto_0

    .line 5847
    :pswitch_2d
    const/16 v0, 0xa48

    goto/16 :goto_0

    .line 5850
    :cond_5
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 5851
    packed-switch p1, :pswitch_data_6

    :pswitch_2e
    goto/16 :goto_0

    .line 5853
    :pswitch_2f
    const/16 v0, 0xd4d

    .line 5854
    goto/16 :goto_0

    .line 5856
    :pswitch_30
    const/16 v0, 0xd3e

    .line 5857
    goto/16 :goto_0

    .line 5859
    :pswitch_31
    const/16 v0, 0xd3f

    .line 5860
    goto/16 :goto_0

    .line 5862
    :pswitch_32
    const/16 v0, 0xd40

    .line 5863
    goto/16 :goto_0

    .line 5865
    :pswitch_33
    const/16 v0, 0xd41

    .line 5866
    goto/16 :goto_0

    .line 5868
    :pswitch_34
    const/16 v0, 0xd42

    .line 5869
    goto/16 :goto_0

    .line 5871
    :pswitch_35
    const/16 v0, 0xd46

    .line 5872
    goto/16 :goto_0

    .line 5874
    :pswitch_36
    const/16 v0, 0xd48

    goto/16 :goto_0

    .line 5877
    :cond_6
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v4, :cond_7

    .line 5878
    packed-switch p1, :pswitch_data_7

    :pswitch_37
    goto/16 :goto_0

    .line 5880
    :pswitch_38
    const/16 v0, 0xbcd

    .line 5881
    goto/16 :goto_0

    .line 5883
    :pswitch_39
    const/16 v0, 0xbbe

    .line 5884
    goto/16 :goto_0

    .line 5886
    :pswitch_3a
    const/16 v0, 0xbbf

    .line 5887
    goto/16 :goto_0

    .line 5889
    :pswitch_3b
    const/16 v0, 0xbc0

    .line 5890
    goto/16 :goto_0

    .line 5892
    :pswitch_3c
    const/16 v0, 0xbc1

    .line 5893
    goto/16 :goto_0

    .line 5895
    :pswitch_3d
    const/16 v0, 0xbc2

    .line 5896
    goto/16 :goto_0

    .line 5898
    :pswitch_3e
    const/16 v0, 0xbc6

    .line 5899
    goto/16 :goto_0

    .line 5901
    :pswitch_3f
    const/16 v0, 0xbc7

    goto/16 :goto_0

    .line 5904
    :cond_7
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v5, :cond_0

    .line 5905
    packed-switch p1, :pswitch_data_8

    :pswitch_40
    goto/16 :goto_0

    .line 5907
    :pswitch_41
    const/16 v0, 0xc4d

    .line 5908
    goto/16 :goto_0

    .line 5910
    :pswitch_42
    const/16 v0, 0xc3e

    .line 5911
    goto/16 :goto_0

    .line 5913
    :pswitch_43
    const/16 v0, 0xc3f

    .line 5914
    goto/16 :goto_0

    .line 5916
    :pswitch_44
    const/16 v0, 0xc40

    .line 5917
    goto/16 :goto_0

    .line 5919
    :pswitch_45
    const/16 v0, 0xc41

    .line 5920
    goto/16 :goto_0

    .line 5922
    :pswitch_46
    const/16 v0, 0xc42

    .line 5923
    goto/16 :goto_0

    .line 5925
    :pswitch_47
    const/16 v0, 0xc43

    .line 5926
    goto/16 :goto_0

    .line 5928
    :pswitch_48
    const/16 v0, 0xc46

    goto/16 :goto_0

    .line 5933
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyCode(IIZ)I

    move-result v0

    .line 5935
    goto/16 :goto_0

    .line 5937
    :pswitch_49
    if-eqz p3, :cond_10

    .line 5938
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v3, :cond_9

    .line 5939
    packed-switch p1, :pswitch_data_9

    :pswitch_4a
    goto/16 :goto_0

    .line 5941
    :pswitch_4b
    const/16 v0, 0x94b

    .line 5942
    goto/16 :goto_0

    .line 5944
    :pswitch_4c
    const/16 v0, 0x94c

    .line 5945
    goto/16 :goto_0

    .line 5947
    :pswitch_4d
    const/16 v0, 0x902

    .line 5948
    goto/16 :goto_0

    .line 5950
    :pswitch_4e
    const/16 v0, 0x903

    .line 5951
    goto/16 :goto_0

    .line 5953
    :pswitch_4f
    const/16 v0, 0x901

    .line 5954
    goto/16 :goto_0

    .line 5956
    :pswitch_50
    const/16 v0, 0x945

    .line 5957
    goto/16 :goto_0

    .line 5959
    :pswitch_51
    const/16 v0, 0x93c

    .line 5960
    goto/16 :goto_0

    .line 5962
    :pswitch_52
    const/16 v0, 0x943

    goto/16 :goto_0

    .line 5965
    :cond_9
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v2, :cond_a

    .line 5966
    packed-switch p1, :pswitch_data_a

    :pswitch_53
    goto/16 :goto_0

    .line 5968
    :pswitch_54
    const/16 v0, 0x9c8

    .line 5969
    goto/16 :goto_0

    .line 5971
    :pswitch_55
    const/16 v0, 0x9cb

    .line 5972
    goto/16 :goto_0

    .line 5974
    :pswitch_56
    const/16 v0, 0x9cc

    .line 5975
    goto/16 :goto_0

    .line 5977
    :pswitch_57
    const/16 v0, 0x982

    .line 5978
    goto/16 :goto_0

    .line 5980
    :pswitch_58
    const/16 v0, 0x981

    .line 5981
    goto/16 :goto_0

    .line 5983
    :pswitch_59
    const/16 v0, 0x9cd

    .line 5984
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 5985
    const/16 v1, 0xe

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 5988
    :pswitch_5a
    const/16 v0, 0x9b0

    .line 5989
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 5990
    const/16 v1, 0xf

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 5993
    :pswitch_5b
    const/16 v0, 0x9cd

    .line 5994
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 5995
    const/16 v1, 0x10

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 5998
    :cond_a
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_b

    .line 5999
    packed-switch p1, :pswitch_data_b

    :pswitch_5c
    goto/16 :goto_0

    .line 6001
    :pswitch_5d
    const/16 v0, 0xacb

    .line 6002
    goto/16 :goto_0

    .line 6004
    :pswitch_5e
    const/16 v0, 0xacc

    .line 6005
    goto/16 :goto_0

    .line 6007
    :pswitch_5f
    const/16 v0, 0xa82

    .line 6008
    goto/16 :goto_0

    .line 6010
    :pswitch_60
    const/16 v0, 0xa83

    .line 6011
    goto/16 :goto_0

    .line 6013
    :pswitch_61
    const/16 v0, 0xac3

    .line 6014
    goto/16 :goto_0

    .line 6016
    :pswitch_62
    const/16 v0, 0xacd

    .line 6017
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6018
    const/16 v1, 0x11

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6021
    :pswitch_63
    const/16 v0, 0xab0

    .line 6022
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6023
    const/16 v1, 0x12

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6026
    :pswitch_64
    const/16 v0, -0xff

    goto/16 :goto_0

    .line 6029
    :cond_b
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v6, :cond_c

    .line 6030
    packed-switch p1, :pswitch_data_c

    :pswitch_65
    goto/16 :goto_0

    .line 6032
    :pswitch_66
    const/16 v0, 0xcc7

    .line 6033
    goto/16 :goto_0

    .line 6035
    :pswitch_67
    const/16 v0, 0xcc8

    .line 6036
    goto/16 :goto_0

    .line 6038
    :pswitch_68
    const/16 v0, 0xcca

    .line 6039
    goto/16 :goto_0

    .line 6041
    :pswitch_69
    const/16 v0, 0xccb

    .line 6042
    goto/16 :goto_0

    .line 6044
    :pswitch_6a
    const/16 v0, 0xccc

    .line 6045
    goto/16 :goto_0

    .line 6047
    :pswitch_6b
    const/16 v0, 0xc82

    .line 6048
    goto/16 :goto_0

    .line 6050
    :pswitch_6c
    const/16 v0, 0xc83

    .line 6051
    goto/16 :goto_0

    .line 6053
    :pswitch_6d
    const/16 v0, -0xff

    goto/16 :goto_0

    .line 6056
    :cond_c
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    .line 6057
    packed-switch p1, :pswitch_data_d

    :pswitch_6e
    goto/16 :goto_0

    .line 6059
    :pswitch_6f
    const/16 v0, 0xa4b

    .line 6060
    goto/16 :goto_0

    .line 6062
    :pswitch_70
    const/16 v0, 0xa4c

    .line 6063
    goto/16 :goto_0

    .line 6065
    :pswitch_71
    const/16 v0, 0xa70

    .line 6066
    goto/16 :goto_0

    .line 6068
    :pswitch_72
    const/16 v0, 0xa02

    .line 6069
    goto/16 :goto_0

    .line 6071
    :pswitch_73
    const/16 v0, 0xa71

    .line 6072
    goto/16 :goto_0

    .line 6074
    :pswitch_74
    const/16 v0, 0xa3c

    .line 6075
    goto/16 :goto_0

    .line 6078
    :pswitch_75
    const/16 v0, -0xff

    goto/16 :goto_0

    .line 6081
    :cond_d
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    .line 6082
    packed-switch p1, :pswitch_data_e

    :pswitch_76
    goto/16 :goto_0

    .line 6084
    :pswitch_77
    const/16 v0, 0xd47

    .line 6085
    goto/16 :goto_0

    .line 6087
    :pswitch_78
    const/16 v0, 0xd4a

    .line 6088
    goto/16 :goto_0

    .line 6090
    :pswitch_79
    const/16 v0, 0xd4b

    .line 6091
    goto/16 :goto_0

    .line 6093
    :pswitch_7a
    const/16 v0, 0xd4c

    .line 6094
    goto/16 :goto_0

    .line 6096
    :pswitch_7b
    const/16 v0, 0xd57

    .line 6097
    goto/16 :goto_0

    .line 6099
    :pswitch_7c
    const/16 v0, 0xd02

    .line 6100
    goto/16 :goto_0

    .line 6102
    :pswitch_7d
    const/16 v0, 0xd03

    .line 6103
    goto/16 :goto_0

    .line 6105
    :pswitch_7e
    const/16 v0, -0xff

    goto/16 :goto_0

    .line 6108
    :cond_e
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v4, :cond_f

    .line 6109
    packed-switch p1, :pswitch_data_f

    :pswitch_7f
    goto/16 :goto_0

    .line 6111
    :pswitch_80
    const/16 v0, 0xbc8

    .line 6112
    goto/16 :goto_0

    .line 6114
    :pswitch_81
    const/16 v0, 0xbca

    .line 6115
    goto/16 :goto_0

    .line 6117
    :pswitch_82
    const/16 v0, 0xbcb

    .line 6118
    goto/16 :goto_0

    .line 6120
    :pswitch_83
    const/16 v0, 0xbcc

    .line 6121
    goto/16 :goto_0

    .line 6126
    :pswitch_84
    const/16 v0, -0xff

    goto/16 :goto_0

    .line 6129
    :cond_f
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v5, :cond_0

    .line 6130
    packed-switch p1, :pswitch_data_10

    :pswitch_85
    goto/16 :goto_0

    .line 6132
    :pswitch_86
    const/16 v0, 0xc47

    .line 6133
    goto/16 :goto_0

    .line 6135
    :pswitch_87
    const/16 v0, 0xc48

    .line 6136
    goto/16 :goto_0

    .line 6138
    :pswitch_88
    const/16 v0, 0xc4a

    .line 6139
    goto/16 :goto_0

    .line 6141
    :pswitch_89
    const/16 v0, 0xc4b

    .line 6142
    goto/16 :goto_0

    .line 6144
    :pswitch_8a
    const/16 v0, 0xc4c

    .line 6145
    goto/16 :goto_0

    .line 6147
    :pswitch_8b
    const/16 v0, 0xc02

    .line 6148
    goto/16 :goto_0

    .line 6150
    :pswitch_8c
    const/16 v0, 0xc03

    .line 6151
    goto/16 :goto_0

    .line 6153
    :pswitch_8d
    const/16 v0, -0xff

    goto/16 :goto_0

    .line 6158
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v4, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyCode(IIZ)I

    move-result v0

    .line 6160
    goto/16 :goto_0

    .line 6162
    :pswitch_8e
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v3, :cond_0

    goto/16 :goto_0

    .line 6166
    :pswitch_8f
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v3, :cond_11

    .line 6167
    packed-switch p1, :pswitch_data_11

    :pswitch_90
    goto/16 :goto_0

    .line 6169
    :pswitch_91
    const/16 v0, 0x913

    .line 6170
    goto/16 :goto_0

    .line 6172
    :pswitch_92
    const/16 v0, 0x914

    .line 6173
    goto/16 :goto_0

    .line 6175
    :pswitch_93
    const/16 v0, 0x902

    .line 6176
    goto/16 :goto_0

    .line 6178
    :pswitch_94
    const/16 v0, 0x903

    .line 6179
    goto/16 :goto_0

    .line 6181
    :pswitch_95
    const/16 v0, 0x901

    .line 6182
    goto/16 :goto_0

    .line 6184
    :pswitch_96
    const/16 v0, 0x945

    .line 6185
    goto/16 :goto_0

    .line 6187
    :pswitch_97
    const/16 v0, 0x93c

    .line 6188
    goto/16 :goto_0

    .line 6190
    :pswitch_98
    const/16 v0, 0x90b

    goto/16 :goto_0

    .line 6193
    :cond_11
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v2, :cond_12

    .line 6194
    packed-switch p1, :pswitch_data_12

    :pswitch_99
    goto/16 :goto_0

    .line 6196
    :pswitch_9a
    const/16 v0, 0x990

    .line 6197
    goto/16 :goto_0

    .line 6199
    :pswitch_9b
    const/16 v0, 0x993

    .line 6200
    goto/16 :goto_0

    .line 6202
    :pswitch_9c
    const/16 v0, 0x994

    .line 6203
    goto/16 :goto_0

    .line 6205
    :pswitch_9d
    const/16 v0, 0x985

    .line 6206
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6207
    const/16 v1, 0x11

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6210
    :pswitch_9e
    const/16 v0, 0x985

    .line 6211
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6212
    const/16 v1, 0x12

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6215
    :pswitch_9f
    const/16 v0, 0x993

    .line 6216
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6217
    const/16 v1, 0x13

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6220
    :pswitch_a0
    const/16 v0, 0x987

    .line 6221
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6222
    const/16 v1, 0x14

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6225
    :pswitch_a1
    const/16 v0, 0x986

    .line 6226
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6227
    const/16 v1, 0x15

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6230
    :cond_12
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_13

    .line 6231
    packed-switch p1, :pswitch_data_13

    :pswitch_a2
    goto/16 :goto_0

    .line 6233
    :pswitch_a3
    const/16 v0, 0xa93

    .line 6234
    goto/16 :goto_0

    .line 6236
    :pswitch_a4
    const/16 v0, 0xa94

    .line 6237
    goto/16 :goto_0

    .line 6239
    :pswitch_a5
    const/16 v0, 0xa85

    .line 6240
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6241
    const/16 v1, 0x13

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6244
    :pswitch_a6
    const/16 v0, 0xa83

    .line 6245
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6246
    const/16 v1, 0x14

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6249
    :pswitch_a7
    const/16 v0, 0xa8b

    .line 6250
    goto/16 :goto_0

    .line 6252
    :pswitch_a8
    const/16 v0, 0xa82

    .line 6253
    goto/16 :goto_0

    .line 6255
    :pswitch_a9
    const/16 v0, 0xa83

    .line 6256
    goto/16 :goto_0

    .line 6258
    :pswitch_aa
    const/16 v0, 0xa81

    goto/16 :goto_0

    .line 6261
    :cond_13
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v6, :cond_14

    .line 6262
    packed-switch p1, :pswitch_data_14

    :pswitch_ab
    goto/16 :goto_0

    .line 6264
    :pswitch_ac
    const/16 v0, 0xc8f

    .line 6265
    goto/16 :goto_0

    .line 6267
    :pswitch_ad
    const/16 v0, 0xc90

    .line 6268
    goto/16 :goto_0

    .line 6270
    :pswitch_ae
    const/16 v0, 0xc92

    .line 6271
    goto/16 :goto_0

    .line 6273
    :pswitch_af
    const/16 v0, 0xc93

    .line 6274
    goto/16 :goto_0

    .line 6276
    :pswitch_b0
    const/16 v0, 0xc94

    .line 6277
    goto/16 :goto_0

    .line 6279
    :pswitch_b1
    const/16 v0, 0xc85

    .line 6280
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6281
    const/16 v1, 0xf

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6284
    :pswitch_b2
    const/16 v0, 0xc85

    .line 6285
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6286
    const/16 v1, 0x10

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6289
    :pswitch_b3
    const/16 v0, -0xff

    goto/16 :goto_0

    .line 6292
    :cond_14
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_15

    .line 6293
    packed-switch p1, :pswitch_data_15

    :pswitch_b4
    goto/16 :goto_0

    .line 6295
    :pswitch_b5
    const/16 v0, 0xa13

    .line 6296
    goto/16 :goto_0

    .line 6298
    :pswitch_b6
    const/16 v0, 0xa14

    .line 6299
    goto/16 :goto_0

    .line 6301
    :pswitch_b7
    const/16 v0, 0xa05

    .line 6302
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6303
    const/16 v1, 0xb

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6310
    :pswitch_b8
    const/16 v0, -0xff

    goto/16 :goto_0

    .line 6313
    :cond_15
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_16

    .line 6314
    packed-switch p1, :pswitch_data_16

    :pswitch_b9
    goto/16 :goto_0

    .line 6316
    :pswitch_ba
    const/16 v0, 0xd0f

    .line 6317
    goto/16 :goto_0

    .line 6319
    :pswitch_bb
    const/16 v0, 0xd10

    .line 6320
    goto/16 :goto_0

    .line 6322
    :pswitch_bc
    const/16 v0, 0xd12

    .line 6323
    goto/16 :goto_0

    .line 6325
    :pswitch_bd
    const/16 v0, 0xd13

    .line 6326
    goto/16 :goto_0

    .line 6328
    :pswitch_be
    const/16 v0, 0xd14

    .line 6329
    goto/16 :goto_0

    .line 6331
    :pswitch_bf
    const/16 v0, 0xd7c

    .line 6332
    goto/16 :goto_0

    .line 6334
    :pswitch_c0
    const/16 v0, 0xd7b

    .line 6335
    goto/16 :goto_0

    .line 6337
    :pswitch_c1
    const/16 v0, 0xd7a

    goto/16 :goto_0

    .line 6340
    :cond_16
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v4, :cond_17

    .line 6341
    packed-switch p1, :pswitch_data_17

    :pswitch_c2
    goto/16 :goto_0

    .line 6343
    :pswitch_c3
    const/16 v0, 0xb90

    .line 6344
    goto/16 :goto_0

    .line 6346
    :pswitch_c4
    const/16 v0, 0xb92

    .line 6347
    goto/16 :goto_0

    .line 6349
    :pswitch_c5
    const/16 v0, 0xb93

    .line 6350
    goto/16 :goto_0

    .line 6352
    :pswitch_c6
    const/16 v0, 0xb94

    .line 6353
    goto/16 :goto_0

    .line 6355
    :pswitch_c7
    const/16 v0, 0xb83

    .line 6356
    goto/16 :goto_0

    .line 6360
    :pswitch_c8
    const/16 v0, -0xff

    goto/16 :goto_0

    .line 6363
    :cond_17
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v1, v5, :cond_0

    .line 6364
    packed-switch p1, :pswitch_data_18

    :pswitch_c9
    goto/16 :goto_0

    .line 6366
    :pswitch_ca
    const/16 v0, 0xc0f

    .line 6367
    goto/16 :goto_0

    .line 6369
    :pswitch_cb
    const/16 v0, 0xc10

    .line 6370
    goto/16 :goto_0

    .line 6372
    :pswitch_cc
    const/16 v0, 0xc12

    .line 6373
    goto/16 :goto_0

    .line 6375
    :pswitch_cd
    const/16 v0, 0xc13

    .line 6376
    goto/16 :goto_0

    .line 6378
    :pswitch_ce
    const/16 v0, 0xc14

    .line 6379
    goto/16 :goto_0

    .line 6381
    :pswitch_cf
    const/16 v0, 0xc05

    .line 6382
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6383
    const/16 v1, 0x11

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6386
    :pswitch_d0
    const/16 v0, 0xc05

    .line 6387
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 6388
    const/16 v1, 0x12

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyNumber:I

    goto/16 :goto_0

    .line 6391
    :pswitch_d1
    const/16 v0, 0xc46

    goto/16 :goto_0

    .line 5712
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_49
        :pswitch_8e
        :pswitch_8f
    .end packed-switch

    .line 5716
    :pswitch_data_1
    .packed-switch 0x905
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 5743
    :pswitch_data_2
    .packed-switch 0x985
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_12
    .end packed-switch

    .line 5770
    :pswitch_data_3
    .packed-switch 0xa85
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 5797
    :pswitch_data_4
    .packed-switch 0xc85
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1c
        :pswitch_24
    .end packed-switch

    .line 5824
    :pswitch_data_5
    .packed-switch 0xa05
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    .line 5851
    :pswitch_data_6
    .packed-switch 0xd05
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_2e
        :pswitch_2e
        :pswitch_36
    .end packed-switch

    .line 5878
    :pswitch_data_7
    .packed-switch 0xb85
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    .line 5905
    :pswitch_data_8
    .packed-switch 0xc05
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_40
        :pswitch_40
        :pswitch_48
    .end packed-switch

    .line 5939
    :pswitch_data_9
    .packed-switch 0x905
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_51
        :pswitch_52
    .end packed-switch

    .line 5966
    :pswitch_data_a
    .packed-switch 0x985
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_5b
    .end packed-switch

    .line 5999
    :pswitch_data_b
    .packed-switch 0xa85
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_63
        :pswitch_64
    .end packed-switch

    .line 6030
    :pswitch_data_c
    .packed-switch 0xc85
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_65
        :pswitch_65
        :pswitch_6d
    .end packed-switch

    .line 6057
    :pswitch_data_d
    .packed-switch 0xa05
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_75
        :pswitch_75
    .end packed-switch

    .line 6082
    :pswitch_data_e
    .packed-switch 0xd05
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_76
        :pswitch_76
        :pswitch_7e
    .end packed-switch

    .line 6109
    :pswitch_data_f
    .packed-switch 0xb85
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_84
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_84
        :pswitch_84
    .end packed-switch

    .line 6130
    :pswitch_data_10
    .packed-switch 0xc05
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_85
        :pswitch_85
        :pswitch_8d
    .end packed-switch

    .line 6167
    :pswitch_data_11
    .packed-switch 0x905
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_97
        :pswitch_98
    .end packed-switch

    .line 6194
    :pswitch_data_12
    .packed-switch 0x985
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_a1
    .end packed-switch

    .line 6231
    :pswitch_data_13
    .packed-switch 0xa85
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a9
        :pswitch_aa
    .end packed-switch

    .line 6262
    :pswitch_data_14
    .packed-switch 0xc85
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_ab
        :pswitch_ab
        :pswitch_b3
    .end packed-switch

    .line 6293
    :pswitch_data_15
    .packed-switch 0xa05
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b8
        :pswitch_b8
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b8
        :pswitch_b8
    .end packed-switch

    .line 6314
    :pswitch_data_16
    .packed-switch 0xd05
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_b9
        :pswitch_b9
        :pswitch_c1
    .end packed-switch

    .line 6341
    :pswitch_data_17
    .packed-switch 0xb85
        :pswitch_c3
        :pswitch_c4
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c8
        :pswitch_c8
    .end packed-switch

    .line 6364
    :pswitch_data_18
    .packed-switch 0xc05
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_c9
        :pswitch_c9
        :pswitch_d1
    .end packed-switch
.end method

.method public getVowelKeyLabel(Ljava/lang/String;IZ)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "vowelKeyShiftState"    # I
    .param p3, "keyCombination"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2601
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2602
    .local v0, "code":I
    move-object v4, p1

    .line 2603
    .local v4, "shiftedLabel":Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_0

    .line 3256
    :cond_0
    :goto_0
    :pswitch_0
    sget-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v5, :cond_3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->IsLowEnd()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3257
    iget-object v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3258
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v3, 0x0

    .line 3259
    .local v3, "leadingChar":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 3261
    invoke-interface {v1, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3263
    :cond_1
    const-string v5, "prajeet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shifetlabel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v9, :cond_3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3265
    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3266
    .local v2, "lastChar":C
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3268
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3272
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "lastChar":C
    .end local v3    # "leadingChar":Ljava/lang/CharSequence;
    :cond_3
    return-object v4

    .line 2605
    :pswitch_1
    if-eqz p3, :cond_b

    .line 2606
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v9, :cond_4

    .line 2607
    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    .line 2609
    :pswitch_3
    const-string v4, "\u094d"

    .line 2610
    goto/16 :goto_0

    .line 2612
    :pswitch_4
    const-string v4, "\u093e"

    .line 2613
    goto/16 :goto_0

    .line 2615
    :pswitch_5
    const-string v4, "\u093f"

    .line 2616
    goto/16 :goto_0

    .line 2618
    :pswitch_6
    const-string v4, "\u0940"

    .line 2619
    goto/16 :goto_0

    .line 2621
    :pswitch_7
    const-string v4, "\u0941"

    .line 2622
    goto/16 :goto_0

    .line 2624
    :pswitch_8
    const-string v4, "\u0942"

    .line 2625
    goto/16 :goto_0

    .line 2627
    :pswitch_9
    const-string v4, "\u0947"

    .line 2628
    goto/16 :goto_0

    .line 2630
    :pswitch_a
    const-string v4, "\u0948"

    goto/16 :goto_0

    .line 2633
    :cond_4
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v6, :cond_5

    .line 2634
    packed-switch v0, :pswitch_data_2

    :pswitch_b
    goto/16 :goto_0

    .line 2636
    :pswitch_c
    const-string v4, "\u09cd"

    .line 2637
    goto/16 :goto_0

    .line 2639
    :pswitch_d
    const-string v4, "\u09be"

    .line 2640
    goto/16 :goto_0

    .line 2642
    :pswitch_e
    const-string v4, "\u09bf"

    .line 2643
    goto/16 :goto_0

    .line 2645
    :pswitch_f
    const-string v4, "\u09c0"

    .line 2646
    goto/16 :goto_0

    .line 2648
    :pswitch_10
    const-string v4, "\u09c1"

    .line 2649
    goto/16 :goto_0

    .line 2651
    :pswitch_11
    const-string v4, "\u09c2"

    .line 2652
    goto/16 :goto_0

    .line 2654
    :pswitch_12
    const-string v4, "\u09c3"

    .line 2655
    goto/16 :goto_0

    .line 2657
    :pswitch_13
    const-string v4, "\u09c7"

    goto/16 :goto_0

    .line 2660
    :cond_5
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_6

    .line 2661
    packed-switch v0, :pswitch_data_3

    :pswitch_14
    goto/16 :goto_0

    .line 2663
    :pswitch_15
    const-string v4, "\u0acd"

    .line 2664
    goto/16 :goto_0

    .line 2666
    :pswitch_16
    const-string v4, "\u0abe"

    .line 2667
    goto/16 :goto_0

    .line 2669
    :pswitch_17
    const-string v4, "\u0abf"

    .line 2670
    goto/16 :goto_0

    .line 2672
    :pswitch_18
    const-string v4, "\u0ac0"

    .line 2673
    goto/16 :goto_0

    .line 2675
    :pswitch_19
    const-string v4, "\u0ac1"

    .line 2676
    goto/16 :goto_0

    .line 2678
    :pswitch_1a
    const-string v4, "\u0ac2"

    .line 2679
    goto/16 :goto_0

    .line 2681
    :pswitch_1b
    const-string v4, "\u0ac7"

    .line 2682
    goto/16 :goto_0

    .line 2684
    :pswitch_1c
    const-string v4, "\u0ac8"

    goto/16 :goto_0

    .line 2687
    :cond_6
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    .line 2688
    packed-switch v0, :pswitch_data_4

    :pswitch_1d
    goto/16 :goto_0

    .line 2690
    :pswitch_1e
    const-string v4, "\u0ccd"

    .line 2691
    goto/16 :goto_0

    .line 2693
    :pswitch_1f
    const-string v4, "\u0cbe"

    .line 2694
    goto/16 :goto_0

    .line 2696
    :pswitch_20
    const-string v4, "\u0cbf"

    .line 2697
    goto/16 :goto_0

    .line 2699
    :pswitch_21
    const-string v4, "\u0cc0"

    .line 2700
    goto/16 :goto_0

    .line 2702
    :pswitch_22
    const-string v4, "\u0cc1"

    .line 2703
    goto/16 :goto_0

    .line 2705
    :pswitch_23
    const-string v4, "\u0cc2"

    .line 2706
    goto/16 :goto_0

    .line 2708
    :pswitch_24
    const-string v4, "\u0cc3"

    .line 2709
    goto/16 :goto_0

    .line 2711
    :pswitch_25
    const-string v4, "\u0cc6"

    goto/16 :goto_0

    .line 2714
    :cond_7
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    .line 2715
    packed-switch v0, :pswitch_data_5

    :pswitch_26
    goto/16 :goto_0

    .line 2717
    :pswitch_27
    const-string v4, "\u0a4d"

    .line 2718
    goto/16 :goto_0

    .line 2720
    :pswitch_28
    const-string v4, "\u0a3e"

    .line 2721
    goto/16 :goto_0

    .line 2723
    :pswitch_29
    const-string v4, "\u0a3f"

    .line 2724
    goto/16 :goto_0

    .line 2726
    :pswitch_2a
    const-string v4, "\u0a40"

    .line 2727
    goto/16 :goto_0

    .line 2729
    :pswitch_2b
    const-string v4, "\u0a41"

    .line 2730
    goto/16 :goto_0

    .line 2732
    :pswitch_2c
    const-string v4, "\u0a42"

    .line 2733
    goto/16 :goto_0

    .line 2735
    :pswitch_2d
    const-string v4, "\u0a47"

    .line 2736
    goto/16 :goto_0

    .line 2738
    :pswitch_2e
    const-string v4, "\u0a48"

    goto/16 :goto_0

    .line 2741
    :cond_8
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_9

    .line 2742
    packed-switch v0, :pswitch_data_6

    :pswitch_2f
    goto/16 :goto_0

    .line 2744
    :pswitch_30
    const-string v4, "\u0d4d"

    .line 2745
    goto/16 :goto_0

    .line 2747
    :pswitch_31
    const-string v4, "\u0d3e"

    .line 2748
    goto/16 :goto_0

    .line 2750
    :pswitch_32
    const-string v4, "\u0d3f"

    .line 2751
    goto/16 :goto_0

    .line 2753
    :pswitch_33
    const-string v4, "\u0d40"

    .line 2754
    goto/16 :goto_0

    .line 2756
    :pswitch_34
    const-string v4, "\u0d41"

    .line 2757
    goto/16 :goto_0

    .line 2759
    :pswitch_35
    const-string v4, "\u0d42"

    .line 2760
    goto/16 :goto_0

    .line 2762
    :pswitch_36
    const-string v4, "\u0d46"

    .line 2763
    goto/16 :goto_0

    .line 2765
    :pswitch_37
    const-string v4, "\u0d48"

    goto/16 :goto_0

    .line 2768
    :cond_9
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v7, :cond_a

    .line 2769
    packed-switch v0, :pswitch_data_7

    :pswitch_38
    goto/16 :goto_0

    .line 2771
    :pswitch_39
    const-string v4, "\u0bcd"

    .line 2772
    goto/16 :goto_0

    .line 2774
    :pswitch_3a
    const-string v4, "\u0bbe"

    .line 2775
    goto/16 :goto_0

    .line 2777
    :pswitch_3b
    const-string v4, "\u0bbf"

    .line 2778
    goto/16 :goto_0

    .line 2780
    :pswitch_3c
    const-string v4, "\u0bc0"

    .line 2781
    goto/16 :goto_0

    .line 2783
    :pswitch_3d
    const-string v4, "\u0bc1"

    .line 2784
    goto/16 :goto_0

    .line 2786
    :pswitch_3e
    const-string v4, "\u0bc2"

    .line 2787
    goto/16 :goto_0

    .line 2789
    :pswitch_3f
    const-string v4, "\u0bc6"

    .line 2790
    goto/16 :goto_0

    .line 2792
    :pswitch_40
    const-string v4, "\u0bc7"

    goto/16 :goto_0

    .line 2795
    :cond_a
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v10, :cond_0

    .line 2796
    packed-switch v0, :pswitch_data_8

    :pswitch_41
    goto/16 :goto_0

    .line 2798
    :pswitch_42
    const-string v4, "\u0c4d"

    .line 2799
    goto/16 :goto_0

    .line 2801
    :pswitch_43
    const-string v4, "\u0c3e"

    .line 2802
    goto/16 :goto_0

    .line 2804
    :pswitch_44
    const-string v4, "\u0c3f"

    .line 2805
    goto/16 :goto_0

    .line 2807
    :pswitch_45
    const-string v4, "\u0c40"

    .line 2808
    goto/16 :goto_0

    .line 2810
    :pswitch_46
    const-string v4, "\u0c41"

    .line 2811
    goto/16 :goto_0

    .line 2813
    :pswitch_47
    const-string v4, "\u0c42"

    .line 2814
    goto/16 :goto_0

    .line 2816
    :pswitch_48
    const-string v4, "\u0c43"

    .line 2817
    goto/16 :goto_0

    .line 2819
    :pswitch_49
    const-string v4, "\u0c46"

    goto/16 :goto_0

    .line 2824
    :cond_b
    invoke-virtual {p0, p1, v6, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyLabel(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2826
    goto/16 :goto_0

    .line 2828
    :pswitch_4a
    if-eqz p3, :cond_13

    .line 2829
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v9, :cond_c

    .line 2830
    packed-switch v0, :pswitch_data_9

    :pswitch_4b
    goto/16 :goto_0

    .line 2832
    :pswitch_4c
    const-string v4, "\u094b"

    .line 2833
    goto/16 :goto_0

    .line 2835
    :pswitch_4d
    const-string v4, "\u094c"

    .line 2836
    goto/16 :goto_0

    .line 2838
    :pswitch_4e
    const-string v4, "\u0902"

    .line 2839
    goto/16 :goto_0

    .line 2841
    :pswitch_4f
    const-string v4, "\u0903"

    .line 2842
    goto/16 :goto_0

    .line 2844
    :pswitch_50
    const-string v4, "\u0901"

    .line 2845
    goto/16 :goto_0

    .line 2847
    :pswitch_51
    const-string v4, "\u0945"

    .line 2848
    goto/16 :goto_0

    .line 2850
    :pswitch_52
    const-string v4, "\u093c"

    .line 2851
    goto/16 :goto_0

    .line 2853
    :pswitch_53
    const-string v4, "\u0943"

    goto/16 :goto_0

    .line 2856
    :cond_c
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v6, :cond_d

    .line 2857
    packed-switch v0, :pswitch_data_a

    :pswitch_54
    goto/16 :goto_0

    .line 2859
    :pswitch_55
    const-string v4, "\u09c8"

    .line 2860
    goto/16 :goto_0

    .line 2862
    :pswitch_56
    const-string v4, "\u09cb"

    .line 2863
    goto/16 :goto_0

    .line 2865
    :pswitch_57
    const-string v4, "\u09cc"

    .line 2866
    goto/16 :goto_0

    .line 2868
    :pswitch_58
    const-string v4, "\u0982"

    .line 2869
    goto/16 :goto_0

    .line 2871
    :pswitch_59
    const-string v4, "\u0981"

    .line 2872
    goto/16 :goto_0

    .line 2874
    :pswitch_5a
    const-string v4, "\u09cd\u09b0"

    .line 2875
    goto/16 :goto_0

    .line 2877
    :pswitch_5b
    const-string v4, "\u09b0\u09cd"

    .line 2878
    goto/16 :goto_0

    .line 2880
    :pswitch_5c
    const-string v4, "\u09cd\u09af"

    goto/16 :goto_0

    .line 2883
    :cond_d
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_e

    .line 2884
    packed-switch v0, :pswitch_data_b

    :pswitch_5d
    goto/16 :goto_0

    .line 2886
    :pswitch_5e
    const-string v4, "\u0acb"

    .line 2887
    goto/16 :goto_0

    .line 2889
    :pswitch_5f
    const-string v4, "\u0acc"

    .line 2890
    goto/16 :goto_0

    .line 2892
    :pswitch_60
    const-string v4, "\u0a82"

    .line 2893
    goto/16 :goto_0

    .line 2895
    :pswitch_61
    const-string v4, "\u0a83"

    .line 2896
    goto/16 :goto_0

    .line 2898
    :pswitch_62
    const-string v4, "\u0ac3"

    .line 2899
    goto/16 :goto_0

    .line 2901
    :pswitch_63
    const-string v4, "\u0acd\u0ab0"

    .line 2902
    goto/16 :goto_0

    .line 2904
    :pswitch_64
    const-string v4, "\u0ab0\u0acd"

    .line 2905
    goto/16 :goto_0

    .line 2907
    :pswitch_65
    const-string v4, ""

    goto/16 :goto_0

    .line 2910
    :cond_e
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_f

    .line 2911
    packed-switch v0, :pswitch_data_c

    :pswitch_66
    goto/16 :goto_0

    .line 2913
    :pswitch_67
    const-string v4, "\u0cc7"

    .line 2914
    goto/16 :goto_0

    .line 2916
    :pswitch_68
    const-string v4, "\u0cb8"

    .line 2917
    goto/16 :goto_0

    .line 2919
    :pswitch_69
    const-string v4, "\u0cca"

    .line 2920
    goto/16 :goto_0

    .line 2922
    :pswitch_6a
    const-string v4, "\u0ccb"

    .line 2923
    goto/16 :goto_0

    .line 2925
    :pswitch_6b
    const-string v4, "\u0ccc"

    .line 2926
    goto/16 :goto_0

    .line 2928
    :pswitch_6c
    const-string v4, "\u0c82"

    .line 2929
    goto/16 :goto_0

    .line 2931
    :pswitch_6d
    const-string v4, "\u0c83"

    .line 2932
    goto/16 :goto_0

    .line 2934
    :pswitch_6e
    const-string v4, ""

    goto/16 :goto_0

    .line 2937
    :cond_f
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_10

    .line 2938
    packed-switch v0, :pswitch_data_d

    :pswitch_6f
    goto/16 :goto_0

    .line 2940
    :pswitch_70
    const-string v4, "\u0a4b"

    .line 2941
    goto/16 :goto_0

    .line 2943
    :pswitch_71
    const-string v4, "\u0a4c"

    .line 2944
    goto/16 :goto_0

    .line 2946
    :pswitch_72
    const-string v4, "\u0a70"

    .line 2947
    goto/16 :goto_0

    .line 2949
    :pswitch_73
    const-string v4, "\u0a02"

    .line 2950
    goto/16 :goto_0

    .line 2952
    :pswitch_74
    const-string v4, "\u0a71"

    .line 2953
    goto/16 :goto_0

    .line 2955
    :pswitch_75
    const-string v4, "\u0a3c"

    .line 2956
    goto/16 :goto_0

    .line 2959
    :pswitch_76
    const-string v4, ""

    goto/16 :goto_0

    .line 2962
    :cond_10
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_11

    .line 2963
    packed-switch v0, :pswitch_data_e

    :pswitch_77
    goto/16 :goto_0

    .line 2965
    :pswitch_78
    const-string v4, "\u0d47"

    .line 2966
    goto/16 :goto_0

    .line 2968
    :pswitch_79
    const-string v4, "\u0d4a"

    .line 2969
    goto/16 :goto_0

    .line 2971
    :pswitch_7a
    const-string v4, "\u0d4b"

    .line 2972
    goto/16 :goto_0

    .line 2974
    :pswitch_7b
    const-string v4, "\u0d4c"

    .line 2975
    goto/16 :goto_0

    .line 2977
    :pswitch_7c
    const-string v4, "\u0d57"

    .line 2978
    goto/16 :goto_0

    .line 2980
    :pswitch_7d
    const-string v4, "\u0d02"

    .line 2981
    goto/16 :goto_0

    .line 2983
    :pswitch_7e
    const-string v4, "\u0d03"

    .line 2984
    goto/16 :goto_0

    .line 2986
    :pswitch_7f
    const-string v4, ""

    goto/16 :goto_0

    .line 2989
    :cond_11
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v7, :cond_12

    .line 2990
    packed-switch v0, :pswitch_data_f

    :pswitch_80
    goto/16 :goto_0

    .line 2992
    :pswitch_81
    const-string v4, "\u0bc8"

    .line 2993
    goto/16 :goto_0

    .line 2995
    :pswitch_82
    const-string v4, "\u0bca"

    .line 2996
    goto/16 :goto_0

    .line 2998
    :pswitch_83
    const-string v4, "\u0bcb"

    .line 2999
    goto/16 :goto_0

    .line 3001
    :pswitch_84
    const-string v4, "\u0bcc"

    .line 3002
    goto/16 :goto_0

    .line 3007
    :pswitch_85
    const-string v4, ""

    goto/16 :goto_0

    .line 3010
    :cond_12
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v10, :cond_0

    .line 3011
    packed-switch v0, :pswitch_data_10

    :pswitch_86
    goto/16 :goto_0

    .line 3013
    :pswitch_87
    const-string v4, "\u0c47"

    .line 3014
    goto/16 :goto_0

    .line 3016
    :pswitch_88
    const-string v4, "\u0c48"

    .line 3017
    goto/16 :goto_0

    .line 3019
    :pswitch_89
    const-string v4, "\u0c4a"

    .line 3020
    goto/16 :goto_0

    .line 3022
    :pswitch_8a
    const-string v4, "\u0c4b"

    .line 3023
    goto/16 :goto_0

    .line 3025
    :pswitch_8b
    const-string v4, "\u0c4c"

    .line 3026
    goto/16 :goto_0

    .line 3028
    :pswitch_8c
    const-string v4, "\u0c02"

    .line 3029
    goto/16 :goto_0

    .line 3031
    :pswitch_8d
    const-string v4, "\u0c03"

    .line 3032
    goto/16 :goto_0

    .line 3034
    :pswitch_8e
    const-string v4, ""

    goto/16 :goto_0

    .line 3039
    :cond_13
    invoke-virtual {p0, p1, v7, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyLabel(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    .line 3041
    goto/16 :goto_0

    .line 3045
    :pswitch_8f
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v9, :cond_14

    .line 3046
    packed-switch v0, :pswitch_data_11

    :pswitch_90
    goto/16 :goto_0

    .line 3048
    :pswitch_91
    const-string v4, "\u0913"

    .line 3049
    goto/16 :goto_0

    .line 3051
    :pswitch_92
    const-string v4, "\u0914"

    .line 3052
    goto/16 :goto_0

    .line 3054
    :pswitch_93
    const-string v4, "\u0902"

    .line 3055
    goto/16 :goto_0

    .line 3057
    :pswitch_94
    const-string v4, "\u0903"

    .line 3058
    goto/16 :goto_0

    .line 3060
    :pswitch_95
    const-string v4, "\u0901"

    .line 3061
    goto/16 :goto_0

    .line 3063
    :pswitch_96
    const-string v4, "\u0945"

    .line 3064
    goto/16 :goto_0

    .line 3066
    :pswitch_97
    const-string v4, "\u093c"

    .line 3067
    goto/16 :goto_0

    .line 3069
    :pswitch_98
    const-string v4, "\u090b"

    goto/16 :goto_0

    .line 3072
    :cond_14
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v6, :cond_15

    .line 3073
    packed-switch v0, :pswitch_data_12

    :pswitch_99
    goto/16 :goto_0

    .line 3075
    :pswitch_9a
    const-string v4, "\u0990"

    .line 3076
    goto/16 :goto_0

    .line 3078
    :pswitch_9b
    const-string v4, "\u0993"

    .line 3079
    goto/16 :goto_0

    .line 3081
    :pswitch_9c
    const-string v4, "\u0994"

    .line 3082
    goto/16 :goto_0

    .line 3084
    :pswitch_9d
    const-string v4, "\u0985\u0982"

    .line 3085
    goto/16 :goto_0

    .line 3087
    :pswitch_9e
    const-string v4, "\u0985\u0981"

    .line 3088
    goto/16 :goto_0

    .line 3090
    :pswitch_9f
    const-string v4, "\u0993\u0981"

    .line 3091
    goto/16 :goto_0

    .line 3093
    :pswitch_a0
    const-string v4, "\u0987\u0982"

    .line 3094
    goto/16 :goto_0

    .line 3096
    :pswitch_a1
    const-string v4, "\u0986\u09af\u09be"

    goto/16 :goto_0

    .line 3099
    :cond_15
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_16

    .line 3100
    packed-switch v0, :pswitch_data_13

    :pswitch_a2
    goto/16 :goto_0

    .line 3102
    :pswitch_a3
    const-string v4, "\u0a93"

    .line 3103
    goto/16 :goto_0

    .line 3105
    :pswitch_a4
    const-string v4, "\u0a94"

    .line 3106
    goto/16 :goto_0

    .line 3108
    :pswitch_a5
    const-string v4, "\u0a85\u0a82"

    .line 3109
    goto/16 :goto_0

    .line 3111
    :pswitch_a6
    const-string v4, "\u0a85\u0a83"

    .line 3112
    goto/16 :goto_0

    .line 3114
    :pswitch_a7
    const-string v4, "\u0a8b"

    .line 3115
    goto/16 :goto_0

    .line 3117
    :pswitch_a8
    const-string v4, "\u0a82"

    .line 3118
    goto/16 :goto_0

    .line 3120
    :pswitch_a9
    const-string v4, "\u0a83"

    .line 3121
    goto/16 :goto_0

    .line 3123
    :pswitch_aa
    const-string v4, "\u0a81"

    goto/16 :goto_0

    .line 3126
    :cond_16
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_17

    .line 3127
    packed-switch v0, :pswitch_data_14

    :pswitch_ab
    goto/16 :goto_0

    .line 3129
    :pswitch_ac
    const-string v4, "\u0c8f"

    .line 3130
    goto/16 :goto_0

    .line 3132
    :pswitch_ad
    const-string v4, "\u0c90"

    .line 3133
    goto/16 :goto_0

    .line 3135
    :pswitch_ae
    const-string v4, "\u0c92"

    .line 3136
    goto/16 :goto_0

    .line 3138
    :pswitch_af
    const-string v4, "\u0c93"

    .line 3139
    goto/16 :goto_0

    .line 3141
    :pswitch_b0
    const-string v4, "\u0c94"

    .line 3142
    goto/16 :goto_0

    .line 3144
    :pswitch_b1
    const-string v4, "\u0c85\u0c82"

    .line 3145
    goto/16 :goto_0

    .line 3147
    :pswitch_b2
    const-string v4, "\u0c85\u0c83"

    .line 3148
    goto/16 :goto_0

    .line 3150
    :pswitch_b3
    const-string v4, ""

    goto/16 :goto_0

    .line 3153
    :cond_17
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_18

    .line 3154
    packed-switch v0, :pswitch_data_15

    :pswitch_b4
    goto/16 :goto_0

    .line 3156
    :pswitch_b5
    const-string v4, "\u0a13"

    .line 3157
    goto/16 :goto_0

    .line 3159
    :pswitch_b6
    const-string v4, "\u0a14"

    .line 3160
    goto/16 :goto_0

    .line 3162
    :pswitch_b7
    const-string v4, "\u0a05\u0a70"

    .line 3163
    goto/16 :goto_0

    .line 3169
    :pswitch_b8
    const-string v4, ""

    goto/16 :goto_0

    .line 3172
    :cond_18
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_19

    .line 3173
    packed-switch v0, :pswitch_data_16

    :pswitch_b9
    goto/16 :goto_0

    .line 3175
    :pswitch_ba
    const-string v4, "\u0d0f"

    .line 3176
    goto/16 :goto_0

    .line 3178
    :pswitch_bb
    const-string v4, "\u0d10"

    .line 3179
    goto/16 :goto_0

    .line 3181
    :pswitch_bc
    const-string v4, "\u0d12"

    .line 3182
    goto/16 :goto_0

    .line 3184
    :pswitch_bd
    const-string v4, "\u0d13"

    .line 3185
    goto/16 :goto_0

    .line 3187
    :pswitch_be
    const-string v4, "\u0d14"

    .line 3188
    goto/16 :goto_0

    .line 3190
    :pswitch_bf
    const-string v4, "\u0d7c"

    .line 3191
    goto/16 :goto_0

    .line 3193
    :pswitch_c0
    const-string v4, "\u0d7b"

    .line 3194
    goto/16 :goto_0

    .line 3196
    :pswitch_c1
    const-string v4, "\u0d7a"

    goto/16 :goto_0

    .line 3199
    :cond_19
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v7, :cond_1a

    .line 3200
    packed-switch v0, :pswitch_data_17

    :pswitch_c2
    goto/16 :goto_0

    .line 3202
    :pswitch_c3
    const-string v4, "\u0b90"

    .line 3203
    goto/16 :goto_0

    .line 3205
    :pswitch_c4
    const-string v4, "\u0b92"

    .line 3206
    goto/16 :goto_0

    .line 3208
    :pswitch_c5
    const-string v4, "\u0b93"

    .line 3209
    goto/16 :goto_0

    .line 3211
    :pswitch_c6
    const-string v4, "\u0b94"

    .line 3212
    goto/16 :goto_0

    .line 3214
    :pswitch_c7
    const-string v4, "\u0b83"

    .line 3215
    goto/16 :goto_0

    .line 3219
    :pswitch_c8
    const-string v4, ""

    goto/16 :goto_0

    .line 3222
    :cond_1a
    iget v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    if-ne v5, v10, :cond_0

    .line 3223
    packed-switch v0, :pswitch_data_18

    :pswitch_c9
    goto/16 :goto_0

    .line 3225
    :pswitch_ca
    const-string v4, "\u0c0f"

    .line 3226
    goto/16 :goto_0

    .line 3228
    :pswitch_cb
    const-string v4, "\u0c10"

    .line 3229
    goto/16 :goto_0

    .line 3231
    :pswitch_cc
    const-string v4, "\u0c12"

    .line 3232
    goto/16 :goto_0

    .line 3234
    :pswitch_cd
    const-string v4, "\u0c13"

    .line 3235
    goto/16 :goto_0

    .line 3237
    :pswitch_ce
    const-string v4, "\u0c14"

    .line 3238
    goto/16 :goto_0

    .line 3240
    :pswitch_cf
    const-string v4, "\u0c05\u0c01"

    .line 3241
    goto/16 :goto_0

    .line 3243
    :pswitch_d0
    const-string v4, "\u0c05\u0c03"

    .line 3244
    goto/16 :goto_0

    .line 3246
    :pswitch_d1
    const-string v4, ""

    goto/16 :goto_0

    .line 2603
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4a
        :pswitch_0
        :pswitch_8f
    .end packed-switch

    .line 2607
    :pswitch_data_1
    .packed-switch 0x905
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2634
    :pswitch_data_2
    .packed-switch 0x985
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_13
    .end packed-switch

    .line 2661
    :pswitch_data_3
    .packed-switch 0xa85
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 2688
    :pswitch_data_4
    .packed-switch 0xc85
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_1d
        :pswitch_1d
        :pswitch_25
    .end packed-switch

    .line 2715
    :pswitch_data_5
    .packed-switch 0xa05
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_2d
        :pswitch_2e
    .end packed-switch

    .line 2742
    :pswitch_data_6
    .packed-switch 0xd05
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2f
        :pswitch_2f
        :pswitch_37
    .end packed-switch

    .line 2769
    :pswitch_data_7
    .packed-switch 0xb85
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_3f
        :pswitch_40
    .end packed-switch

    .line 2796
    :pswitch_data_8
    .packed-switch 0xc05
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_41
        :pswitch_41
        :pswitch_49
    .end packed-switch

    .line 2830
    :pswitch_data_9
    .packed-switch 0x905
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_52
        :pswitch_53
    .end packed-switch

    .line 2857
    :pswitch_data_a
    .packed-switch 0x985
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_5c
    .end packed-switch

    .line 2884
    :pswitch_data_b
    .packed-switch 0xa85
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_64
        :pswitch_65
    .end packed-switch

    .line 2911
    :pswitch_data_c
    .packed-switch 0xc85
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_66
        :pswitch_66
        :pswitch_6e
    .end packed-switch

    .line 2938
    :pswitch_data_d
    .packed-switch 0xa05
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_76
        :pswitch_76
    .end packed-switch

    .line 2963
    :pswitch_data_e
    .packed-switch 0xd05
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_77
        :pswitch_77
        :pswitch_7f
    .end packed-switch

    .line 2990
    :pswitch_data_f
    .packed-switch 0xb85
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_85
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_85
        :pswitch_85
    .end packed-switch

    .line 3011
    :pswitch_data_10
    .packed-switch 0xc05
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_86
        :pswitch_86
        :pswitch_8e
    .end packed-switch

    .line 3046
    :pswitch_data_11
    .packed-switch 0x905
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_97
        :pswitch_98
    .end packed-switch

    .line 3073
    :pswitch_data_12
    .packed-switch 0x985
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_a1
    .end packed-switch

    .line 3100
    :pswitch_data_13
    .packed-switch 0xa85
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a9
        :pswitch_aa
    .end packed-switch

    .line 3127
    :pswitch_data_14
    .packed-switch 0xc85
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_ab
        :pswitch_ab
        :pswitch_b3
    .end packed-switch

    .line 3154
    :pswitch_data_15
    .packed-switch 0xa05
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b8
        :pswitch_b8
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b8
        :pswitch_b8
    .end packed-switch

    .line 3173
    :pswitch_data_16
    .packed-switch 0xd05
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_b9
        :pswitch_b9
        :pswitch_c1
    .end packed-switch

    .line 3200
    :pswitch_data_17
    .packed-switch 0xb85
        :pswitch_c3
        :pswitch_c4
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c8
        :pswitch_c8
    .end packed-switch

    .line 3223
    :pswitch_data_18
    .packed-switch 0xc05
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_c9
        :pswitch_c9
        :pswitch_d1
    .end packed-switch
.end method

.method public handleRegionalCharacter([I)V
    .locals 8
    .param p1, "keyCodes"    # [I

    .prologue
    const/16 v7, 0x200b

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    sput-boolean v4, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    .line 192
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    .line 193
    .local v0, "mIsSwiftKeySDK":Z
    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v1, :cond_8

    .line 194
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-eq v1, v5, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyCode(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    .line 197
    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    if-eqz v1, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getMultipleKeyCodes()[I

    move-result-object p1

    .line 201
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    .line 202
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isCombinationAvailable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    .line 203
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/diotek/ime/framework/input/IndianInputModule;->getVowelKeyCode(IIZ)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    .line 204
    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    if-eqz v1, :cond_2

    .line 205
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getMultipleKeyCodes()[I

    move-result-object p1

    .line 207
    :cond_2
    invoke-static {v5}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    .line 208
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 209
    invoke-static {v5}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 210
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    .line 215
    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    const/16 v2, 0xa83

    if-eq v1, v2, :cond_3

    .line 216
    invoke-static {v4}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    .line 245
    :cond_3
    :goto_1
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 246
    if-eqz p1, :cond_5

    aget v1, p1, v4

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 247
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    .line 249
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    if-eqz v1, :cond_5

    .line 250
    :cond_4
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    .line 251
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 252
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    .line 253
    sput-boolean v4, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    .line 254
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    .line 344
    :cond_5
    :goto_2
    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v1, :cond_6

    .line 345
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    .line 347
    :cond_6
    return-void

    .line 212
    :cond_7
    invoke-static {v4}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    .line 213
    invoke-static {v6}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    goto :goto_0

    .line 220
    :cond_8
    sget-boolean v1, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    if-nez v1, :cond_b

    .line 221
    array-length v1, p1

    if-ne v1, v6, :cond_9

    .line 222
    aget v1, p1, v5

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    .line 224
    :cond_9
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getThirdModeKeyCode(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    .line 225
    sget-boolean v1, Lcom/diotek/ime/framework/input/IndianInputModule;->multipleKeycode:Z

    if-eqz v1, :cond_a

    .line 226
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getMultipleKeyCodes()[I

    move-result-object p1

    goto :goto_1

    .line 227
    :cond_a
    array-length v1, p1

    if-ne v1, v6, :cond_3

    .line 228
    new-array p1, v5, [I

    .end local p1    # "keyCodes":[I
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    aput v1, p1, v4

    .restart local p1    # "keyCodes":[I
    goto :goto_1

    .line 233
    :cond_b
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_3

    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    array-length v1, p1

    if-ne v1, v6, :cond_c

    .line 236
    aget v1, p1, v5

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    .line 237
    new-array p1, v5, [I

    .end local p1    # "keyCodes":[I
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    aput v1, p1, v4

    .restart local p1    # "keyCodes":[I
    goto/16 :goto_1

    .line 241
    :cond_c
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->getToggledKeyCode(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    goto/16 :goto_1

    .line 258
    :cond_d
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 259
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    goto :goto_2

    .line 260
    :cond_e
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 261
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialMatra(I)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->checkCombination([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 263
    :cond_f
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    if-ne v1, v2, :cond_5

    .line 264
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    .line 266
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_5

    .line 267
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    .line 268
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 269
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    .line 270
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    goto/16 :goto_2

    .line 275
    :cond_10
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 276
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 279
    :cond_11
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    if-ne v1, v2, :cond_5

    .line 281
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    .line 282
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    const/16 v2, 0x17bf

    if-ne v1, v2, :cond_12

    .line 283
    if-eqz v0, :cond_13

    .line 284
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    invoke-virtual {v1, v7, p1, v5}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onCharacterKey(I[IZ)V

    .line 295
    :cond_12
    :goto_3
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_5

    .line 296
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    .line 297
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 298
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    .line 299
    sput-boolean v4, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    .line 300
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    goto/16 :goto_2

    .line 287
    :cond_13
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    if-eq v1, v6, :cond_14

    .line 288
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    invoke-virtual {v1, v7, p1, v5}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_3

    .line 290
    :cond_14
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    invoke-virtual {v1, v7, p1, v5}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_3

    .line 305
    :cond_15
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 306
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    :cond_16
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    if-ne v1, v2, :cond_5

    .line 313
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    .line 315
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_5

    .line 316
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    .line 317
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 318
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    .line 319
    sput-boolean v4, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    .line 320
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    goto/16 :goto_2

    .line 325
    :cond_17
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 326
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 327
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    if-ne v1, v2, :cond_5

    .line 329
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa59

    if-lt v1, v2, :cond_18

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa5e

    if-le v1, v2, :cond_19

    :cond_18
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa36

    if-eq v1, v2, :cond_19

    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa33

    if-eq v1, v2, :cond_19

    .line 330
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    .line 331
    :cond_19
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    if-ne v1, v5, :cond_5

    .line 332
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    .line 333
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    invoke-static {v1}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    .line 334
    sput-boolean v5, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    .line 335
    sput-boolean v4, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    .line 336
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->drawKeyboardView()V

    goto/16 :goto_2

    .line 342
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/IndianInputModule;->sendAshokaKey([I)V

    goto/16 :goto_2
.end method

.method public init(Lcom/diotek/ime/framework/input/QwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V
    .locals 4
    .param p1, "aQwertyIndianInputModule"    # Lcom/diotek/ime/framework/input/QwertyIndianInputModule;
    .param p2, "aInputManager"    # Lcom/diotek/ime/framework/common/InputManager;
    .param p3, "code"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 57
    iput-object p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    .line 58
    iput-object p2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 59
    invoke-interface {p2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    .line 66
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v0

    const/16 v1, 0x140

    if-gt v0, v1, :cond_2

    .line 67
    invoke-static {v2}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setLowEndFlag(Z)V

    .line 68
    sput-boolean v2, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    .line 71
    :cond_2
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_4

    .line 72
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    .line 76
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    .line 77
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isCombinationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    .line 78
    iput p3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    .line 79
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    .line 80
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    .line 83
    :cond_3
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getCurrentLangScriptId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->setLangScriptId(I)V

    .line 88
    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    goto :goto_0

    .line 74
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    goto :goto_1

    .line 86
    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_2
.end method

.method public init(Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V
    .locals 6
    .param p1, "aSwiftkeyQwertyIndianInputModule"    # Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;
    .param p2, "aInputManager"    # Lcom/diotek/ime/framework/common/InputManager;
    .param p3, "code"    # I

    .prologue
    const/16 v5, 0x1e0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 130
    iput-object p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    .line 131
    iput-object p2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 132
    invoke-interface {p2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    .line 133
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 137
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    .line 138
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_HEIGHT"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, v5, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_WIDTH"

    invoke-interface {v0, v1, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x140

    if-gt v0, v1, :cond_2

    .line 140
    invoke-static {v3}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setLowEndFlag(Z)V

    .line 141
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    .line 143
    :cond_2
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_4

    .line 144
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    .line 148
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    .line 149
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isCombinationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    .line 150
    iput p3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    .line 151
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    .line 152
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    .line 155
    :cond_3
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getCurrentLangScriptId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->setLangScriptId(I)V

    .line 160
    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    goto :goto_0

    .line 146
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    goto :goto_1

    .line 158
    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_2
.end method

.method public init(Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;Lcom/diotek/ime/framework/common/InputManager;I)V
    .locals 6
    .param p1, "xt9QwertyIndianInputModule"    # Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;
    .param p2, "aInputManager"    # Lcom/diotek/ime/framework/common/InputManager;
    .param p3, "code"    # I

    .prologue
    const/16 v5, 0x1e0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    iput-object p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    .line 95
    iput-object p2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 96
    invoke-interface {p2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    .line 97
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 101
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    .line 102
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_HEIGHT"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, v5, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_WIDTH"

    invoke-interface {v0, v1, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x140

    if-gt v0, v1, :cond_2

    .line 104
    invoke-static {v3}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setLowEndFlag(Z)V

    .line 105
    sput-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    .line 107
    :cond_2
    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_4

    .line 108
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    .line 112
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->vowelKeyShiftState:I

    .line 113
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isCombinationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyCombination:Z

    .line 114
    iput p3, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    .line 115
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    .line 119
    :cond_3
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getCurrentLangScriptId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->setLangScriptId(I)V

    .line 124
    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    goto :goto_0

    .line 110
    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->keyboardState:Z

    goto :goto_1

    .line 122
    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-static {v0}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_2
.end method

.method public isConsonant(II)Z
    .locals 2
    .param p1, "primaryCodes"    # I
    .param p2, "script"    # I

    .prologue
    const/4 v0, 0x1

    .line 2275
    if-ne p2, v0, :cond_2

    .line 2276
    const/16 v1, 0x915

    if-lt p1, v1, :cond_0

    const/16 v1, 0x939

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x958

    if-lt p1, v1, :cond_5

    const/16 v1, 0x95f

    if-gt p1, v1, :cond_5

    .line 2324
    :cond_1
    :goto_0
    return v0

    .line 2280
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    .line 2281
    const/16 v1, 0x995

    if-lt p1, v1, :cond_3

    const/16 v1, 0x9b9

    if-le p1, v1, :cond_1

    :cond_3
    const/16 v1, 0x9dc

    if-lt p1, v1, :cond_4

    const/16 v1, 0x9df

    if-le p1, v1, :cond_1

    :cond_4
    const/16 v1, 0x9ce

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9f0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9f1

    if-eq p1, v1, :cond_1

    .line 2324
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 2287
    :cond_6
    const/4 v1, 0x6

    if-ne p2, v1, :cond_8

    .line 2288
    const/16 v1, 0xa15

    if-lt p1, v1, :cond_7

    const/16 v1, 0xa39

    if-le p1, v1, :cond_1

    :cond_7
    const/16 v1, 0xa59

    if-lt p1, v1, :cond_5

    const/16 v1, 0xa5e

    if-gt p1, v1, :cond_5

    goto :goto_0

    .line 2292
    :cond_8
    const/4 v1, 0x7

    if-ne p2, v1, :cond_9

    .line 2293
    const/16 v1, 0xa95

    if-lt p1, v1, :cond_5

    const/16 v1, 0xab9

    if-gt p1, v1, :cond_5

    goto :goto_0

    .line 2296
    :cond_9
    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    .line 2297
    const/16 v1, 0xb95

    if-lt p1, v1, :cond_5

    const/16 v1, 0xbb9

    if-gt p1, v1, :cond_5

    goto :goto_0

    .line 2300
    :cond_a
    const/4 v1, 0x4

    if-ne p2, v1, :cond_b

    .line 2301
    const/16 v1, 0xc15

    if-lt p1, v1, :cond_5

    const/16 v1, 0xc39

    if-gt p1, v1, :cond_5

    goto :goto_0

    .line 2304
    :cond_b
    const/4 v1, 0x5

    if-ne p2, v1, :cond_d

    .line 2305
    const/16 v1, 0xc95

    if-lt p1, v1, :cond_c

    const/16 v1, 0xcb9

    if-le p1, v1, :cond_1

    :cond_c
    const/16 v1, 0xcde

    if-ne p1, v1, :cond_5

    goto :goto_0

    .line 2309
    :cond_d
    const/16 v1, 0x8

    if-ne p2, v1, :cond_e

    .line 2310
    const/16 v1, 0xd15

    if-lt p1, v1, :cond_5

    const/16 v1, 0xd39

    if-gt p1, v1, :cond_5

    goto :goto_0

    .line 2313
    :cond_e
    const/16 v1, 0x9

    if-ne p2, v1, :cond_f

    .line 2314
    const/16 v1, 0xd9a

    if-lt p1, v1, :cond_5

    const/16 v1, 0xdc6

    if-gt p1, v1, :cond_5

    goto/16 :goto_0

    .line 2317
    :cond_f
    const/16 v1, 0xa

    if-ne p2, v1, :cond_5

    .line 2318
    const/16 v1, 0xb15

    if-lt p1, v1, :cond_10

    const/16 v1, 0xb39

    if-le p1, v1, :cond_1

    :cond_10
    const/16 v1, 0xb5c

    if-lt p1, v1, :cond_11

    const/16 v1, 0xb5f

    if-le p1, v1, :cond_1

    :cond_11
    const/16 v1, 0xb71

    if-ne p1, v1, :cond_5

    goto/16 :goto_0
.end method

.method public isDependentVowel(II)Z
    .locals 2
    .param p1, "primaryCodes"    # I
    .param p2, "script"    # I

    .prologue
    const/4 v0, 0x1

    .line 2389
    if-ne p2, v0, :cond_4

    .line 2390
    const/16 v1, 0x93e

    if-lt p1, v1, :cond_0

    const/16 v1, 0x944

    if-le p1, v1, :cond_3

    :cond_0
    const/16 v1, 0x946

    if-lt p1, v1, :cond_1

    const/16 v1, 0x94c

    if-le p1, v1, :cond_3

    :cond_1
    const/16 v1, 0x962

    if-lt p1, v1, :cond_2

    const/16 v1, 0x963

    if-le p1, v1, :cond_3

    :cond_2
    const/16 v1, 0x951

    if-lt p1, v1, :cond_7

    const/16 v1, 0x954

    if-gt p1, v1, :cond_7

    .line 2447
    :cond_3
    :goto_0
    return v0

    .line 2396
    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    .line 2397
    const/16 v1, 0x9be

    if-lt p1, v1, :cond_5

    const/16 v1, 0x9cc

    if-le p1, v1, :cond_3

    :cond_5
    const/16 v1, 0x9e2

    if-lt p1, v1, :cond_6

    const/16 v1, 0x9e3

    if-le p1, v1, :cond_3

    :cond_6
    const/16 v1, 0x9d7

    if-eq p1, v1, :cond_3

    .line 2447
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 2402
    :cond_8
    const/4 v1, 0x6

    if-ne p2, v1, :cond_9

    .line 2403
    const/16 v1, 0xa3e

    if-lt p1, v1, :cond_7

    const/16 v1, 0xa4c

    if-gt p1, v1, :cond_7

    goto :goto_0

    .line 2406
    :cond_9
    const/4 v1, 0x7

    if-ne p2, v1, :cond_b

    .line 2407
    const/16 v1, 0xabe

    if-lt p1, v1, :cond_a

    const/16 v1, 0xacc

    if-le p1, v1, :cond_3

    :cond_a
    const/16 v1, 0xae2

    if-lt p1, v1, :cond_7

    const/16 v1, 0xae3

    if-gt p1, v1, :cond_7

    goto :goto_0

    .line 2411
    :cond_b
    const/4 v1, 0x3

    if-ne p2, v1, :cond_d

    .line 2412
    const/16 v1, 0xbbe

    if-lt p1, v1, :cond_c

    const/16 v1, 0xbcc

    if-le p1, v1, :cond_3

    :cond_c
    const/16 v1, 0xbd7

    if-ne p1, v1, :cond_7

    goto :goto_0

    .line 2416
    :cond_d
    const/4 v1, 0x4

    if-ne p2, v1, :cond_10

    .line 2417
    const/16 v1, 0xc3e

    if-lt p1, v1, :cond_e

    const/16 v1, 0xc4c

    if-le p1, v1, :cond_3

    :cond_e
    const/16 v1, 0xc62

    if-lt p1, v1, :cond_f

    const/16 v1, 0xc63

    if-le p1, v1, :cond_3

    :cond_f
    const/16 v1, 0xc55

    if-lt p1, v1, :cond_7

    const/16 v1, 0xc56

    if-gt p1, v1, :cond_7

    goto :goto_0

    .line 2422
    :cond_10
    const/4 v1, 0x5

    if-ne p2, v1, :cond_13

    .line 2423
    const/16 v1, 0xcbe

    if-lt p1, v1, :cond_11

    const/16 v1, 0xccc

    if-le p1, v1, :cond_3

    :cond_11
    const/16 v1, 0xcd5

    if-lt p1, v1, :cond_12

    const/16 v1, 0xcd6

    if-le p1, v1, :cond_3

    :cond_12
    const/16 v1, 0xce2

    if-lt p1, v1, :cond_7

    const/16 v1, 0xce3

    if-gt p1, v1, :cond_7

    goto/16 :goto_0

    .line 2428
    :cond_13
    const/16 v1, 0x8

    if-ne p2, v1, :cond_16

    .line 2429
    const/16 v1, 0xd3e

    if-lt p1, v1, :cond_14

    const/16 v1, 0xd4c

    if-le p1, v1, :cond_3

    :cond_14
    const/16 v1, 0xd62

    if-lt p1, v1, :cond_15

    const/16 v1, 0xd63

    if-le p1, v1, :cond_3

    :cond_15
    const/16 v1, 0xd57

    if-ne p1, v1, :cond_7

    goto/16 :goto_0

    .line 2434
    :cond_16
    const/16 v1, 0x9

    if-ne p2, v1, :cond_18

    .line 2435
    const/16 v1, 0xdca

    if-lt p1, v1, :cond_17

    const/16 v1, 0xdde

    if-le p1, v1, :cond_3

    :cond_17
    const/16 v1, 0xdf2

    if-lt p1, v1, :cond_7

    const/16 v1, 0xdf3

    if-gt p1, v1, :cond_7

    goto/16 :goto_0

    .line 2439
    :cond_18
    const/16 v1, 0xa

    if-ne p2, v1, :cond_7

    .line 2440
    const/16 v1, 0xb3e

    if-lt p1, v1, :cond_19

    const/16 v1, 0xb48

    if-le p1, v1, :cond_3

    :cond_19
    const/16 v1, 0xb4b

    if-lt p1, v1, :cond_1a

    const/16 v1, 0xb4c

    if-le p1, v1, :cond_3

    :cond_1a
    const/16 v1, 0xb62

    if-lt p1, v1, :cond_1b

    const/16 v1, 0xb63

    if-le p1, v1, :cond_3

    :cond_1b
    const/16 v1, 0xb56

    if-ge p1, v1, :cond_3

    const/16 v1, 0xb57

    if-lt p1, v1, :cond_7

    goto/16 :goto_0
.end method

.method public isHalant(I)Z
    .locals 1
    .param p1, "primaryCodes"    # I

    .prologue
    .line 2379
    const/16 v0, 0x94d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9cd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xacd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xccd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd4d

    if-eq p1, v0, :cond_0

    const/16 v0, 0xddf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4d

    if-ne p1, v0, :cond_1

    .line 2384
    :cond_0
    const/4 v0, 0x1

    .line 2386
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndependentVowel(II)Z
    .locals 2
    .param p1, "primaryCodes"    # I
    .param p2, "script"    # I

    .prologue
    const/4 v0, 0x1

    .line 2327
    if-ne p2, v0, :cond_2

    .line 2328
    const/16 v1, 0x904

    if-lt p1, v1, :cond_0

    const/16 v1, 0x914

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x960

    if-lt p1, v1, :cond_4

    const/16 v1, 0x961

    if-gt p1, v1, :cond_4

    .line 2376
    :cond_1
    :goto_0
    return v0

    .line 2332
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 2333
    const/16 v1, 0x985

    if-lt p1, v1, :cond_3

    const/16 v1, 0x994

    if-le p1, v1, :cond_1

    :cond_3
    const/16 v1, 0x9e0

    if-lt p1, v1, :cond_4

    const/16 v1, 0x9e1

    if-le p1, v1, :cond_1

    .line 2376
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2337
    :cond_5
    const/4 v1, 0x6

    if-ne p2, v1, :cond_7

    .line 2338
    const/16 v1, 0xa05

    if-lt p1, v1, :cond_6

    const/16 v1, 0xa14

    if-le p1, v1, :cond_1

    :cond_6
    const/16 v1, 0xa72

    if-lt p1, v1, :cond_4

    const/16 v1, 0xa73

    if-gt p1, v1, :cond_4

    goto :goto_0

    .line 2342
    :cond_7
    const/4 v1, 0x7

    if-ne p2, v1, :cond_9

    .line 2343
    const/16 v1, 0xa85

    if-lt p1, v1, :cond_8

    const/16 v1, 0xa94

    if-le p1, v1, :cond_1

    :cond_8
    const/16 v1, 0xae0

    if-lt p1, v1, :cond_4

    const/16 v1, 0xae1

    if-gt p1, v1, :cond_4

    goto :goto_0

    .line 2347
    :cond_9
    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    .line 2348
    const/16 v1, 0xb83

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb85

    if-lt p1, v1, :cond_4

    const/16 v1, 0xb94

    if-gt p1, v1, :cond_4

    goto :goto_0

    .line 2351
    :cond_a
    const/4 v1, 0x4

    if-ne p2, v1, :cond_c

    .line 2352
    const/16 v1, 0xc05

    if-lt p1, v1, :cond_b

    const/16 v1, 0xc14

    if-le p1, v1, :cond_1

    :cond_b
    const/16 v1, 0xc60

    if-lt p1, v1, :cond_4

    const/16 v1, 0xc61

    if-gt p1, v1, :cond_4

    goto :goto_0

    .line 2356
    :cond_c
    const/4 v1, 0x5

    if-ne p2, v1, :cond_e

    .line 2357
    const/16 v1, 0xc85

    if-lt p1, v1, :cond_d

    const/16 v1, 0xc94

    if-le p1, v1, :cond_1

    :cond_d
    const/16 v1, 0xce0

    if-lt p1, v1, :cond_4

    const/16 v1, 0xce1

    if-gt p1, v1, :cond_4

    goto :goto_0

    .line 2361
    :cond_e
    const/16 v1, 0x8

    if-ne p2, v1, :cond_10

    .line 2362
    const/16 v1, 0xd05

    if-lt p1, v1, :cond_f

    const/16 v1, 0xd14

    if-le p1, v1, :cond_1

    :cond_f
    const/16 v1, 0xd60

    if-lt p1, v1, :cond_4

    const/16 v1, 0xd61

    if-gt p1, v1, :cond_4

    goto/16 :goto_0

    .line 2366
    :cond_10
    const/16 v1, 0x9

    if-ne p2, v1, :cond_11

    .line 2367
    const/16 v1, 0xd85

    if-lt p1, v1, :cond_4

    const/16 v1, 0xd96

    if-gt p1, v1, :cond_4

    goto/16 :goto_0

    .line 2370
    :cond_11
    const/16 v1, 0xa

    if-ne p2, v1, :cond_4

    .line 2371
    const/16 v1, 0xb05

    if-lt p1, v1, :cond_12

    const/16 v1, 0xb14

    if-le p1, v1, :cond_1

    :cond_12
    const/16 v1, 0xb60

    if-lt p1, v1, :cond_4

    const/16 v1, 0xb61

    if-gt p1, v1, :cond_4

    goto/16 :goto_0
.end method

.method public isIndianFunctionKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 4601
    const/16 v0, -0x1f3

    if-eq p1, v0, :cond_0

    const/16 v0, -0x1f0

    if-eq p1, v0, :cond_0

    const/16 v0, -0x1f2

    if-ne p1, v0, :cond_1

    .line 4604
    :cond_0
    const/4 v0, 0x1

    .line 4606
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNuktaSymbol(I)Z
    .locals 1
    .param p1, "primaryCodes"    # I

    .prologue
    .line 2495
    const/16 v0, 0x93c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9bc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0xabc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcbc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa51

    if-ne p1, v0, :cond_1

    .line 2498
    :cond_0
    const/4 v0, 0x1

    .line 2500
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpecialMatra(I)Z
    .locals 1
    .param p1, "primaryCodes"    # I

    .prologue
    .line 2267
    packed-switch p1, :pswitch_data_0

    .line 2271
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2269
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2267
    nop

    :pswitch_data_0
    .packed-switch 0x985
        :pswitch_0
    .end packed-switch
.end method

.method public isSpecialVowel(II)Z
    .locals 2
    .param p1, "primaryCodes"    # I
    .param p2, "script"    # I

    .prologue
    const/4 v0, 0x1

    .line 2450
    if-ne p2, v0, :cond_2

    .line 2451
    const/16 v1, 0x901

    if-lt p1, v1, :cond_0

    const/16 v1, 0x903

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x945

    if-ne p1, v1, :cond_3

    .line 2492
    :cond_1
    :goto_0
    return v0

    .line 2454
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 2455
    const/16 v1, 0x981

    if-lt p1, v1, :cond_3

    const/16 v1, 0x983

    if-le p1, v1, :cond_1

    .line 2492
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2458
    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    .line 2459
    const/16 v1, 0xa01

    if-lt p1, v1, :cond_5

    const/16 v1, 0xa03

    if-le p1, v1, :cond_1

    :cond_5
    const/16 v1, 0xa70

    if-lt p1, v1, :cond_3

    const/16 v1, 0xa71

    if-gt p1, v1, :cond_3

    goto :goto_0

    .line 2463
    :cond_6
    const/4 v1, 0x7

    if-ne p2, v1, :cond_7

    .line 2464
    const/16 v1, 0xa81

    if-lt p1, v1, :cond_3

    const/16 v1, 0xa83

    if-gt p1, v1, :cond_3

    goto :goto_0

    .line 2467
    :cond_7
    const/4 v1, 0x3

    if-ne p2, v1, :cond_8

    .line 2468
    const/16 v1, 0xb82

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 2471
    :cond_8
    const/4 v1, 0x4

    if-ne p2, v1, :cond_9

    .line 2472
    const/16 v1, 0xc01

    if-lt p1, v1, :cond_3

    const/16 v1, 0xc03

    if-gt p1, v1, :cond_3

    goto :goto_0

    .line 2475
    :cond_9
    const/4 v1, 0x5

    if-ne p2, v1, :cond_a

    .line 2476
    const/16 v1, 0xc82

    if-lt p1, v1, :cond_3

    const/16 v1, 0xc83

    if-gt p1, v1, :cond_3

    goto :goto_0

    .line 2479
    :cond_a
    const/16 v1, 0x8

    if-ne p2, v1, :cond_b

    .line 2480
    const/16 v1, 0xd02

    if-lt p1, v1, :cond_3

    const/16 v1, 0xd03

    if-gt p1, v1, :cond_3

    goto :goto_0

    .line 2483
    :cond_b
    const/16 v1, 0x9

    if-ne p2, v1, :cond_c

    .line 2484
    const/16 v1, 0xd82

    if-lt p1, v1, :cond_3

    const/16 v1, 0xd83

    if-gt p1, v1, :cond_3

    goto :goto_0

    .line 2487
    :cond_c
    const/16 v1, 0xa

    if-ne p2, v1, :cond_3

    .line 2488
    const/16 v1, 0xb01

    if-lt p1, v1, :cond_3

    const/16 v1, 0xb03

    if-gt p1, v1, :cond_3

    goto :goto_0
.end method

.method public sendAshokaKey([I)V
    .locals 4
    .param p1, "keyCodes"    # [I

    .prologue
    const/4 v3, 0x1

    .line 2534
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    .line 2535
    .local v0, "mIsSwiftKeySDK":Z
    if-eqz v0, :cond_0

    .line 2536
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mSwiftkeyQwertyIndianInputModule:Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onCharacterKey(I[IZ)V

    .line 2544
    :goto_0
    return-void

    .line 2538
    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9Version:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 2539
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mQwertyIndianInputModule:Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_0

    .line 2541
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->mXt9QwertyIndianInputModule:Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    iget v2, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->primaryCode:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_0
.end method

.method public setIndianLanguageHbScript(I)V
    .locals 2
    .param p1, "langId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 2549
    sparse-switch p1, :sswitch_data_0

    .line 2590
    :goto_0
    return-void

    .line 2551
    :sswitch_0
    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2554
    :sswitch_1
    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2557
    :sswitch_2
    const/4 v0, 0x7

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2560
    :sswitch_3
    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2563
    :sswitch_4
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2566
    :sswitch_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2569
    :sswitch_6
    const/4 v0, 0x4

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2572
    :sswitch_7
    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2575
    :sswitch_8
    const/4 v0, 0x5

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2578
    :sswitch_9
    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2581
    :sswitch_a
    iput v1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2584
    :sswitch_b
    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2587
    :sswitch_c
    const/16 v0, 0xa

    iput v0, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    goto :goto_0

    .line 2549
    :sswitch_data_0
    .sparse-switch
        0x61730000 -> :sswitch_a
        0x626e0000 -> :sswitch_7
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x6b6e0000 -> :sswitch_8
        0x6d6c0000 -> :sswitch_4
        0x6d720000 -> :sswitch_1
        0x6e650000 -> :sswitch_b
        0x6f720000 -> :sswitch_c
        0x70610000 -> :sswitch_3
        0x73690000 -> :sswitch_9
        0x74610000 -> :sswitch_5
        0x74650000 -> :sswitch_6
    .end sparse-switch
.end method

.method public setLangScriptId(I)V
    .locals 0
    .param p1, "lang_id"    # I

    .prologue
    .line 2506
    iput p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->langScriptId:I

    .line 2507
    return-void
.end method

.method public setPrevLangScriptId(I)V
    .locals 0
    .param p1, "prev_lang_id"    # I

    .prologue
    .line 2512
    iput p1, p0, Lcom/diotek/ime/framework/input/IndianInputModule;->prevLangScriptId:I

    .line 2513
    return-void
.end method

.method public validCharToProcess(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 2592
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2594
    :cond_0
    const/4 v0, 0x1

    .line 2596
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
