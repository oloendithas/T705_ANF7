.class public final Landroid/os/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field private static final MAX_SECTION_NAME_LEN:I = 0x7f

.field private static final TAG:Ljava/lang/String; = "Trace"

.field public static final TRACE_TAG_ACTIVITY_MANAGER:J = 0x40L

.field public static final TRACE_TAG_ALWAYS:J = 0x1L

.field public static final TRACE_TAG_APP:J = 0x1000L

.field public static final TRACE_TAG_AUDIO:J = 0x100L

.field public static final TRACE_TAG_CAMERA:J = 0x400L

.field public static final TRACE_TAG_DALVIK:J = 0x4000L

.field public static final TRACE_TAG_GRAPHICS:J = 0x2L

.field public static final TRACE_TAG_HAL:J = 0x800L

.field public static final TRACE_TAG_INPUT:J = 0x4L

.field public static final TRACE_TAG_NEVER:J = 0x0L

.field private static final TRACE_TAG_NOT_READY:J = -0x8000000000000000L

.field public static final TRACE_TAG_RESOURCES:J = 0x2000L

.field public static final TRACE_TAG_RS:J = 0x8000L

.field public static final TRACE_TAG_SENSOR:J = 0x10000L

.field public static final TRACE_TAG_SYNC_MANAGER:J = 0x80L

.field public static final TRACE_TAG_VIDEO:J = 0x200L

.field public static final TRACE_TAG_VIEW:J = 0x8L

.field public static final TRACE_TAG_WEBVIEW:J = 0x10L

.field public static final TRACE_TAG_WINDOW_MANAGER:J = 0x20L

.field private static volatile sEnabledTags:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 79
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 99
    new-instance v0, Landroid/os/Trace$1;

    invoke-direct {v0}, Landroid/os/Trace$1;-><init>()V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$000()J
    .registers 2

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asyncTraceBegin(JLjava/lang/String;I)V
    .registers 5
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 234
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceBegin(JLjava/lang/String;I)V

    .line 237
    :cond_9
    return-void
.end method

.method public static asyncTraceEnd(JLjava/lang/String;I)V
    .registers 5
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .prologue
    .line 251
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 252
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeAsyncTraceEnd(JLjava/lang/String;I)V

    .line 254
    :cond_9
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 5
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x1000

    .line 268
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_19

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sectionName is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_19
    invoke-static {v2, v3, p0}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    .line 274
    :cond_1c
    return-void
.end method

.method private static cacheEnabledTags()J
    .registers 2

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Trace;->nativeGetEnabledTags()J

    move-result-wide v0

    .line 125
    .local v0, "tags":J
    sput-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 126
    return-wide v0
.end method

.method public static endSection()V
    .registers 3

    .prologue
    const-wide/16 v1, 0x1000

    .line 284
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 285
    invoke-static {v1, v2}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 287
    :cond_b
    return-void
.end method

.method public static isTagEnabled(J)Z
    .registers 8
    .param p0, "traceTag"    # J

    .prologue
    .line 138
    sget-wide v0, Landroid/os/Trace;->sEnabledTags:J

    .line 139
    .local v0, "tags":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    .line 140
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    move-result-wide v0

    .line 142
    :cond_c
    and-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private static native nativeAsyncTraceBegin(JLjava/lang/String;I)V
.end method

.method private static native nativeAsyncTraceEnd(JLjava/lang/String;I)V
.end method

.method private static native nativeGetEnabledTags()J
.end method

.method private static native nativeSetAppTracingAllowed(Z)V
.end method

.method private static native nativeSetTracingEnabled(Z)V
.end method

.method private static native nativeTraceBegin(JLjava/lang/String;)V
.end method

.method private static native nativeTraceCounter(JLjava/lang/String;I)V
.end method

.method private static native nativeTraceEnd(J)V
.end method

.method public static setAppTracingAllowed(Z)V
    .registers 1
    .param p0, "allowed"    # Z

    .prologue
    .line 167
    invoke-static {p0}, Landroid/os/Trace;->nativeSetAppTracingAllowed(Z)V

    .line 171
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    .line 172
    return-void
.end method

.method public static setTracingEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .prologue
    .line 183
    invoke-static {p0}, Landroid/os/Trace;->nativeSetTracingEnabled(Z)V

    .line 187
    invoke-static {}, Landroid/os/Trace;->cacheEnabledTags()J

    .line 188
    return-void
.end method

.method public static traceBegin(JLjava/lang/String;)V
    .registers 4
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->nativeTraceBegin(JLjava/lang/String;)V

    .line 204
    :cond_9
    return-void
.end method

.method public static traceCounter(JLjava/lang/String;I)V
    .registers 5
    .param p0, "traceTag"    # J
    .param p2, "counterName"    # Ljava/lang/String;
    .param p3, "counterValue"    # I

    .prologue
    .line 155
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 156
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->nativeTraceCounter(JLjava/lang/String;I)V

    .line 158
    :cond_9
    return-void
.end method

.method public static traceEnd(J)V
    .registers 3
    .param p0, "traceTag"    # J

    .prologue
    .line 215
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 216
    invoke-static {p0, p1}, Landroid/os/Trace;->nativeTraceEnd(J)V

    .line 218
    :cond_9
    return-void
.end method
