.class public Ljava/text/ChoiceFormat;
.super Ljava/text/NumberFormat;
.source "ChoiceFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x18e9c6bee365b604L


# instance fields
.field private choiceFormats:[Ljava/lang/String;

.field private choiceLimits:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 111
    invoke-virtual {p0, p1}, Ljava/text/ChoiceFormat;->applyPattern(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>([D[Ljava/lang/String;)V
    .locals 0
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 98
    invoke-virtual {p0, p1, p2}, Ljava/text/ChoiceFormat;->setChoices([D[Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static final nextDouble(D)D
    .locals 8
    .param p0, "value"    # D

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 314
    const-wide/high16 v2, 0x7ff0000000000000L

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    .line 324
    .end local p0    # "value":D
    :goto_0
    return-wide p0

    .line 319
    .restart local p0    # "value":D
    :cond_0
    cmpl-double v2, p0, v4

    if-nez v2, :cond_1

    .line 320
    const-wide/16 v0, 0x0

    .line 324
    .local v0, "bits":J
    :goto_1
    cmpg-double v2, p0, v4

    if-gez v2, :cond_2

    sub-long v2, v0, v6

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0

    .line 322
    .end local v0    # "bits":J
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .restart local v0    # "bits":J
    goto :goto_1

    .line 324
    :cond_2
    add-long v2, v0, v6

    goto :goto_2
.end method

.method public static nextDouble(DZ)D
    .locals 2
    .param p0, "value"    # D
    .param p2, "increment"    # Z

    .prologue
    .line 339
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static final previousDouble(D)D
    .locals 8
    .param p0, "value"    # D

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 396
    const-wide/high16 v2, -0x10000000000000L

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    .line 406
    .end local p0    # "value":D
    :goto_0
    return-wide p0

    .line 401
    .restart local p0    # "value":D
    :cond_0
    cmpl-double v2, p0, v4

    if-nez v2, :cond_1

    .line 402
    const-wide/high16 v0, -0x8000000000000000L

    .line 406
    .local v0, "bits":J
    :goto_1
    cmpg-double v2, p0, v4

    if-gtz v2, :cond_2

    add-long v2, v0, v6

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0

    .line 404
    .end local v0    # "bits":J
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .restart local v0    # "bits":J
    goto :goto_1

    .line 406
    :cond_2
    sub-long v2, v0, v6

    goto :goto_2
.end method

.method private skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 438
    .local v0, "length":I
    :goto_0
    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 441
    :cond_0
    return p2
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 22
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 124
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v13, v0, [D

    .line 125
    .local v13, "limits":[D
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v6, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .local v10, "length":I
    const/4 v11, 0x0

    .local v11, "limitCount":I
    const/4 v8, 0x0

    .line 127
    .local v8, "index":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v3, "buffer":Ljava/lang/StringBuffer;
    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    .line 129
    .local v5, "format":Ljava/text/NumberFormat;
    new-instance v17, Ljava/text/ParsePosition;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 131
    .local v17, "position":Ljava/text/ParsePosition;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Ljava/text/ChoiceFormat;->skipWhitespace(Ljava/lang/String;I)I

    move-result v8

    .line 132
    if-lt v8, v10, :cond_1

    .line 133
    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v11, v0, :cond_0

    .line 134
    move-object/from16 v0, p0

    iput-object v13, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 139
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 140
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    aput-object v19, v20, v7

    .line 140
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 136
    .end local v7    # "i":I
    :cond_0
    new-array v0, v11, [D

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 137
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v13, v0, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 146
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 147
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v18

    .line 148
    .local v18, "value":Ljava/lang/Number;
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/text/ChoiceFormat;->skipWhitespace(Ljava/lang/String;I)I

    move-result v8

    .line 149
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    if-lt v8, v10, :cond_4

    .line 151
    :cond_2
    sget-object v19, Llibcore/util/EmptyArray;->DOUBLE:[D

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 152
    sget-object v19, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 153
    .end local v18    # "value":Ljava/lang/Number;
    :cond_3
    return-void

    .line 155
    .restart local v18    # "value":Ljava/lang/Number;
    :cond_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 156
    .local v4, "ch":C
    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v11, v0, :cond_5

    .line 157
    mul-int/lit8 v19, v11, 0x2

    move/from16 v0, v19

    new-array v14, v0, [D

    .line 158
    .local v14, "newLimits":[D
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v0, v14, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    move-object v13, v14

    .line 162
    .end local v14    # "newLimits":[D
    :cond_5
    sparse-switch v4, :sswitch_data_0

    .line 171
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad character \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' in template: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 165
    :sswitch_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    .line 173
    .local v15, "next":D
    :goto_3
    if-lez v11, :cond_6

    add-int/lit8 v19, v11, -0x1

    aget-wide v19, v13, v19

    cmpg-double v19, v15, v19

    if-gtz v19, :cond_6

    .line 174
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad template: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 168
    .end local v15    # "next":D
    :sswitch_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/text/ChoiceFormat;->nextDouble(D)D

    move-result-wide v15

    .line 169
    .restart local v15    # "next":D
    goto :goto_3

    .line 176
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 177
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 178
    const/16 v19, 0x7c

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v1, v3, v2}, Ljava/text/ChoiceFormat;->upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z

    .line 179
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 180
    .end local v9    # "index":I
    .restart local v8    # "index":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "limitCount":I
    .local v12, "limitCount":I
    aput-wide v15, v13, v11

    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v12

    .line 182
    .end local v12    # "limitCount":I
    .restart local v11    # "limitCount":I
    goto/16 :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x3c -> :sswitch_1
        0x2264 -> :sswitch_0
    .end sparse-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/ChoiceFormat;

    .line 196
    .local v0, "clone":Ljava/text/ChoiceFormat;
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 197
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 198
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    if-ne p0, p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 217
    :cond_1
    instance-of v3, p1, Ljava/text/ChoiceFormat;

    if-nez v3, :cond_2

    move v1, v2

    .line 218
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 220
    check-cast v0, Ljava/text/ChoiceFormat;

    .line 221
    .local v0, "choice":Ljava/text/ChoiceFormat;
    iget-object v3, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    iget-object v4, v0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "value"    # D
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 240
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 241
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v1, v1, v0

    cmpg-double v1, v1, p1

    if-gtz v1, :cond_1

    .line 242
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    .line 245
    .end local p3    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    :goto_1
    return-object p3

    .line 240
    .restart local p3    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 245
    :cond_2
    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    goto :goto_1
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "value"    # J
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p4, "field"    # Ljava/text/FieldPosition;

    .prologue
    .line 264
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFormats()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    return-object v0
.end method

.method public getLimits()[D
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 299
    iget-object v4, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 300
    .local v2, "v":J
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v2    # "v":J
    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 376
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 377
    .local v1, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 378
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 380
    new-instance v2, Ljava/lang/Double;

    iget-object v3, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v3, v3, v0

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 384
    :goto_1
    return-object v2

    .line 377
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 384
    new-instance v2, Ljava/lang/Double;

    const-wide/high16 v3, 0x7ff8000000000000L

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1
.end method

.method public setChoices([D[Ljava/lang/String;)V
    .locals 3
    .param p1, "limits"    # [D
    .param p2, "formats"    # [Ljava/lang/String;

    .prologue
    .line 428
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limits.length != formats.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    iput-object p1, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    .line 433
    iput-object p2, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    .line 434
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x7c

    const/16 v7, 0x27

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 453
    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    :cond_0
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Ljava/text/ChoiceFormat;->previousDouble(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "previous":Ljava/lang/String;
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceLimits:[D

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "limit":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 459
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const/16 v5, 0x3c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    :goto_1
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const/4 v4, 0x1

    .line 466
    .local v4, "quote":Z
    :goto_2
    if-eqz v4, :cond_1

    .line 467
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    :cond_1
    iget-object v5, p0, Ljava/text/ChoiceFormat;->choiceFormats:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    if-eqz v4, :cond_2

    .line 471
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v4    # "quote":Z
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/16 v5, 0x23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 465
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 474
    .end local v2    # "limit":Ljava/lang/String;
    .end local v3    # "previous":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
