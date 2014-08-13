.class public Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;
.super Ljava/lang/Object;
.source "MyanmarTyping.java"


# static fields
.field private static final BASIC_CONSONANTS:Ljava/lang/String; = "1000,1001,1002,1004,1005,1006,1007,100a,1010,1011,1012,1014,1015,1016,1017,1019,101a101b,101c,101d,101e,1086,101f,1021"

.field private static final COMBINING_MARKS:Ljava/lang/String; = "1036,1037,1038,1064"

.field private static final COMPOUND_VOWEL:Ljava/lang/String; = ""

.field private static final CONSONAL_CAN_COMBINE_WITH103B:Ljava/lang/String; = "1001,1002,1004,1005,1007,100e,1012,1013,1015,1016,1017,101d,1019"

.field private static final CONSONAL_CAN_COMBINE_WITH103B_TO107E:Ljava/lang/String; = "1000,1003,1006,100f,1010,1011,1018,101a,101c,101e,101f,1021"

.field private static final DOUBLE_HEIGHT_CONSONANTS:Ljava/lang/String; = "1069,106c,106d,106e,106f,1091,1097,100d"

.field private static final DOUBLE_HEIGHT_CONSONANTS_3_33:Ljava/lang/String; = "1008,100a,100b,100c,100d"

.field private static final DOUBLE_WIDTH_CONSONANTS:Ljava/lang/String; = "1060,1063,1066,1067,1070,1071,1072,1073,1074,107b,1093,1090,1085"

.field private static final INDEPENDENT_VOWEL:Ljava/lang/String; = "1023,1024,1025,1026,1027,1029,102a"

.field private static final MEDIAL_CONSONANTS:Ljava/lang/String; = "103a,103b,103c,103d"

.field private static final OTHER_CONSONANTS:Ljava/lang/String; = "1003,1008,1009,100b,100c,100d,100e,100f,1013,1018,1021"

.field private static final SINGLE_WITH_CONSONANTS:Ljava/lang/String; = "1061,1062,1065,1068,1075,1076,108f,1077,1078,1079,107a,107c,1090"

.field private static final STACKED_CONSONANTS:Ljava/lang/String; = "1060,1061,1062,1063,1065,1067,1066,1068,1069,106c,1097,106d,106e,106f,1091,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,107a,107b,1093,107c,1085"

.field private static final VOWEL_DOWN:Ljava/lang/String; = "103c,108a"

.field private static final VOWEL_SIGNS:Ljava/lang/String; = "102c,102b,102d,102e,102f,1030,1031,1032"

.field private static final VOWEL_SIGNS_DOWN:Ljava/lang/String; = "102f,1030,103a,103c,103d,108a,1088"

.field private static final VOWEL_SIGNS_UP:Ljava/lang/String; = "102d,102e,108b,108c,108d,108e,1032,1036,1039,1064"

.field private static final VOWEL_UP:Ljava/lang/String; = "102d,102e,1064,108b,108c,108d,108e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineMyanmarWithPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "keyCode"    # I
    .param p2, "leadingChar"    # Ljava/lang/String;
    .param p3, "leadingChar2"    # Ljava/lang/String;
    .param p4, "leadingChar3"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x1004

    const/16 v8, 0x108f

    const/16 v7, 0x103b

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 379
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .local v1, "mChar1":I
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .local v2, "mChar2":I
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 380
    .local v3, "mChar3":I
    invoke-static {p1, v1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->inputStack(II)I

    move-result v0

    .line 381
    .local v0, "keyCodeMyanmar":I
    const/16 v4, 0x1097

    if-eq v0, v4, :cond_0

    const/16 v4, 0x106e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x106f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x1091

    if-ne v0, v4, :cond_2

    .line 382
    :cond_0
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 383
    move p1, v0

    .line 440
    :cond_1
    :goto_0
    return p1

    .line 384
    :cond_2
    const/16 v4, 0x106a

    if-ne v0, v4, :cond_6

    const/16 v4, 0x1005

    if-lt p1, v4, :cond_6

    const/16 v4, 0x1008

    if-gt p1, v4, :cond_6

    .line 385
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 386
    int-to-char v4, v0

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 387
    const/16 v4, 0x1005

    if-ne p1, v4, :cond_3

    .line 388
    const/16 p1, 0x1065

    goto :goto_0

    .line 389
    :cond_3
    const/16 v4, 0x1006

    if-ne p1, v4, :cond_4

    .line 390
    const/16 p1, 0x1067

    goto :goto_0

    .line 391
    :cond_4
    const/16 v4, 0x1007

    if-ne p1, v4, :cond_5

    .line 392
    const/16 p1, 0x1068

    goto :goto_0

    .line 393
    :cond_5
    const/16 v4, 0x1008

    if-ne p1, v4, :cond_1

    .line 394
    const/16 p1, 0x1069

    goto :goto_0

    .line 396
    :cond_6
    if-eq v0, v8, :cond_7

    const/16 v4, 0x1090

    if-ne v0, v4, :cond_8

    .line 397
    :cond_7
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 398
    int-to-char v4, v0

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto :goto_0

    .line 399
    :cond_8
    if-ne p1, v7, :cond_9

    const/16 v4, 0x1019

    if-ne v1, v4, :cond_9

    .line 400
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 401
    const/16 v4, 0x107f

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 402
    move p1, v1

    goto :goto_0

    .line 403
    :cond_9
    if-ne p1, v7, :cond_b

    const/16 v4, 0x1001

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1002

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1015

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1016

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1017

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1019

    if-eq v1, v4, :cond_a

    if-ne v1, v9, :cond_b

    .line 405
    :cond_a
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 406
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 407
    move p1, v1

    goto :goto_0

    .line 408
    :cond_b
    if-ne p1, v7, :cond_d

    const/16 v4, 0x1000

    if-eq v1, v4, :cond_c

    const/16 v4, 0x1010

    if-ne v1, v4, :cond_d

    .line 409
    :cond_c
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 410
    const/16 v4, 0x107e

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 411
    move p1, v1

    goto/16 :goto_0

    .line 412
    :cond_d
    const/16 v4, 0x1039

    if-ne p1, v4, :cond_e

    const/16 v4, 0x102b

    if-ne v1, v4, :cond_e

    const/16 v4, 0x105a

    if-ne v0, v4, :cond_e

    .line 413
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 414
    move p1, v0

    goto/16 :goto_0

    .line 415
    :cond_e
    const/16 v4, 0x102d

    if-ne p1, v4, :cond_f

    const/16 v4, 0x1015

    if-ne v1, v4, :cond_f

    const v4, 0x2073a

    if-ne v2, v4, :cond_f

    .line 416
    const/4 v4, 0x2

    invoke-interface {p0, v4, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 417
    const/16 v4, 0x107f

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 418
    int-to-char v4, v1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_0

    .line 419
    :cond_f
    if-ne p1, v1, :cond_10

    const/16 v4, 0x101e

    if-ne p1, v4, :cond_10

    .line 420
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 421
    const/16 p1, 0x1086

    goto/16 :goto_0

    .line 422
    :cond_10
    const/16 v4, 0x100c

    if-ne p1, v4, :cond_11

    const/16 v4, 0x100b

    if-ne v1, v4, :cond_11

    .line 423
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 424
    const/16 p1, 0x1092

    goto/16 :goto_0

    .line 425
    :cond_11
    const/16 v4, 0x103d

    if-ne p1, v4, :cond_12

    if-ne v1, v9, :cond_12

    const v4, 0x20729

    if-ne v2, v4, :cond_12

    .line 426
    const/16 p1, 0x1087

    goto/16 :goto_0

    .line 427
    :cond_12
    const/16 v4, 0x1013

    if-ne p1, v4, :cond_13

    const/16 v4, 0x1012

    if-ne v1, v4, :cond_13

    .line 428
    const/16 p1, 0x1076

    goto/16 :goto_0

    .line 429
    :cond_13
    const/16 v4, 0x1010

    if-lt p1, v4, :cond_14

    const/16 v4, 0x1013

    if-gt p1, v4, :cond_14

    const/16 v4, 0x1014

    if-ne v1, v4, :cond_14

    .line 430
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 431
    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 432
    move p1, v0

    goto/16 :goto_0

    .line 433
    :cond_14
    if-ne p1, v1, :cond_15

    const/16 v4, 0x1014

    if-ne p1, v4, :cond_15

    .line 434
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 435
    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 436
    move p1, v0

    goto/16 :goto_0

    .line 438
    :cond_15
    move p1, v0

    goto/16 :goto_0
.end method

.method private static combineMyanmarWithoutPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "keyCode"    # I
    .param p2, "leadingChar"    # Ljava/lang/String;
    .param p3, "leadingChar2"    # Ljava/lang/String;
    .param p4, "leadingChar3"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x103d

    const/4 v10, 0x1

    const/16 v9, 0x102f

    const/4 v8, 0x0

    const/16 v7, 0x1030

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .local v2, "mChar1":I
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .local v3, "mChar2":I
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 131
    .local v4, "mChar3":I
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {p1, v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->inputStack(II)I

    move-result v0

    .line 132
    .local v0, "keyCodeMyanmar":I
    const/16 v5, 0x1014

    if-eq v2, v5, :cond_0

    const/16 v5, 0x1014

    if-ne v3, v5, :cond_3

    :cond_0
    invoke-static {p1}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignDown(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    const/16 v5, 0x1014

    if-ne v2, v5, :cond_2

    .line 134
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 135
    const/16 v5, 0x108f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 375
    :cond_1
    :goto_0
    return p1

    .line 136
    :cond_2
    const/16 v5, 0x1014

    if-ne v3, v5, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 138
    const/16 v5, 0x108f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 139
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_3
    const/16 v5, 0x103b

    if-ne v2, v5, :cond_4

    const/16 v5, 0x101e

    if-ne p1, v5, :cond_4

    .line 143
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 144
    const/16 p1, 0x1029

    goto :goto_0

    .line 146
    :cond_4
    const/16 v5, 0x1001

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1002

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1004

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1012

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1015

    if-eq v2, v5, :cond_5

    const/16 v5, 0x101d

    if-ne v2, v5, :cond_6

    :cond_5
    const/16 v5, 0x102c

    if-ne p1, v5, :cond_6

    const/16 v5, 0x103b

    if-eq v3, v5, :cond_6

    .line 147
    const/16 p1, 0x102b

    goto :goto_0

    .line 149
    :cond_6
    const/16 v5, 0x102d

    if-ne p1, v5, :cond_7

    const/16 v5, 0x1064

    if-ne v2, v5, :cond_7

    .line 150
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 151
    const/16 p1, 0x108b

    goto :goto_0

    .line 153
    :cond_7
    const/16 v5, 0x102e

    if-ne p1, v5, :cond_8

    const/16 v5, 0x1064

    if-ne v2, v5, :cond_8

    .line 154
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 155
    const/16 p1, 0x108c

    goto :goto_0

    .line 157
    :cond_8
    if-eq p1, v7, :cond_9

    if-ne p1, v9, :cond_e

    :cond_9
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 158
    :cond_a
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 159
    if-ne p1, v7, :cond_b

    const/16 p1, 0x1034

    goto :goto_0

    .line 160
    :cond_b
    const/16 p1, 0x1033

    goto/16 :goto_0

    .line 161
    :cond_c
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    if-ne p1, v7, :cond_d

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 164
    :cond_d
    const/16 p1, 0x1033

    goto/16 :goto_0

    .line 168
    :cond_e
    if-eq p1, v9, :cond_f

    if-ne p1, v7, :cond_14

    :cond_f
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 169
    :cond_10
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 170
    if-ne p1, v9, :cond_11

    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_11
    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 171
    :cond_12
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    if-ne p1, v9, :cond_13

    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_13
    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 177
    :cond_14
    if-eq p1, v7, :cond_15

    if-ne p1, v9, :cond_1a

    :cond_15
    const/16 v5, 0x103a

    if-eq v2, v5, :cond_16

    const/16 v5, 0x103a

    if-ne v3, v5, :cond_1a

    .line 178
    :cond_16
    const/16 v5, 0x103a

    if-ne v2, v5, :cond_18

    .line 179
    if-ne p1, v7, :cond_17

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_17
    const/16 p1, 0x1033

    goto/16 :goto_0

    .line 180
    :cond_18
    const/16 v5, 0x103a

    if-ne v3, v5, :cond_1

    .line 181
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    if-ne p1, v7, :cond_19

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_19
    const/16 p1, 0x1033

    goto/16 :goto_0

    .line 185
    :cond_1a
    if-eq p1, v7, :cond_1b

    if-ne p1, v9, :cond_20

    :cond_1b
    const/16 v5, 0x103b

    if-eq v3, v5, :cond_1c

    const/16 v5, 0x107f

    if-ne v4, v5, :cond_20

    .line 186
    :cond_1c
    const/16 v5, 0x103b

    if-ne v3, v5, :cond_1e

    .line 187
    if-ne p1, v7, :cond_1d

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_1d
    const/16 p1, 0x1033

    goto/16 :goto_0

    .line 188
    :cond_1e
    const/16 v5, 0x107f

    if-ne v4, v5, :cond_1

    .line 189
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    if-ne p1, v7, :cond_1f

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_1f
    const/16 p1, 0x1033

    goto/16 :goto_0

    .line 193
    :cond_20
    if-ne p1, v7, :cond_22

    if-ne v2, v6, :cond_22

    const/16 v5, 0x1014

    if-eq v3, v5, :cond_21

    const/16 v5, 0x1019

    if-eq v3, v5, :cond_21

    const/16 v5, 0x101b

    if-eq v3, v5, :cond_21

    const/16 v5, 0x101c

    if-ne v3, v5, :cond_22

    .line 194
    :cond_21
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 195
    const/16 p1, 0x1089

    goto/16 :goto_0

    .line 203
    :cond_22
    const/16 v5, 0x1036

    if-ne p1, v5, :cond_23

    const/16 v5, 0x1064

    if-ne v2, v5, :cond_23

    .line 204
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 205
    const/16 p1, 0x108d

    goto/16 :goto_0

    .line 207
    :cond_23
    const/16 v5, 0x1036

    if-ne p1, v5, :cond_24

    const/16 v5, 0x102d

    if-ne v2, v5, :cond_24

    .line 208
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 209
    const/16 p1, 0x108e

    goto/16 :goto_0

    .line 211
    :cond_24
    const/16 v5, 0x1037

    if-ne p1, v5, :cond_25

    if-ne v2, v6, :cond_25

    const/16 v5, 0x1031

    if-ne v4, v5, :cond_25

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 212
    const/16 p1, 0x1095

    goto/16 :goto_0

    .line 213
    :cond_25
    const/16 v5, 0x1037

    if-ne p1, v5, :cond_29

    if-eq v2, v9, :cond_28

    if-eq v2, v7, :cond_28

    const/16 v5, 0x1014

    if-eq v2, v5, :cond_28

    if-eq v3, v9, :cond_26

    if-eq v3, v7, :cond_26

    const/16 v5, 0x1014

    if-eq v3, v5, :cond_26

    if-ne v3, v6, :cond_27

    :cond_26
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-nez v5, :cond_28

    :cond_27
    if-ne v2, v6, :cond_29

    .line 215
    :cond_28
    const/16 p1, 0x1094

    goto/16 :goto_0

    .line 217
    :cond_29
    const/16 v5, 0x1037

    if-ne p1, v5, :cond_2c

    const/16 v5, 0x101b

    if-eq v2, v5, :cond_2b

    const/16 v5, 0x1033

    if-eq v2, v5, :cond_2b

    const/16 v5, 0x103c

    if-eq v2, v5, :cond_2b

    const/16 v5, 0x101b

    if-eq v3, v5, :cond_2a

    const/16 v5, 0x1033

    if-eq v3, v5, :cond_2a

    const/16 v5, 0x103c

    if-ne v3, v5, :cond_2c

    :cond_2a
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 219
    :cond_2b
    const/16 p1, 0x1095

    goto/16 :goto_0

    .line 221
    :cond_2c
    const/16 v5, 0x1039

    if-ne p1, v5, :cond_2e

    const/16 v5, 0x102b

    if-ne v2, v5, :cond_2e

    const/16 v5, 0x1001

    if-eq v3, v5, :cond_2d

    const/16 v5, 0x1002

    if-eq v3, v5, :cond_2d

    const/16 v5, 0x1004

    if-eq v3, v5, :cond_2d

    const/16 v5, 0x1012

    if-eq v3, v5, :cond_2d

    const/16 v5, 0x1015

    if-eq v3, v5, :cond_2d

    const/16 v5, 0x101d

    if-ne v3, v5, :cond_2e

    .line 223
    :cond_2d
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 224
    const/16 p1, 0x105a

    goto/16 :goto_0

    .line 226
    :cond_2e
    invoke-static {p1}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/16 v5, 0x103b

    if-ne v2, v5, :cond_2f

    .line 227
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 228
    const/16 v5, 0x107e

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_0

    .line 230
    :cond_2f
    const/16 v5, 0x102d

    if-eq p1, v5, :cond_30

    const/16 v5, 0x108b

    if-eq p1, v5, :cond_30

    const/16 v5, 0x102e

    if-eq p1, v5, :cond_30

    const/16 v5, 0x108c

    if-eq p1, v5, :cond_30

    const/16 v5, 0x1064

    if-eq p1, v5, :cond_30

    const/16 v5, 0x108d

    if-ne p1, v5, :cond_31

    :cond_30
    const/16 v5, 0x103b

    if-ne v3, v5, :cond_31

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 232
    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 233
    const/16 v5, 0x107f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 234
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 236
    :cond_31
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_33

    const/16 v5, 0x107e

    if-ne v3, v5, :cond_33

    const/16 v5, 0x102d

    if-eq p1, v5, :cond_32

    const/16 v5, 0x108b

    if-eq p1, v5, :cond_32

    const/16 v5, 0x102e

    if-eq p1, v5, :cond_32

    const/16 v5, 0x108c

    if-eq p1, v5, :cond_32

    const/16 v5, 0x1064

    if-eq p1, v5, :cond_32

    const/16 v5, 0x108d

    if-ne p1, v5, :cond_33

    .line 238
    :cond_32
    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 239
    const/16 v5, 0x1080

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 240
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 242
    :cond_33
    const/16 v5, 0x103c

    if-eq p1, v5, :cond_34

    const/16 v5, 0x108a

    if-ne p1, v5, :cond_35

    :cond_34
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_35

    const/16 v5, 0x103b

    if-ne v3, v5, :cond_35

    .line 243
    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 244
    const/16 v5, 0x1081

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 245
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 247
    :cond_35
    const/16 v5, 0x103c

    if-eq p1, v5, :cond_36

    const/16 v5, 0x108a

    if-ne p1, v5, :cond_37

    :cond_36
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_37

    const/16 v5, 0x107f

    if-ne v4, v5, :cond_37

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 248
    const/4 v5, 0x3

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 249
    const/16 v5, 0x1083

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 250
    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 251
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 253
    :cond_37
    const/16 v5, 0x102d

    if-eq p1, v5, :cond_38

    const/16 v5, 0x108b

    if-eq p1, v5, :cond_38

    const/16 v5, 0x102e

    if-eq p1, v5, :cond_38

    const/16 v5, 0x108c

    if-eq p1, v5, :cond_38

    const/16 v5, 0x1064

    if-eq p1, v5, :cond_38

    const/16 v5, 0x108d

    if-ne p1, v5, :cond_39

    :cond_38
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_39

    const/16 v5, 0x1082

    if-ne v4, v5, :cond_39

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 255
    const/4 v5, 0x3

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 256
    const/16 v5, 0x1084

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 257
    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 258
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 259
    :cond_39
    const/16 v5, 0x102d

    if-eq p1, v5, :cond_3a

    const/16 v5, 0x108b

    if-eq p1, v5, :cond_3a

    const/16 v5, 0x102e

    if-eq p1, v5, :cond_3a

    const/16 v5, 0x108c

    if-eq p1, v5, :cond_3a

    const/16 v5, 0x1064

    if-eq p1, v5, :cond_3a

    const/16 v5, 0x108d

    if-ne p1, v5, :cond_3b

    :cond_3a
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/16 v5, 0x1081

    if-ne v4, v5, :cond_3b

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 261
    const/4 v5, 0x3

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 262
    const/16 v5, 0x1083

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 263
    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 264
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 265
    :cond_3b
    const/16 v5, 0x103c

    if-eq p1, v5, :cond_3c

    const/16 v5, 0x108a

    if-ne p1, v5, :cond_40

    :cond_3c
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v5, 0x107e

    if-eq v3, v5, :cond_3e

    :cond_3d
    const/16 v5, 0x1029

    if-ne v2, v5, :cond_40

    .line 266
    :cond_3e
    const/16 v5, 0x1029

    if-eq v2, v5, :cond_3f

    .line 267
    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 268
    const/16 v5, 0x1082

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 269
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 271
    :cond_3f
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 272
    const/16 v5, 0x1082

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 273
    const/16 v5, 0x101e

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_0

    .line 276
    :cond_40
    const/16 v5, 0x103c

    if-ne p1, v5, :cond_41

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x1080

    if-ne v4, v5, :cond_41

    .line 277
    const/4 v5, 0x3

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 278
    const/16 v5, 0x1084

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 279
    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 282
    :cond_41
    if-ne p1, v6, :cond_43

    const/16 v5, 0x100a

    if-eq v2, v5, :cond_42

    const/16 v5, 0x100a

    if-ne v3, v5, :cond_43

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 283
    :cond_42
    const/16 p1, 0x1087

    goto/16 :goto_0

    .line 285
    :cond_43
    if-ne p1, v6, :cond_48

    const/16 v5, 0x1004

    if-eq v2, v5, :cond_44

    const/16 v5, 0x1019

    if-ne v2, v5, :cond_45

    :cond_44
    const/16 v5, 0x103b

    if-eq v3, v5, :cond_47

    :cond_45
    const/16 v5, 0x1004

    if-eq v3, v5, :cond_46

    const/16 v5, 0x1019

    if-ne v3, v5, :cond_48

    :cond_46
    const/16 v5, 0x103b

    if-ne v4, v5, :cond_48

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 286
    :cond_47
    const/16 p1, 0x1087

    goto/16 :goto_0

    .line 288
    :cond_48
    if-ne p1, v6, :cond_4d

    const/16 v5, 0x103c

    if-ne v2, v5, :cond_49

    const/16 v5, 0x108f

    if-eq v3, v5, :cond_4b

    const/16 v5, 0x1019

    if-eq v3, v5, :cond_4b

    const/16 v5, 0x101b

    if-eq v3, v5, :cond_4b

    const/16 v5, 0x101c

    if-eq v3, v5, :cond_4b

    :cond_49
    const/16 v5, 0x103c

    if-ne v3, v5, :cond_4d

    const/16 v5, 0x108f

    if-eq v4, v5, :cond_4a

    const/16 v5, 0x1019

    if-eq v4, v5, :cond_4a

    const/16 v5, 0x101b

    if-eq v4, v5, :cond_4a

    const/16 v5, 0x101c

    if-ne v4, v5, :cond_4d

    :cond_4a
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 291
    :cond_4b
    const/16 v5, 0x103c

    if-ne v2, v5, :cond_4c

    .line 292
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 293
    const/16 p1, 0x108a

    goto/16 :goto_0

    .line 294
    :cond_4c
    const/16 v5, 0x103c

    if-ne v3, v5, :cond_1

    .line 295
    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 296
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 297
    const/16 p1, 0x108a

    goto/16 :goto_0

    .line 300
    :cond_4d
    if-ne p1, v7, :cond_52

    if-ne v2, v6, :cond_4e

    const/16 v5, 0x108f

    if-eq v3, v5, :cond_50

    const/16 v5, 0x1019

    if-eq v3, v5, :cond_50

    const/16 v5, 0x101b

    if-eq v3, v5, :cond_50

    const/16 v5, 0x101c

    if-eq v3, v5, :cond_50

    :cond_4e
    if-ne v3, v6, :cond_52

    const/16 v5, 0x108f

    if-eq v4, v5, :cond_4f

    const/16 v5, 0x1019

    if-eq v4, v5, :cond_4f

    const/16 v5, 0x101b

    if-eq v4, v5, :cond_4f

    const/16 v5, 0x101c

    if-ne v4, v5, :cond_52

    :cond_4f
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 303
    :cond_50
    if-ne v2, v6, :cond_51

    .line 304
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 305
    const/16 p1, 0x1089

    goto/16 :goto_0

    .line 306
    :cond_51
    if-ne v3, v6, :cond_1

    .line 307
    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 308
    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 309
    const/16 p1, 0x1089

    goto/16 :goto_0

    .line 312
    :cond_52
    if-eq p1, v9, :cond_53

    if-ne p1, v7, :cond_58

    :cond_53
    invoke-static {v4}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-nez v5, :cond_55

    :cond_54
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 314
    :cond_55
    const/4 v5, 0x4

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    .local v1, "leadingChar4":Ljava/lang/String;
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_57

    .line 316
    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 318
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x1083

    if-ne v5, v6, :cond_1

    .line 319
    if-ne p1, v9, :cond_56

    const/16 p1, 0x1033

    .line 320
    :cond_56
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 317
    :cond_57
    const-string v1, ""

    goto :goto_1

    .line 322
    .end local v1    # "leadingChar4":Ljava/lang/String;
    :cond_58
    if-eq p1, v9, :cond_59

    if-ne p1, v7, :cond_5e

    :cond_59
    invoke-static {v4}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-nez v5, :cond_5b

    :cond_5a
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 324
    :cond_5b
    const/4 v5, 0x4

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    .restart local v1    # "leadingChar4":Ljava/lang/String;
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5d

    .line 326
    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 328
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x1084

    if-ne v5, v6, :cond_1

    .line 329
    if-ne p1, v9, :cond_5c

    const/16 p1, 0x1033

    .line 330
    :cond_5c
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 327
    :cond_5d
    const-string v1, ""

    goto :goto_2

    .line 332
    .end local v1    # "leadingChar4":Ljava/lang/String;
    :cond_5e
    if-eq p1, v9, :cond_5f

    if-ne p1, v7, :cond_61

    :cond_5f
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_61

    const/16 v5, 0x1081

    if-ne v4, v5, :cond_61

    .line 333
    if-ne p1, v9, :cond_60

    const/16 p1, 0x1033

    .line 334
    :cond_60
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 335
    :cond_61
    if-eq p1, v9, :cond_62

    if-ne p1, v7, :cond_64

    :cond_62
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_64

    const/16 v5, 0x1082

    if-ne v4, v5, :cond_64

    .line 336
    if-ne p1, v9, :cond_63

    const/16 p1, 0x1033

    .line 337
    :cond_63
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 338
    :cond_64
    if-eq p1, v9, :cond_65

    if-ne p1, v7, :cond_67

    :cond_65
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_67

    const/16 v5, 0x107e

    if-ne v3, v5, :cond_67

    .line 339
    if-ne p1, v9, :cond_66

    const/16 p1, 0x1033

    .line 340
    :cond_66
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 341
    :cond_67
    if-eq p1, v9, :cond_68

    if-ne p1, v7, :cond_6a

    :cond_68
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    const/16 v5, 0x1080

    if-ne v4, v5, :cond_6a

    .line 342
    if-ne p1, v9, :cond_69

    const/16 p1, 0x1033

    .line 343
    :cond_69
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 344
    :cond_6a
    if-eq p1, v9, :cond_6b

    if-ne p1, v7, :cond_6d

    :cond_6b
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_6d

    const/16 v5, 0x1082

    if-ne v4, v5, :cond_6d

    .line 345
    if-ne p1, v9, :cond_6c

    const/16 p1, 0x1033

    .line 346
    :cond_6c
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 347
    :cond_6d
    if-eq p1, v9, :cond_6e

    if-ne p1, v7, :cond_70

    :cond_6e
    const/16 v5, 0x1029

    if-ne v2, v5, :cond_70

    .line 348
    if-ne p1, v9, :cond_6f

    const/16 p1, 0x1033

    .line 349
    :cond_6f
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 350
    :cond_70
    if-ne p1, v9, :cond_72

    if-ne v2, v6, :cond_72

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v5

    if-nez v5, :cond_71

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isOtherConsonal(I)Z

    move-result v5

    if-nez v5, :cond_71

    const/16 v5, 0x108f

    if-ne v3, v5, :cond_72

    .line 351
    :cond_71
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 352
    const/16 p1, 0x1088

    goto/16 :goto_0

    .line 353
    :cond_72
    if-eq p1, v9, :cond_73

    if-ne p1, v7, :cond_77

    :cond_73
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_74

    const/16 v5, 0x103b

    if-eq v4, v5, :cond_75

    :cond_74
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_77

    const/16 v5, 0x107e

    if-ne v4, v5, :cond_77

    .line 354
    :cond_75
    if-ne p1, v9, :cond_76

    const/16 p1, 0x1033

    .line 355
    :cond_76
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 356
    :cond_77
    if-eq p1, v9, :cond_78

    if-ne p1, v7, :cond_7a

    :cond_78
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_7a

    const/16 v5, 0x1029

    if-ne v3, v5, :cond_7a

    .line 357
    if-ne p1, v9, :cond_79

    const/16 p1, 0x1033

    .line 358
    :cond_79
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    .line 359
    :cond_7a
    const/16 v5, 0x102c

    if-ne p1, v5, :cond_7c

    const/16 v5, 0x1001

    if-eq v3, v5, :cond_7b

    const/16 v5, 0x1002

    if-eq v3, v5, :cond_7b

    const/16 v5, 0x1004

    if-eq v3, v5, :cond_7b

    const/16 v5, 0x1012

    if-eq v3, v5, :cond_7b

    const/16 v5, 0x1015

    if-eq v3, v5, :cond_7b

    const/16 v5, 0x101d

    if-ne v3, v5, :cond_7c

    :cond_7b
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_7c

    const/16 v5, 0x103b

    if-eq v4, v5, :cond_7c

    .line 360
    const/16 p1, 0x102b

    goto/16 :goto_0

    .line 361
    :cond_7c
    const/16 v5, 0x1039

    if-ne p1, v5, :cond_7e

    const/16 v5, 0x102b

    if-ne v2, v5, :cond_7e

    const/16 v5, 0x1001

    if-eq v4, v5, :cond_7d

    const/16 v5, 0x1002

    if-eq v4, v5, :cond_7d

    const/16 v5, 0x1004

    if-eq v4, v5, :cond_7d

    const/16 v5, 0x1012

    if-eq v4, v5, :cond_7d

    const/16 v5, 0x1015

    if-eq v4, v5, :cond_7d

    const/16 v5, 0x101d

    if-ne v4, v5, :cond_7e

    :cond_7d
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 362
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 363
    const/16 p1, 0x105a

    goto/16 :goto_0

    .line 364
    :cond_7e
    if-ne p1, v6, :cond_7f

    const/16 v5, 0x103c

    if-ne v2, v5, :cond_7f

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 365
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 366
    const/16 p1, 0x108a

    goto/16 :goto_0

    .line 367
    :cond_7f
    const/16 v5, 0x1037

    if-ne p1, v5, :cond_80

    const/16 v5, 0x108a

    if-ne v2, v5, :cond_80

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 368
    const/16 p1, 0x1095

    goto/16 :goto_0

    .line 369
    :cond_80
    const/16 v5, 0x1037

    if-ne p1, v5, :cond_81

    const/16 v5, 0x1036

    if-ne v2, v5, :cond_81

    const/16 v5, 0x103a

    if-ne v3, v5, :cond_81

    invoke-static {v4}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 370
    const/16 p1, 0x1095

    goto/16 :goto_0

    .line 371
    :cond_81
    const/16 v5, 0x1013

    if-ne p1, v5, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-nez v5, :cond_82

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-nez v5, :cond_82

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignDown(I)Z

    move-result v5

    if-nez v5, :cond_82

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    :cond_82
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 373
    const/16 p1, 0x1076

    goto/16 :goto_0
.end method

.method public static getMyanmarCode(Landroid/view/inputmethod/InputConnection;I)I
    .locals 9
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "keyCode"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    const-string v0, ""

    .local v0, "leadingChar":Ljava/lang/String;
    const-string v1, ""

    .local v1, "leadingChar2":Ljava/lang/String;
    const-string v2, ""

    .line 35
    .local v2, "leadingChar3":Ljava/lang/String;
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "leadingChar":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 36
    .restart local v0    # "leadingChar":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 37
    :cond_0
    invoke-interface {p0, v7, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "leadingChar2":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 38
    .restart local v1    # "leadingChar2":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 39
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {p0, v8, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "leadingChar3":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 42
    .restart local v2    # "leadingChar3":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 43
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 45
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {p1, v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->adjustZawgyiPosition(II)I

    move-result v3

    .line 46
    .local v3, "mCode":I
    const/16 v4, 0x107d

    if-ne v3, v4, :cond_4

    .line 47
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 48
    int-to-char v4, v3

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 52
    :goto_2
    sget-boolean v4, Lcom/diotek/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    if-eqz v4, :cond_5

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiChar(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 53
    invoke-static {p0, p1, v0, v1, v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->combineMyanmarWithPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 57
    :cond_1
    :goto_3
    return p1

    .line 40
    .end local v3    # "mCode":I
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 44
    :cond_3
    const-string v2, ""

    goto :goto_1

    .line 50
    .restart local v3    # "mCode":I
    :cond_4
    move p1, v3

    goto :goto_2

    .line 54
    :cond_5
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiChar(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-static {p0, p1, v0, v1, v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->combineMyanmarWithoutPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_3
.end method

.method private static isBasicConsonal(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    const-string v1, "1000,1001,1002,1004,1005,1006,1007,100a,1010,1011,1012,1014,1015,1016,1017,1019,101a101b,101c,101d,101e,1086,101f,1021"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConsonalCanCombile103B(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 113
    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    const-string v1, "1001,1002,1004,1005,1007,100e,1012,1013,1015,1016,1017,101d,1019"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConsonalCanCombile103BTo107E(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    const-string v1, "1000,1003,1006,100f,1010,1011,1018,101a,101c,101e,101f,1021"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDoubleHeightConsonant(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 98
    if-nez p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const-string v1, "1069,106c,106d,106e,106f,1091,1097,100d"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDoubleHeightConsonant_3_33(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 103
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const-string v1, "1008,100a,100b,100c,100d"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDoubleWidthConsonant(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 93
    if-nez p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    const-string v1, "1060,1063,1066,1067,1070,1071,1072,1073,1074,107b,1093,1090,1085"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isOtherConsonal(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    const-string v1, "1003,1008,1009,100b,100c,100d,100e,100f,1013,1018,1021"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSingleWithConsonant(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    const-string v1, "1061,1062,1065,1068,1075,1076,108f,1077,1078,1079,107a,107c,1090"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isStackedConsonants(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    const-string v1, "1060,1061,1062,1063,1065,1067,1066,1068,1069,106c,1097,106d,106e,106f,1091,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,107a,107b,1093,107c,1085"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelDown(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    const-string v1, "103c,108a"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelSignDown(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 108
    if-nez p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const-string v1, "102f,1030,103a,103c,103d,108a,1088"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelSignsUp(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 60
    if-nez p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    const-string v1, "102d,102e,108b,108c,108d,108e,1032,1036,1039,1064"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelUp(I)Z
    .locals 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 119
    if-nez p0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    const-string v1, "102d,102e,1064,108b,108c,108d,108e"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
