.class public Lcom/visionobjects/stylus/core/InkItem;
.super Ljava/lang/Object;
.source "InkItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/InkItem$Type;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkItem__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    .line 93
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkItem;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 3

    .prologue
    .line 96
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkItem__SWIG_1(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    .line 97
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkItem;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    goto :goto_0
.end method

.method public static barycenter(Lcom/visionobjects/stylus/core/Path;)Lcom/visionobjects/stylus/core/Point;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_barycenter__SWIG_1(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public static boundingRect(Lcom/visionobjects/stylus/core/Path;)Lcom/visionobjects/stylus/core/Rect;
    .locals 4

    .prologue
    .line 184
    new-instance v0, Lcom/visionobjects/stylus/core/Rect;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_boundingRect__SWIG_1(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public static createCharBox(Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createCharBox__SWIG_1(JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createCharBox(Lcom/visionobjects/stylus/core/Rect;Lcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 7

    .prologue
    .line 68
    new-instance v6, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createCharBox__SWIG_0(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public static createFlowMarker(I)Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createFlowMarker__SWIG_1(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createFlowMarker(ILcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v1

    invoke-static {p0, v1, v2, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createFlowMarker__SWIG_0(IJLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createGuideBox(Lcom/visionobjects/stylus/core/Rect;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createGuideBox__SWIG_1(JLcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createGuideBox(Lcom/visionobjects/stylus/core/Rect;Lcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 7

    .prologue
    .line 76
    new-instance v6, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createGuideBox__SWIG_0(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public static createStringHolder(J)Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createStringHolder__SWIG_1(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createStringHolder(JLcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p2}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createStringHolder__SWIG_0(JJLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createStroke(Lcom/visionobjects/stylus/core/Path;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createStroke__SWIG_2(JLcom/visionobjects/stylus/core/Path;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createStroke(Lcom/visionobjects/stylus/core/Path;Lcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 7

    .prologue
    .line 60
    new-instance v6, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createStroke__SWIG_1(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public static createStroke(Lcom/visionobjects/stylus/core/Path;Lcom/visionobjects/stylus/core/VoTimeStamp;Lcom/visionobjects/stylus/core/VoTimeStamp;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 10

    .prologue
    .line 56
    new-instance v9, Lcom/visionobjects/stylus/core/InkItem;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Path;->a(Lcom/visionobjects/stylus/core/Path;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_createStroke__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v9
.end method


# virtual methods
.method public barycenter()Lcom/visionobjects/stylus/core/Point;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Lcom/visionobjects/stylus/core/Point;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_barycenter__SWIG_0(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v0
.end method

.method public boundingRect()Lcom/visionobjects/stylus/core/Rect;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Lcom/visionobjects/stylus/core/Rect;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_boundingRect__SWIG_0(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkItem;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkItem;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkItem(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J
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

.method public duration()I
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_duration(JLcom/visionobjects/stylus/core/InkItem;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/visionobjects/stylus/core/InkItem;)Z
    .locals 6

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_equals(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InkItem;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InkItem;->equals(Lcom/visionobjects/stylus/core/InkItem;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkItem;->delete()V

    .line 26
    return-void
.end method

.method public flowMarker()I
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_flowMarker(JLcom/visionobjects/stylus/core/InkItem;)I

    move-result v0

    return v0
.end method

.method public getInkItemParam()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_getInkItemParam(JLcom/visionobjects/stylus/core/InkItem;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public is(I)Z
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_is(JLcom/visionobjects/stylus/core/InkItem;I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_isEmpty(JLcom/visionobjects/stylus/core/InkItem;)Z

    move-result v0

    return v0
.end method

.method public isGreater(Lcom/visionobjects/stylus/core/InkItem;)Z
    .locals 6

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_isGreater(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z

    move-result v0

    return v0
.end method

.method public isGreaterOrEqual(Lcom/visionobjects/stylus/core/InkItem;)Z
    .locals 6

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_isGreaterOrEqual(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z

    move-result v0

    return v0
.end method

.method public isLower(Lcom/visionobjects/stylus/core/InkItem;)Z
    .locals 6

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_isLower(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z

    move-result v0

    return v0
.end method

.method public isLowerOrEqual(Lcom/visionobjects/stylus/core/InkItem;)Z
    .locals 6

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_isLowerOrEqual(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_length(JLcom/visionobjects/stylus/core/InkItem;)I

    move-result v0

    return v0
.end method

.method public mapped(Lcom/visionobjects/stylus/core/Transform;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 7

    .prologue
    .line 120
    new-instance v6, Lcom/visionobjects/stylus/core/InkItem;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_mapped(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public modifyInkItemParam(Ljava/lang/Object;Lcom/visionobjects/stylus/core/InkItemParamListener;)V
    .locals 7

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkItemParamListener;->a(Lcom/visionobjects/stylus/core/InkItemParamListener;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_modifyInkItemParam(JLcom/visionobjects/stylus/core/InkItem;Ljava/lang/Object;JLcom/visionobjects/stylus/core/InkItemParamListener;)V

    .line 193
    return-void
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/InkItem;)Z
    .locals 6

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_notEquals(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z

    move-result v0

    return v0
.end method

.method public path()Lcom/visionobjects/stylus/core/Path;
    .locals 4

    .prologue
    .line 164
    new-instance v0, Lcom/visionobjects/stylus/core/Path;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_path(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Path;-><init>(JZ)V

    return-object v0
.end method

.method public setDuration(J)V
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_setDuration(JLcom/visionobjects/stylus/core/InkItem;J)V

    .line 109
    return-void
.end method

.method public setTimeStamp(Lcom/visionobjects/stylus/core/VoTimeStamp;)V
    .locals 6

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/VoTimeStamp;->a(Lcom/visionobjects/stylus/core/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_setTimeStamp(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/VoTimeStamp;)V

    .line 101
    return-void
.end method

.method public simplified(Lcom/visionobjects/stylus/core/IntegerRange;)Lcom/visionobjects/stylus/core/InkItem;
    .locals 7

    .prologue
    .line 124
    new-instance v6, Lcom/visionobjects/stylus/core/InkItem;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/IntegerRange;->a(Lcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_simplified(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/IntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public timeStamp()Lcom/visionobjects/stylus/core/VoTimeStamp;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/visionobjects/stylus/core/VoTimeStamp;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_timeStamp(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoTimeStamp;-><init>(JZ)V

    return-object v0
.end method

.method public type()I
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkItem;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkItem_type(JLcom/visionobjects/stylus/core/InkItem;)I

    move-result v0

    return v0
.end method
