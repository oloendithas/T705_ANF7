.class public Landroid/sec/clipboard/util/ClipboardProcText;
.super Ljava/lang/Object;
.source "ClipboardProcText.java"


# static fields
.field private static body_found:Z

.field private static href:Ljava/lang/String;

.field private static in_body:Z

.field private static pre:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    .line 49
    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    .line 50
    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    .line 51
    const-string v0, ""

    sput-object v0, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertString(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v4, "result":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v5, "result2":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, "input":Ljava/io/StringReader;
    const/4 v8, 0x0

    .line 116
    .local v8, "text":Ljava/lang/String;
    :try_start_10
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    .line 118
    .local v1, "dChar":I
    :goto_14
    const/4 v9, -0x1

    if-eq v1, v9, :cond_133

    .line 120
    const-string v8, ""

    .line 121
    const/16 v9, 0x3c

    if-ne v1, v9, :cond_32

    .line 123
    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->getTag(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "CurrentTag":Ljava/lang/String;
    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardProcText;->convertTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    .end local v0    # "CurrentTag":Ljava/lang/String;
    :goto_25
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    if-eqz v9, :cond_12b

    move-object v6, v4

    .line 163
    .local v6, "s":Ljava/lang/StringBuffer;
    :goto_2a
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    .line 165
    goto :goto_14

    .line 126
    .end local v6    # "s":Ljava/lang/StringBuffer;
    :cond_32
    const/16 v9, 0x26

    if-ne v1, v9, :cond_e5

    .line 127
    invoke-static {v3}, Landroid/sec/clipboard/util/ClipboardProcText;->getSpecial(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "specialchar":Ljava/lang/String;
    const-string v9, "lt;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    const-string v9, "#60"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 129
    :cond_4a
    const-string v8, "<"

    goto :goto_25

    .line 130
    :cond_4d
    const-string v9, "gt;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    const-string v9, "#62"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 132
    :cond_5d
    const-string v8, ">"

    goto :goto_25

    .line 133
    :cond_60
    const-string v9, "amp;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    const-string v9, "#38"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 135
    :cond_70
    const-string v8, "&"

    goto :goto_25

    .line 136
    :cond_73
    const-string/jumbo v9, "nbsp;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 137
    const-string v8, " "

    goto :goto_25

    .line 138
    :cond_7f
    const-string/jumbo v9, "quot;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_90

    const-string v9, "#34"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_93

    .line 140
    :cond_90
    const-string v8, "\""

    goto :goto_25

    .line 141
    :cond_93
    const-string v9, "copy;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a3

    const-string v9, "#169"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 143
    :cond_a3
    const-string v8, "[Copyright]"

    goto :goto_25

    .line 144
    :cond_a6
    const-string/jumbo v9, "reg;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b7

    const-string v9, "#174"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 146
    :cond_b7
    const-string v8, "[Registered]"

    goto/16 :goto_25

    .line 147
    :cond_bb
    const-string/jumbo v9, "trade;"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cc

    const-string v9, "#153"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 149
    :cond_cc
    const-string v8, "[Trademark]"

    goto/16 :goto_25

    .line 151
    :cond_d0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_25

    .line 152
    .end local v7    # "specialchar":Ljava/lang/String;
    :cond_e5
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    if-nez v9, :cond_115

    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 153
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    if-eqz v9, :cond_10f

    move-object v6, v4

    .line 154
    .restart local v6    # "s":Ljava/lang/StringBuffer;
    :goto_f5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_111

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_111

    .line 156
    const-string v8, ""

    goto/16 :goto_25

    .end local v6    # "s":Ljava/lang/StringBuffer;
    :cond_10f
    move-object v6, v5

    .line 153
    goto :goto_f5

    .line 158
    .restart local v6    # "s":Ljava/lang/StringBuffer;
    :cond_111
    const-string v8, " "

    goto/16 :goto_25

    .line 160
    .end local v6    # "s":Ljava/lang/StringBuffer;
    :cond_115
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_128} :catch_12e

    move-result-object v8

    goto/16 :goto_25

    :cond_12b
    move-object v6, v5

    .line 162
    goto/16 :goto_2a

    .line 166
    .end local v1    # "dChar":I
    :catch_12e
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V

    .line 168
    throw v2

    .line 170
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dChar":I
    :cond_133
    sget-boolean v9, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    if-eqz v9, :cond_141

    move-object v6, v4

    .line 171
    .restart local v6    # "s":Ljava/lang/StringBuffer;
    :goto_138
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .end local v6    # "s":Ljava/lang/StringBuffer;
    :cond_141
    move-object v6, v5

    .line 170
    goto :goto_138
.end method

.method private static convertTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "sText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 256
    const-string v2, ""

    .line 257
    .local v2, "result":Ljava/lang/String;
    const-string v3, "body"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 258
    sput-boolean v4, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    .line 259
    sput-boolean v4, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    .line 344
    :cond_11
    :goto_11
    return-object v2

    .line 260
    :cond_12
    const-string v3, "/body"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 261
    sput-boolean v6, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    .line 262
    const-string v2, ""

    goto :goto_11

    .line 263
    :cond_1f
    const-string v3, "center"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 264
    const-string v2, ""

    goto :goto_11

    .line 266
    :cond_2a
    const-string v3, "/center"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 267
    const-string v2, ""

    goto :goto_11

    .line 269
    :cond_35
    const-string/jumbo v3, "pre"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 270
    const-string v2, ""

    .line 271
    sput-boolean v4, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    goto :goto_11

    .line 272
    :cond_43
    const-string v3, "/pre"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 273
    const-string v2, ""

    .line 274
    sput-boolean v6, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    goto :goto_11

    .line 275
    :cond_50
    const-string/jumbo v3, "p"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 276
    const-string v2, "\n"

    goto :goto_11

    .line 277
    :cond_5c
    const-string v3, "br"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 278
    const-string v2, "\n"

    goto :goto_11

    .line 279
    :cond_67
    const-string v3, "h1"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h2"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h3"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h4"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h5"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h6"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9f

    const-string v3, "h7"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 282
    :cond_9f
    const-string v2, ""

    goto/16 :goto_11

    .line 283
    :cond_a3
    const-string v3, "/h1"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h2"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h3"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h4"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h5"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h6"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "/h7"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 287
    :cond_db
    const-string v2, ""

    goto/16 :goto_11

    .line 288
    :cond_df
    const-string v3, "/dl"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 289
    const-string v2, ""

    goto/16 :goto_11

    .line 290
    :cond_eb
    const-string v3, "dd"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 291
    const-string v2, ""

    goto/16 :goto_11

    .line 292
    :cond_f7
    const-string v3, "dt"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 293
    const-string v2, "      "

    goto/16 :goto_11

    .line 294
    :cond_103
    const-string v3, "li"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 295
    const-string v2, "\n   "

    goto/16 :goto_11

    .line 296
    :cond_10f
    const-string v3, "/ul"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 297
    const-string v2, ""

    goto/16 :goto_11

    .line 298
    :cond_11b
    const-string v3, "/ol"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 299
    const-string v2, ""

    goto/16 :goto_11

    .line 300
    :cond_127
    const-string v3, "hr"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 301
    const-string v2, "_________________________________________"

    goto/16 :goto_11

    .line 302
    :cond_133
    const-string/jumbo v3, "table"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_140

    .line 303
    const-string v2, ""

    goto/16 :goto_11

    .line 304
    :cond_140
    const-string v3, "/table"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 305
    const-string v2, ""

    goto/16 :goto_11

    .line 306
    :cond_14c
    const-string v3, "form"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 307
    const-string v2, ""

    goto/16 :goto_11

    .line 308
    :cond_158
    const-string v3, "/form"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_164

    .line 309
    const-string v2, ""

    goto/16 :goto_11

    .line 310
    :cond_164
    const-string v3, "b"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_170

    .line 311
    const-string v2, ""

    goto/16 :goto_11

    .line 312
    :cond_170
    const-string v3, "/b"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 313
    const-string v2, ""

    goto/16 :goto_11

    .line 314
    :cond_17c
    const-string v3, "i"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 315
    const-string v2, ""

    goto/16 :goto_11

    .line 316
    :cond_188
    const-string v3, "/i"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_194

    .line 317
    const-string v2, ""

    goto/16 :goto_11

    .line 318
    :cond_194
    const-string v3, "img"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b2

    .line 319
    const-string v3, "alt=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, "idx":I
    if-eq v0, v5, :cond_11

    .line 321
    add-int/lit8 v0, v0, 0x5

    .line 322
    const-string v3, "\""

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 323
    .local v1, "idx2":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_11

    .line 325
    .end local v0    # "idx":I
    .end local v1    # "idx2":I
    :cond_1b2
    const-string v3, "a"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 326
    const-string v3, "href=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 327
    .restart local v0    # "idx":I
    if-eq v0, v5, :cond_1d2

    .line 328
    add-int/lit8 v0, v0, 0x6

    .line 329
    const-string v3, "\""

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 330
    .restart local v1    # "idx2":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    goto/16 :goto_11

    .line 332
    .end local v1    # "idx2":I
    :cond_1d2
    const-string v3, ""

    sput-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    goto/16 :goto_11

    .line 335
    .end local v0    # "idx":I
    :cond_1d8
    const-string v3, "/a"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ec

    .line 336
    sget-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 337
    const-string v2, "\n"

    goto/16 :goto_11

    .line 341
    :cond_1ec
    const-string v3, "/tr"

    invoke-static {p0, v3}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 342
    const-string v2, "\n"

    goto/16 :goto_11
.end method

.method public static getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "sSource"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string/jumbo v1, "src=\""

    .line 63
    .local v1, "IMG_SRC":Ljava/lang/String;
    const-string v0, "<img"

    .line 64
    .local v0, "IMG_BEGIN":Ljava/lang/String;
    move-object v7, p0

    .line 65
    .local v7, "sSourceOriginal":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "sSourceLower":Ljava/lang/String;
    const-string v5, ""

    .line 68
    .local v5, "sResult":Ljava/lang/String;
    const/4 v3, 0x0

    .line 69
    .local v3, "iIndex":I
    const/4 v4, 0x0

    .line 71
    .local v4, "iSubIndex":I
    const-string v8, "<img"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 73
    :goto_14
    const/4 v8, -0x1

    if-le v3, v8, :cond_51

    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 77
    const-string/jumbo v8, "src=\""

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 78
    if-lez v4, :cond_51

    .line 79
    const-string/jumbo v8, "src=\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 81
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 84
    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 85
    .local v2, "i1":I
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_52

    .line 97
    .end local v2    # "i1":I
    :cond_51
    return-object v5

    .line 94
    .restart local v2    # "i1":I
    :cond_52
    const-string v8, "<img"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_14
.end method

.method private static getSpecial(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .param p0, "rReader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3b

    const/4 v3, 0x1

    .line 210
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v1, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    .line 212
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 214
    .local v0, "dCharacter":I
    :goto_f
    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 215
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    .line 217
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_f

    .line 219
    :cond_22
    if-ne v0, v4, :cond_2c

    .line 220
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    :goto_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 222
    :cond_2c
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    goto :goto_27
.end method

.method private static getTag(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .param p0, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3c

    .line 183
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 186
    .local v1, "level":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    :cond_b
    :goto_b
    if-lez v1, :cond_14

    .line 188
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 189
    .local v0, "dChar":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_19

    .line 198
    .end local v0    # "dChar":I
    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 191
    .restart local v0    # "dChar":I
    :cond_19
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    if-ne v0, v4, :cond_22

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 194
    :cond_22
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_b

    .line 195
    add-int/lit8 v1, v1, -0x1

    goto :goto_b
.end method

.method private static isTag(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "sSentence"    # Ljava/lang/String;
    .param p1, "sTag"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "sTagType_1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "sTagType_2":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_4a
    const/4 v2, 0x1

    :goto_4b
    return v2

    :cond_4c
    const/4 v2, 0x0

    goto :goto_4b
.end method
