.class public Lcom/visionobjects/stylus/core/InputMethodListener;
.super Ljava/lang/Object;
.source "InputMethodListener.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InputMethodListener__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethodListener;-><init>(JZ)V

    .line 105
    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InputMethodListener;)V
    .locals 3

    .prologue
    .line 108
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodListener;->a(Lcom/visionobjects/stylus/core/InputMethodListener;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InputMethodListener__SWIG_1(JLcom/visionobjects/stylus/core/InputMethodListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethodListener;-><init>(JZ)V

    .line 109
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InputMethodListener;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    goto :goto_0
.end method


# virtual methods
.method public backspaceGesture(Lcom/visionobjects/stylus/core/InputMethod;)V
    .locals 6

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_backspaceGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;)V

    .line 57
    return-void
.end method

.method public configured(Lcom/visionobjects/stylus/core/InputMethod;I)V
    .locals 7

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_configured(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;I)V

    .line 49
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InputMethodListener(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J
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
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InputMethodListener;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InputMethodListener;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InputMethodListener;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method public eraseGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 9

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_eraseGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkRange;)V

    .line 77
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InputMethodListener;->delete()V

    .line 26
    return-void
.end method

.method public flowSync(Lcom/visionobjects/stylus/core/InputMethod;I)V
    .locals 7

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_flowSync(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;I)V

    .line 101
    return-void
.end method

.method public insertGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 9

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_insertGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkLocation;)V

    .line 69
    return-void
.end method

.method public joinGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 9

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_joinGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkLocation;)V

    .line 73
    return-void
.end method

.method public overwriteGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 9

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_overwriteGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkRange;)V

    .line 81
    return-void
.end method

.method public progress(Lcom/visionobjects/stylus/core/InputMethod;II)V
    .locals 8

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_progress(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;II)V

    .line 93
    return-void
.end method

.method public returnGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 9

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_returnGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkLocation;)V

    .line 61
    return-void
.end method

.method public selectionGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 9

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_selectionGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkRange;)V

    .line 85
    return-void
.end method

.method public singleTapGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 9

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_singleTapGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkLocation;)V

    .line 65
    return-void
.end method

.method public spaceGesture(Lcom/visionobjects/stylus/core/InputMethod;)V
    .locals 6

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_spaceGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;)V

    .line 53
    return-void
.end method

.method public underlineGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 9

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_underlineGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkRange;)V

    .line 89
    return-void
.end method

.method public update(Lcom/visionobjects/stylus/core/InputMethod;)V
    .locals 6

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethodListener;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethodListener_update(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;)V

    .line 97
    return-void
.end method
