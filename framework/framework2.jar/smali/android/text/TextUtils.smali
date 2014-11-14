.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final IS_INDOCHINA_RESHAPING:Z

.field public static final IS_THAI_VIET_RESHAPING:Z

.field public static final LAST_SPAN:I = 0x17

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 668
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1547
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/text/TextUtils;->IS_THAI_VIET_RESHAPING:Z

    .line 1570
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/text/TextUtils;->IS_INDOCHINA_RESHAPING:Z

    .line 2022
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 2024
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 2026
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 2030
    const-string v0, "Arab"

    sput-object v0, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 2031
    const-string v0, "Hebr"

    sput-object v0, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Landroid/os/Parcel;
    .param p1, "x1"    # Landroid/text/Spannable;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;

    .prologue
    .line 1215
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .registers 28
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 1225
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v2

    .line 1227
    .local v2, "mt":Landroid/text/MeasuredText;
    :try_start_4
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1228
    .local v6, "len":I
    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_d1

    move-result v20

    .line 1229
    .local v20, "width":F
    cmpg-float v3, v20, p2

    if-gtz v3, :cond_1b

    .line 1283
    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_1a
    return-object p0

    .line 1233
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_1b
    :try_start_1b
    iget-object v8, v2, Landroid/text/MeasuredText;->mChars:[C

    .line 1235
    .local v8, "buf":[C
    const/4 v9, 0x0

    .line 1236
    .local v9, "commaCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1f
    if-ge v12, v6, :cond_2c

    .line 1237
    aget-char v3, v8, v12

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_29

    .line 1238
    add-int/lit8 v9, v9, 0x1

    .line 1236
    :cond_29
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    .line 1242
    :cond_2c
    add-int/lit8 v17, v9, 0x1

    .line 1244
    .local v17, "remaining":I
    const/4 v14, 0x0

    .line 1245
    .local v14, "ok":I
    const-string v15, ""

    .line 1247
    .local v15, "okFormat":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1248
    .local v19, "w":I
    const/4 v10, 0x0

    .line 1249
    .local v10, "count":I
    iget-object v0, v2, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v21, v0

    .line 1251
    .local v21, "widths":[F
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v18

    .line 1252
    .local v18, "tempMt":Landroid/text/MeasuredText;
    const/4 v12, 0x0

    :goto_3d
    if-ge v12, v6, :cond_b7

    .line 1253
    move/from16 v0, v19

    int-to-float v3, v0

    aget v4, v21, v12

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v19, v0

    .line 1255
    aget-char v3, v8, v12

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_90

    .line 1256
    add-int/lit8 v10, v10, 0x1

    .line 1261
    add-int/lit8 v17, v17, -0x1

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_93

    .line 1262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1268
    .local v11, "format":Ljava/lang/String;
    :goto_6c
    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v11, v3, v4, v1}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1269
    move-object/from16 v0, v18

    iget v3, v0, Landroid/text/MeasuredText;->mLen:I

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 1271
    .local v13, "moreWid":F
    move/from16 v0, v19

    int-to-float v3, v0

    add-float/2addr v3, v13

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_90

    .line 1272
    add-int/lit8 v14, v12, 0x1

    .line 1273
    move-object v15, v11

    .line 1252
    .end local v11    # "format":Ljava/lang/String;
    .end local v13    # "moreWid":F
    :cond_90
    add-int/lit8 v12, v12, 0x1

    goto :goto_3d

    .line 1264
    :cond_93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "format":Ljava/lang/String;
    goto :goto_6c

    .line 1277
    .end local v11    # "format":Ljava/lang/String;
    :cond_b7
    invoke-static/range {v18 .. v18}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1279
    new-instance v16, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1280
    .local v16, "out":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4, v14}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_ca
    .catchall {:try_start_1b .. :try_end_ca} :catchall_d1

    .line 1283
    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v16

    goto/16 :goto_1a

    .end local v6    # "len":I
    .end local v8    # "buf":[C
    .end local v9    # "commaCount":I
    .end local v10    # "count":I
    .end local v12    # "i":I
    .end local v14    # "ok":I
    .end local v15    # "okFormat":Ljava/lang/String;
    .end local v16    # "out":Landroid/text/SpannableStringBuilder;
    .end local v17    # "remaining":I
    .end local v18    # "tempMt":Landroid/text/MeasuredText;
    .end local v19    # "w":I
    .end local v20    # "width":F
    .end local v21    # "widths":[F
    :catchall_d1
    move-exception v3

    invoke-static {v2}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v3
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "text"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1400
    array-length v0, p0

    if-nez v0, :cond_7

    .line 1401
    const-string v0, ""

    .line 1437
    :goto_6
    return-object v0

    .line 1404
    :cond_7
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    .line 1405
    aget-object v0, p0, v1

    goto :goto_6

    .line 1408
    :cond_e
    const/4 v8, 0x0

    .line 1409
    .local v8, "spanned":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    array-length v0, p0

    if-ge v6, v0, :cond_1a

    .line 1410
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2b

    .line 1411
    const/4 v8, 0x1

    .line 1416
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_20
    array-length v0, p0

    if-ge v6, v0, :cond_2e

    .line 1418
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1417
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 1409
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1421
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2e
    if-nez v8, :cond_35

    .line 1422
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1425
    :cond_35
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1426
    .local v4, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1427
    .local v5, "off":I
    const/4 v6, 0x0

    :goto_3c
    array-length v0, p0

    if-ge v6, v0, :cond_58

    .line 1428
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1430
    .local v2, "len":I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_54

    .line 1431
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1434
    :cond_54
    add-int/2addr v5, v2

    .line 1427
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 1437
    .end local v2    # "len":I
    :cond_58
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .registers 14
    .param p0, "source"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "dest"    # Landroid/text/Spannable;
    .param p5, "destoff"    # I

    .prologue
    .line 1006
    if-nez p3, :cond_4

    .line 1007
    const-class p3, Ljava/lang/Object;

    .line 1010
    :cond_4
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1012
    .local v3, "spans":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v5, v3

    if-ge v2, v5, :cond_32

    .line 1013
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1014
    .local v4, "st":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1015
    .local v0, "en":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 1017
    .local v1, "fl":I
    if-ge v4, p1, :cond_21

    .line 1018
    move v4, p1

    .line 1019
    :cond_21
    if-le v0, p2, :cond_24

    .line 1020
    move v0, p2

    .line 1022
    :cond_24
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1012
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1025
    .end local v0    # "en":I
    .end local v1    # "fl":I
    .end local v4    # "st":I
    :cond_32
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .registers 9
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1869
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_e
    move v3, v4

    .line 1887
    :cond_f
    :goto_f
    return v3

    .line 1872
    :cond_10
    const/4 v2, -0x1

    .line 1873
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1874
    .local v1, "length":I
    :cond_15
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_37

    .line 1875
    if-lez v2, :cond_28

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_15

    .line 1878
    :cond_28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v2, v5

    .line 1879
    .local v0, "expectedDelimiterPos":I
    if-eq v0, v1, :cond_f

    .line 1883
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_15

    goto :goto_f

    .end local v0    # "expectedDelimiterPos":I
    :cond_37
    move v3, v4

    .line 1887
    goto :goto_f
.end method

.method static doesNotNeedBidi(Ljava/lang/CharSequence;II)Z
    .registers 6
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1317
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_10

    .line 1318
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x590

    if-lt v1, v2, :cond_d

    .line 1319
    const/4 v1, 0x0

    .line 1322
    :goto_c
    return v1

    .line 1317
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1322
    :cond_10
    const/4 v1, 0x1

    goto :goto_c
.end method

.method static doesNotNeedBidi([CII)Z
    .registers 7
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    .line 1327
    move v1, p1

    .local v1, "i":I
    add-int v0, v1, p2

    .local v0, "e":I
    :goto_3
    if-ge v1, v0, :cond_10

    .line 1328
    aget-char v2, p0, v1

    const/16 v3, 0x590

    if-lt v2, v3, :cond_d

    .line 1329
    const/4 v2, 0x0

    .line 1332
    :goto_c
    return v2

    .line 1327
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1332
    :cond_10
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 807
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_89

    move-object v3, p0

    .line 808
    check-cast v3, Landroid/text/Spanned;

    .line 809
    .local v3, "sp":Landroid/text/Spanned;
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 811
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v4, v2

    if-ge v0, v4, :cond_a3

    .line 812
    aget-object v1, v2, v0

    .line 813
    .local v1, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 821
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v3    # "sp":Landroid/text/Spanned;
    :cond_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": (no spans)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 823
    :cond_a3
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1061
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .registers 14
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;

    .prologue
    .line 1082
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_1c

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1086
    .local v7, "ellipsis":Ljava/lang/String;
    :goto_f
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1082
    .end local v7    # "ellipsis":Ljava/lang/String;
    :cond_1c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_f
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 32
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "ellipsis"    # Ljava/lang/String;

    .prologue
    .line 1111
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 1113
    .local v15, "len":I
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1115
    .local v3, "mt":Landroid/text/MeasuredText;
    const/4 v6, 0x0

    :try_start_9
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v23

    .line 1117
    .local v23, "width":F
    cmpg-float v5, v23, p2

    if-gtz v5, :cond_28

    .line 1118
    if-eqz p5, :cond_24

    .line 1119
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_163

    .line 1196
    :cond_24
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_27
    return-object p0

    .line 1127
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_28
    :try_start_28
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 1128
    .local v11, "ellipsiswid":F
    sub-float p2, p2, v11

    .line 1130
    const/4 v13, 0x0

    .line 1131
    .local v13, "left":I
    move/from16 v17, v15

    .line 1132
    .local v17, "right":I
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_72

    move v14, v13

    .line 1154
    .end local v13    # "left":I
    .local v14, "left":I
    :goto_3b
    if-eqz p5, :cond_44

    .line 1155
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v14, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1158
    :cond_44
    iget-object v10, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1159
    .local v10, "buf":[C
    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_de

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    move-object v4, v5

    .line 1161
    .local v4, "sp":Landroid/text/Spanned;
    :goto_52
    sub-int v5, v17, v14

    sub-int v16, v15, v5

    .line 1162
    .local v16, "remaining":I
    if-eqz p4, :cond_108

    .line 1163
    if-lez v16, :cond_168

    .line 1164
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "left":I
    .restart local v13    # "left":I
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v10, v14

    .line 1166
    :goto_65
    move v12, v13

    .local v12, "i":I
    :goto_66
    move/from16 v0, v17

    if-ge v12, v0, :cond_e1

    .line 1167
    const v5, 0xfeff

    aput-char v5, v10, v12

    .line 1166
    add-int/lit8 v12, v12, 0x1

    goto :goto_66

    .line 1134
    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v10    # "buf":[C
    .end local v12    # "i":I
    .end local v16    # "remaining":I
    :cond_72
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_83

    .line 1135
    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    move v14, v13

    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_3b

    .line 1136
    .end local v14    # "left":I
    .restart local v13    # "left":I
    :cond_83
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-eq v0, v5, :cond_8f

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_bf

    .line 1137
    :cond_8f
    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    .line 1139
    iget-object v0, v3, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v21, v0

    .line 1140
    .local v21, "tmpBuf":[C
    :goto_9a
    if-lez v13, :cond_ba

    aget-char v5, v21, v13

    invoke-static {v5}, Landroid/text/TextUtils;->isArabicChar(C)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 1141
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v13}, Ljava/lang/String;-><init>([CII)V

    .line 1142
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    .line 1143
    .local v22, "tmpwid":F
    cmpg-float v5, v22, p2

    if-gtz v5, :cond_bc

    .end local v18    # "s":Ljava/lang/String;
    .end local v22    # "tmpwid":F
    :cond_ba
    move v14, v13

    .line 1148
    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_3b

    .line 1146
    .end local v14    # "left":I
    .restart local v13    # "left":I
    .restart local v18    # "s":Ljava/lang/String;
    .restart local v22    # "tmpwid":F
    :cond_bc
    add-int/lit8 v13, v13, -0x1

    .line 1147
    goto :goto_9a

    .line 1149
    .end local v18    # "s":Ljava/lang/String;
    .end local v21    # "tmpBuf":[C
    .end local v22    # "tmpwid":F
    :cond_bf
    const/4 v5, 0x0

    const/high16 v6, 0x40000000

    div-float v6, p2, v6

    invoke-virtual {v3, v15, v5, v6}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    .line 1150
    move/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Landroid/text/MeasuredText;->measure(II)F

    move-result v5

    sub-float p2, p2, v5

    .line 1151
    const/4 v5, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v3, v0, v5, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto/16 :goto_3b

    .line 1159
    .restart local v10    # "buf":[C
    :cond_de
    const/4 v4, 0x0

    goto/16 :goto_52

    .line 1169
    .end local v14    # "left":I
    .restart local v4    # "sp":Landroid/text/Spanned;
    .restart local v12    # "i":I
    .restart local v13    # "left":I
    .restart local v16    # "remaining":I
    :cond_e1
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v5, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_e9
    .catchall {:try_start_28 .. :try_end_e9} :catchall_163

    .line 1170
    .restart local v18    # "s":Ljava/lang/String;
    if-nez v4, :cond_f2

    .line 1196
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v18

    goto/16 :goto_27

    .line 1173
    :cond_f2
    :try_start_f2
    new-instance v8, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1174
    .local v8, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    const-class v7, Ljava/lang/Object;

    const/4 v9, 0x0

    move v6, v15

    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_101
    .catchall {:try_start_f2 .. :try_end_101} :catchall_163

    .line 1196
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v8

    goto/16 :goto_27

    .line 1178
    .end local v8    # "ss":Landroid/text/SpannableString;
    .end local v12    # "i":I
    .end local v13    # "left":I
    .end local v18    # "s":Ljava/lang/String;
    .restart local v14    # "left":I
    :cond_108
    if-nez v16, :cond_111

    .line 1179
    :try_start_10a
    const-string p0, ""
    :try_end_10c
    .catchall {:try_start_10a .. :try_end_10c} :catchall_163

    .line 1196
    .end local p0    # "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_27

    .line 1182
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_111
    if-nez v4, :cond_13f

    .line 1183
    :try_start_113
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v16

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1184
    .local v19, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v5, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1185
    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    sub-int v5, v15, v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_139
    .catchall {:try_start_113 .. :try_end_139} :catchall_163

    move-result-object p0

    .line 1196
    .end local p0    # "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_27

    .line 1190
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_13f
    :try_start_13f
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1191
    .local v20, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1192
    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1193
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_15c
    .catchall {:try_start_13f .. :try_end_15c} :catchall_163

    .line 1196
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v20

    goto/16 :goto_27

    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v10    # "buf":[C
    .end local v11    # "ellipsiswid":F
    .end local v14    # "left":I
    .end local v16    # "remaining":I
    .end local v17    # "right":I
    .end local v20    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v23    # "width":F
    :catchall_163
    move-exception v5

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v5

    .restart local v4    # "sp":Landroid/text/Spanned;
    .restart local v10    # "buf":[C
    .restart local v11    # "ellipsiswid":F
    .restart local v14    # "left":I
    .restart local v16    # "remaining":I
    .restart local v17    # "right":I
    .restart local v23    # "width":F
    :cond_168
    move v13, v14

    .end local v14    # "left":I
    .restart local v13    # "left":I
    goto/16 :goto_65
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 489
    if-ne p0, p1, :cond_5

    .line 501
    :cond_4
    :goto_4
    return v2

    .line 491
    :cond_5
    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_32

    .line 492
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_20

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_20

    .line 493
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 495
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v1, :cond_4

    .line 496
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2f

    move v2, v3

    goto :goto_4

    .line 495
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_32
    move v2, v3

    .line 501
    goto :goto_4
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x5e

    .line 877
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_10

    .line 878
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 881
    :cond_10
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 884
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 885
    .local v0, "i":I
    :goto_16
    :try_start_16
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_5f

    .line 886
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_a0

    .line 887
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 888
    .local v1, "next":C
    if-ne v1, v6, :cond_34

    .line 889
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 890
    add-int/lit8 v0, v0, 0x1

    .line 891
    goto :goto_16

    .line 892
    :cond_34
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 893
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 894
    .local v3, "which":I
    if-gez v3, :cond_60

    .line 895
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 910
    .end local v1    # "next":C
    .end local v3    # "which":I
    :catch_5e
    move-exception v4

    .line 913
    :cond_5f
    return-object v2

    .line 898
    .restart local v1    # "next":C
    .restart local v3    # "which":I
    :cond_60
    array-length v4, p1

    if-lt v3, v4, :cond_90

    .line 899
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 903
    :cond_90
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 904
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_9c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_9c} :catch_5e

    move-result v4

    add-int/2addr v0, v4

    .line 905
    goto/16 :goto_16

    .line 908
    .end local v1    # "next":C
    .end local v3    # "which":I
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .registers 13
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .prologue
    const/16 v9, 0x27

    const/16 v8, 0x22

    const/16 v7, 0x2e

    .line 1773
    if-gez p1, :cond_a

    .line 1774
    const/4 v4, 0x0

    .line 1858
    :cond_9
    :goto_9
    return v4

    .line 1779
    :cond_a
    const/4 v4, 0x0

    .line 1781
    .local v4, "mode":I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_11

    .line 1782
    or-int/lit16 v4, v4, 0x1000

    .line 1784
    :cond_11
    and-int/lit16 v5, p2, 0x6000

    if-eqz v5, :cond_9

    .line 1790
    move v1, p1

    .local v1, "i":I
    :goto_16
    if-lez v1, :cond_2a

    .line 1791
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1793
    .local v0, "c":C
    if-eq v0, v8, :cond_3e

    if-eq v0, v9, :cond_3e

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_3e

    .line 1801
    .end local v0    # "c":C
    :cond_2a
    move v2, v1

    .line 1802
    .local v2, "j":I
    :goto_2b
    if-lez v2, :cond_41

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_3b

    const/16 v5, 0x9

    if-ne v0, v5, :cond_41

    .line 1803
    :cond_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    .line 1790
    .end local v2    # "j":I
    :cond_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1805
    .end local v0    # "c":C
    .restart local v2    # "j":I
    :cond_41
    if-eqz v2, :cond_4d

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_50

    .line 1806
    :cond_4d
    or-int/lit16 v4, v4, 0x2000

    goto :goto_9

    .line 1811
    :cond_50
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_59

    .line 1812
    if-eq v1, v2, :cond_9

    or-int/lit16 v4, v4, 0x2000

    goto :goto_9

    .line 1818
    :cond_59
    if-eq v1, v2, :cond_9

    .line 1824
    :goto_5b
    if-lez v2, :cond_6f

    .line 1825
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1827
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_97

    if-eq v0, v9, :cond_97

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_97

    .line 1833
    .end local v0    # "c":C
    :cond_6f
    if-lez v2, :cond_9

    .line 1834
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1836
    .restart local v0    # "c":C
    if-eq v0, v7, :cond_81

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_81

    const/16 v5, 0x21

    if-ne v0, v5, :cond_9

    .line 1840
    :cond_81
    if-ne v0, v7, :cond_93

    .line 1841
    add-int/lit8 v3, v2, -0x2

    .local v3, "k":I
    :goto_85
    if-ltz v3, :cond_93

    .line 1842
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1844
    if-eq v0, v7, :cond_9

    .line 1848
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 1854
    .end local v3    # "k":I
    :cond_93
    or-int/lit16 v4, v4, 0x4000

    goto/16 :goto_9

    .line 1824
    :cond_97
    add-int/lit8 v2, v2, -0x1

    goto :goto_5b

    .line 1841
    .restart local v3    # "k":I
    :cond_9a
    add-int/lit8 v3, v3, -0x1

    goto :goto_85
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .registers 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_e

    .line 77
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 88
    :goto_d
    return-void

    .line 78
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_e
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_18

    .line 79
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_d

    .line 80
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_18
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_22

    .line 81
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_d

    .line 82
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_22
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_2c

    .line 83
    check-cast p0, Landroid/text/GetChars;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_d

    .line 85
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_2c
    move v2, p1

    .local v2, "i":I
    move v1, p4

    .end local p4    # "destoff":I
    .local v1, "destoff":I
    :goto_2e
    if-ge v2, p2, :cond_3c

    .line 86
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 85
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4    # "destoff":I
    .restart local v1    # "destoff":I
    goto :goto_2e

    :cond_3c
    move p4, v1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    goto :goto_d
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x0

    .line 2011
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 2018
    :goto_10
    return v0

    .line 2014
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 2011
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1981
    if-eqz p0, :cond_2f

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1982
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/icu/ICU;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1983
    .local v0, "scriptSubtag":Ljava/lang/String;
    if-nez v0, :cond_1f

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v1

    .line 1991
    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v1

    .line 1985
    .restart local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_1f
    sget-object v3, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1991
    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_2f
    const-string v3, "debug.force_rtl"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1e

    move v1, v2

    goto :goto_1e
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .registers 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 952
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 954
    .local v4, "len":I
    if-ne p1, v4, :cond_7

    .line 985
    .end local v4    # "len":I
    :cond_6
    :goto_6
    return v4

    .line 956
    .restart local v4    # "len":I
    :cond_7
    add-int/lit8 v7, v4, -0x1

    if-eq p1, v7, :cond_6

    .line 959
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 961
    .local v0, "c":C
    const v7, 0xd800

    if-lt v0, v7, :cond_5b

    const v7, 0xdbff

    if-gt v0, v7, :cond_5b

    .line 962
    add-int/lit8 v7, p1, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 964
    .local v1, "c1":C
    const v7, 0xdc00

    if-lt v1, v7, :cond_58

    const v7, 0xdfff

    if-gt v1, v7, :cond_58

    .line 965
    add-int/lit8 p1, p1, 0x2

    .line 972
    .end local v1    # "c1":C
    :goto_2b
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5e

    move-object v7, p0

    .line 973
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 976
    .local v5, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3b
    array-length v7, v5

    if-ge v3, v7, :cond_5e

    move-object v7, p0

    .line 977
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .local v6, "start":I
    move-object v7, p0

    .line 978
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 980
    .local v2, "end":I
    if-ge v6, p1, :cond_55

    if-le v2, p1, :cond_55

    .line 981
    move p1, v2

    .line 976
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 967
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v6    # "start":I
    .restart local v1    # "c1":C
    :cond_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    .line 969
    .end local v1    # "c1":C
    :cond_5b
    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    :cond_5e
    move v4, p1

    .line 985
    goto :goto_6
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 917
    if-nez p1, :cond_4

    .line 948
    :cond_3
    :goto_3
    return v6

    .line 919
    :cond_4
    const/4 v7, 0x1

    if-eq p1, v7, :cond_3

    .line 922
    add-int/lit8 v6, p1, -0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 924
    .local v0, "c":C
    const v6, 0xdc00

    if-lt v0, v6, :cond_59

    const v6, 0xdfff

    if-gt v0, v6, :cond_59

    .line 925
    add-int/lit8 v6, p1, -0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 927
    .local v1, "c1":C
    const v6, 0xd800

    if-lt v1, v6, :cond_56

    const v6, 0xdbff

    if-gt v1, v6, :cond_56

    .line 928
    add-int/lit8 p1, p1, -0x2

    .line 935
    .end local v1    # "c1":C
    :goto_29
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_5c

    move-object v6, p0

    .line 936
    check-cast v6, Landroid/text/Spanned;

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v6, p1, p1, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 939
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    array-length v6, v4

    if-ge v3, v6, :cond_5c

    move-object v6, p0

    .line 940
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v6, p0

    .line 941
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 943
    .local v2, "end":I
    if-ge v5, p1, :cond_53

    if-le v2, p1, :cond_53

    .line 944
    move p1, v5

    .line 939
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 930
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    .restart local v1    # "c1":C
    :cond_56
    add-int/lit8 p1, p1, -0x1

    goto :goto_29

    .line 932
    .end local v1    # "c1":C
    :cond_59
    add-int/lit8 p1, p1, -0x1

    goto :goto_29

    :cond_5c
    move v6, p1

    .line 948
    goto :goto_3
.end method

.method public static getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .registers 18
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # [C

    .prologue
    .line 1681
    const/4 v12, 0x0

    .line 1682
    .local v12, "i":I
    const/4 v14, 0x0

    .line 1683
    .local v14, "pos":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1685
    .local v4, "len":I
    if-eqz v4, :cond_a

    if-nez p2, :cond_c

    .line 1686
    :cond_a
    const/4 v10, 0x0

    .line 1728
    :cond_b
    :goto_b
    return-object v10

    .line 1689
    :cond_c
    new-array v8, v4, [F

    .line 1690
    .local v8, "widths":[F
    new-array v2, v4, [C

    .line 1692
    .local v2, "chars":[C
    const/4 v12, 0x0

    :goto_11
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v12, v1, :cond_36

    .line 1693
    aget-char v1, p2, v12

    invoke-static {v1}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v1

    if-nez v1, :cond_36

    aget-char v1, p2, v12

    invoke-static {v1}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v1

    if-nez v1, :cond_36

    aget-char v1, p2, v12

    invoke-static {v1}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v1

    if-nez v1, :cond_36

    aget-char v1, p2, v12

    invoke-static {v1}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1698
    :cond_36
    move-object/from16 v0, p2

    array-length v1, v0

    if-ne v12, v1, :cond_40

    .line 1699
    const/4 v10, 0x0

    goto :goto_b

    .line 1692
    :cond_3d
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 1702
    :cond_40
    invoke-static/range {p1 .. p2}, Landroid/text/TextUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v14

    .line 1703
    if-ltz v14, :cond_48

    if-lt v14, v4, :cond_4a

    .line 1704
    :cond_48
    const/4 v10, 0x0

    goto :goto_b

    .line 1707
    :cond_4a
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v4, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1708
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v6, v4

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    .line 1710
    :goto_5a
    if-lez v14, :cond_66

    aget v1, v8, v14

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_66

    .line 1711
    add-int/lit8 v14, v14, -0x1

    goto :goto_5a

    .line 1714
    :cond_66
    move-object/from16 v0, p2

    array-length v1, v0

    add-int v12, v14, v1

    .line 1715
    :goto_6b
    if-ge v12, v4, :cond_74

    .line 1716
    aget v1, v8, v12

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_84

    .line 1722
    :cond_74
    sub-int v11, v12, v14

    .line 1723
    .local v11, "destLength":I
    new-array v10, v11, [C

    .line 1725
    .local v10, "dest":[C
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_79
    if-ge v13, v11, :cond_b

    .line 1726
    add-int v1, v14, v13

    aget-char v1, v2, v1

    aput-char v1, v10, v13

    .line 1725
    add-int/lit8 v13, v13, 0x1

    goto :goto_79

    .line 1719
    .end local v10    # "dest":[C
    .end local v11    # "destLength":I
    .end local v13    # "j":I
    :cond_84
    add-int/lit8 v12, v12, 0x1

    goto :goto_6b
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 507
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    .line 465
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 467
    .local v1, "len":I
    const/4 v2, 0x0

    .line 468
    .local v2, "start":I
    :goto_7
    if-ge v2, v1, :cond_12

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_12

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 472
    :cond_12
    move v0, v1

    .line 473
    .local v0, "end":I
    :goto_13
    if-le v0, v2, :cond_20

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_20

    .line 474
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 477
    :cond_20
    sub-int v3, v0, v2

    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1366
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 1367
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1368
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_3c

    .line 1389
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1366
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1370
    :sswitch_19
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1373
    :sswitch_1f
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1376
    :sswitch_25
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1383
    :sswitch_2b
    const-string v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1386
    :sswitch_31
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1392
    .end local v0    # "c":C
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1368
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_31
        0x26 -> :sswitch_25
        0x27 -> :sswitch_2b
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 98
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 100
    :goto_e
    return v1

    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .registers 12
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v6, -0x1

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 106
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_15

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_15

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_15

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_40

    .line 108
    :cond_15
    const/16 v0, 0x1f4

    .line 109
    .local v0, "INDEX_INCREMENT":I
    const/16 v7, 0x1f4

    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 111
    .local v5, "temp":[C
    :goto_1d
    if-ge p2, p3, :cond_3b

    .line 112
    add-int/lit16 v4, p2, 0x1f4

    .line 113
    .local v4, "segend":I
    if-le v4, p3, :cond_24

    .line 114
    move v4, p3

    .line 116
    :cond_24
    const/4 v7, 0x0

    invoke-static {p0, p2, v4, v5, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 118
    sub-int v2, v4, p2

    .line 119
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    if-ge v3, v2, :cond_39

    .line 120
    aget-char v7, v5, v3

    if-ne v7, p1, :cond_36

    .line 121
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 122
    add-int/2addr v3, p2

    .line 137
    .end local v0    # "INDEX_INCREMENT":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    .end local v5    # "temp":[C
    :cond_35
    :goto_35
    return v3

    .line 119
    .restart local v0    # "INDEX_INCREMENT":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "segend":I
    .restart local v5    # "temp":[C
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 126
    :cond_39
    move p2, v4

    .line 127
    goto :goto_1d

    .line 129
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    :cond_3b
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move v3, v6

    .line 130
    goto :goto_35

    .line 133
    .end local v0    # "INDEX_INCREMENT":I
    .end local v5    # "temp":[C
    :cond_40
    move v3, p2

    .restart local v3    # "i":I
    :goto_41
    if-ge v3, p3, :cond_4c

    .line 134
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, p1, :cond_35

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_4c
    move v3, v6

    .line 137
    goto :goto_35
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 203
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .registers 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 208
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 209
    .local v1, "nlen":I
    if-nez v1, :cond_a

    move v2, p2

    .line 230
    :cond_9
    :goto_9
    return v2

    .line 212
    :cond_a
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 215
    .local v0, "c":C
    :goto_e
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 216
    sub-int v3, p3, v1

    if-gt p2, v3, :cond_9

    .line 220
    if-ltz p2, :cond_9

    .line 224
    invoke-static {p0, p2, p1, v4, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_20

    move v2, p2

    .line 225
    goto :goto_9

    .line 228
    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_e
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;[C)I
    .registers 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # [C

    .prologue
    const/4 v4, -0x1

    .line 1640
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1641
    .local v3, "textLength":I
    array-length v2, p1

    .line 1643
    .local v2, "prefixLength":I
    if-eqz v2, :cond_a

    if-ge v3, v2, :cond_c

    :cond_a
    move v0, v4

    .line 1671
    :cond_b
    :goto_b
    return v0

    .line 1647
    :cond_c
    const/4 v0, 0x0

    .line 1648
    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_3e

    .line 1650
    :goto_f
    if-ge v0, v3, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1651
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1654
    :cond_1e
    add-int v5, v0, v2

    if-le v5, v3, :cond_24

    move v0, v4

    .line 1655
    goto :goto_b

    .line 1659
    :cond_24
    const/4 v1, 0x0

    .line 1660
    .local v1, "j":I
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v2, :cond_36

    .line 1661
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p1, v1

    if-eq v5, v6, :cond_3b

    .line 1665
    :cond_36
    if-eq v1, v2, :cond_b

    .line 1668
    add-int/lit8 v0, v0, 0x1

    .line 1669
    goto :goto_d

    .line 1660
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .end local v1    # "j":I
    :cond_3e
    move v0, v4

    .line 1671
    goto :goto_b
.end method

.method public static isArabicChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1514
    const/16 v0, 0x600

    if-lt p0, v0, :cond_8

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_1c

    :cond_8
    const v0, 0xfb00

    if-lt p0, v0, :cond_12

    const v0, 0xfdff

    if-le p0, v0, :cond_1c

    :cond_12
    const v0, 0xfe70

    if-lt p0, v0, :cond_1e

    const v0, 0xfefe

    if-gt p0, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1478
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1479
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1480
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1481
    const/4 v2, 0x0

    .line 1484
    :goto_12
    return v2

    .line 1479
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1484
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmojiChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1626
    const v0, 0xdbb8

    if-lt p0, v0, :cond_c

    const v0, 0xdbbb

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 453
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 454
    :cond_8
    const/4 v0, 0x1

    .line 456
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isGraphic(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 1464
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1465
    .local v0, "gc":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_20

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x13

    if-eq v0, v1, :cond_20

    if-eqz v0, :cond_20

    const/16 v1, 0xd

    if-eq v0, v1, :cond_20

    const/16 v1, 0xe

    if-eq v0, v1, :cond_20

    const/16 v1, 0xc

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1444
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1445
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_2e

    .line 1446
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1447
    .local v0, "gc":I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x13

    if-eq v0, v3, :cond_2b

    if-eqz v0, :cond_2b

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2b

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2b

    .line 1454
    const/4 v3, 0x1

    .line 1457
    .end local v0    # "gc":I
    :goto_2a
    return v3

    .line 1445
    .restart local v0    # "gc":I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1457
    .end local v0    # "gc":I
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public static isIndianChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1523
    const/16 v0, 0x900

    if-lt p0, v0, :cond_a

    const/16 v0, 0xdff

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isKhmerChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1578
    const/16 v0, 0x1780

    if-lt p0, v0, :cond_a

    const/16 v0, 0x17f9

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isKhmerCoengSign(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1594
    const/16 v0, 0x17d2

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isKhmerVowel(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1586
    const/16 v0, 0x17b6

    if-lt p0, v0, :cond_a

    const/16 v0, 0x17d3

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isLaoChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1602
    const/16 v0, 0xe81

    if-lt p0, v0, :cond_8

    const/16 v0, 0xedd

    if-le p0, v0, :cond_12

    :cond_8
    const v0, 0xe001

    if-lt p0, v0, :cond_14

    const v0, 0xe018

    if-gt p0, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isLaoVowel(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1610
    const/16 v0, 0xeb1

    if-eq p0, v0, :cond_14

    const/16 v0, 0xeb4

    if-lt p0, v0, :cond_c

    const/16 v0, 0xebc

    if-le p0, v0, :cond_14

    :cond_c
    const/16 v0, 0xec8

    if-lt p0, v0, :cond_16

    const/16 v0, 0xecd

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isMyanmarChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1618
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1097

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isOdiaVowel(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1531
    sparse-switch p0, :sswitch_data_8

    .line 1540
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1536
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1531
    nop

    :sswitch_data_8
    .sparse-switch
        0xb01 -> :sswitch_5
        0xb4d -> :sswitch_5
        0xb62 -> :sswitch_5
        0xb63 -> :sswitch_5
    .end sparse-switch
.end method

.method public static isPrintableAscii(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 1491
    const/16 v0, 0x20

    .line 1492
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 1493
    .local v1, "asciiLast":I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_c

    const/16 v2, 0x7e

    if-le p0, v2, :cond_14

    :cond_c
    const/16 v2, 0xd

    if-eq p0, v2, :cond_14

    const/16 v2, 0xa

    if-ne p0, v2, :cond_16

    :cond_14
    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1500
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1501
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1502
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1503
    const/4 v2, 0x0

    .line 1506
    :goto_12
    return v2

    .line 1501
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1506
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isThaiChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1555
    const/16 v0, 0xe01

    if-lt p0, v0, :cond_a

    const/16 v0, 0xe5b

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isThaiVowel(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1563
    const/16 v0, 0xe31

    if-eq p0, v0, :cond_14

    const/16 v0, 0xe33

    if-lt p0, v0, :cond_c

    const/16 v0, 0xe3a

    if-le p0, v0, :cond_14

    :cond_c
    const/16 v0, 0xe47

    if-lt p0, v0, :cond_16

    const/16 v0, 0xe4e

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040878

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 284
    .local v0, "delimiter":Ljava/lang/CharSequence;
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 7
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    .prologue
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 314
    .local v0, "firstTime":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 315
    .local v3, "token":Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 316
    const/4 v0, 0x0

    .line 320
    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 318
    :cond_1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 322
    .end local v3    # "token":Ljava/lang/Object;
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/Object;

    .prologue
    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 295
    .local v1, "firstTime":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_1a

    aget-object v5, v0, v2

    .line 296
    .local v5, "token":Ljava/lang/Object;
    if-eqz v1, :cond_16

    .line 297
    const/4 v1, 0x0

    .line 301
    :goto_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 299
    :cond_16
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 303
    .end local v5    # "token":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 141
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "last"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 147
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 148
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 150
    :goto_e
    return v1

    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_f
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_e
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .registers 13
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "last"    # I

    .prologue
    const/4 v7, -0x1

    .line 155
    if-gez p3, :cond_5

    move v4, v7

    .line 195
    :cond_4
    :goto_4
    return v4

    .line 157
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt p3, v8, :cond_11

    .line 158
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 160
    :cond_11
    add-int/lit8 v3, p3, 0x1

    .line 162
    .local v3, "end":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 164
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v8, p0, Landroid/text/GetChars;

    if-nez v8, :cond_27

    const-class v8, Ljava/lang/StringBuffer;

    if-eq v1, v8, :cond_27

    const-class v8, Ljava/lang/StringBuilder;

    if-eq v1, v8, :cond_27

    const-class v8, Ljava/lang/String;

    if-ne v1, v8, :cond_53

    .line 166
    :cond_27
    const/16 v0, 0x1f4

    .line 167
    .local v0, "INDEX_INCREMENT":I
    const/16 v8, 0x1f4

    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 169
    .local v6, "temp":[C
    :goto_2f
    if-ge p2, v3, :cond_4e

    .line 170
    add-int/lit16 v5, v3, -0x1f4

    .line 171
    .local v5, "segstart":I
    if-ge v5, p2, :cond_36

    .line 172
    move v5, p2

    .line 174
    :cond_36
    const/4 v8, 0x0

    invoke-static {p0, v5, v3, v6, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 176
    sub-int v2, v3, v5

    .line 177
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_3e
    if-ltz v4, :cond_4c

    .line 178
    aget-char v8, v6, v4

    if-ne v8, p1, :cond_49

    .line 179
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 180
    add-int/2addr v4, v5

    goto :goto_4

    .line 177
    :cond_49
    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    .line 184
    :cond_4c
    move v3, v5

    .line 185
    goto :goto_2f

    .line 187
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "segstart":I
    :cond_4e
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    move v4, v7

    .line 188
    goto :goto_4

    .line 191
    .end local v0    # "INDEX_INCREMENT":I
    .end local v6    # "temp":[C
    :cond_53
    add-int/lit8 v4, v3, -0x1

    .restart local v4    # "i":I
    :goto_55
    if-lt v4, p2, :cond_60

    .line 192
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, p1, :cond_4

    .line 191
    add-int/lit8 v4, v4, -0x1

    goto :goto_55

    :cond_60
    move v4, v7

    .line 195
    goto :goto_4
.end method

.method static obtain(I)[C
    .registers 4
    .param p0, "len"    # I

    .prologue
    .line 1338
    sget-object v2, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1339
    :try_start_3
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1340
    .local v0, "buf":[C
    const/4 v1, 0x0

    sput-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 1341
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 1343
    if-eqz v0, :cond_e

    array-length v1, v0

    if-ge v1, p0, :cond_14

    .line 1344
    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v1

    new-array v0, v1, [C

    .line 1346
    :cond_14
    return-object v0

    .line 1341
    .end local v0    # "buf":[C
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static packRangeInLong(II)J
    .registers 6
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 1947
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 6
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 989
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 990
    return-void
.end method

.method static recycle([C)V
    .registers 3
    .param p0, "temp"    # [C

    .prologue
    .line 1350
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    .line 1356
    :goto_5
    return-void

    .line 1353
    :cond_6
    sget-object v1, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1354
    :try_start_9
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1355
    monitor-exit v1

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 10
    .param p0, "one"    # Ljava/lang/CharSequence;
    .param p1, "toffset"    # I
    .param p2, "two"    # Ljava/lang/CharSequence;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .prologue
    .line 236
    mul-int/lit8 v3, p4, 0x2

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 238
    .local v2, "temp":[C
    add-int v3, p1, p4

    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v2, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 239
    add-int v3, p3, p4

    invoke-static {p2, p3, v3, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 241
    const/4 v1, 0x1

    .line 242
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, p4, :cond_1e

    .line 243
    aget-char v3, v2, v0

    add-int v4, v0, p4

    aget-char v4, v2, v4

    if-eq v3, v4, :cond_22

    .line 244
    const/4 v1, 0x0

    .line 249
    :cond_1e
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 250
    return v1

    .line 242
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 12
    .param p1, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "spans":[Ljava/lang/Object;, "[TT;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 1909
    const/4 v0, 0x0

    .line 1910
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 1912
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v7, p0

    if-ge v3, v7, :cond_2f

    .line 1913
    aget-object v5, p0, v3

    .line 1914
    .local v5, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1915
    .local v6, "start":I
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1917
    .local v2, "end":I
    if-ne v6, v2, :cond_28

    .line 1918
    if-nez v0, :cond_25

    .line 1919
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 1920
    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1921
    move v1, v3

    .line 1912
    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1924
    :cond_28
    if-eqz v0, :cond_25

    .line 1925
    aput-object v5, v0, v1

    .line 1926
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1931
    .end local v2    # "end":I
    .end local v5    # "span":Ljava/lang/Object;, "TT;"
    .end local v6    # "start":I
    :cond_2f
    if-eqz v0, :cond_3e

    .line 1932
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 1933
    .local v4, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1936
    .end local v4    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_3d
    return-object v4

    :cond_3e
    move-object v4, p0

    goto :goto_3d
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "sources"    # [Ljava/lang/String;
    .param p2, "destinations"    # [Ljava/lang/CharSequence;

    .prologue
    .line 832
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 834
    .local v3, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v5, p1

    if-ge v1, v5, :cond_22

    .line 835
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 837
    .local v4, "where":I
    if-ltz v4, :cond_1f

    .line 838
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 834
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 842
    .end local v4    # "where":I
    :cond_22
    const/4 v1, 0x0

    :goto_23
    array-length v5, p1

    if-ge v1, v5, :cond_3c

    .line 843
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 844
    .local v2, "start":I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 846
    .local v0, "end":I
    if-ltz v2, :cond_39

    .line 847
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 842
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 851
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_3c
    return-object v3
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .registers 14
    .param p0, "mt"    # Landroid/text/MeasuredText;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    const/4 v6, 0x0

    .line 1290
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 1293
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_14

    check-cast p2, Landroid/text/Spanned;

    .end local p2    # "text":Ljava/lang/CharSequence;
    move-object v1, p2

    .line 1294
    .local v1, "sp":Landroid/text/Spanned;
    :goto_b
    sub-int v0, p4, p3

    .line 1295
    .local v0, "len":I
    if-nez v1, :cond_16

    .line 1296
    invoke-virtual {p0, p1, v0, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    .line 1310
    .local v5, "width":F
    :cond_13
    return v5

    .end local v0    # "len":I
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v5    # "width":F
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_14
    move-object v1, v6

    .line 1293
    goto :goto_b

    .line 1298
    .end local p2    # "text":Ljava/lang/CharSequence;
    .restart local v0    # "len":I
    .restart local v1    # "sp":Landroid/text/Spanned;
    :cond_16
    const/4 v5, 0x0

    .line 1300
    .restart local v5    # "width":F
    const/4 v3, 0x0

    .local v3, "spanStart":I
    :goto_18
    if-ge v3, v0, :cond_13

    .line 1301
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 1303
    .local v2, "spanEnd":I
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v3, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1305
    .local v4, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v4, v1, v7}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1306
    .restart local v4    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sub-int v7, v2, v3

    invoke-virtual {p0, p1, v4, v7, v6}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v7

    add-float/2addr v5, v7

    .line 1300
    move v3, v2

    goto :goto_18
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 337
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 339
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 354
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 356
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 437
    if-nez p0, :cond_4

    .line 438
    const/4 p0, 0x0

    .line 444
    .end local p0    # "source":Ljava/lang/CharSequence;
    :cond_3
    :goto_3
    return-object p0

    .line 439
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_4
    instance-of v0, p0, Landroid/text/SpannedString;

    if-nez v0, :cond_3

    .line 441
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_13

    .line 442
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_3

    .line 444
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 7
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 261
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 262
    check-cast p0, Ljava/lang/String;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_b
    return-object v0

    .line 263
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_c
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    .line 264
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 265
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_17
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_22

    .line 266
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 268
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_22
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 269
    .local v1, "temp":[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 270
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 271
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_b
.end method

.method public static unpackRangeEndFromLong(J)I
    .registers 4
    .param p0, "range"    # J

    .prologue
    .line 1967
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .registers 4
    .param p0, "range"    # J

    .prologue
    .line 1957
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .registers 15
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 616
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_7d

    .line 617
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p0

    .line 620
    check-cast v5, Landroid/text/Spanned;

    .line 621
    .local v5, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, v10, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 628
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    array-length v7, v2

    if-ge v0, v7, :cond_79

    .line 629
    aget-object v1, v2, v0

    .line 630
    .local v1, "o":Ljava/lang/Object;
    aget-object v3, v2, v0

    .line 632
    .local v3, "prop":Ljava/lang/Object;
    instance-of v7, v3, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_2f

    .line 633
    check-cast v3, Landroid/text/style/CharacterStyle;

    .end local v3    # "prop":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v3

    .line 636
    :cond_2f
    instance-of v7, v3, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_6c

    move-object v4, v3

    .line 637
    check-cast v4, Landroid/text/ParcelableSpan;

    .line 638
    .local v4, "ps":Landroid/text/ParcelableSpan;
    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeId()I

    move-result v6

    .line 639
    .local v6, "spanTypeId":I
    if-lt v6, v11, :cond_40

    const/16 v7, 0x17

    if-le v6, v7, :cond_6f

    .line 640
    :cond_40
    const-string v7, "TextUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "external class \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" is attempting to use the frameworks-only ParcelableSpan"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interface"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 644
    .restart local v4    # "ps":Landroid/text/ParcelableSpan;
    .restart local v6    # "spanTypeId":I
    :cond_6f
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 646
    invoke-static {p1, v5, v1}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_6c

    .line 651
    .end local v1    # "o":Ljava/lang/Object;
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_79
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    .end local v0    # "i":I
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v5    # "sp":Landroid/text/Spanned;
    :goto_7c
    return-void

    .line 653
    :cond_7d
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    if-eqz p0, :cond_8a

    .line 655
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7c

    .line 657
    :cond_8a
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7c
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 663
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    return-void
.end method
