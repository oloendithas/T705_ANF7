.class public Lcom/visionobjects/stylus/core/CalcInputMethod;
.super Lcom/visionobjects/stylus/core/InputMethod;
.source "CalcInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/CalcInputMethod$AngleUnit;
    }
.end annotation


# instance fields
.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_CalcInputMethod__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/CalcInputMethod;-><init>(JZ)V

    .line 49
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 3

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->CalcInputMethod_SWIGUpcast(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethod;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/CalcInputMethod;->b:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/CalcInputMethod;)V
    .locals 3

    .prologue
    .line 73
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_CalcInputMethod__SWIG_2(JLcom/visionobjects/stylus/core/CalcInputMethod;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/CalcInputMethod;-><init>(JZ)V

    .line 74
    return-void

    .line 73
    :cond_0
    iget-wide v0, p1, Lcom/visionobjects/stylus/core/CalcInputMethod;->b:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    invoke-static {p1}, Lcom/visionobjects/stylus/core/CalcInputMethod;->a(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/CalcInputMethod;-><init>(JZ)V

    .line 66
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 55
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_CalcInputMethod__SWIG_1([B)J

    move-result-wide v0

    return-wide v0

    .line 57
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/CalcInputMethod;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->a:Z

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->a:Z

    .line 31
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/CalcInputMethod;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_CalcInputMethod(J)V

    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/CalcInputMethod;->b:J

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/visionobjects/stylus/core/InputMethod;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 28
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/CalcInputMethod;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/CalcInputMethod;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/CalcInputMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/CalcInputMethod;->delete()V

    .line 25
    return-void
.end method

.method public solve(Lcom/visionobjects/stylus/core/InkField;Ljava/lang/Object;ILcom/visionobjects/stylus/core/Char;I)Lcom/visionobjects/stylus/core/InkField;
    .locals 13

    .prologue
    .line 69
    new-instance v12, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/CalcInputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static/range {p4 .. p4}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v8

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/visionobjects/stylus/core/styluscoreJNI;->CalcInputMethod_solve(JLcom/visionobjects/stylus/core/CalcInputMethod;JLcom/visionobjects/stylus/core/InkField;Ljava/lang/Object;IJLcom/visionobjects/stylus/core/Char;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v12, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v12
.end method
