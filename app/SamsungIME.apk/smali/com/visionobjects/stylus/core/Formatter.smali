.class public Lcom/visionobjects/stylus/core/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/Formatter$CalcOutputFormat;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Formatter__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Formatter;-><init>(JZ)V

    .line 121
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Formatter;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Formatter;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Formatter;)V
    .locals 3

    .prologue
    .line 124
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Formatter__SWIG_1(JLcom/visionobjects/stylus/core/Formatter;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Formatter;-><init>(JZ)V

    .line 125
    return-void

    .line 124
    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/Formatter;->b:J

    goto :goto_0
.end method

.method public static fontifyCalculationField(Lcom/visionobjects/stylus/core/InkField;Ljava/util/List;Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkField;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Rect;",
            ">;",
            "Lcom/visionobjects/stylus/core/Rect;",
            ")",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v5, Lcom/visionobjects/stylus/core/ListRect;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListRect;-><init>(Ljava/lang/Iterable;)V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 87
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Rect;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListRect;->native_add(Lcom/visionobjects/stylus/core/Rect;)V

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListRect;->getCPtr(Lcom/visionobjects/stylus/core/ListRect;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v6

    move-object v2, p0

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Formatter_fontifyCalculationField(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/ListRect;JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public static fontifyRange(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkRange;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkField;",
            "Lcom/visionobjects/stylus/core/InkRange;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Rect;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v9, Lcom/visionobjects/stylus/core/ListRect;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lcom/visionobjects/stylus/core/ListRect;-><init>(Ljava/lang/Iterable;)V

    .line 50
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    .line 51
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 52
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/Rect;

    invoke-virtual {v9, v1}, Lcom/visionobjects/stylus/core/ListRect;->native_add(Lcom/visionobjects/stylus/core/Rect;)V

    .line 51
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 55
    :cond_0
    new-instance v12, Lcom/visionobjects/stylus/core/ListFloat;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Lcom/visionobjects/stylus/core/ListFloat;-><init>(Ljava/lang/Iterable;)V

    .line 56
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    .line 57
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 58
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/visionobjects/stylus/core/ListFloat;->native_add(F)V

    .line 57
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 61
    :cond_1
    new-instance v15, Lcom/visionobjects/stylus/core/ListFloat;

    move-object/from16 v0, p4

    invoke-direct {v15, v0}, Lcom/visionobjects/stylus/core/ListFloat;-><init>(Ljava/lang/Iterable;)V

    .line 62
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    .line 63
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_2

    .line 64
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v15, v1}, Lcom/visionobjects/stylus/core/ListFloat;->native_add(F)V

    .line 63
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 67
    :cond_2
    new-instance v16, Lcom/visionobjects/stylus/core/InkField;

    invoke-static/range {p0 .. p0}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    invoke-static/range {p1 .. p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v4

    invoke-static {v9}, Lcom/visionobjects/stylus/core/ListRect;->getCPtr(Lcom/visionobjects/stylus/core/ListRect;)J

    move-result-wide v7

    invoke-static {v12}, Lcom/visionobjects/stylus/core/ListFloat;->getCPtr(Lcom/visionobjects/stylus/core/ListFloat;)J

    move-result-wide v10

    invoke-static {v15}, Lcom/visionobjects/stylus/core/ListFloat;->getCPtr(Lcom/visionobjects/stylus/core/ListFloat;)J

    move-result-wide v13

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v15}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Formatter_fontifyRange(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListRect;JLcom/visionobjects/stylus/core/ListFloat;JLcom/visionobjects/stylus/core/ListFloat;)J

    move-result-wide v1

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v16
.end method

.method public static fontifyRangeOnOneLine(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkRange;Ljava/util/List;FF)Lcom/visionobjects/stylus/core/InkField;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkField;",
            "Lcom/visionobjects/stylus/core/InkRange;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Rect;",
            ">;FF)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v8, Lcom/visionobjects/stylus/core/ListRect;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListRect;-><init>(Ljava/lang/Iterable;)V

    .line 74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 76
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Rect;

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListRect;->native_add(Lcom/visionobjects/stylus/core/Rect;)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v11, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListRect;->getCPtr(Lcom/visionobjects/stylus/core/ListRect;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move v9, p3

    move/from16 v10, p4

    invoke-static/range {v0 .. v10}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Formatter_fontifyRangeOnOneLine(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListRect;FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v11, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v11
.end method

.method public static formatCalcOutput(Lcom/visionobjects/stylus/core/InkField;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Formatter_formatCalcOutput__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatCalcOutput(Lcom/visionobjects/stylus/core/InkField;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Formatter_formatCalcOutput__SWIG_0(JLcom/visionobjects/stylus/core/InkField;I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Formatter;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Formatter;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Formatter;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Formatter;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Formatter(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Formatter;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/Formatter;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/Formatter;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/Formatter;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Formatter;->delete()V

    .line 26
    return-void
.end method
