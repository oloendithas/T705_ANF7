.class public Lcom/visionobjects/stylus/core/InkLayout;
.super Ljava/lang/Object;
.source "InkLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/InkLayout$Modifier;,
        Lcom/visionobjects/stylus/core/InkLayout$Direction;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkLayout__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkLayout;-><init>(JZ)V

    .line 49
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkLayout;)V
    .locals 3

    .prologue
    .line 143
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLayout;->a(Lcom/visionobjects/stylus/core/InkLayout;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkLayout__SWIG_1(JLcom/visionobjects/stylus/core/InkLayout;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkLayout;-><init>(JZ)V

    .line 144
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkLayout;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    goto :goto_0
.end method

.method public static getDirectionFromLocale(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 123
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_getDirectionFromLocale([B)I

    move-result v0

    return v0

    .line 125
    :catch_0
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public ascenderShift()F
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_ascenderShift(JLcom/visionobjects/stylus/core/InkLayout;)F

    move-result v0

    return v0
.end method

.method public clearGuidelines()V
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_clearGuidelines(JLcom/visionobjects/stylus/core/InkLayout;)V

    .line 65
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkLayout(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J
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

.method public descenderShift()F
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_descenderShift(JLcom/visionobjects/stylus/core/InkLayout;)F

    move-result v0

    return v0
.end method

.method public direction()I
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_direction(JLcom/visionobjects/stylus/core/InkLayout;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkLayout;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InkLayout;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkLayout;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkLayout;->delete()V

    .line 26
    return-void
.end method

.method public getInternalWordOrderDefaultDirection()I
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_getInternalWordOrderDefaultDirection(JLcom/visionobjects/stylus/core/InkLayout;)I

    move-result v0

    return v0
.end method

.method public getNearestGuideline(F)F
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_getNearestGuideline(JLcom/visionobjects/stylus/core/InkLayout;F)F

    move-result v0

    return v0
.end method

.method public guidelineCount()I
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_guidelineCount(JLcom/visionobjects/stylus/core/InkLayout;)I

    move-result v0

    return v0
.end method

.method public guidelineGap()F
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_guidelineGap(JLcom/visionobjects/stylus/core/InkLayout;)F

    move-result v0

    return v0
.end method

.method public guidelinePos()F
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_guidelinePos(JLcom/visionobjects/stylus/core/InkLayout;)F

    move-result v0

    return v0
.end method

.method public midlineShift()F
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_midlineShift(JLcom/visionobjects/stylus/core/InkLayout;)F

    move-result v0

    return v0
.end method

.method public modifiers()I
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_modifiers(JLcom/visionobjects/stylus/core/InkLayout;)I

    move-result v0

    return v0
.end method

.method public setAscenderShift(F)V
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_setAscenderShift(JLcom/visionobjects/stylus/core/InkLayout;F)V

    .line 73
    return-void
.end method

.method public setDescenderShift(F)V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_setDescenderShift(JLcom/visionobjects/stylus/core/InkLayout;F)V

    .line 77
    return-void
.end method

.method public setDirection(I)V
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_setDirection(JLcom/visionobjects/stylus/core/InkLayout;I)V

    .line 81
    return-void
.end method

.method public setGuidelines(F)V
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_setGuidelines__SWIG_2(JLcom/visionobjects/stylus/core/InkLayout;F)V

    .line 61
    return-void
.end method

.method public setGuidelines(FF)V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_setGuidelines__SWIG_1(JLcom/visionobjects/stylus/core/InkLayout;FF)V

    .line 57
    return-void
.end method

.method public setGuidelines(FFI)V
    .locals 6

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_setGuidelines__SWIG_0(JLcom/visionobjects/stylus/core/InkLayout;FFI)V

    .line 53
    return-void
.end method

.method public setMidlineShift(F)V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_setMidlineShift(JLcom/visionobjects/stylus/core/InkLayout;F)V

    .line 69
    return-void
.end method

.method public setModifiers(I)V
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkLayout;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkLayout_setModifiers(JLcom/visionobjects/stylus/core/InkLayout;I)V

    .line 85
    return-void
.end method
