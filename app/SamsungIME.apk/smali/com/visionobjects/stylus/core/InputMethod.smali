.class public Lcom/visionobjects/stylus/core/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/InputMethod$Error;,
        Lcom/visionobjects/stylus/core/InputMethod$GestureType;,
        Lcom/visionobjects/stylus/core/InputMethod$Gesture;
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
    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InputMethod__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethod;-><init>(JZ)V

    .line 49
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/InputMethod;->a:Z

    .line 17
    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InputMethod;)V
    .locals 3

    .prologue
    .line 269
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Lcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InputMethod__SWIG_2(JLcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethod;-><init>(JZ)V

    .line 270
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethod;->a(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InputMethod;-><init>(JZ)V

    .line 66
    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InputMethod;)J
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    goto :goto_0
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
    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InputMethod__SWIG_1([B)J

    move-result-wide v0

    return-wide v0

    .line 57
    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static errorCodeToString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_errorCodeToString(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gestureName(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_gestureName(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gestureTypeName(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_gestureTypeName(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addStroke(Lcom/visionobjects/stylus/core/InkItem;)V
    .locals 6

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_addStroke(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkItem;)V

    .line 106
    return-void
.end method

.method public addStrokes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 112
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 113
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_addStrokes(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/ListInkItem;)V

    .line 118
    return-void
.end method

.method public config()Lcom/visionobjects/stylus/core/InputMethodConfig;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/visionobjects/stylus/core/InputMethodConfig;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_config(JLcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InputMethodConfig;-><init>(JZ)V

    return-object v0
.end method

.method public contains(Lcom/visionobjects/stylus/core/Point;)Z
    .locals 6

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_contains(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/Point;)Z

    move-result v0

    return v0
.end method

.method public defaultBackspaceGesture(Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    .prologue
    .line 193
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultBackspaceGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public defaultEraseGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    .prologue
    .line 221
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultEraseGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultInsertGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkLocation;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    .prologue
    .line 209
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultInsertGesture__SWIG_1(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultInsertGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkLocation;Z)Lcom/visionobjects/stylus/core/InkField;
    .locals 11

    .prologue
    .line 205
    new-instance v10, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultInsertGesture__SWIG_0(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v10
.end method

.method public defaultJoinGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkLocation;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    .prologue
    .line 217
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultJoinGesture__SWIG_1(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultJoinGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkLocation;F)Lcom/visionobjects/stylus/core/InkField;
    .locals 11

    .prologue
    .line 213
    new-instance v10, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultJoinGesture__SWIG_0(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;F)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v10, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v10
.end method

.method public defaultOverwriteGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    .prologue
    .line 225
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultOverwriteGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultReturnGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkLocation;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    .prologue
    .line 197
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultReturnGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultSelectionGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    .prologue
    .line 229
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultSelectionGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultSingleTapGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkLocation;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    .prologue
    .line 201
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultSingleTapGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public defaultSpaceGesture(Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    .prologue
    .line 189
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultSpaceGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public defaultUnderlineGesture(Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkRange;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    .prologue
    .line 233
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_defaultUnderlineGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->a:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->a:Z

    .line 32
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InputMethod(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J
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

.method public disableGestures(I)V
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_disableGestures(JLcom/visionobjects/stylus/core/InputMethod;I)V

    .line 74
    return-void
.end method

.method public enableGestures(I)V
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_enableGestures(JLcom/visionobjects/stylus/core/InputMethod;I)V

    .line 70
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/visionobjects/stylus/core/InputMethod;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lcom/visionobjects/stylus/core/InputMethod;

    invoke-virtual {p1, p0}, Lcom/visionobjects/stylus/core/InputMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :cond_0
    return v0
.end method

.method public errorCode()I
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_errorCode(JLcom/visionobjects/stylus/core/InputMethod;)I

    move-result v0

    return v0
.end method

.method public errorString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_errorString(JLcom/visionobjects/stylus/core/InputMethod;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public failed()Z
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_failed(JLcom/visionobjects/stylus/core/InputMethod;)Z

    move-result v0

    return v0
.end method

.method public field()Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    .prologue
    .line 129
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_field(JLcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InputMethod;->delete()V

    .line 26
    return-void
.end method

.method public gestureStrokes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/visionobjects/stylus/core/ListInkItem;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_gestureStrokes(JLcom/visionobjects/stylus/core/InputMethod;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public gestureType()I
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_gestureType(JLcom/visionobjects/stylus/core/InputMethod;)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_name(JLcom/visionobjects/stylus/core/InputMethod;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public penAbort()V
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_penAbort(JLcom/visionobjects/stylus/core/InputMethod;)V

    .line 102
    return-void
.end method

.method public penDown()V
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_penDown(JLcom/visionobjects/stylus/core/InputMethod;)V

    .line 90
    return-void
.end method

.method public penMove(Lcom/visionobjects/stylus/core/Point;)V
    .locals 6

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_penMove(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/Point;)V

    .line 94
    return-void
.end method

.method public penUp()V
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_penUp(JLcom/visionobjects/stylus/core/InputMethod;)V

    .line 98
    return-void
.end method

.method public setConfig(Lcom/visionobjects/stylus/core/InputMethodConfig;)V
    .locals 6

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodConfig;->a(Lcom/visionobjects/stylus/core/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_setConfig(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InputMethodConfig;)V

    .line 82
    return-void
.end method

.method public setField(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 6

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_setField(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;)V

    .line 126
    return-void
.end method

.method public setFlowMarker(I)V
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_setFlowMarker(JLcom/visionobjects/stylus/core/InputMethod;I)V

    .line 122
    return-void
.end method

.method public setListener(Lcom/visionobjects/stylus/core/InputMethodListener;)V
    .locals 6

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InputMethodListener;->a(Lcom/visionobjects/stylus/core/InputMethodListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_setListener(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InputMethodListener;)V

    .line 78
    return-void
.end method

.method public waitIdle()V
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_waitIdle(JLcom/visionobjects/stylus/core/InputMethod;)V

    .line 182
    return-void
.end method

.method public waitReco()V
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InputMethod;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InputMethod_waitReco(JLcom/visionobjects/stylus/core/InputMethod;)V

    .line 186
    return-void
.end method
